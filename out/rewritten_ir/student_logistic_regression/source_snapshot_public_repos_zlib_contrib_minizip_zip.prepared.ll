; ModuleID = './source_snapshot/public_repos/zlib/contrib/minizip/zip.c'
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
@.str.2 = private unnamed_addr constant [13 x i8] c"improper use\00", align 1
@__func__.set_insert = private unnamed_addr constant [11 x i8] c"set_insert\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"skipset.h\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"set_ok(set) && \22improper use\22\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Overhead, without any fuss, the stars were going out.\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"level < 32767 && \22Overhead, without any fuss, the stars were going out.\22\00", align 1
@__func__.set_found = private unnamed_addr constant [10 x i8] c"set_found\00", align 1
@crypthead.calls = internal global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @zipAlreadyThere(ptr noundef %file, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %copy = alloca ptr, align 8
  %found = alloca i32, align 4
  %zip = alloca ptr, align 8
  %there = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %zip, align 8
  %1 = load ptr, ptr %zip, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zip, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 2
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %central_dir, i32 0, i32 0
  %3 = load ptr, ptr %first_block, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %zip, align 8
  %set = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 9
  %env = getelementptr inbounds %struct.set_s, ptr %set, i32 0, i32 6
  %arraydecay = getelementptr inbounds [48 x i32], ptr %env, i64 0, i64 0
  %call = call i32 @setjmp(ptr noundef %arraydecay) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end3
  %5 = load ptr, ptr %zip, align 8
  %set5 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 9
  call void @set_end(ptr noundef %set5)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %zip, align 8
  %set7 = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 9
  %call8 = call i32 @set_ok(ptr noundef %set7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end6
  %7 = load ptr, ptr %zip, align 8
  %set11 = getelementptr inbounds %struct.zip64_internal, ptr %7, i32 0, i32 9
  call void @set_start(ptr noundef %set11)
  %8 = load ptr, ptr %zip, align 8
  %block = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %zip, align 8
  %central_dir12 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 2
  call void @block_init(ptr noundef %block, ptr noundef %central_dir12)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.end13
  %10 = load ptr, ptr %zip, align 8
  %block14 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %zip, align 8
  %set15 = getelementptr inbounds %struct.zip64_internal, ptr %11, i32 0, i32 9
  %call16 = call ptr @block_central_name(ptr noundef %block14, ptr noundef %set15)
  store ptr %call16, ptr %there, align 8
  %12 = load ptr, ptr %there, align 8
  %cmp17 = icmp eq ptr %12, null
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.cond
  %13 = load ptr, ptr %zip, align 8
  %block19 = getelementptr inbounds %struct.zip64_internal, ptr %13, i32 0, i32 10
  %next = getelementptr inbounds %struct.block_t, ptr %block19, i32 0, i32 0
  %14 = load ptr, ptr %next, align 8
  %cmp20 = icmp eq ptr %14, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i32 -1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then18
  br label %for.end

if.end23:                                         ; preds = %for.cond
  %15 = load ptr, ptr %zip, align 8
  %set24 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %there, align 8
  %call25 = call i32 @set_insert(ptr noundef %set24, ptr noundef %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %17 = load ptr, ptr %zip, align 8
  %set28 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %there, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_0(ptr noundef %set28, ptr noundef %18)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23
  br label %for.cond

for.end:                                          ; preds = %if.end22
  %19 = load ptr, ptr %name.addr, align 8
  %call30 = call i64 @strlen(ptr noundef %19)
  store i64 %call30, ptr %len, align 8
  %20 = load ptr, ptr %zip, align 8
  %set31 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 9
  %21 = load i64, ptr %len, align 8
  %add = add i64 %21, 1
  %call32 = call ptr @set_alloc(ptr noundef %set31, ptr noundef null, i64 noundef %add)
  store ptr %call32, ptr %copy, align 8
  %22 = load ptr, ptr %copy, align 8
  %23 = load ptr, ptr %name.addr, align 8
  %24 = load i64, ptr %len, align 8
  %add33 = add i64 %24, 1
  %25 = load ptr, ptr %copy, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %23, i64 noundef %add33, i64 noundef %26) #12
  %27 = load ptr, ptr %zip, align 8
  %set35 = getelementptr inbounds %struct.zip64_internal, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %copy, align 8
  %call36 = call i32 @set_found(ptr noundef %set35, ptr noundef %28)
  store i32 %call36, ptr %found, align 4
  %29 = load ptr, ptr %zip, align 8
  %set37 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %copy, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_1(ptr noundef %set37, ptr noundef %30)
  %31 = load i32, ptr %found, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then21, %if.then4, %if.then2, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @set_end(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %head, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %set.addr, align 8
  %head1 = getelementptr inbounds %struct.set_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %head1, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %right, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %set.addr, align 8
  call void @set_sweep(ptr noundef %5)
  %6 = load ptr, ptr %set.addr, align 8
  %7 = load ptr, ptr %set.addr, align 8
  %head4 = getelementptr inbounds %struct.set_s, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %head4, align 8
  %right5 = getelementptr inbounds %struct.set_node_s, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %right5, align 8
  call void @set_free(ptr noundef %6, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load ptr, ptr %set.addr, align 8
  %11 = load ptr, ptr %set.addr, align 8
  %head6 = getelementptr inbounds %struct.set_s, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %head6, align 8
  call void @set_free(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %set.addr, align 8
  %head7 = getelementptr inbounds %struct.set_s, ptr %13, i32 0, i32 0
  store ptr null, ptr %head7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %14 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %path, align 8
  %cmp9 = icmp ne ptr %15, null
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end8
  %16 = load ptr, ptr %set.addr, align 8
  %17 = load ptr, ptr %set.addr, align 8
  %path11 = getelementptr inbounds %struct.set_s, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %path11, align 8
  %right12 = getelementptr inbounds %struct.set_node_s, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %right12, align 8
  call void @set_free(ptr noundef %16, ptr noundef %19)
  %20 = load ptr, ptr %set.addr, align 8
  %21 = load ptr, ptr %set.addr, align 8
  %path13 = getelementptr inbounds %struct.set_s, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %path13, align 8
  call void @set_free(ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %set.addr, align 8
  %path14 = getelementptr inbounds %struct.set_s, ptr %23, i32 0, i32 1
  store ptr null, ptr %path14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8
  %24 = load ptr, ptr %set.addr, align 8
  %node = getelementptr inbounds %struct.set_s, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %node, align 8
  %cmp16 = icmp ne ptr %25, null
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end15
  %26 = load ptr, ptr %set.addr, align 8
  %27 = load ptr, ptr %set.addr, align 8
  %node18 = getelementptr inbounds %struct.set_s, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %node18, align 8
  %key = getelementptr inbounds %struct.set_node_s, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %key, align 8
  call void @set_free(ptr noundef %26, ptr noundef %29)
  %30 = load ptr, ptr %set.addr, align 8
  %31 = load ptr, ptr %set.addr, align 8
  %node19 = getelementptr inbounds %struct.set_s, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %node19, align 8
  %right20 = getelementptr inbounds %struct.set_node_s, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %right20, align 8
  call void @set_free(ptr noundef %30, ptr noundef %33)
  %34 = load ptr, ptr %set.addr, align 8
  %35 = load ptr, ptr %set.addr, align 8
  %node21 = getelementptr inbounds %struct.set_s, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %node21, align 8
  call void @set_free(ptr noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %set.addr, align 8
  %node22 = getelementptr inbounds %struct.set_s, ptr %37, i32 0, i32 2
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
  %0 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %head, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %set.addr, align 8
  %head1 = getelementptr inbounds %struct.set_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %head1, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %right, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %set.addr, align 8
  %head3 = getelementptr inbounds %struct.set_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %head3, align 8
  %key = getelementptr inbounds %struct.set_node_s, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %key, align 8
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 137
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_start(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %node = getelementptr inbounds %struct.set_s, ptr %0, i32 0, i32 2
  store ptr null, ptr %node, align 8
  %1 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %1, i32 0, i32 1
  store ptr null, ptr %path, align 8
  %2 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %2, i32 0, i32 0
  store ptr null, ptr %head, align 8
  %3 = load ptr, ptr %set.addr, align 8
  %call = call ptr @set_node(ptr noundef %3)
  %4 = load ptr, ptr %set.addr, align 8
  %path1 = getelementptr inbounds %struct.set_s, ptr %4, i32 0, i32 1
  store ptr %call, ptr %path1, align 8
  %5 = load ptr, ptr %set.addr, align 8
  %call2 = call ptr @set_node(ptr noundef %5)
  %6 = load ptr, ptr %set.addr, align 8
  %head3 = getelementptr inbounds %struct.set_s, ptr %6, i32 0, i32 0
  store ptr %call2, ptr %head3, align 8
  %7 = load ptr, ptr %set.addr, align 8
  %8 = load ptr, ptr %set.addr, align 8
  %head4 = getelementptr inbounds %struct.set_s, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %head4, align 8
  call void @set_grow(ptr noundef %7, ptr noundef %9, i32 noundef 1, i32 noundef 1)
  %10 = load ptr, ptr %set.addr, align 8
  %head5 = getelementptr inbounds %struct.set_s, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %head5, align 8
  %key = getelementptr inbounds %struct.set_node_s, ptr %11, i32 0, i32 0
  store i8 -119, ptr %key, align 8
  %12 = load ptr, ptr %set.addr, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %12, i32 0, i32 3
  store i16 0, ptr %depth, align 8
  %13 = load ptr, ptr %set.addr, align 8
  %gen = getelementptr inbounds %struct.set_s, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %set.addr, align 8
  call void @set_uniq(ptr noundef %gen, ptr noundef %14)
  %15 = load ptr, ptr %set.addr, align 8
  %ran = getelementptr inbounds %struct.set_s, ptr %15, i32 0, i32 4
  store i64 1, ptr %ran, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @block_init(ptr noundef %block, ptr noundef %list) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %list, ptr %list.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first_block, align 8
  %2 = load ptr, ptr %block.addr, align 8
  %node = getelementptr inbounds %struct.block_t, ptr %2, i32 0, i32 2
  store ptr %1, ptr %node, align 8
  %3 = load ptr, ptr %block.addr, align 8
  %node1 = getelementptr inbounds %struct.block_t, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %node1, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4080 x i8], ptr %data, i64 0, i64 0
  %5 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %5, i32 0, i32 0
  store ptr %arraydecay, ptr %next, align 8
  %6 = load ptr, ptr %block.addr, align 8
  %node2 = getelementptr inbounds %struct.block_t, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %node2, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %filled_in_this_block, align 8
  %9 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %9, i32 0, i32 1
  store i64 %8, ptr %left, align 8
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
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %block.addr, align 8
  %call1 = call i64 @block_get2(ptr noundef %1)
  %cmp = icmp ne i64 %call1, 19280
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %block.addr, align 8
  %call2 = call i64 @block_get2(ptr noundef %2)
  %cmp3 = icmp ne i64 %call2, 513
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end5:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %block.addr, align 8
  %call6 = call i32 @block_skip(ptr noundef %3, i64 noundef 24)
  %4 = load ptr, ptr %block.addr, align 8
  %call7 = call i64 @block_get2(ptr noundef %4)
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %flen, align 4
  %5 = load ptr, ptr %block.addr, align 8
  %call8 = call i64 @block_get2(ptr noundef %5)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %xlen, align 4
  %6 = load ptr, ptr %block.addr, align 8
  %call10 = call i64 @block_get2(ptr noundef %6)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %clen, align 4
  %7 = load ptr, ptr %block.addr, align 8
  %call12 = call i32 @block_skip(ptr noundef %7, i64 noundef 12)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end5
  br label %for.end

if.end16:                                         ; preds = %if.end5
  %8 = load ptr, ptr %set.addr, align 8
  %9 = load i32, ptr %flen, align 4
  %add = add i32 %9, 1
  %conv17 = zext i32 %add to i64
  %call18 = call ptr @set_alloc(ptr noundef %8, ptr noundef null, i64 noundef %conv17)
  store ptr %call18, ptr %name, align 8
  %10 = load ptr, ptr %block.addr, align 8
  %11 = load ptr, ptr %name, align 8
  %12 = load i32, ptr %flen, align 4
  %conv19 = zext i32 %12 to i64
  %call20 = call i64 @block_read(ptr noundef %10, ptr noundef %11, i64 noundef %conv19)
  %13 = load i32, ptr %flen, align 4
  %conv21 = zext i32 %13 to i64
  %cmp22 = icmp ult i64 %call20, %conv21
  br i1 %cmp22, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end16
  %14 = load ptr, ptr %block.addr, align 8
  %15 = load i32, ptr %xlen, align 4
  %16 = load i32, ptr %clen, align 4
  %add25 = add i32 %15, %16
  %conv26 = zext i32 %add25 to i64
  %call27 = call i32 @block_skip(ptr noundef %14, i64 noundef %conv26)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false24, %if.end16
  br label %for.end

if.end31:                                         ; preds = %lor.lhs.false24
  %17 = load ptr, ptr %name, align 8
  %18 = load i32, ptr %flen, align 4
  %conv32 = zext i32 %18 to i64
  %call33 = call ptr @memchr(ptr noundef %17, i32 noundef 0, i64 noundef %conv32)
  %cmp34 = icmp ne ptr %call33, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  %19 = load ptr, ptr %set.addr, align 8
  %20 = load ptr, ptr %name, align 8
  call void @set_free(ptr noundef %19, ptr noundef %20)
  br label %for.cond

if.end37:                                         ; preds = %if.end31
  %21 = load ptr, ptr %name, align 8
  %22 = load i32, ptr %flen, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %23 = load ptr, ptr %name, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

for.end:                                          ; preds = %if.then30, %if.then15, %if.then4
  %24 = load ptr, ptr %set.addr, align 8
  %25 = load ptr, ptr %name, align 8
  call void @set_free(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %block.addr, align 8
  call void @block_stop(ptr noundef %26)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end37, %if.then
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_insert(ptr noundef %set, ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %bit = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i32 0, ptr %level, align 4
  %0 = load ptr, ptr %set.addr, align 8
  %call = call i32 @set_ok(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.set_insert, ptr noundef @.str.3, i32 noundef 338, ptr noundef @.str.4) #13
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %set.addr, align 8
  %4 = load ptr, ptr %key.addr, align 8
  %call2 = call i32 @set_found(ptr noundef %3, ptr noundef %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.cond

for.cond:                                         ; preds = %cond.end26, %if.end
  %5 = load ptr, ptr %set.addr, align 8
  %ran = getelementptr inbounds %struct.set_s, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %ran, align 8
  %cmp = icmp eq i64 %6, 1
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.cond
  %7 = load ptr, ptr %set.addr, align 8
  %gen = getelementptr inbounds %struct.set_s, ptr %7, i32 0, i32 5
  %call6 = call i32 @set_rand(ptr noundef %gen)
  %conv7 = zext i32 %call6 to i64
  %or = or i64 %conv7, 4294967296
  %8 = load ptr, ptr %set.addr, align 8
  %ran8 = getelementptr inbounds %struct.set_s, ptr %8, i32 0, i32 4
  store i64 %or, ptr %ran8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.cond
  %9 = load ptr, ptr %set.addr, align 8
  %ran10 = getelementptr inbounds %struct.set_s, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %ran10, align 8
  %and = and i64 %10, 1
  %conv11 = trunc i64 %and to i32
  store i32 %conv11, ptr %bit, align 4
  %11 = load ptr, ptr %set.addr, align 8
  %ran12 = getelementptr inbounds %struct.set_s, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %ran12, align 8
  %shr = lshr i64 %12, 1
  store i64 %shr, ptr %ran12, align 8
  %13 = load i32, ptr %bit, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %for.end

if.end15:                                         ; preds = %if.end9
  %14 = load i32, ptr %level, align 4
  %cmp16 = icmp slt i32 %14, 32767
  br i1 %cmp16, label %land.rhs18, label %land.end19

land.rhs18:                                       ; preds = %if.end15
  br label %land.end19

land.end19:                                       ; preds = %land.rhs18, %if.end15
  %15 = phi i1 [ false, %if.end15 ], [ true, %land.rhs18 ]
  %lnot20 = xor i1 %15, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %land.end19
  call void @__assert_rtn(ptr noundef @__func__.set_insert, ptr noundef @.str.3, i32 noundef 355, ptr noundef @.str.6) #13
  unreachable

16:                                               ; No predecessors!
  br label %cond.end26

cond.false25:                                     ; preds = %land.end19
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %16
  %17 = load i32, ptr %level, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %level, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then14
  %18 = load i32, ptr %level, align 4
  %19 = load ptr, ptr %set.addr, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %19, i32 0, i32 3
  %20 = load i16, ptr %depth, align 8
  %conv27 = sext i16 %20 to i32
  %cmp28 = icmp sgt i32 %18, %conv27
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end
  %21 = load ptr, ptr %set.addr, align 8
  %22 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %path, align 8
  %24 = load i32, ptr %level, align 4
  %add = add nsw i32 %24, 1
  call void @set_grow(ptr noundef %21, ptr noundef %23, i32 noundef %add, i32 noundef 1)
  %25 = load ptr, ptr %set.addr, align 8
  %26 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %head, align 8
  %28 = load i32, ptr %level, align 4
  %add31 = add nsw i32 %28, 1
  call void @set_grow(ptr noundef %25, ptr noundef %27, i32 noundef %add31, i32 noundef 1)
  %29 = load i32, ptr %level, align 4
  %conv32 = trunc i32 %29 to i16
  %30 = load ptr, ptr %set.addr, align 8
  %depth33 = getelementptr inbounds %struct.set_s, ptr %30, i32 0, i32 3
  store i16 %conv32, ptr %depth33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end
  %31 = load ptr, ptr %set.addr, align 8
  %call35 = call ptr @set_node(ptr noundef %31)
  %32 = load ptr, ptr %set.addr, align 8
  %node = getelementptr inbounds %struct.set_s, ptr %32, i32 0, i32 2
  store ptr %call35, ptr %node, align 8
  %33 = load ptr, ptr %key.addr, align 8
  %34 = load ptr, ptr %set.addr, align 8
  %node36 = getelementptr inbounds %struct.set_s, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %node36, align 8
  %key37 = getelementptr inbounds %struct.set_node_s, ptr %35, i32 0, i32 0
  store ptr %33, ptr %key37, align 8
  %36 = load ptr, ptr %set.addr, align 8
  %37 = load ptr, ptr %set.addr, align 8
  %node38 = getelementptr inbounds %struct.set_s, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %node38, align 8
  %39 = load i32, ptr %level, align 4
  %add39 = add nsw i32 %39, 1
  call void @set_grow(ptr noundef %36, ptr noundef %38, i32 noundef %add39, i32 noundef 0)
  store i32 0, ptr %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %if.end34
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %level, align 4
  %cmp41 = icmp sle i32 %40, %41
  br i1 %cmp41, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond40
  %42 = load ptr, ptr %set.addr, align 8
  %path43 = getelementptr inbounds %struct.set_s, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %path43, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %right, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %44, i64 %idxprom
  %46 = load ptr, ptr %arrayidx, align 8
  %right44 = getelementptr inbounds %struct.set_node_s, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %right44, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %47, i64 %idxprom45
  %49 = load ptr, ptr %arrayidx46, align 8
  %50 = load ptr, ptr %set.addr, align 8
  %node47 = getelementptr inbounds %struct.set_s, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %node47, align 8
  %right48 = getelementptr inbounds %struct.set_node_s, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %right48, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %52, i64 %idxprom49
  store ptr %49, ptr %arrayidx50, align 8
  %54 = load ptr, ptr %set.addr, align 8
  %node51 = getelementptr inbounds %struct.set_s, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %node51, align 8
  %56 = load ptr, ptr %set.addr, align 8
  %path52 = getelementptr inbounds %struct.set_s, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %path52, align 8
  %right53 = getelementptr inbounds %struct.set_node_s, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %right53, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %59 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %58, i64 %idxprom54
  %60 = load ptr, ptr %arrayidx55, align 8
  %right56 = getelementptr inbounds %struct.set_node_s, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %right56, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %62 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %61, i64 %idxprom57
  store ptr %55, ptr %arrayidx58, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, ptr %i, align 4
  %inc59 = add nsw i32 %63, 1
  store i32 %inc59, ptr %i, align 4
  br label %for.cond40, !llvm.loop !6

for.end60:                                        ; preds = %for.cond40
  %64 = load ptr, ptr %set.addr, align 8
  %node61 = getelementptr inbounds %struct.set_s, ptr %64, i32 0, i32 2
  store ptr null, ptr %node61, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end60, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_free(ptr noundef %set, ptr noundef %ptr) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @set_alloc(ptr noundef %set, ptr noundef %ptr, i64 noundef %size) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load i64, ptr %size.addr, align 8
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %1) #14
  store ptr %call, ptr %mem, align 8
  %2 = load ptr, ptr %mem, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8
  %env = getelementptr inbounds %struct.set_s, ptr %3, i32 0, i32 6
  %arraydecay = getelementptr inbounds [48 x i32], ptr %env, i64 0, i64 0
  call void @longjmp(ptr noundef %arraydecay, i32 noundef 12) #15
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mem, align 8
  ret ptr %4
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
  %0 = load ptr, ptr %set.addr, align 8
  %call = call i32 @set_ok(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.set_found, ptr noundef @.str.3, i32 noundef 314, ptr noundef @.str.4) #13
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %set.addr, align 8
  %head2 = getelementptr inbounds %struct.set_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %head2, align 8
  store ptr %4, ptr %head, align 8
  %5 = load ptr, ptr %head, align 8
  store ptr %5, ptr %here, align 8
  %6 = load ptr, ptr %set.addr, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %6, i32 0, i32 3
  %7 = load i16, ptr %depth, align 8
  %conv3 = sext i16 %7 to i32
  store i32 %conv3, ptr %i, align 4
  %8 = load ptr, ptr %set.addr, align 8
  %9 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %path, align 8
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, 1
  call void @set_grow(ptr noundef %8, ptr noundef %10, i32 noundef %add, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %12 = load ptr, ptr %here, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %right, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = load ptr, ptr %head, align 8
  %cmp = icmp ne ptr %15, %16
  br i1 %cmp, label %land.rhs5, label %land.end13

land.rhs5:                                        ; preds = %while.cond
  %17 = load ptr, ptr %here, align 8
  %right6 = getelementptr inbounds %struct.set_node_s, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %right6, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  %key9 = getelementptr inbounds %struct.set_node_s, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %key9, align 8
  %22 = load ptr, ptr %key.addr, align 8
  %call10 = call i32 @strcmp(ptr noundef %21, ptr noundef %22)
  %cmp11 = icmp slt i32 %call10, 0
  br label %land.end13

land.end13:                                       ; preds = %land.rhs5, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs5 ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end13
  %24 = load ptr, ptr %here, align 8
  %right14 = getelementptr inbounds %struct.set_node_s, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %right14, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %25, i64 %idxprom15
  %27 = load ptr, ptr %arrayidx16, align 8
  store ptr %27, ptr %here, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end13
  %28 = load ptr, ptr %here, align 8
  %29 = load ptr, ptr %set.addr, align 8
  %path17 = getelementptr inbounds %struct.set_s, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %path17, align 8
  %right18 = getelementptr inbounds %struct.set_node_s, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %right18, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %31, i64 %idxprom19
  store ptr %28, ptr %arrayidx20, align 8
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %33 = load i32, ptr %i, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, ptr %i, align 4
  %tobool21 = icmp ne i32 %33, 0
  br i1 %tobool21, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %here, align 8
  %right22 = getelementptr inbounds %struct.set_node_s, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %right22, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %35, i64 0
  %36 = load ptr, ptr %arrayidx23, align 8
  store ptr %36, ptr %here, align 8
  %37 = load ptr, ptr %here, align 8
  %38 = load ptr, ptr %head, align 8
  %cmp24 = icmp ne ptr %37, %38
  br i1 %cmp24, label %land.rhs26, label %land.end31

land.rhs26:                                       ; preds = %do.end
  %39 = load ptr, ptr %here, align 8
  %key27 = getelementptr inbounds %struct.set_node_s, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %key27, align 8
  %41 = load ptr, ptr %key.addr, align 8
  %call28 = call i32 @strcmp(ptr noundef %40, ptr noundef %41)
  %cmp29 = icmp eq i32 %call28, 0
  br label %land.end31

land.end31:                                       ; preds = %land.rhs26, %do.end
  %42 = phi i1 [ false, %do.end ], [ %cmp29, %land.rhs26 ]
  %land.ext = zext i1 %42 to i32
  ret i32 %land.ext
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
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %zseek32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc, i32 0, i32 3
  store ptr null, ptr %zseek32_file, align 8
  %z_filefunc1 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %ztell32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc1, i32 0, i32 2
  store ptr null, ptr %ztell32_file, align 8
  %0 = load ptr, ptr %pzlib_filefunc64_32_def.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %z_filefunc2 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc2, i32 0, i32 0
  call void @fill_fopen64_filefunc(ptr noundef %zfile_func64)
  br label %if.end

if.else:                                          ; preds = %entry
  %z_filefunc3 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %1 = load ptr, ptr %pzlib_filefunc64_32_def.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %z_filefunc3, ptr align 8 %1, i64 88, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %z_filefunc4 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %2 = load ptr, ptr %pathname.addr, align 8
  %3 = load i32, ptr %append.addr, align 4
  %cmp5 = icmp eq i32 %3, 0
  %4 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 11, i32 7
  %call = call ptr @call_zopen64(ptr noundef %z_filefunc4, ptr noundef %2, i32 noundef %cond)
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 1
  store ptr %call, ptr %filestream, align 8
  %filestream6 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 1
  %5 = load ptr, ptr %filestream6, align 8
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %6 = load i32, ptr %append.addr, align 4
  %cmp10 = icmp eq i32 %6, 1
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %z_filefunc12 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 1
  %7 = load ptr, ptr %filestream13, align 8
  %call14 = call i64 @call_zseek64(ptr noundef %z_filefunc12, ptr noundef %7, i64 noundef 0, i32 noundef 2)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %z_filefunc16 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %filestream17 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 1
  %8 = load ptr, ptr %filestream17, align 8
  %call18 = call i64 @call_ztell64(ptr noundef %z_filefunc16, ptr noundef %8)
  %begin_pos = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 5
  store i64 %call18, ptr %begin_pos, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 3
  store i32 0, ptr %in_opened_file_inzip, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 4
  %stream_initialised = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 1
  store i32 0, ptr %stream_initialised, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 7
  store i64 0, ptr %number_entry, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 6
  store i64 0, ptr %add_position_when_writing_offset, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 2
  call void @init_linkedlist(ptr noundef %central_dir)
  %set = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr align 8 %set, i8 0, i64 248, i1 false)
  %call19 = call ptr @malloc(i64 noundef 66224) #16
  store ptr %call19, ptr %zi, align 8
  %9 = load ptr, ptr %zi, align 8
  %cmp20 = icmp eq ptr %9, null
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end15
  %z_filefunc22 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %zfile_func6423 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc22, i32 0, i32 0
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6423, i32 0, i32 5
  %10 = load ptr, ptr %zclose_file, align 8
  %z_filefunc24 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 0
  %zfile_func6425 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc24, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6425, i32 0, i32 7
  %11 = load ptr, ptr %opaque, align 8
  %filestream26 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 1
  %12 = load ptr, ptr %filestream26, align 8
  %call27 = call i32 %10(ptr noundef %11, ptr noundef %12)
  store ptr null, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end15
  %globalcomment29 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 8
  store ptr null, ptr %globalcomment29, align 8
  %13 = load i32, ptr %append.addr, align 4
  %cmp30 = icmp eq i32 %13, 2
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @LoadCentralDirectoryRecord(ptr noundef %ziinit)
  store i32 %call32, ptr %err, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28
  %14 = load ptr, ptr %globalcomment.addr, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end33
  %globalcomment35 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 8
  %15 = load ptr, ptr %globalcomment35, align 8
  %16 = load ptr, ptr %globalcomment.addr, align 8
  store ptr %15, ptr %16, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end33
  %17 = load i32, ptr %err, align 4
  %cmp37 = icmp ne i32 %17, 0
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.end36
  %globalcomment39 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i32 0, i32 8
  %18 = load ptr, ptr %globalcomment39, align 8
  call void @free(ptr noundef %18)
  %19 = load ptr, ptr %zi, align 8
  call void @free(ptr noundef %19)
  store ptr null, ptr %retval, align 8
  br label %return

if.else40:                                        ; preds = %if.end36
  %20 = load ptr, ptr %zi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %ziinit, i64 66224, i1 false)
  %21 = load ptr, ptr %zi, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else40, %if.then38, %if.then21, %if.then8
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
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
  %ll.addr = alloca ptr, align 8
  store ptr %ll, ptr %ll.addr, align 8
  %0 = load ptr, ptr %ll.addr, align 8
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %0, i32 0, i32 1
  store ptr null, ptr %last_block, align 8
  %1 = load ptr, ptr %ll.addr, align 8
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %1, i32 0, i32 0
  store ptr null, ptr %first_block, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind ssp uwtable
define internal i32 @LoadCentralDirectoryRecord(ptr noundef %pziinit) #0 {
entry:
  %retval = alloca i32, align 4
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
  %buf_size = alloca i64, align 8
  %buf_read = alloca ptr, align 8
  %read_this = alloca i64, align 8
  store ptr %pziinit, ptr %pziinit.addr, align 8
  store i32 0, ptr %err, align 4
  store i32 0, ptr %hasZIP64Record, align 4
  %0 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pziinit.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %filestream, align 8
  %call = call i64 @zip64local_SearchCentralDir64(ptr noundef %z_filefunc, ptr noundef %2)
  store i64 %call, ptr %central_pos, align 8
  %3 = load i64, ptr %central_pos, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %hasZIP64Record, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %central_pos, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc3 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pziinit.addr, align 8
  %filestream4 = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %filestream4, align 8
  %call5 = call i64 @zip64local_SearchCentralDir(ptr noundef %z_filefunc3, ptr noundef %7)
  store i64 %call5, ptr %central_pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %8 = load i32, ptr %hasZIP64Record, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then7, label %if.else80

if.then7:                                         ; preds = %if.end6
  %9 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc8 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pziinit.addr, align 8
  %filestream9 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %filestream9, align 8
  %12 = load i64, ptr %central_pos, align 8
  %call10 = call i64 @call_zseek64(ptr noundef %z_filefunc8, ptr noundef %11, i64 noundef %12, i32 noundef 0)
  %cmp11 = icmp ne i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i32 -1, ptr %err, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  %13 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc14 = getelementptr inbounds %struct.zip64_internal, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pziinit.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %filestream15, align 8
  %call16 = call i32 @zip64local_getLong(ptr noundef %z_filefunc14, ptr noundef %15, ptr noundef %uL)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  store i32 -1, ptr %err, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  %16 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc20 = getelementptr inbounds %struct.zip64_internal, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pziinit.addr, align 8
  %filestream21 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %filestream21, align 8
  %call22 = call i32 @zip64local_getLong64(ptr noundef %z_filefunc20, ptr noundef %18, ptr noundef %sizeEndOfCentralDirectory)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i32 -1, ptr %err, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  %19 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc26 = getelementptr inbounds %struct.zip64_internal, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pziinit.addr, align 8
  %filestream27 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %filestream27, align 8
  %call28 = call i32 @zip64local_getShort(ptr noundef %z_filefunc26, ptr noundef %21, ptr noundef %VersionMadeBy)
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  store i32 -1, ptr %err, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25
  %22 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc32 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pziinit.addr, align 8
  %filestream33 = getelementptr inbounds %struct.zip64_internal, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %filestream33, align 8
  %call34 = call i32 @zip64local_getShort(ptr noundef %z_filefunc32, ptr noundef %24, ptr noundef %VersionNeeded)
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  store i32 -1, ptr %err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end31
  %25 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc38 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pziinit.addr, align 8
  %filestream39 = getelementptr inbounds %struct.zip64_internal, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %filestream39, align 8
  %call40 = call i32 @zip64local_getLong(ptr noundef %z_filefunc38, ptr noundef %27, ptr noundef %number_disk)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  store i32 -1, ptr %err, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37
  %28 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc44 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pziinit.addr, align 8
  %filestream45 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %filestream45, align 8
  %call46 = call i32 @zip64local_getLong(ptr noundef %z_filefunc44, ptr noundef %30, ptr noundef %number_disk_with_CD)
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  store i32 -1, ptr %err, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end43
  %31 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc50 = getelementptr inbounds %struct.zip64_internal, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pziinit.addr, align 8
  %filestream51 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %filestream51, align 8
  %call52 = call i32 @zip64local_getLong64(ptr noundef %z_filefunc50, ptr noundef %33, ptr noundef %number_entry)
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  store i32 -1, ptr %err, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49
  %34 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc56 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pziinit.addr, align 8
  %filestream57 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %filestream57, align 8
  %call58 = call i32 @zip64local_getLong64(ptr noundef %z_filefunc56, ptr noundef %36, ptr noundef %number_entry_CD)
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end55
  store i32 -1, ptr %err, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end55
  %37 = load i64, ptr %number_entry_CD, align 8
  %38 = load i64, ptr %number_entry, align 8
  %cmp62 = icmp ne i64 %37, %38
  br i1 %cmp62, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end61
  %39 = load i64, ptr %number_disk_with_CD, align 8
  %cmp63 = icmp ne i64 %39, 0
  br i1 %cmp63, label %if.then66, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %40 = load i64, ptr %number_disk, align 8
  %cmp65 = icmp ne i64 %40, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false64, %lor.lhs.false, %if.end61
  store i32 -103, ptr %err, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %lor.lhs.false64
  %41 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc68 = getelementptr inbounds %struct.zip64_internal, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %pziinit.addr, align 8
  %filestream69 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %filestream69, align 8
  %call70 = call i32 @zip64local_getLong64(ptr noundef %z_filefunc68, ptr noundef %43, ptr noundef %size_central_dir)
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  store i32 -1, ptr %err, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end67
  %44 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc74 = getelementptr inbounds %struct.zip64_internal, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pziinit.addr, align 8
  %filestream75 = getelementptr inbounds %struct.zip64_internal, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %filestream75, align 8
  %call76 = call i32 @zip64local_getLong64(ptr noundef %z_filefunc74, ptr noundef %46, ptr noundef %offset_central_dir)
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end73
  store i32 -1, ptr %err, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end73
  store i64 0, ptr %size_comment, align 8
  br label %if.end146

if.else80:                                        ; preds = %if.end6
  %47 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc81 = getelementptr inbounds %struct.zip64_internal, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pziinit.addr, align 8
  %filestream82 = getelementptr inbounds %struct.zip64_internal, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %filestream82, align 8
  %50 = load i64, ptr %central_pos, align 8
  %call83 = call i64 @call_zseek64(ptr noundef %z_filefunc81, ptr noundef %49, i64 noundef %50, i32 noundef 0)
  %cmp84 = icmp ne i64 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.else80
  store i32 -1, ptr %err, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.else80
  %51 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc87 = getelementptr inbounds %struct.zip64_internal, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %pziinit.addr, align 8
  %filestream88 = getelementptr inbounds %struct.zip64_internal, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %filestream88, align 8
  %call89 = call i32 @zip64local_getLong(ptr noundef %z_filefunc87, ptr noundef %53, ptr noundef %uL)
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end86
  store i32 -1, ptr %err, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end86
  %54 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc93 = getelementptr inbounds %struct.zip64_internal, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pziinit.addr, align 8
  %filestream94 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %filestream94, align 8
  %call95 = call i32 @zip64local_getShort(ptr noundef %z_filefunc93, ptr noundef %56, ptr noundef %number_disk)
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end92
  store i32 -1, ptr %err, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end92
  %57 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc99 = getelementptr inbounds %struct.zip64_internal, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %pziinit.addr, align 8
  %filestream100 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %filestream100, align 8
  %call101 = call i32 @zip64local_getShort(ptr noundef %z_filefunc99, ptr noundef %59, ptr noundef %number_disk_with_CD)
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end98
  store i32 -1, ptr %err, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end98
  store i64 0, ptr %number_entry, align 8
  %60 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc105 = getelementptr inbounds %struct.zip64_internal, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pziinit.addr, align 8
  %filestream106 = getelementptr inbounds %struct.zip64_internal, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %filestream106, align 8
  %call107 = call i32 @zip64local_getShort(ptr noundef %z_filefunc105, ptr noundef %62, ptr noundef %uL)
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.end104
  store i32 -1, ptr %err, align 4
  br label %if.end111

if.else110:                                       ; preds = %if.end104
  %63 = load i64, ptr %uL, align 8
  store i64 %63, ptr %number_entry, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.else110, %if.then109
  store i64 0, ptr %number_entry_CD, align 8
  %64 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc112 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %pziinit.addr, align 8
  %filestream113 = getelementptr inbounds %struct.zip64_internal, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %filestream113, align 8
  %call114 = call i32 @zip64local_getShort(ptr noundef %z_filefunc112, ptr noundef %66, ptr noundef %uL)
  %cmp115 = icmp ne i32 %call114, 0
  br i1 %cmp115, label %if.then116, label %if.else117

if.then116:                                       ; preds = %if.end111
  store i32 -1, ptr %err, align 4
  br label %if.end118

if.else117:                                       ; preds = %if.end111
  %67 = load i64, ptr %uL, align 8
  store i64 %67, ptr %number_entry_CD, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then116
  %68 = load i64, ptr %number_entry_CD, align 8
  %69 = load i64, ptr %number_entry, align 8
  %cmp119 = icmp ne i64 %68, %69
  br i1 %cmp119, label %if.then124, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end118
  %70 = load i64, ptr %number_disk_with_CD, align 8
  %cmp121 = icmp ne i64 %70, 0
  br i1 %cmp121, label %if.then124, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false120
  %71 = load i64, ptr %number_disk, align 8
  %cmp123 = icmp ne i64 %71, 0
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %lor.lhs.false122, %lor.lhs.false120, %if.end118
  store i32 -103, ptr %err, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %lor.lhs.false122
  store i64 0, ptr %size_central_dir, align 8
  %72 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc126 = getelementptr inbounds %struct.zip64_internal, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %pziinit.addr, align 8
  %filestream127 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %filestream127, align 8
  %call128 = call i32 @zip64local_getLong(ptr noundef %z_filefunc126, ptr noundef %74, ptr noundef %uL)
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then130, label %if.else131

if.then130:                                       ; preds = %if.end125
  store i32 -1, ptr %err, align 4
  br label %if.end132

if.else131:                                       ; preds = %if.end125
  %75 = load i64, ptr %uL, align 8
  store i64 %75, ptr %size_central_dir, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.else131, %if.then130
  store i64 0, ptr %offset_central_dir, align 8
  %76 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc133 = getelementptr inbounds %struct.zip64_internal, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %pziinit.addr, align 8
  %filestream134 = getelementptr inbounds %struct.zip64_internal, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %filestream134, align 8
  %call135 = call i32 @zip64local_getLong(ptr noundef %z_filefunc133, ptr noundef %78, ptr noundef %uL)
  %cmp136 = icmp ne i32 %call135, 0
  br i1 %cmp136, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.end132
  store i32 -1, ptr %err, align 4
  br label %if.end139

if.else138:                                       ; preds = %if.end132
  %79 = load i64, ptr %uL, align 8
  store i64 %79, ptr %offset_central_dir, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then137
  %80 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc140 = getelementptr inbounds %struct.zip64_internal, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %pziinit.addr, align 8
  %filestream141 = getelementptr inbounds %struct.zip64_internal, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %filestream141, align 8
  %call142 = call i32 @zip64local_getShort(ptr noundef %z_filefunc140, ptr noundef %82, ptr noundef %size_comment)
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end139
  store i32 -1, ptr %err, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end139
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end79
  %83 = load i64, ptr %central_pos, align 8
  %84 = load i64, ptr %offset_central_dir, align 8
  %85 = load i64, ptr %size_central_dir, align 8
  %add = add i64 %84, %85
  %cmp147 = icmp ult i64 %83, %add
  br i1 %cmp147, label %land.lhs.true, label %if.end150

land.lhs.true:                                    ; preds = %if.end146
  %86 = load i32, ptr %err, align 4
  %cmp148 = icmp eq i32 %86, 0
  br i1 %cmp148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %land.lhs.true
  store i32 -103, ptr %err, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %land.lhs.true, %if.end146
  %87 = load i32, ptr %err, align 4
  %cmp151 = icmp ne i32 %87, 0
  br i1 %cmp151, label %if.then152, label %if.end158

if.then152:                                       ; preds = %if.end150
  %88 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc153 = getelementptr inbounds %struct.zip64_internal, ptr %88, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc153, i32 0, i32 0
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 5
  %89 = load ptr, ptr %zclose_file, align 8
  %90 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc154 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 0
  %zfile_func64155 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc154, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64155, i32 0, i32 7
  %91 = load ptr, ptr %opaque, align 8
  %92 = load ptr, ptr %pziinit.addr, align 8
  %filestream156 = getelementptr inbounds %struct.zip64_internal, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %filestream156, align 8
  %call157 = call i32 %89(ptr noundef %91, ptr noundef %93)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end158:                                        ; preds = %if.end150
  %94 = load i64, ptr %size_comment, align 8
  %cmp159 = icmp ugt i64 %94, 0
  br i1 %cmp159, label %if.then160, label %if.end176

if.then160:                                       ; preds = %if.end158
  %95 = load i64, ptr %size_comment, align 8
  %add161 = add i64 %95, 1
  %call162 = call ptr @malloc(i64 noundef %add161) #16
  %96 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment = getelementptr inbounds %struct.zip64_internal, ptr %96, i32 0, i32 8
  store ptr %call162, ptr %globalcomment, align 8
  %97 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment163 = getelementptr inbounds %struct.zip64_internal, ptr %97, i32 0, i32 8
  %98 = load ptr, ptr %globalcomment163, align 8
  %tobool164 = icmp ne ptr %98, null
  br i1 %tobool164, label %if.then165, label %if.end175

if.then165:                                       ; preds = %if.then160
  %99 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc166 = getelementptr inbounds %struct.zip64_internal, ptr %99, i32 0, i32 0
  %zfile_func64167 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc166, i32 0, i32 0
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64167, i32 0, i32 1
  %100 = load ptr, ptr %zread_file, align 8
  %101 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc168 = getelementptr inbounds %struct.zip64_internal, ptr %101, i32 0, i32 0
  %zfile_func64169 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc168, i32 0, i32 0
  %opaque170 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64169, i32 0, i32 7
  %102 = load ptr, ptr %opaque170, align 8
  %103 = load ptr, ptr %pziinit.addr, align 8
  %filestream171 = getelementptr inbounds %struct.zip64_internal, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %filestream171, align 8
  %105 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment172 = getelementptr inbounds %struct.zip64_internal, ptr %105, i32 0, i32 8
  %106 = load ptr, ptr %globalcomment172, align 8
  %107 = load i64, ptr %size_comment, align 8
  %call173 = call i64 %100(ptr noundef %102, ptr noundef %104, ptr noundef %106, i64 noundef %107)
  store i64 %call173, ptr %size_comment, align 8
  %108 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment174 = getelementptr inbounds %struct.zip64_internal, ptr %108, i32 0, i32 8
  %109 = load ptr, ptr %globalcomment174, align 8
  %110 = load i64, ptr %size_comment, align 8
  %arrayidx = getelementptr inbounds i8, ptr %109, i64 %110
  store i8 0, ptr %arrayidx, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.then165, %if.then160
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end158
  %111 = load i64, ptr %central_pos, align 8
  %112 = load i64, ptr %offset_central_dir, align 8
  %113 = load i64, ptr %size_central_dir, align 8
  %add177 = add i64 %112, %113
  %sub = sub i64 %111, %add177
  store i64 %sub, ptr %byte_before_the_zipfile, align 8
  %114 = load i64, ptr %byte_before_the_zipfile, align 8
  %115 = load ptr, ptr %pziinit.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %115, i32 0, i32 6
  store i64 %114, ptr %add_position_when_writing_offset, align 8
  %116 = load i64, ptr %size_central_dir, align 8
  store i64 %116, ptr %size_central_dir_to_read, align 8
  store i64 4080, ptr %buf_size, align 8
  %117 = load i64, ptr %buf_size, align 8
  %call178 = call ptr @malloc(i64 noundef %117) #16
  store ptr %call178, ptr %buf_read, align 8
  %118 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc179 = getelementptr inbounds %struct.zip64_internal, ptr %118, i32 0, i32 0
  %119 = load ptr, ptr %pziinit.addr, align 8
  %filestream180 = getelementptr inbounds %struct.zip64_internal, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %filestream180, align 8
  %121 = load i64, ptr %offset_central_dir, align 8
  %122 = load i64, ptr %byte_before_the_zipfile, align 8
  %add181 = add i64 %121, %122
  %call182 = call i64 @call_zseek64(ptr noundef %z_filefunc179, ptr noundef %120, i64 noundef %add181, i32 noundef 0)
  %cmp183 = icmp ne i64 %call182, 0
  br i1 %cmp183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end176
  store i32 -1, ptr %err, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end176
  br label %while.cond

while.cond:                                       ; preds = %if.end205, %if.end185
  %123 = load i64, ptr %size_central_dir_to_read, align 8
  %cmp186 = icmp ugt i64 %123, 0
  br i1 %cmp186, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %124 = load i32, ptr %err, align 4
  %cmp187 = icmp eq i32 %124, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %125 = phi i1 [ false, %while.cond ], [ %cmp187, %land.rhs ]
  br i1 %125, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i64 4080, ptr %read_this, align 8
  %126 = load i64, ptr %read_this, align 8
  %127 = load i64, ptr %size_central_dir_to_read, align 8
  %cmp188 = icmp ugt i64 %126, %127
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %while.body
  %128 = load i64, ptr %size_central_dir_to_read, align 8
  store i64 %128, ptr %read_this, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %while.body
  %129 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc191 = getelementptr inbounds %struct.zip64_internal, ptr %129, i32 0, i32 0
  %zfile_func64192 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc191, i32 0, i32 0
  %zread_file193 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64192, i32 0, i32 1
  %130 = load ptr, ptr %zread_file193, align 8
  %131 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc194 = getelementptr inbounds %struct.zip64_internal, ptr %131, i32 0, i32 0
  %zfile_func64195 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc194, i32 0, i32 0
  %opaque196 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64195, i32 0, i32 7
  %132 = load ptr, ptr %opaque196, align 8
  %133 = load ptr, ptr %pziinit.addr, align 8
  %filestream197 = getelementptr inbounds %struct.zip64_internal, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %filestream197, align 8
  %135 = load ptr, ptr %buf_read, align 8
  %136 = load i64, ptr %read_this, align 8
  %call198 = call i64 %130(ptr noundef %132, ptr noundef %134, ptr noundef %135, i64 noundef %136)
  %137 = load i64, ptr %read_this, align 8
  %cmp199 = icmp ne i64 %call198, %137
  br i1 %cmp199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end190
  store i32 -1, ptr %err, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end190
  %138 = load i32, ptr %err, align 4
  %cmp202 = icmp eq i32 %138, 0
  br i1 %cmp202, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.end201
  %139 = load ptr, ptr %pziinit.addr, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %139, i32 0, i32 2
  %140 = load ptr, ptr %buf_read, align 8
  %141 = load i64, ptr %read_this, align 8
  %call204 = call i32 @add_data_in_datablock(ptr noundef %central_dir, ptr noundef %140, i64 noundef %141)
  store i32 %call204, ptr %err, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end201
  %142 = load i64, ptr %read_this, align 8
  %143 = load i64, ptr %size_central_dir_to_read, align 8
  %sub206 = sub i64 %143, %142
  store i64 %sub206, ptr %size_central_dir_to_read, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %144 = load ptr, ptr %buf_read, align 8
  call void @free(ptr noundef %144)
  %145 = load i64, ptr %byte_before_the_zipfile, align 8
  %146 = load ptr, ptr %pziinit.addr, align 8
  %begin_pos = getelementptr inbounds %struct.zip64_internal, ptr %146, i32 0, i32 5
  store i64 %145, ptr %begin_pos, align 8
  %147 = load i64, ptr %number_entry_CD, align 8
  %148 = load ptr, ptr %pziinit.addr, align 8
  %number_entry207 = getelementptr inbounds %struct.zip64_internal, ptr %148, i32 0, i32 7
  store i64 %147, ptr %number_entry207, align 8
  %149 = load ptr, ptr %pziinit.addr, align 8
  %z_filefunc208 = getelementptr inbounds %struct.zip64_internal, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %pziinit.addr, align 8
  %filestream209 = getelementptr inbounds %struct.zip64_internal, ptr %150, i32 0, i32 1
  %151 = load ptr, ptr %filestream209, align 8
  %152 = load i64, ptr %offset_central_dir, align 8
  %153 = load i64, ptr %byte_before_the_zipfile, align 8
  %add210 = add i64 %152, %153
  %call211 = call i64 @call_zseek64(ptr noundef %z_filefunc208, ptr noundef %151, i64 noundef %add210, i32 noundef 0)
  %cmp212 = icmp ne i64 %call211, 0
  br i1 %cmp212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %while.end
  store i32 -1, ptr %err, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %while.end
  %154 = load i32, ptr %err, align 4
  store i32 %154, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end214, %if.then152
  %155 = load i32, ptr %retval, align 4
  ret i32 %155
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen2(ptr noundef %pathname, i32 noundef %append, ptr noundef %globalcomment, ptr noundef %pzlib_filefunc32_def) #0 {
entry:
  %retval = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %globalcomment.addr = alloca ptr, align 8
  %pzlib_filefunc32_def.addr = alloca ptr, align 8
  %zlib_filefunc64_32_def_fill = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  store ptr %globalcomment, ptr %globalcomment.addr, align 8
  store ptr %pzlib_filefunc32_def, ptr %pzlib_filefunc32_def.addr, align 8
  %0 = load ptr, ptr %pzlib_filefunc32_def.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pzlib_filefunc32_def.addr, align 8
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef %zlib_filefunc64_32_def_fill, ptr noundef %1)
  %2 = load ptr, ptr %pathname.addr, align 8
  %3 = load i32, ptr %append.addr, align 4
  %4 = load ptr, ptr %globalcomment.addr, align 8
  %call = call ptr @zipOpen3(ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %zlib_filefunc64_32_def_fill)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pathname.addr, align 8
  %6 = load i32, ptr %append.addr, align 4
  %7 = load ptr, ptr %globalcomment.addr, align 8
  %call1 = call ptr @zipOpen3(ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef null)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen2_64(ptr noundef %pathname, i32 noundef %append, ptr noundef %globalcomment, ptr noundef %pzlib_filefunc_def) #0 {
entry:
  %retval = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %globalcomment.addr = alloca ptr, align 8
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %zlib_filefunc64_32_def_fill = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  store ptr %globalcomment, ptr %globalcomment.addr, align 8
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i32 0, i32 0
  %1 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %zfile_func64, ptr align 8 %1, i64 64, i1 false)
  %zopen32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i32 0, i32 1
  store ptr null, ptr %zopen32_file, align 8
  %ztell32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i32 0, i32 2
  store ptr null, ptr %ztell32_file, align 8
  %zseek32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i32 0, i32 3
  store ptr null, ptr %zseek32_file, align 8
  %2 = load ptr, ptr %pathname.addr, align 8
  %3 = load i32, ptr %append.addr, align 4
  %4 = load ptr, ptr %globalcomment.addr, align 8
  %call = call ptr @zipOpen3(ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %zlib_filefunc64_32_def_fill)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pathname.addr, align 8
  %6 = load i32, ptr %append.addr, align 4
  %7 = load ptr, ptr %globalcomment.addr, align 8
  %call1 = call ptr @zipOpen3(ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef null)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen(ptr noundef %pathname, i32 noundef %append) #0 {
entry:
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  %0 = load ptr, ptr %pathname.addr, align 8
  %1 = load i32, ptr %append.addr, align 4
  %call = call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen64(ptr noundef %pathname, i32 noundef %append) #0 {
entry:
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  %0 = load ptr, ptr %pathname.addr, align 8
  %1 = load i32, ptr %append.addr, align 4
  %call = call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null)
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
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %method.addr, align 4
  %cmp2 = icmp ne i32 %2, 8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 -102, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %3 = load ptr, ptr %filename.addr, align 8
  %cmp5 = icmp ne ptr %3, null
  br i1 %cmp5, label %land.lhs.true6, label %if.end9

land.lhs.true6:                                   ; preds = %if.end4
  %4 = load ptr, ptr %filename.addr, align 8
  %call = call i64 @strlen(ptr noundef %4)
  %cmp7 = icmp ugt i64 %call, 65535
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  store i32 -102, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true6, %if.end4
  %5 = load ptr, ptr %comment.addr, align 8
  %cmp10 = icmp ne ptr %5, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %6 = load ptr, ptr %comment.addr, align 8
  %call12 = call i64 @strlen(ptr noundef %6)
  %cmp13 = icmp ugt i64 %call12, 65535
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  store i32 -102, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true11, %if.end9
  %7 = load i32, ptr %size_extrafield_local.addr, align 4
  %cmp16 = icmp ugt i32 %7, 65535
  br i1 %cmp16, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %8 = load i32, ptr %size_extrafield_global.addr, align 4
  %cmp17 = icmp ugt i32 %8, 65535
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %if.end15
  store i32 -102, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  %9 = load ptr, ptr %file.addr, align 8
  store ptr %9, ptr %zi, align 8
  %10 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end19
  %12 = load ptr, ptr %file.addr, align 8
  %call22 = call i32 @zipCloseFileInZip(ptr noundef %12)
  store i32 %call22, ptr %err, align 4
  %13 = load i32, ptr %err, align 4
  %cmp23 = icmp ne i32 %13, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %14 = load i32, ptr %err, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end19
  %15 = load ptr, ptr %filename.addr, align 8
  %cmp27 = icmp eq ptr %15, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store ptr @.str, ptr %filename.addr, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %16 = load ptr, ptr %comment.addr, align 8
  %cmp30 = icmp eq ptr %16, null
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  store i32 0, ptr %size_comment, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end29
  %17 = load ptr, ptr %comment.addr, align 8
  %call32 = call i64 @strlen(ptr noundef %17)
  %conv = trunc i64 %call32 to i32
  store i32 %conv, ptr %size_comment, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %18 = load ptr, ptr %filename.addr, align 8
  %call34 = call i64 @strlen(ptr noundef %18)
  %conv35 = trunc i64 %call34 to i32
  store i32 %conv35, ptr %size_filename, align 4
  %19 = load ptr, ptr %zipfi.addr, align 8
  %cmp36 = icmp eq ptr %19, null
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end33
  %20 = load ptr, ptr %zi, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 4
  %dosDate = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 12
  store i64 0, ptr %dosDate, align 8
  br label %if.end52

if.else39:                                        ; preds = %if.end33
  %21 = load ptr, ptr %zipfi.addr, align 8
  %dosDate40 = getelementptr inbounds %struct.zip_fileinfo, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %dosDate40, align 8
  %cmp41 = icmp ne i64 %22, 0
  br i1 %cmp41, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.else39
  %23 = load ptr, ptr %zipfi.addr, align 8
  %dosDate44 = getelementptr inbounds %struct.zip_fileinfo, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %dosDate44, align 8
  %25 = load ptr, ptr %zi, align 8
  %ci45 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 4
  %dosDate46 = getelementptr inbounds %struct.curfile64_info, ptr %ci45, i32 0, i32 12
  store i64 %24, ptr %dosDate46, align 8
  br label %if.end51

if.else47:                                        ; preds = %if.else39
  %26 = load ptr, ptr %zipfi.addr, align 8
  %tmz_date = getelementptr inbounds %struct.zip_fileinfo, ptr %26, i32 0, i32 0
  %call48 = call i64 @zip64local_TmzDateToDosDate(ptr noundef %tmz_date)
  %27 = load ptr, ptr %zi, align 8
  %ci49 = getelementptr inbounds %struct.zip64_internal, ptr %27, i32 0, i32 4
  %dosDate50 = getelementptr inbounds %struct.curfile64_info, ptr %ci49, i32 0, i32 12
  store i64 %call48, ptr %dosDate50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then43
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then38
  %28 = load i64, ptr %flagBase.addr, align 8
  %29 = load ptr, ptr %zi, align 8
  %ci53 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 4
  %flag = getelementptr inbounds %struct.curfile64_info, ptr %ci53, i32 0, i32 8
  store i64 %28, ptr %flag, align 8
  %30 = load i32, ptr %level.addr, align 4
  %cmp54 = icmp eq i32 %30, 8
  br i1 %cmp54, label %if.then59, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end52
  %31 = load i32, ptr %level.addr, align 4
  %cmp57 = icmp eq i32 %31, 9
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %lor.lhs.false56, %if.end52
  %32 = load ptr, ptr %zi, align 8
  %ci60 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 4
  %flag61 = getelementptr inbounds %struct.curfile64_info, ptr %ci60, i32 0, i32 8
  %33 = load i64, ptr %flag61, align 8
  %or = or i64 %33, 2
  store i64 %or, ptr %flag61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %lor.lhs.false56
  %34 = load i32, ptr %level.addr, align 4
  %cmp63 = icmp eq i32 %34, 2
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end62
  %35 = load ptr, ptr %zi, align 8
  %ci66 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 4
  %flag67 = getelementptr inbounds %struct.curfile64_info, ptr %ci66, i32 0, i32 8
  %36 = load i64, ptr %flag67, align 8
  %or68 = or i64 %36, 4
  store i64 %or68, ptr %flag67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end62
  %37 = load i32, ptr %level.addr, align 4
  %cmp70 = icmp eq i32 %37, 1
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.end69
  %38 = load ptr, ptr %zi, align 8
  %ci73 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 4
  %flag74 = getelementptr inbounds %struct.curfile64_info, ptr %ci73, i32 0, i32 8
  %39 = load i64, ptr %flag74, align 8
  %or75 = or i64 %39, 6
  store i64 %or75, ptr %flag74, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69
  %40 = load ptr, ptr %password.addr, align 8
  %cmp77 = icmp ne ptr %40, null
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end76
  %41 = load ptr, ptr %zi, align 8
  %ci80 = getelementptr inbounds %struct.zip64_internal, ptr %41, i32 0, i32 4
  %flag81 = getelementptr inbounds %struct.curfile64_info, ptr %ci80, i32 0, i32 8
  %42 = load i64, ptr %flag81, align 8
  %or82 = or i64 %42, 1
  store i64 %or82, ptr %flag81, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end76
  %43 = load ptr, ptr %filename.addr, align 8
  %44 = load i32, ptr %size_filename, align 4
  %conv84 = zext i32 %44 to i64
  %call85 = call i32 @isutf8(ptr noundef %43, i64 noundef %conv84)
  %tobool = icmp ne i32 %call85, 0
  br i1 %tobool, label %land.lhs.true86, label %if.end97

land.lhs.true86:                                  ; preds = %if.end83
  %45 = load i32, ptr %size_comment, align 4
  %cmp87 = icmp eq i32 %45, 0
  br i1 %cmp87, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %land.lhs.true86
  %46 = load ptr, ptr %comment.addr, align 8
  %47 = load i32, ptr %size_comment, align 4
  %conv90 = zext i32 %47 to i64
  %call91 = call i32 @isutf8(ptr noundef %46, i64 noundef %conv90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.end97

if.then93:                                        ; preds = %lor.lhs.false89, %land.lhs.true86
  %48 = load ptr, ptr %zi, align 8
  %ci94 = getelementptr inbounds %struct.zip64_internal, ptr %48, i32 0, i32 4
  %flag95 = getelementptr inbounds %struct.curfile64_info, ptr %ci94, i32 0, i32 8
  %49 = load i64, ptr %flag95, align 8
  %or96 = or i64 %49, 2048
  store i64 %or96, ptr %flag95, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %lor.lhs.false89, %if.end83
  %50 = load ptr, ptr %zi, align 8
  %ci98 = getelementptr inbounds %struct.zip64_internal, ptr %50, i32 0, i32 4
  %crc32 = getelementptr inbounds %struct.curfile64_info, ptr %ci98, i32 0, i32 13
  store i64 0, ptr %crc32, align 8
  %51 = load i32, ptr %method.addr, align 4
  %52 = load ptr, ptr %zi, align 8
  %ci99 = getelementptr inbounds %struct.zip64_internal, ptr %52, i32 0, i32 4
  %method100 = getelementptr inbounds %struct.curfile64_info, ptr %ci99, i32 0, i32 9
  store i32 %51, ptr %method100, align 8
  %53 = load ptr, ptr %zi, align 8
  %ci101 = getelementptr inbounds %struct.zip64_internal, ptr %53, i32 0, i32 4
  %encrypt = getelementptr inbounds %struct.curfile64_info, ptr %ci101, i32 0, i32 14
  store i32 0, ptr %encrypt, align 8
  %54 = load ptr, ptr %zi, align 8
  %ci102 = getelementptr inbounds %struct.zip64_internal, ptr %54, i32 0, i32 4
  %stream_initialised = getelementptr inbounds %struct.curfile64_info, ptr %ci102, i32 0, i32 1
  store i32 0, ptr %stream_initialised, align 8
  %55 = load ptr, ptr %zi, align 8
  %ci103 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 4
  %pos_in_buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci103, i32 0, i32 2
  store i32 0, ptr %pos_in_buffered_data, align 4
  %56 = load i32, ptr %raw.addr, align 4
  %57 = load ptr, ptr %zi, align 8
  %ci104 = getelementptr inbounds %struct.zip64_internal, ptr %57, i32 0, i32 4
  %raw105 = getelementptr inbounds %struct.curfile64_info, ptr %ci104, i32 0, i32 10
  store i32 %56, ptr %raw105, align 4
  %58 = load ptr, ptr %zi, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %filestream, align 8
  %call106 = call i64 @call_ztell64(ptr noundef %z_filefunc, ptr noundef %60)
  %61 = load ptr, ptr %zi, align 8
  %ci107 = getelementptr inbounds %struct.zip64_internal, ptr %61, i32 0, i32 4
  %pos_local_header = getelementptr inbounds %struct.curfile64_info, ptr %ci107, i32 0, i32 3
  store i64 %call106, ptr %pos_local_header, align 8
  %62 = load i32, ptr %size_filename, align 4
  %add = add i32 46, %62
  %63 = load i32, ptr %size_extrafield_global.addr, align 4
  %add108 = add i32 %add, %63
  %64 = load i32, ptr %size_comment, align 4
  %add109 = add i32 %add108, %64
  %conv110 = zext i32 %add109 to i64
  %65 = load ptr, ptr %zi, align 8
  %ci111 = getelementptr inbounds %struct.zip64_internal, ptr %65, i32 0, i32 4
  %size_centralheader = getelementptr inbounds %struct.curfile64_info, ptr %ci111, i32 0, i32 6
  store i64 %conv110, ptr %size_centralheader, align 8
  %66 = load ptr, ptr %zi, align 8
  %ci112 = getelementptr inbounds %struct.zip64_internal, ptr %66, i32 0, i32 4
  %size_centralExtraFree = getelementptr inbounds %struct.curfile64_info, ptr %ci112, i32 0, i32 7
  store i64 32, ptr %size_centralExtraFree, align 8
  %67 = load ptr, ptr %zi, align 8
  %ci113 = getelementptr inbounds %struct.zip64_internal, ptr %67, i32 0, i32 4
  %size_centralheader114 = getelementptr inbounds %struct.curfile64_info, ptr %ci113, i32 0, i32 6
  %68 = load i64, ptr %size_centralheader114, align 8
  %conv115 = trunc i64 %68 to i32
  %conv116 = zext i32 %conv115 to i64
  %69 = load ptr, ptr %zi, align 8
  %ci117 = getelementptr inbounds %struct.zip64_internal, ptr %69, i32 0, i32 4
  %size_centralExtraFree118 = getelementptr inbounds %struct.curfile64_info, ptr %ci117, i32 0, i32 7
  %70 = load i64, ptr %size_centralExtraFree118, align 8
  %add119 = add i64 %conv116, %70
  %call120 = call ptr @malloc(i64 noundef %add119) #16
  %71 = load ptr, ptr %zi, align 8
  %ci121 = getelementptr inbounds %struct.zip64_internal, ptr %71, i32 0, i32 4
  %central_header = getelementptr inbounds %struct.curfile64_info, ptr %ci121, i32 0, i32 4
  store ptr %call120, ptr %central_header, align 8
  %72 = load i32, ptr %size_extrafield_global.addr, align 4
  %conv122 = zext i32 %72 to i64
  %73 = load ptr, ptr %zi, align 8
  %ci123 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 4
  %size_centralExtra = getelementptr inbounds %struct.curfile64_info, ptr %ci123, i32 0, i32 5
  store i64 %conv122, ptr %size_centralExtra, align 8
  %74 = load ptr, ptr %zi, align 8
  %ci124 = getelementptr inbounds %struct.zip64_internal, ptr %74, i32 0, i32 4
  %central_header125 = getelementptr inbounds %struct.curfile64_info, ptr %ci124, i32 0, i32 4
  %75 = load ptr, ptr %central_header125, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %75, i64 noundef 33639248, i32 noundef 4)
  %76 = load ptr, ptr %zi, align 8
  %ci126 = getelementptr inbounds %struct.zip64_internal, ptr %76, i32 0, i32 4
  %central_header127 = getelementptr inbounds %struct.curfile64_info, ptr %ci126, i32 0, i32 4
  %77 = load ptr, ptr %central_header127, align 8
  %add.ptr = getelementptr inbounds i8, ptr %77, i64 4
  %78 = load i64, ptr %versionMadeBy.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr, i64 noundef %78, i32 noundef 2)
  %79 = load ptr, ptr %zi, align 8
  %ci128 = getelementptr inbounds %struct.zip64_internal, ptr %79, i32 0, i32 4
  %central_header129 = getelementptr inbounds %struct.curfile64_info, ptr %ci128, i32 0, i32 4
  %80 = load ptr, ptr %central_header129, align 8
  %add.ptr130 = getelementptr inbounds i8, ptr %80, i64 6
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr130, i64 noundef 20, i32 noundef 2)
  %81 = load ptr, ptr %zi, align 8
  %ci131 = getelementptr inbounds %struct.zip64_internal, ptr %81, i32 0, i32 4
  %central_header132 = getelementptr inbounds %struct.curfile64_info, ptr %ci131, i32 0, i32 4
  %82 = load ptr, ptr %central_header132, align 8
  %add.ptr133 = getelementptr inbounds i8, ptr %82, i64 8
  %83 = load ptr, ptr %zi, align 8
  %ci134 = getelementptr inbounds %struct.zip64_internal, ptr %83, i32 0, i32 4
  %flag135 = getelementptr inbounds %struct.curfile64_info, ptr %ci134, i32 0, i32 8
  %84 = load i64, ptr %flag135, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr133, i64 noundef %84, i32 noundef 2)
  %85 = load ptr, ptr %zi, align 8
  %ci136 = getelementptr inbounds %struct.zip64_internal, ptr %85, i32 0, i32 4
  %central_header137 = getelementptr inbounds %struct.curfile64_info, ptr %ci136, i32 0, i32 4
  %86 = load ptr, ptr %central_header137, align 8
  %add.ptr138 = getelementptr inbounds i8, ptr %86, i64 10
  %87 = load ptr, ptr %zi, align 8
  %ci139 = getelementptr inbounds %struct.zip64_internal, ptr %87, i32 0, i32 4
  %method140 = getelementptr inbounds %struct.curfile64_info, ptr %ci139, i32 0, i32 9
  %88 = load i32, ptr %method140, align 8
  %conv141 = sext i32 %88 to i64
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr138, i64 noundef %conv141, i32 noundef 2)
  %89 = load ptr, ptr %zi, align 8
  %ci142 = getelementptr inbounds %struct.zip64_internal, ptr %89, i32 0, i32 4
  %central_header143 = getelementptr inbounds %struct.curfile64_info, ptr %ci142, i32 0, i32 4
  %90 = load ptr, ptr %central_header143, align 8
  %add.ptr144 = getelementptr inbounds i8, ptr %90, i64 12
  %91 = load ptr, ptr %zi, align 8
  %ci145 = getelementptr inbounds %struct.zip64_internal, ptr %91, i32 0, i32 4
  %dosDate146 = getelementptr inbounds %struct.curfile64_info, ptr %ci145, i32 0, i32 12
  %92 = load i64, ptr %dosDate146, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr144, i64 noundef %92, i32 noundef 4)
  %93 = load ptr, ptr %zi, align 8
  %ci147 = getelementptr inbounds %struct.zip64_internal, ptr %93, i32 0, i32 4
  %central_header148 = getelementptr inbounds %struct.curfile64_info, ptr %ci147, i32 0, i32 4
  %94 = load ptr, ptr %central_header148, align 8
  %add.ptr149 = getelementptr inbounds i8, ptr %94, i64 16
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr149, i64 noundef 0, i32 noundef 4)
  %95 = load ptr, ptr %zi, align 8
  %ci150 = getelementptr inbounds %struct.zip64_internal, ptr %95, i32 0, i32 4
  %central_header151 = getelementptr inbounds %struct.curfile64_info, ptr %ci150, i32 0, i32 4
  %96 = load ptr, ptr %central_header151, align 8
  %add.ptr152 = getelementptr inbounds i8, ptr %96, i64 20
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr152, i64 noundef 0, i32 noundef 4)
  %97 = load ptr, ptr %zi, align 8
  %ci153 = getelementptr inbounds %struct.zip64_internal, ptr %97, i32 0, i32 4
  %central_header154 = getelementptr inbounds %struct.curfile64_info, ptr %ci153, i32 0, i32 4
  %98 = load ptr, ptr %central_header154, align 8
  %add.ptr155 = getelementptr inbounds i8, ptr %98, i64 24
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr155, i64 noundef 0, i32 noundef 4)
  %99 = load ptr, ptr %zi, align 8
  %ci156 = getelementptr inbounds %struct.zip64_internal, ptr %99, i32 0, i32 4
  %central_header157 = getelementptr inbounds %struct.curfile64_info, ptr %ci156, i32 0, i32 4
  %100 = load ptr, ptr %central_header157, align 8
  %add.ptr158 = getelementptr inbounds i8, ptr %100, i64 28
  %101 = load i32, ptr %size_filename, align 4
  %conv159 = zext i32 %101 to i64
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr158, i64 noundef %conv159, i32 noundef 2)
  %102 = load ptr, ptr %zi, align 8
  %ci160 = getelementptr inbounds %struct.zip64_internal, ptr %102, i32 0, i32 4
  %central_header161 = getelementptr inbounds %struct.curfile64_info, ptr %ci160, i32 0, i32 4
  %103 = load ptr, ptr %central_header161, align 8
  %add.ptr162 = getelementptr inbounds i8, ptr %103, i64 30
  %104 = load i32, ptr %size_extrafield_global.addr, align 4
  %conv163 = zext i32 %104 to i64
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr162, i64 noundef %conv163, i32 noundef 2)
  %105 = load ptr, ptr %zi, align 8
  %ci164 = getelementptr inbounds %struct.zip64_internal, ptr %105, i32 0, i32 4
  %central_header165 = getelementptr inbounds %struct.curfile64_info, ptr %ci164, i32 0, i32 4
  %106 = load ptr, ptr %central_header165, align 8
  %add.ptr166 = getelementptr inbounds i8, ptr %106, i64 32
  %107 = load i32, ptr %size_comment, align 4
  %conv167 = zext i32 %107 to i64
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr166, i64 noundef %conv167, i32 noundef 2)
  %108 = load ptr, ptr %zi, align 8
  %ci168 = getelementptr inbounds %struct.zip64_internal, ptr %108, i32 0, i32 4
  %central_header169 = getelementptr inbounds %struct.curfile64_info, ptr %ci168, i32 0, i32 4
  %109 = load ptr, ptr %central_header169, align 8
  %add.ptr170 = getelementptr inbounds i8, ptr %109, i64 34
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr170, i64 noundef 0, i32 noundef 2)
  %110 = load ptr, ptr %zipfi.addr, align 8
  %cmp171 = icmp eq ptr %110, null
  br i1 %cmp171, label %if.then173, label %if.else177

if.then173:                                       ; preds = %if.end97
  %111 = load ptr, ptr %zi, align 8
  %ci174 = getelementptr inbounds %struct.zip64_internal, ptr %111, i32 0, i32 4
  %central_header175 = getelementptr inbounds %struct.curfile64_info, ptr %ci174, i32 0, i32 4
  %112 = load ptr, ptr %central_header175, align 8
  %add.ptr176 = getelementptr inbounds i8, ptr %112, i64 36
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr176, i64 noundef 0, i32 noundef 2)
  br label %if.end181

if.else177:                                       ; preds = %if.end97
  %113 = load ptr, ptr %zi, align 8
  %ci178 = getelementptr inbounds %struct.zip64_internal, ptr %113, i32 0, i32 4
  %central_header179 = getelementptr inbounds %struct.curfile64_info, ptr %ci178, i32 0, i32 4
  %114 = load ptr, ptr %central_header179, align 8
  %add.ptr180 = getelementptr inbounds i8, ptr %114, i64 36
  %115 = load ptr, ptr %zipfi.addr, align 8
  %internal_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %115, i32 0, i32 2
  %116 = load i64, ptr %internal_fa, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr180, i64 noundef %116, i32 noundef 2)
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then173
  %117 = load ptr, ptr %zipfi.addr, align 8
  %cmp182 = icmp eq ptr %117, null
  br i1 %cmp182, label %if.then184, label %if.else188

if.then184:                                       ; preds = %if.end181
  %118 = load ptr, ptr %zi, align 8
  %ci185 = getelementptr inbounds %struct.zip64_internal, ptr %118, i32 0, i32 4
  %central_header186 = getelementptr inbounds %struct.curfile64_info, ptr %ci185, i32 0, i32 4
  %119 = load ptr, ptr %central_header186, align 8
  %add.ptr187 = getelementptr inbounds i8, ptr %119, i64 38
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr187, i64 noundef 0, i32 noundef 4)
  br label %if.end192

if.else188:                                       ; preds = %if.end181
  %120 = load ptr, ptr %zi, align 8
  %ci189 = getelementptr inbounds %struct.zip64_internal, ptr %120, i32 0, i32 4
  %central_header190 = getelementptr inbounds %struct.curfile64_info, ptr %ci189, i32 0, i32 4
  %121 = load ptr, ptr %central_header190, align 8
  %add.ptr191 = getelementptr inbounds i8, ptr %121, i64 38
  %122 = load ptr, ptr %zipfi.addr, align 8
  %external_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %122, i32 0, i32 3
  %123 = load i64, ptr %external_fa, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr191, i64 noundef %123, i32 noundef 4)
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then184
  %124 = load ptr, ptr %zi, align 8
  %ci193 = getelementptr inbounds %struct.zip64_internal, ptr %124, i32 0, i32 4
  %pos_local_header194 = getelementptr inbounds %struct.curfile64_info, ptr %ci193, i32 0, i32 3
  %125 = load i64, ptr %pos_local_header194, align 8
  %cmp195 = icmp uge i64 %125, 4294967295
  br i1 %cmp195, label %if.then197, label %if.else201

if.then197:                                       ; preds = %if.end192
  %126 = load ptr, ptr %zi, align 8
  %ci198 = getelementptr inbounds %struct.zip64_internal, ptr %126, i32 0, i32 4
  %central_header199 = getelementptr inbounds %struct.curfile64_info, ptr %ci198, i32 0, i32 4
  %127 = load ptr, ptr %central_header199, align 8
  %add.ptr200 = getelementptr inbounds i8, ptr %127, i64 42
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr200, i64 noundef 4294967295, i32 noundef 4)
  br label %if.end207

if.else201:                                       ; preds = %if.end192
  %128 = load ptr, ptr %zi, align 8
  %ci202 = getelementptr inbounds %struct.zip64_internal, ptr %128, i32 0, i32 4
  %central_header203 = getelementptr inbounds %struct.curfile64_info, ptr %ci202, i32 0, i32 4
  %129 = load ptr, ptr %central_header203, align 8
  %add.ptr204 = getelementptr inbounds i8, ptr %129, i64 42
  %130 = load ptr, ptr %zi, align 8
  %ci205 = getelementptr inbounds %struct.zip64_internal, ptr %130, i32 0, i32 4
  %pos_local_header206 = getelementptr inbounds %struct.curfile64_info, ptr %ci205, i32 0, i32 3
  %131 = load i64, ptr %pos_local_header206, align 8
  %132 = load ptr, ptr %zi, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %132, i32 0, i32 6
  %133 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %131, %133
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr204, i64 noundef %sub, i32 noundef 4)
  br label %if.end207

if.end207:                                        ; preds = %if.else201, %if.then197
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end207
  %134 = load i32, ptr %i, align 4
  %135 = load i32, ptr %size_filename, align 4
  %cmp208 = icmp ult i32 %134, %135
  br i1 %cmp208, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %136 = load ptr, ptr %filename.addr, align 8
  %137 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %137 to i64
  %add.ptr210 = getelementptr inbounds i8, ptr %136, i64 %idx.ext
  %138 = load i8, ptr %add.ptr210, align 1
  %139 = load ptr, ptr %zi, align 8
  %ci211 = getelementptr inbounds %struct.zip64_internal, ptr %139, i32 0, i32 4
  %central_header212 = getelementptr inbounds %struct.curfile64_info, ptr %ci211, i32 0, i32 4
  %140 = load ptr, ptr %central_header212, align 8
  %add.ptr213 = getelementptr inbounds i8, ptr %140, i64 46
  %141 = load i32, ptr %i, align 4
  %idx.ext214 = zext i32 %141 to i64
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr213, i64 %idx.ext214
  store i8 %138, ptr %add.ptr215, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %142 = load i32, ptr %i, align 4
  %inc = add i32 %142, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc229, %for.end
  %143 = load i32, ptr %i, align 4
  %144 = load i32, ptr %size_extrafield_global.addr, align 4
  %cmp217 = icmp ult i32 %143, %144
  br i1 %cmp217, label %for.body219, label %for.end231

for.body219:                                      ; preds = %for.cond216
  %145 = load ptr, ptr %extrafield_global.addr, align 8
  %146 = load i32, ptr %i, align 4
  %idx.ext220 = zext i32 %146 to i64
  %add.ptr221 = getelementptr inbounds i8, ptr %145, i64 %idx.ext220
  %147 = load i8, ptr %add.ptr221, align 1
  %148 = load ptr, ptr %zi, align 8
  %ci222 = getelementptr inbounds %struct.zip64_internal, ptr %148, i32 0, i32 4
  %central_header223 = getelementptr inbounds %struct.curfile64_info, ptr %ci222, i32 0, i32 4
  %149 = load ptr, ptr %central_header223, align 8
  %add.ptr224 = getelementptr inbounds i8, ptr %149, i64 46
  %150 = load i32, ptr %size_filename, align 4
  %idx.ext225 = zext i32 %150 to i64
  %add.ptr226 = getelementptr inbounds i8, ptr %add.ptr224, i64 %idx.ext225
  %151 = load i32, ptr %i, align 4
  %idx.ext227 = zext i32 %151 to i64
  %add.ptr228 = getelementptr inbounds i8, ptr %add.ptr226, i64 %idx.ext227
  store i8 %147, ptr %add.ptr228, align 1
  br label %for.inc229

for.inc229:                                       ; preds = %for.body219
  %152 = load i32, ptr %i, align 4
  %inc230 = add i32 %152, 1
  store i32 %inc230, ptr %i, align 4
  br label %for.cond216, !llvm.loop !12

for.end231:                                       ; preds = %for.cond216
  store i32 0, ptr %i, align 4
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc247, %for.end231
  %153 = load i32, ptr %i, align 4
  %154 = load i32, ptr %size_comment, align 4
  %cmp233 = icmp ult i32 %153, %154
  br i1 %cmp233, label %for.body235, label %for.end249

for.body235:                                      ; preds = %for.cond232
  %155 = load ptr, ptr %comment.addr, align 8
  %156 = load i32, ptr %i, align 4
  %idx.ext236 = zext i32 %156 to i64
  %add.ptr237 = getelementptr inbounds i8, ptr %155, i64 %idx.ext236
  %157 = load i8, ptr %add.ptr237, align 1
  %158 = load ptr, ptr %zi, align 8
  %ci238 = getelementptr inbounds %struct.zip64_internal, ptr %158, i32 0, i32 4
  %central_header239 = getelementptr inbounds %struct.curfile64_info, ptr %ci238, i32 0, i32 4
  %159 = load ptr, ptr %central_header239, align 8
  %add.ptr240 = getelementptr inbounds i8, ptr %159, i64 46
  %160 = load i32, ptr %size_filename, align 4
  %idx.ext241 = zext i32 %160 to i64
  %add.ptr242 = getelementptr inbounds i8, ptr %add.ptr240, i64 %idx.ext241
  %161 = load i32, ptr %size_extrafield_global.addr, align 4
  %idx.ext243 = zext i32 %161 to i64
  %add.ptr244 = getelementptr inbounds i8, ptr %add.ptr242, i64 %idx.ext243
  %162 = load i32, ptr %i, align 4
  %idx.ext245 = zext i32 %162 to i64
  %add.ptr246 = getelementptr inbounds i8, ptr %add.ptr244, i64 %idx.ext245
  store i8 %157, ptr %add.ptr246, align 1
  br label %for.inc247

for.inc247:                                       ; preds = %for.body235
  %163 = load i32, ptr %i, align 4
  %inc248 = add i32 %163, 1
  store i32 %inc248, ptr %i, align 4
  br label %for.cond232, !llvm.loop !13

for.end249:                                       ; preds = %for.cond232
  %164 = load ptr, ptr %zi, align 8
  %ci250 = getelementptr inbounds %struct.zip64_internal, ptr %164, i32 0, i32 4
  %central_header251 = getelementptr inbounds %struct.curfile64_info, ptr %ci250, i32 0, i32 4
  %165 = load ptr, ptr %central_header251, align 8
  %cmp252 = icmp eq ptr %165, null
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %for.end249
  store i32 -104, ptr %retval, align 4
  br label %return

if.end255:                                        ; preds = %for.end249
  %166 = load i32, ptr %zip64.addr, align 4
  %167 = load ptr, ptr %zi, align 8
  %ci256 = getelementptr inbounds %struct.zip64_internal, ptr %167, i32 0, i32 4
  %zip64257 = getelementptr inbounds %struct.curfile64_info, ptr %ci256, i32 0, i32 15
  store i32 %166, ptr %zip64257, align 4
  %168 = load ptr, ptr %zi, align 8
  %ci258 = getelementptr inbounds %struct.zip64_internal, ptr %168, i32 0, i32 4
  %totalCompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci258, i32 0, i32 17
  store i64 0, ptr %totalCompressedData, align 8
  %169 = load ptr, ptr %zi, align 8
  %ci259 = getelementptr inbounds %struct.zip64_internal, ptr %169, i32 0, i32 4
  %totalUncompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci259, i32 0, i32 18
  store i64 0, ptr %totalUncompressedData, align 8
  %170 = load ptr, ptr %zi, align 8
  %ci260 = getelementptr inbounds %struct.zip64_internal, ptr %170, i32 0, i32 4
  %pos_zip64extrainfo = getelementptr inbounds %struct.curfile64_info, ptr %ci260, i32 0, i32 16
  store i64 0, ptr %pos_zip64extrainfo, align 8
  %171 = load ptr, ptr %zi, align 8
  %172 = load ptr, ptr %filename.addr, align 8
  %173 = load i32, ptr %size_extrafield_local.addr, align 4
  %174 = load ptr, ptr %extrafield_local.addr, align 8
  %call261 = call i32 @Write_LocalFileHeader(ptr noundef %171, ptr noundef %172, i32 noundef %173, ptr noundef %174)
  store i32 %call261, ptr %err, align 4
  %175 = load ptr, ptr %zi, align 8
  %ci262 = getelementptr inbounds %struct.zip64_internal, ptr %175, i32 0, i32 4
  %stream = getelementptr inbounds %struct.curfile64_info, ptr %ci262, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %176 = load ptr, ptr %zi, align 8
  %ci263 = getelementptr inbounds %struct.zip64_internal, ptr %176, i32 0, i32 4
  %stream264 = getelementptr inbounds %struct.curfile64_info, ptr %ci263, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream264, i32 0, i32 4
  store i32 65536, ptr %avail_out, align 8
  %177 = load ptr, ptr %zi, align 8
  %ci265 = getelementptr inbounds %struct.zip64_internal, ptr %177, i32 0, i32 4
  %buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci265, i32 0, i32 11
  %arraydecay = getelementptr inbounds [65536 x i8], ptr %buffered_data, i64 0, i64 0
  %178 = load ptr, ptr %zi, align 8
  %ci266 = getelementptr inbounds %struct.zip64_internal, ptr %178, i32 0, i32 4
  %stream267 = getelementptr inbounds %struct.curfile64_info, ptr %ci266, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream267, i32 0, i32 3
  store ptr %arraydecay, ptr %next_out, align 8
  %179 = load ptr, ptr %zi, align 8
  %ci268 = getelementptr inbounds %struct.zip64_internal, ptr %179, i32 0, i32 4
  %stream269 = getelementptr inbounds %struct.curfile64_info, ptr %ci268, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream269, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %180 = load ptr, ptr %zi, align 8
  %ci270 = getelementptr inbounds %struct.zip64_internal, ptr %180, i32 0, i32 4
  %stream271 = getelementptr inbounds %struct.curfile64_info, ptr %ci270, i32 0, i32 0
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream271, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %181 = load ptr, ptr %zi, align 8
  %ci272 = getelementptr inbounds %struct.zip64_internal, ptr %181, i32 0, i32 4
  %stream273 = getelementptr inbounds %struct.curfile64_info, ptr %ci272, i32 0, i32 0
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %stream273, i32 0, i32 11
  store i32 0, ptr %data_type, align 8
  %182 = load i32, ptr %err, align 4
  %cmp274 = icmp eq i32 %182, 0
  br i1 %cmp274, label %land.lhs.true276, label %if.end319

land.lhs.true276:                                 ; preds = %if.end255
  %183 = load ptr, ptr %zi, align 8
  %ci277 = getelementptr inbounds %struct.zip64_internal, ptr %183, i32 0, i32 4
  %method278 = getelementptr inbounds %struct.curfile64_info, ptr %ci277, i32 0, i32 9
  %184 = load i32, ptr %method278, align 8
  %cmp279 = icmp eq i32 %184, 8
  br i1 %cmp279, label %land.lhs.true281, label %if.end319

land.lhs.true281:                                 ; preds = %land.lhs.true276
  %185 = load ptr, ptr %zi, align 8
  %ci282 = getelementptr inbounds %struct.zip64_internal, ptr %185, i32 0, i32 4
  %raw283 = getelementptr inbounds %struct.curfile64_info, ptr %ci282, i32 0, i32 10
  %186 = load i32, ptr %raw283, align 4
  %tobool284 = icmp ne i32 %186, 0
  br i1 %tobool284, label %if.end319, label %if.then285

if.then285:                                       ; preds = %land.lhs.true281
  %187 = load ptr, ptr %zi, align 8
  %ci286 = getelementptr inbounds %struct.zip64_internal, ptr %187, i32 0, i32 4
  %method287 = getelementptr inbounds %struct.curfile64_info, ptr %ci286, i32 0, i32 9
  %188 = load i32, ptr %method287, align 8
  %cmp288 = icmp eq i32 %188, 8
  br i1 %cmp288, label %if.then290, label %if.else311

if.then290:                                       ; preds = %if.then285
  %189 = load ptr, ptr %zi, align 8
  %ci291 = getelementptr inbounds %struct.zip64_internal, ptr %189, i32 0, i32 4
  %stream292 = getelementptr inbounds %struct.curfile64_info, ptr %ci291, i32 0, i32 0
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %stream292, i32 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %190 = load ptr, ptr %zi, align 8
  %ci293 = getelementptr inbounds %struct.zip64_internal, ptr %190, i32 0, i32 4
  %stream294 = getelementptr inbounds %struct.curfile64_info, ptr %ci293, i32 0, i32 0
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %stream294, i32 0, i32 9
  store ptr null, ptr %zfree, align 8
  %191 = load ptr, ptr %zi, align 8
  %ci295 = getelementptr inbounds %struct.zip64_internal, ptr %191, i32 0, i32 4
  %stream296 = getelementptr inbounds %struct.curfile64_info, ptr %ci295, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %stream296, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  %192 = load i32, ptr %windowBits.addr, align 4
  %cmp297 = icmp sgt i32 %192, 0
  br i1 %cmp297, label %if.then299, label %if.end301

if.then299:                                       ; preds = %if.then290
  %193 = load i32, ptr %windowBits.addr, align 4
  %sub300 = sub nsw i32 0, %193
  store i32 %sub300, ptr %windowBits.addr, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.then299, %if.then290
  %194 = load ptr, ptr %zi, align 8
  %ci302 = getelementptr inbounds %struct.zip64_internal, ptr %194, i32 0, i32 4
  %stream303 = getelementptr inbounds %struct.curfile64_info, ptr %ci302, i32 0, i32 0
  %195 = load i32, ptr %level.addr, align 4
  %196 = load i32, ptr %windowBits.addr, align 4
  %197 = load i32, ptr %memLevel.addr, align 4
  %198 = load i32, ptr %strategy.addr, align 4
  %call304 = call i32 @deflateInit2_(ptr noundef %stream303, i32 noundef %195, i32 noundef 8, i32 noundef %196, i32 noundef %197, i32 noundef %198, ptr noundef @.str.1, i32 noundef 112)
  store i32 %call304, ptr %err, align 4
  %199 = load i32, ptr %err, align 4
  %cmp305 = icmp eq i32 %199, 0
  br i1 %cmp305, label %if.then307, label %if.end310

if.then307:                                       ; preds = %if.end301
  %200 = load ptr, ptr %zi, align 8
  %ci308 = getelementptr inbounds %struct.zip64_internal, ptr %200, i32 0, i32 4
  %stream_initialised309 = getelementptr inbounds %struct.curfile64_info, ptr %ci308, i32 0, i32 1
  store i32 8, ptr %stream_initialised309, align 8
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %if.end301
  br label %if.end318

if.else311:                                       ; preds = %if.then285
  %201 = load ptr, ptr %zi, align 8
  %ci312 = getelementptr inbounds %struct.zip64_internal, ptr %201, i32 0, i32 4
  %method313 = getelementptr inbounds %struct.curfile64_info, ptr %ci312, i32 0, i32 9
  %202 = load i32, ptr %method313, align 8
  %cmp314 = icmp eq i32 %202, 12
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %if.else311
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %if.else311
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.end310
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %land.lhs.true281, %land.lhs.true276, %if.end255
  %203 = load ptr, ptr %zi, align 8
  %ci320 = getelementptr inbounds %struct.zip64_internal, ptr %203, i32 0, i32 4
  %crypt_header_size = getelementptr inbounds %struct.curfile64_info, ptr %ci320, i32 0, i32 21
  store i32 0, ptr %crypt_header_size, align 8
  %204 = load i32, ptr %err, align 4
  %cmp321 = icmp eq i32 %204, 0
  br i1 %cmp321, label %land.lhs.true323, label %if.end352

land.lhs.true323:                                 ; preds = %if.end319
  %205 = load ptr, ptr %password.addr, align 8
  %cmp324 = icmp ne ptr %205, null
  br i1 %cmp324, label %if.then326, label %if.end352

if.then326:                                       ; preds = %land.lhs.true323
  %206 = load ptr, ptr %zi, align 8
  %ci327 = getelementptr inbounds %struct.zip64_internal, ptr %206, i32 0, i32 4
  %encrypt328 = getelementptr inbounds %struct.curfile64_info, ptr %ci327, i32 0, i32 14
  store i32 1, ptr %encrypt328, align 8
  %call329 = call ptr @get_crc_table()
  %207 = load ptr, ptr %zi, align 8
  %ci330 = getelementptr inbounds %struct.zip64_internal, ptr %207, i32 0, i32 4
  %pcrc_32_tab = getelementptr inbounds %struct.curfile64_info, ptr %ci330, i32 0, i32 20
  store ptr %call329, ptr %pcrc_32_tab, align 8
  %208 = load ptr, ptr %password.addr, align 8
  %arraydecay331 = getelementptr inbounds [12 x i8], ptr %bufHead, i64 0, i64 0
  %209 = load ptr, ptr %zi, align 8
  %ci332 = getelementptr inbounds %struct.zip64_internal, ptr %209, i32 0, i32 4
  %keys = getelementptr inbounds %struct.curfile64_info, ptr %ci332, i32 0, i32 19
  %arraydecay333 = getelementptr inbounds [3 x i64], ptr %keys, i64 0, i64 0
  %210 = load ptr, ptr %zi, align 8
  %ci334 = getelementptr inbounds %struct.zip64_internal, ptr %210, i32 0, i32 4
  %pcrc_32_tab335 = getelementptr inbounds %struct.curfile64_info, ptr %ci334, i32 0, i32 20
  %211 = load ptr, ptr %pcrc_32_tab335, align 8
  %212 = load i64, ptr %crcForCrypting.addr, align 8
  %call336 = call i32 @crypthead(ptr noundef %208, ptr noundef %arraydecay331, i32 noundef 12, ptr noundef %arraydecay333, ptr noundef %211, i64 noundef %212)
  store i32 %call336, ptr %sizeHead, align 4
  %213 = load i32, ptr %sizeHead, align 4
  %214 = load ptr, ptr %zi, align 8
  %ci337 = getelementptr inbounds %struct.zip64_internal, ptr %214, i32 0, i32 4
  %crypt_header_size338 = getelementptr inbounds %struct.curfile64_info, ptr %ci337, i32 0, i32 21
  store i32 %213, ptr %crypt_header_size338, align 8
  %215 = load ptr, ptr %zi, align 8
  %z_filefunc339 = getelementptr inbounds %struct.zip64_internal, ptr %215, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc339, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %216 = load ptr, ptr %zwrite_file, align 8
  %217 = load ptr, ptr %zi, align 8
  %z_filefunc340 = getelementptr inbounds %struct.zip64_internal, ptr %217, i32 0, i32 0
  %zfile_func64341 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc340, i32 0, i32 0
  %opaque342 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64341, i32 0, i32 7
  %218 = load ptr, ptr %opaque342, align 8
  %219 = load ptr, ptr %zi, align 8
  %filestream343 = getelementptr inbounds %struct.zip64_internal, ptr %219, i32 0, i32 1
  %220 = load ptr, ptr %filestream343, align 8
  %arraydecay344 = getelementptr inbounds [12 x i8], ptr %bufHead, i64 0, i64 0
  %221 = load i32, ptr %sizeHead, align 4
  %conv345 = zext i32 %221 to i64
  %call346 = call i64 %216(ptr noundef %218, ptr noundef %220, ptr noundef %arraydecay344, i64 noundef %conv345)
  %222 = load i32, ptr %sizeHead, align 4
  %conv347 = zext i32 %222 to i64
  %cmp348 = icmp ne i64 %call346, %conv347
  br i1 %cmp348, label %if.then350, label %if.end351

if.then350:                                       ; preds = %if.then326
  store i32 -1, ptr %err, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.then350, %if.then326
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %land.lhs.true323, %if.end319
  %223 = load i32, ptr %err, align 4
  %cmp353 = icmp eq i32 %223, 0
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.end352
  %224 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip356 = getelementptr inbounds %struct.zip64_internal, ptr %224, i32 0, i32 3
  store i32 1, ptr %in_opened_file_inzip356, align 8
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %if.end352
  %225 = load i32, ptr %err, align 4
  store i32 %225, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end357, %if.then254, %if.then24, %if.then18, %if.then14, %if.then8, %if.then3, %if.then
  %226 = load i32, ptr %retval, align 4
  ret i32 %226
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipCloseFileInZip(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %call = call i32 @zipCloseFileInZipRaw(ptr noundef %0, i64 noundef 0, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @zip64local_TmzDateToDosDate(ptr noundef %ptm) #0 {
entry:
  %ptm.addr = alloca ptr, align 8
  %year = alloca i64, align 8
  store ptr %ptm, ptr %ptm.addr, align 8
  %0 = load ptr, ptr %ptm.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm_zip_s, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %tm_year, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %year, align 8
  %2 = load i64, ptr %year, align 8
  %cmp = icmp uge i64 %2, 1980
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %year, align 8
  %sub = sub i64 %3, 1980
  store i64 %sub, ptr %year, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %year, align 8
  %cmp2 = icmp uge i64 %4, 80
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %5 = load i64, ptr %year, align 8
  %sub5 = sub i64 %5, 80
  store i64 %sub5, ptr %year, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %ptm.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm_zip_s, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tm_mday, align 4
  %conv7 = sext i32 %7 to i64
  %8 = load ptr, ptr %ptm.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm_zip_s, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %tm_mon, align 4
  %add = add nsw i32 %9, 1
  %conv8 = sext i32 %add to i64
  %mul = mul i64 32, %conv8
  %add9 = add i64 %conv7, %mul
  %10 = load i64, ptr %year, align 8
  %mul10 = mul i64 512, %10
  %add11 = add i64 %add9, %mul10
  %shl = shl i64 %add11, 16
  %11 = load ptr, ptr %ptm.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm_zip_s, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %tm_sec, align 4
  %conv12 = sext i32 %12 to i64
  %div = udiv i64 %conv12, 2
  %13 = load ptr, ptr %ptm.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm_zip_s, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %tm_min, align 4
  %conv13 = sext i32 %14 to i64
  %mul14 = mul i64 32, %conv13
  %add15 = add i64 %div, %mul14
  %15 = load ptr, ptr %ptm.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm_zip_s, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %tm_hour, align 4
  %conv16 = sext i32 %16 to i64
  %mul17 = mul i64 2048, %conv16
  %add18 = add i64 %add15, %mul17
  %or = or i64 %shl, %add18
  ret i64 %or
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @isutf8(ptr noundef %str, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
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
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i64, ptr %len.addr, align 8
  %call = call i32 @utf8len(ptr noundef %1, i64 noundef %2)
  store i32 %call, ptr %code, align 4
  %3 = load i32, ptr %code, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i32, ptr %code, align 4
  %cmp1 = icmp sgt i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %utf8, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %code, align 4
  %6 = load ptr, ptr %str.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %str.addr, align 8
  %7 = load i32, ptr %code, align 4
  %conv = zext i32 %7 to i64
  %8 = load i64, ptr %len.addr, align 8
  %sub = sub i64 %8, %conv
  store i64 %sub, ptr %len.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %utf8, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @zip64local_putValue_inmemory(ptr noundef %dest, i64 noundef %x, i32 noundef %nbByte) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %nbByte.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i32 %nbByte, ptr %nbByte.addr, align 4
  %0 = load ptr, ptr %dest.addr, align 8
  store ptr %0, ptr %buf, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %n, align 4
  %2 = load i32, ptr %nbByte.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %x.addr, align 8
  %and = and i64 %3, 255
  %conv = trunc i64 %and to i8
  %4 = load ptr, ptr %buf, align 8
  %5 = load i32, ptr %n, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %6 = load i64, ptr %x.addr, align 8
  %shr = lshr i64 %6, 8
  store i64 %shr, ptr %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %x.addr, align 8
  %cmp1 = icmp ne i64 %8, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, ptr %n, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %if.then
  %9 = load i32, ptr %n, align 4
  %10 = load i32, ptr %nbByte.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %buf, align 8
  %12 = load i32, ptr %n, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom7
  store i8 -1, ptr %arrayidx8, align 1
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %13 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, ptr %n, align 4
  br label %for.cond3, !llvm.loop !16

for.end11:                                        ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end11, %for.end
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
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size_filename, align 4
  %1 = load i32, ptr %size_extrafield_local.addr, align 4
  store i32 %1, ptr %size_extrafield, align 4
  %2 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %filestream, align 8
  %call1 = call i32 @zip64local_putValue(ptr noundef %z_filefunc, ptr noundef %4, i64 noundef 67324752, i32 noundef 4)
  store i32 %call1, ptr %err, align 4
  %5 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zi.addr, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 4
  %zip64 = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 15
  %7 = load i32, ptr %zip64, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %zi.addr, align 8
  %z_filefunc4 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zi.addr, align 8
  %filestream5 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %filestream5, align 8
  %call6 = call i32 @zip64local_putValue(ptr noundef %z_filefunc4, ptr noundef %10, i64 noundef 45, i32 noundef 2)
  store i32 %call6, ptr %err, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %zi.addr, align 8
  %z_filefunc7 = getelementptr inbounds %struct.zip64_internal, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zi.addr, align 8
  %filestream8 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %filestream8, align 8
  %call9 = call i32 @zip64local_putValue(ptr noundef %z_filefunc7, ptr noundef %13, i64 noundef 20, i32 noundef 2)
  store i32 %call9, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %14 = load i32, ptr %err, align 4
  %cmp11 = icmp eq i32 %14, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %15 = load ptr, ptr %zi.addr, align 8
  %z_filefunc14 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zi.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %filestream15, align 8
  %18 = load ptr, ptr %zi.addr, align 8
  %ci16 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 4
  %flag = getelementptr inbounds %struct.curfile64_info, ptr %ci16, i32 0, i32 8
  %19 = load i64, ptr %flag, align 8
  %call17 = call i32 @zip64local_putValue(ptr noundef %z_filefunc14, ptr noundef %17, i64 noundef %19, i32 noundef 2)
  store i32 %call17, ptr %err, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10
  %20 = load i32, ptr %err, align 4
  %cmp19 = icmp eq i32 %20, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end18
  %21 = load ptr, ptr %zi.addr, align 8
  %z_filefunc22 = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zi.addr, align 8
  %filestream23 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %filestream23, align 8
  %24 = load ptr, ptr %zi.addr, align 8
  %ci24 = getelementptr inbounds %struct.zip64_internal, ptr %24, i32 0, i32 4
  %method = getelementptr inbounds %struct.curfile64_info, ptr %ci24, i32 0, i32 9
  %25 = load i32, ptr %method, align 8
  %conv25 = sext i32 %25 to i64
  %call26 = call i32 @zip64local_putValue(ptr noundef %z_filefunc22, ptr noundef %23, i64 noundef %conv25, i32 noundef 2)
  store i32 %call26, ptr %err, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end18
  %26 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %26, 0
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end27
  %27 = load ptr, ptr %zi.addr, align 8
  %z_filefunc31 = getelementptr inbounds %struct.zip64_internal, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %zi.addr, align 8
  %filestream32 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %filestream32, align 8
  %30 = load ptr, ptr %zi.addr, align 8
  %ci33 = getelementptr inbounds %struct.zip64_internal, ptr %30, i32 0, i32 4
  %dosDate = getelementptr inbounds %struct.curfile64_info, ptr %ci33, i32 0, i32 12
  %31 = load i64, ptr %dosDate, align 8
  %call34 = call i32 @zip64local_putValue(ptr noundef %z_filefunc31, ptr noundef %29, i64 noundef %31, i32 noundef 4)
  store i32 %call34, ptr %err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27
  %32 = load i32, ptr %err, align 4
  %cmp36 = icmp eq i32 %32, 0
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end35
  %33 = load ptr, ptr %zi.addr, align 8
  %z_filefunc39 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zi.addr, align 8
  %filestream40 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %filestream40, align 8
  %call41 = call i32 @zip64local_putValue(ptr noundef %z_filefunc39, ptr noundef %35, i64 noundef 0, i32 noundef 4)
  store i32 %call41, ptr %err, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35
  %36 = load i32, ptr %err, align 4
  %cmp43 = icmp eq i32 %36, 0
  br i1 %cmp43, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.end42
  %37 = load ptr, ptr %zi.addr, align 8
  %ci46 = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 4
  %zip6447 = getelementptr inbounds %struct.curfile64_info, ptr %ci46, i32 0, i32 15
  %38 = load i32, ptr %zip6447, align 4
  %tobool48 = icmp ne i32 %38, 0
  br i1 %tobool48, label %if.then49, label %if.else53

if.then49:                                        ; preds = %if.then45
  %39 = load ptr, ptr %zi.addr, align 8
  %z_filefunc50 = getelementptr inbounds %struct.zip64_internal, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zi.addr, align 8
  %filestream51 = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %filestream51, align 8
  %call52 = call i32 @zip64local_putValue(ptr noundef %z_filefunc50, ptr noundef %41, i64 noundef 4294967295, i32 noundef 4)
  store i32 %call52, ptr %err, align 4
  br label %if.end57

if.else53:                                        ; preds = %if.then45
  %42 = load ptr, ptr %zi.addr, align 8
  %z_filefunc54 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %zi.addr, align 8
  %filestream55 = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %filestream55, align 8
  %call56 = call i32 @zip64local_putValue(ptr noundef %z_filefunc54, ptr noundef %44, i64 noundef 0, i32 noundef 4)
  store i32 %call56, ptr %err, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.then49
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end42
  %45 = load i32, ptr %err, align 4
  %cmp59 = icmp eq i32 %45, 0
  br i1 %cmp59, label %if.then61, label %if.end74

if.then61:                                        ; preds = %if.end58
  %46 = load ptr, ptr %zi.addr, align 8
  %ci62 = getelementptr inbounds %struct.zip64_internal, ptr %46, i32 0, i32 4
  %zip6463 = getelementptr inbounds %struct.curfile64_info, ptr %ci62, i32 0, i32 15
  %47 = load i32, ptr %zip6463, align 4
  %tobool64 = icmp ne i32 %47, 0
  br i1 %tobool64, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.then61
  %48 = load ptr, ptr %zi.addr, align 8
  %z_filefunc66 = getelementptr inbounds %struct.zip64_internal, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %zi.addr, align 8
  %filestream67 = getelementptr inbounds %struct.zip64_internal, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %filestream67, align 8
  %call68 = call i32 @zip64local_putValue(ptr noundef %z_filefunc66, ptr noundef %50, i64 noundef 4294967295, i32 noundef 4)
  store i32 %call68, ptr %err, align 4
  br label %if.end73

if.else69:                                        ; preds = %if.then61
  %51 = load ptr, ptr %zi.addr, align 8
  %z_filefunc70 = getelementptr inbounds %struct.zip64_internal, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zi.addr, align 8
  %filestream71 = getelementptr inbounds %struct.zip64_internal, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %filestream71, align 8
  %call72 = call i32 @zip64local_putValue(ptr noundef %z_filefunc70, ptr noundef %53, i64 noundef 0, i32 noundef 4)
  store i32 %call72, ptr %err, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then65
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end58
  %54 = load i32, ptr %err, align 4
  %cmp75 = icmp eq i32 %54, 0
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %if.end74
  %55 = load ptr, ptr %zi.addr, align 8
  %z_filefunc78 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %zi.addr, align 8
  %filestream79 = getelementptr inbounds %struct.zip64_internal, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %filestream79, align 8
  %58 = load i32, ptr %size_filename, align 4
  %conv80 = zext i32 %58 to i64
  %call81 = call i32 @zip64local_putValue(ptr noundef %z_filefunc78, ptr noundef %57, i64 noundef %conv80, i32 noundef 2)
  store i32 %call81, ptr %err, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end74
  %59 = load ptr, ptr %zi.addr, align 8
  %ci83 = getelementptr inbounds %struct.zip64_internal, ptr %59, i32 0, i32 4
  %zip6484 = getelementptr inbounds %struct.curfile64_info, ptr %ci83, i32 0, i32 15
  %60 = load i32, ptr %zip6484, align 4
  %tobool85 = icmp ne i32 %60, 0
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  %61 = load i32, ptr %size_extrafield, align 4
  %add = add i32 %61, 20
  store i32 %add, ptr %size_extrafield, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82
  %62 = load i32, ptr %err, align 4
  %cmp88 = icmp eq i32 %62, 0
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end87
  %63 = load ptr, ptr %zi.addr, align 8
  %z_filefunc91 = getelementptr inbounds %struct.zip64_internal, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %zi.addr, align 8
  %filestream92 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %filestream92, align 8
  %66 = load i32, ptr %size_extrafield, align 4
  %conv93 = zext i32 %66 to i64
  %call94 = call i32 @zip64local_putValue(ptr noundef %z_filefunc91, ptr noundef %65, i64 noundef %conv93, i32 noundef 2)
  store i32 %call94, ptr %err, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87
  %67 = load i32, ptr %err, align 4
  %cmp96 = icmp eq i32 %67, 0
  br i1 %cmp96, label %land.lhs.true, label %if.end112

land.lhs.true:                                    ; preds = %if.end95
  %68 = load i32, ptr %size_filename, align 4
  %cmp98 = icmp ugt i32 %68, 0
  br i1 %cmp98, label %if.then100, label %if.end112

if.then100:                                       ; preds = %land.lhs.true
  %69 = load ptr, ptr %zi.addr, align 8
  %z_filefunc101 = getelementptr inbounds %struct.zip64_internal, ptr %69, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc101, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %70 = load ptr, ptr %zwrite_file, align 8
  %71 = load ptr, ptr %zi.addr, align 8
  %z_filefunc102 = getelementptr inbounds %struct.zip64_internal, ptr %71, i32 0, i32 0
  %zfile_func64103 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc102, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64103, i32 0, i32 7
  %72 = load ptr, ptr %opaque, align 8
  %73 = load ptr, ptr %zi.addr, align 8
  %filestream104 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %filestream104, align 8
  %75 = load ptr, ptr %filename.addr, align 8
  %76 = load i32, ptr %size_filename, align 4
  %conv105 = zext i32 %76 to i64
  %call106 = call i64 %70(ptr noundef %72, ptr noundef %74, ptr noundef %75, i64 noundef %conv105)
  %77 = load i32, ptr %size_filename, align 4
  %conv107 = zext i32 %77 to i64
  %cmp108 = icmp ne i64 %call106, %conv107
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then100
  store i32 -1, ptr %err, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.then100
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %land.lhs.true, %if.end95
  %78 = load i32, ptr %err, align 4
  %cmp113 = icmp eq i32 %78, 0
  br i1 %cmp113, label %land.lhs.true115, label %if.end133

land.lhs.true115:                                 ; preds = %if.end112
  %79 = load i32, ptr %size_extrafield_local.addr, align 4
  %cmp116 = icmp ugt i32 %79, 0
  br i1 %cmp116, label %if.then118, label %if.end133

if.then118:                                       ; preds = %land.lhs.true115
  %80 = load ptr, ptr %zi.addr, align 8
  %z_filefunc119 = getelementptr inbounds %struct.zip64_internal, ptr %80, i32 0, i32 0
  %zfile_func64120 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc119, i32 0, i32 0
  %zwrite_file121 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64120, i32 0, i32 2
  %81 = load ptr, ptr %zwrite_file121, align 8
  %82 = load ptr, ptr %zi.addr, align 8
  %z_filefunc122 = getelementptr inbounds %struct.zip64_internal, ptr %82, i32 0, i32 0
  %zfile_func64123 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc122, i32 0, i32 0
  %opaque124 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64123, i32 0, i32 7
  %83 = load ptr, ptr %opaque124, align 8
  %84 = load ptr, ptr %zi.addr, align 8
  %filestream125 = getelementptr inbounds %struct.zip64_internal, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %filestream125, align 8
  %86 = load ptr, ptr %extrafield_local.addr, align 8
  %87 = load i32, ptr %size_extrafield_local.addr, align 4
  %conv126 = zext i32 %87 to i64
  %call127 = call i64 %81(ptr noundef %83, ptr noundef %85, ptr noundef %86, i64 noundef %conv126)
  %88 = load i32, ptr %size_extrafield_local.addr, align 4
  %conv128 = zext i32 %88 to i64
  %cmp129 = icmp ne i64 %call127, %conv128
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.then118
  store i32 -1, ptr %err, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.then118
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %land.lhs.true115, %if.end112
  %89 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %89, 0
  br i1 %cmp134, label %land.lhs.true136, label %if.end159

land.lhs.true136:                                 ; preds = %if.end133
  %90 = load ptr, ptr %zi.addr, align 8
  %ci137 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 4
  %zip64138 = getelementptr inbounds %struct.curfile64_info, ptr %ci137, i32 0, i32 15
  %91 = load i32, ptr %zip64138, align 4
  %tobool139 = icmp ne i32 %91, 0
  br i1 %tobool139, label %if.then140, label %if.end159

if.then140:                                       ; preds = %land.lhs.true136
  store i16 1, ptr %HeaderID, align 2
  store i16 16, ptr %DataSize, align 2
  store i64 0, ptr %CompressedSize, align 8
  store i64 0, ptr %UncompressedSize, align 8
  %92 = load ptr, ptr %zi.addr, align 8
  %z_filefunc141 = getelementptr inbounds %struct.zip64_internal, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %zi.addr, align 8
  %filestream142 = getelementptr inbounds %struct.zip64_internal, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %filestream142, align 8
  %call143 = call i64 @call_ztell64(ptr noundef %z_filefunc141, ptr noundef %94)
  %95 = load ptr, ptr %zi.addr, align 8
  %ci144 = getelementptr inbounds %struct.zip64_internal, ptr %95, i32 0, i32 4
  %pos_zip64extrainfo = getelementptr inbounds %struct.curfile64_info, ptr %ci144, i32 0, i32 16
  store i64 %call143, ptr %pos_zip64extrainfo, align 8
  %96 = load ptr, ptr %zi.addr, align 8
  %z_filefunc145 = getelementptr inbounds %struct.zip64_internal, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %zi.addr, align 8
  %filestream146 = getelementptr inbounds %struct.zip64_internal, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %filestream146, align 8
  %99 = load i16, ptr %HeaderID, align 2
  %conv147 = sext i16 %99 to i64
  %call148 = call i32 @zip64local_putValue(ptr noundef %z_filefunc145, ptr noundef %98, i64 noundef %conv147, i32 noundef 2)
  store i32 %call148, ptr %err, align 4
  %100 = load ptr, ptr %zi.addr, align 8
  %z_filefunc149 = getelementptr inbounds %struct.zip64_internal, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %zi.addr, align 8
  %filestream150 = getelementptr inbounds %struct.zip64_internal, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %filestream150, align 8
  %103 = load i16, ptr %DataSize, align 2
  %conv151 = sext i16 %103 to i64
  %call152 = call i32 @zip64local_putValue(ptr noundef %z_filefunc149, ptr noundef %102, i64 noundef %conv151, i32 noundef 2)
  store i32 %call152, ptr %err, align 4
  %104 = load ptr, ptr %zi.addr, align 8
  %z_filefunc153 = getelementptr inbounds %struct.zip64_internal, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %zi.addr, align 8
  %filestream154 = getelementptr inbounds %struct.zip64_internal, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %filestream154, align 8
  %107 = load i64, ptr %UncompressedSize, align 8
  %call155 = call i32 @zip64local_putValue(ptr noundef %z_filefunc153, ptr noundef %106, i64 noundef %107, i32 noundef 8)
  store i32 %call155, ptr %err, align 4
  %108 = load ptr, ptr %zi.addr, align 8
  %z_filefunc156 = getelementptr inbounds %struct.zip64_internal, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %zi.addr, align 8
  %filestream157 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %filestream157, align 8
  %111 = load i64, ptr %CompressedSize, align 8
  %call158 = call i32 @zip64local_putValue(ptr noundef %z_filefunc156, ptr noundef %110, i64 noundef %111, i32 noundef 8)
  store i32 %call158, ptr %err, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then140, %land.lhs.true136, %if.end133
  %112 = load i32, ptr %err, align 4
  ret i32 %112
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare ptr @get_crc_table() #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @crypthead(ptr noundef %passwd, ptr noundef %buf, i32 noundef %bufSize, ptr noundef %pkeys, ptr noundef %pcrc_32_tab, i64 noundef %crcForCrypting) #0 {
entry:
  %retval = alloca i32, align 4
  %passwd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bufSize.addr = alloca i32, align 4
  %pkeys.addr = alloca ptr, align 8
  %pcrc_32_tab.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %c = alloca i32, align 4
  %header = alloca [10 x i8], align 1
  store ptr %passwd, ptr %passwd.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %bufSize, ptr %bufSize.addr, align 4
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  %0 = load i32, ptr %bufSize.addr, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @crypthead.calls, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @crypthead.calls, align 4
  %cmp1 = icmp eq i32 %inc, 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  %conv3 = zext i32 %conv to i64
  %xor = xor i64 %conv3, 3141592654
  %conv4 = trunc i64 %xor to i32
  call void @srand(i32 noundef %conv4)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %passwd.addr, align 8
  %3 = load ptr, ptr %pkeys.addr, align 8
  %4 = load ptr, ptr %pcrc_32_tab.addr, align 8
  call void @init_keys(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, ptr %n, align 4
  %cmp6 = icmp ult i32 %5, 10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i32 @rand()
  %shr = ashr i32 %call8, 7
  %and = and i32 %shr, 255
  store i32 %and, ptr %c, align 4
  %6 = load ptr, ptr %pkeys.addr, align 8
  %7 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call9 = call i32 @decrypt_byte(ptr noundef %6, ptr noundef %7)
  store i32 %call9, ptr %t, align 4
  %8 = load ptr, ptr %pkeys.addr, align 8
  %9 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %10 = load i32, ptr %c, align 4
  %call10 = call i32 @update_keys(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  %11 = load i32, ptr %t, align 4
  %conv11 = trunc i32 %11 to i8
  %conv12 = zext i8 %conv11 to i32
  %12 = load i32, ptr %c, align 4
  %xor13 = xor i32 %conv12, %12
  %conv14 = trunc i32 %xor13 to i8
  %13 = load i32, ptr %n, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom
  store i8 %conv14, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %n, align 4
  %inc15 = add i32 %14, 1
  store i32 %inc15, ptr %n, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %passwd.addr, align 8
  %16 = load ptr, ptr %pkeys.addr, align 8
  %17 = load ptr, ptr %pcrc_32_tab.addr, align 8
  call void @init_keys(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  store i32 0, ptr %n, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc34, %for.end
  %18 = load i32, ptr %n, align 4
  %cmp17 = icmp ult i32 %18, 10
  br i1 %cmp17, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %19 = load ptr, ptr %pkeys.addr, align 8
  %20 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call20 = call i32 @decrypt_byte(ptr noundef %19, ptr noundef %20)
  store i32 %call20, ptr %t, align 4
  %21 = load ptr, ptr %pkeys.addr, align 8
  %22 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %23 = load i32, ptr %n, align 4
  %idxprom21 = zext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom21
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %24 to i32
  %call24 = call i32 @update_keys(ptr noundef %21, ptr noundef %22, i32 noundef %conv23)
  %25 = load i32, ptr %t, align 4
  %conv25 = trunc i32 %25 to i8
  %conv26 = zext i8 %conv25 to i32
  %26 = load i32, ptr %n, align 4
  %idxprom27 = zext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom27
  %27 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %xor30 = xor i32 %conv26, %conv29
  %conv31 = trunc i32 %xor30 to i8
  %28 = load ptr, ptr %buf.addr, align 8
  %29 = load i32, ptr %n, align 4
  %idxprom32 = zext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %28, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1
  br label %for.inc34

for.inc34:                                        ; preds = %for.body19
  %30 = load i32, ptr %n, align 4
  %inc35 = add i32 %30, 1
  store i32 %inc35, ptr %n, align 4
  br label %for.cond16, !llvm.loop !18

for.end36:                                        ; preds = %for.cond16
  %31 = load ptr, ptr %pkeys.addr, align 8
  %32 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call37 = call i32 @decrypt_byte(ptr noundef %31, ptr noundef %32)
  store i32 %call37, ptr %t, align 4
  %33 = load ptr, ptr %pkeys.addr, align 8
  %34 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %35 = load i64, ptr %crcForCrypting.addr, align 8
  %shr38 = lshr i64 %35, 16
  %conv39 = trunc i64 %shr38 to i32
  %and40 = and i32 %conv39, 255
  %call41 = call i32 @update_keys(ptr noundef %33, ptr noundef %34, i32 noundef %and40)
  %36 = load i32, ptr %t, align 4
  %conv42 = trunc i32 %36 to i8
  %conv43 = zext i8 %conv42 to i32
  %37 = load i64, ptr %crcForCrypting.addr, align 8
  %shr44 = lshr i64 %37, 16
  %conv45 = trunc i64 %shr44 to i32
  %and46 = and i32 %conv45, 255
  %xor47 = xor i32 %conv43, %and46
  %conv48 = trunc i32 %xor47 to i8
  %38 = load ptr, ptr %buf.addr, align 8
  %39 = load i32, ptr %n, align 4
  %inc49 = add i32 %39, 1
  store i32 %inc49, ptr %n, align 4
  %idxprom50 = zext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 %idxprom50
  store i8 %conv48, ptr %arrayidx51, align 1
  %40 = load ptr, ptr %pkeys.addr, align 8
  %41 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call52 = call i32 @decrypt_byte(ptr noundef %40, ptr noundef %41)
  store i32 %call52, ptr %t, align 4
  %42 = load ptr, ptr %pkeys.addr, align 8
  %43 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %44 = load i64, ptr %crcForCrypting.addr, align 8
  %shr53 = lshr i64 %44, 24
  %conv54 = trunc i64 %shr53 to i32
  %and55 = and i32 %conv54, 255
  %call56 = call i32 @update_keys(ptr noundef %42, ptr noundef %43, i32 noundef %and55)
  %45 = load i32, ptr %t, align 4
  %conv57 = trunc i32 %45 to i8
  %conv58 = zext i8 %conv57 to i32
  %46 = load i64, ptr %crcForCrypting.addr, align 8
  %shr59 = lshr i64 %46, 24
  %conv60 = trunc i64 %shr59 to i32
  %and61 = and i32 %conv60, 255
  %xor62 = xor i32 %conv58, %and61
  %conv63 = trunc i32 %xor62 to i8
  %47 = load ptr, ptr %buf.addr, align 8
  %48 = load i32, ptr %n, align 4
  %inc64 = add i32 %48, 1
  store i32 %inc64, ptr %n, align 4
  %idxprom65 = zext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %47, i64 %idxprom65
  store i8 %conv63, ptr %arrayidx66, align 1
  %49 = load i32, ptr %n, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end36, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
  %0 = load ptr, ptr %file.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  store ptr %1, ptr %zi, align 8
  %2 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -102, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %zi, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 4
  %crc32 = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 13
  %5 = load i64, ptr %crc32, align 8
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i32, ptr %len.addr, align 4
  %call = call i64 @crc32(i64 noundef %5, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %zi, align 8
  %ci4 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 4
  %crc325 = getelementptr inbounds %struct.curfile64_info, ptr %ci4, i32 0, i32 13
  store i64 %call, ptr %crc325, align 8
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load ptr, ptr %zi, align 8
  %ci6 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 4
  %stream = getelementptr inbounds %struct.curfile64_info, ptr %ci6, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 0
  store ptr %9, ptr %next_in, align 8
  %11 = load i32, ptr %len.addr, align 4
  %12 = load ptr, ptr %zi, align 8
  %ci7 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 4
  %stream8 = getelementptr inbounds %struct.curfile64_info, ptr %ci7, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream8, i32 0, i32 1
  store i32 %11, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end102, %if.end3
  %13 = load i32, ptr %err, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %zi, align 8
  %ci10 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 4
  %stream11 = getelementptr inbounds %struct.curfile64_info, ptr %ci10, i32 0, i32 0
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %stream11, i32 0, i32 1
  %15 = load i32, ptr %avail_in12, align 8
  %cmp13 = icmp ugt i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %zi, align 8
  %ci14 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 4
  %stream15 = getelementptr inbounds %struct.curfile64_info, ptr %ci14, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream15, i32 0, i32 4
  %18 = load i32, ptr %avail_out, align 8
  %cmp16 = icmp eq i32 %18, 0
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %while.body
  %19 = load ptr, ptr %zi, align 8
  %call18 = call i32 @zip64FlushWriteBuffer(ptr noundef %19)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i32 -1, ptr %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %20 = load ptr, ptr %zi, align 8
  %ci22 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 4
  %stream23 = getelementptr inbounds %struct.curfile64_info, ptr %ci22, i32 0, i32 0
  %avail_out24 = getelementptr inbounds %struct.z_stream_s, ptr %stream23, i32 0, i32 4
  store i32 65536, ptr %avail_out24, align 8
  %21 = load ptr, ptr %zi, align 8
  %ci25 = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 4
  %buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci25, i32 0, i32 11
  %arraydecay = getelementptr inbounds [65536 x i8], ptr %buffered_data, i64 0, i64 0
  %22 = load ptr, ptr %zi, align 8
  %ci26 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 4
  %stream27 = getelementptr inbounds %struct.curfile64_info, ptr %ci26, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream27, i32 0, i32 3
  store ptr %arraydecay, ptr %next_out, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end21, %while.body
  %23 = load i32, ptr %err, align 4
  %cmp29 = icmp ne i32 %23, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  br label %while.end

if.end31:                                         ; preds = %if.end28
  %24 = load ptr, ptr %zi, align 8
  %ci32 = getelementptr inbounds %struct.zip64_internal, ptr %24, i32 0, i32 4
  %method = getelementptr inbounds %struct.curfile64_info, ptr %ci32, i32 0, i32 9
  %25 = load i32, ptr %method, align 8
  %cmp33 = icmp eq i32 %25, 8
  br i1 %cmp33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end31
  %26 = load ptr, ptr %zi, align 8
  %ci34 = getelementptr inbounds %struct.zip64_internal, ptr %26, i32 0, i32 4
  %raw = getelementptr inbounds %struct.curfile64_info, ptr %ci34, i32 0, i32 10
  %27 = load i32, ptr %raw, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.else, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %zi, align 8
  %ci36 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 4
  %stream37 = getelementptr inbounds %struct.curfile64_info, ptr %ci36, i32 0, i32 0
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream37, i32 0, i32 5
  %29 = load i64, ptr %total_out, align 8
  store i64 %29, ptr %uTotalOutBefore, align 8
  %30 = load ptr, ptr %zi, align 8
  %ci38 = getelementptr inbounds %struct.zip64_internal, ptr %30, i32 0, i32 4
  %stream39 = getelementptr inbounds %struct.curfile64_info, ptr %ci38, i32 0, i32 0
  %call40 = call i32 @deflate(ptr noundef %stream39, i32 noundef 0)
  store i32 %call40, ptr %err, align 4
  %31 = load ptr, ptr %zi, align 8
  %ci41 = getelementptr inbounds %struct.zip64_internal, ptr %31, i32 0, i32 4
  %stream42 = getelementptr inbounds %struct.curfile64_info, ptr %ci41, i32 0, i32 0
  %total_out43 = getelementptr inbounds %struct.z_stream_s, ptr %stream42, i32 0, i32 5
  %32 = load i64, ptr %total_out43, align 8
  %33 = load i64, ptr %uTotalOutBefore, align 8
  %sub = sub i64 %32, %33
  %conv = trunc i64 %sub to i32
  %34 = load ptr, ptr %zi, align 8
  %ci44 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 4
  %pos_in_buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci44, i32 0, i32 2
  %35 = load i32, ptr %pos_in_buffered_data, align 4
  %add = add i32 %35, %conv
  store i32 %add, ptr %pos_in_buffered_data, align 4
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true, %if.end31
  %36 = load ptr, ptr %zi, align 8
  %ci45 = getelementptr inbounds %struct.zip64_internal, ptr %36, i32 0, i32 4
  %stream46 = getelementptr inbounds %struct.curfile64_info, ptr %ci45, i32 0, i32 0
  %avail_in47 = getelementptr inbounds %struct.z_stream_s, ptr %stream46, i32 0, i32 1
  %37 = load i32, ptr %avail_in47, align 8
  %38 = load ptr, ptr %zi, align 8
  %ci48 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 4
  %stream49 = getelementptr inbounds %struct.curfile64_info, ptr %ci48, i32 0, i32 0
  %avail_out50 = getelementptr inbounds %struct.z_stream_s, ptr %stream49, i32 0, i32 4
  %39 = load i32, ptr %avail_out50, align 8
  %cmp51 = icmp ult i32 %37, %39
  br i1 %cmp51, label %if.then53, label %if.else57

if.then53:                                        ; preds = %if.else
  %40 = load ptr, ptr %zi, align 8
  %ci54 = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 4
  %stream55 = getelementptr inbounds %struct.curfile64_info, ptr %ci54, i32 0, i32 0
  %avail_in56 = getelementptr inbounds %struct.z_stream_s, ptr %stream55, i32 0, i32 1
  %41 = load i32, ptr %avail_in56, align 8
  store i32 %41, ptr %copy_this, align 4
  br label %if.end61

if.else57:                                        ; preds = %if.else
  %42 = load ptr, ptr %zi, align 8
  %ci58 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 4
  %stream59 = getelementptr inbounds %struct.curfile64_info, ptr %ci58, i32 0, i32 0
  %avail_out60 = getelementptr inbounds %struct.z_stream_s, ptr %stream59, i32 0, i32 4
  %43 = load i32, ptr %avail_out60, align 8
  store i32 %43, ptr %copy_this, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then53
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end61
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %copy_this, align 4
  %cmp62 = icmp ult i32 %44, %45
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %zi, align 8
  %ci64 = getelementptr inbounds %struct.zip64_internal, ptr %46, i32 0, i32 4
  %stream65 = getelementptr inbounds %struct.curfile64_info, ptr %ci64, i32 0, i32 0
  %next_in66 = getelementptr inbounds %struct.z_stream_s, ptr %stream65, i32 0, i32 0
  %47 = load ptr, ptr %next_in66, align 8
  %48 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %idx.ext
  %49 = load i8, ptr %add.ptr, align 1
  %50 = load ptr, ptr %zi, align 8
  %ci67 = getelementptr inbounds %struct.zip64_internal, ptr %50, i32 0, i32 4
  %stream68 = getelementptr inbounds %struct.curfile64_info, ptr %ci67, i32 0, i32 0
  %next_out69 = getelementptr inbounds %struct.z_stream_s, ptr %stream68, i32 0, i32 3
  %51 = load ptr, ptr %next_out69, align 8
  %52 = load i32, ptr %i, align 4
  %idx.ext70 = zext i32 %52 to i64
  %add.ptr71 = getelementptr inbounds i8, ptr %51, i64 %idx.ext70
  store i8 %49, ptr %add.ptr71, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %54 = load i32, ptr %copy_this, align 4
  %55 = load ptr, ptr %zi, align 8
  %ci72 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 4
  %stream73 = getelementptr inbounds %struct.curfile64_info, ptr %ci72, i32 0, i32 0
  %avail_in74 = getelementptr inbounds %struct.z_stream_s, ptr %stream73, i32 0, i32 1
  %56 = load i32, ptr %avail_in74, align 8
  %sub75 = sub i32 %56, %54
  store i32 %sub75, ptr %avail_in74, align 8
  %57 = load i32, ptr %copy_this, align 4
  %58 = load ptr, ptr %zi, align 8
  %ci76 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 4
  %stream77 = getelementptr inbounds %struct.curfile64_info, ptr %ci76, i32 0, i32 0
  %avail_out78 = getelementptr inbounds %struct.z_stream_s, ptr %stream77, i32 0, i32 4
  %59 = load i32, ptr %avail_out78, align 8
  %sub79 = sub i32 %59, %57
  store i32 %sub79, ptr %avail_out78, align 8
  %60 = load i32, ptr %copy_this, align 4
  %61 = load ptr, ptr %zi, align 8
  %ci80 = getelementptr inbounds %struct.zip64_internal, ptr %61, i32 0, i32 4
  %stream81 = getelementptr inbounds %struct.curfile64_info, ptr %ci80, i32 0, i32 0
  %next_in82 = getelementptr inbounds %struct.z_stream_s, ptr %stream81, i32 0, i32 0
  %62 = load ptr, ptr %next_in82, align 8
  %idx.ext83 = zext i32 %60 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %62, i64 %idx.ext83
  store ptr %add.ptr84, ptr %next_in82, align 8
  %63 = load i32, ptr %copy_this, align 4
  %64 = load ptr, ptr %zi, align 8
  %ci85 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 4
  %stream86 = getelementptr inbounds %struct.curfile64_info, ptr %ci85, i32 0, i32 0
  %next_out87 = getelementptr inbounds %struct.z_stream_s, ptr %stream86, i32 0, i32 3
  %65 = load ptr, ptr %next_out87, align 8
  %idx.ext88 = zext i32 %63 to i64
  %add.ptr89 = getelementptr inbounds i8, ptr %65, i64 %idx.ext88
  store ptr %add.ptr89, ptr %next_out87, align 8
  %66 = load i32, ptr %copy_this, align 4
  %conv90 = zext i32 %66 to i64
  %67 = load ptr, ptr %zi, align 8
  %ci91 = getelementptr inbounds %struct.zip64_internal, ptr %67, i32 0, i32 4
  %stream92 = getelementptr inbounds %struct.curfile64_info, ptr %ci91, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream92, i32 0, i32 2
  %68 = load i64, ptr %total_in, align 8
  %add93 = add i64 %68, %conv90
  store i64 %add93, ptr %total_in, align 8
  %69 = load i32, ptr %copy_this, align 4
  %conv94 = zext i32 %69 to i64
  %70 = load ptr, ptr %zi, align 8
  %ci95 = getelementptr inbounds %struct.zip64_internal, ptr %70, i32 0, i32 4
  %stream96 = getelementptr inbounds %struct.curfile64_info, ptr %ci95, i32 0, i32 0
  %total_out97 = getelementptr inbounds %struct.z_stream_s, ptr %stream96, i32 0, i32 5
  %71 = load i64, ptr %total_out97, align 8
  %add98 = add i64 %71, %conv94
  store i64 %add98, ptr %total_out97, align 8
  %72 = load i32, ptr %copy_this, align 4
  %73 = load ptr, ptr %zi, align 8
  %ci99 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 4
  %pos_in_buffered_data100 = getelementptr inbounds %struct.curfile64_info, ptr %ci99, i32 0, i32 2
  %74 = load i32, ptr %pos_in_buffered_data100, align 4
  %add101 = add i32 %74, %72
  store i32 %add101, ptr %pos_in_buffered_data100, align 4
  br label %if.end102

if.end102:                                        ; preds = %for.end, %if.then35
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %if.then30, %land.end
  %75 = load i32, ptr %err, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then2, %if.then
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
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
  %0 = load ptr, ptr %zi.addr, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %0, i32 0, i32 4
  %encrypt = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 14
  %1 = load i32, ptr %encrypt, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %zi.addr, align 8
  %ci1 = getelementptr inbounds %struct.zip64_internal, ptr %3, i32 0, i32 4
  %pos_in_buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci1, i32 0, i32 2
  %4 = load i32, ptr %pos_in_buffered_data, align 4
  %cmp2 = icmp ult i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %zi.addr, align 8
  %ci3 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 4
  %keys = getelementptr inbounds %struct.curfile64_info, ptr %ci3, i32 0, i32 19
  %arraydecay = getelementptr inbounds [3 x i64], ptr %keys, i64 0, i64 0
  %6 = load ptr, ptr %zi.addr, align 8
  %ci4 = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 4
  %pcrc_32_tab = getelementptr inbounds %struct.curfile64_info, ptr %ci4, i32 0, i32 20
  %7 = load ptr, ptr %pcrc_32_tab, align 8
  %call = call i32 @decrypt_byte(ptr noundef %arraydecay, ptr noundef %7)
  store i32 %call, ptr %t, align 4
  %8 = load ptr, ptr %zi.addr, align 8
  %ci5 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 4
  %keys6 = getelementptr inbounds %struct.curfile64_info, ptr %ci5, i32 0, i32 19
  %arraydecay7 = getelementptr inbounds [3 x i64], ptr %keys6, i64 0, i64 0
  %9 = load ptr, ptr %zi.addr, align 8
  %ci8 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 4
  %pcrc_32_tab9 = getelementptr inbounds %struct.curfile64_info, ptr %ci8, i32 0, i32 20
  %10 = load ptr, ptr %pcrc_32_tab9, align 8
  %11 = load ptr, ptr %zi.addr, align 8
  %ci10 = getelementptr inbounds %struct.zip64_internal, ptr %11, i32 0, i32 4
  %buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci10, i32 0, i32 11
  %12 = load i32, ptr %i, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [65536 x i8], ptr %buffered_data, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %call11 = call i32 @update_keys(ptr noundef %arraydecay7, ptr noundef %10, i32 noundef %conv)
  %14 = load i32, ptr %t, align 4
  %conv12 = trunc i32 %14 to i8
  %conv13 = zext i8 %conv12 to i32
  %15 = load ptr, ptr %zi.addr, align 8
  %ci14 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 4
  %buffered_data15 = getelementptr inbounds %struct.curfile64_info, ptr %ci14, i32 0, i32 11
  %16 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [65536 x i8], ptr %buffered_data15, i64 0, i64 %idxprom16
  %17 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %xor = xor i32 %conv13, %conv18
  %conv19 = trunc i32 %xor to i8
  %18 = load ptr, ptr %zi.addr, align 8
  %ci20 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 4
  %buffered_data21 = getelementptr inbounds %struct.curfile64_info, ptr %ci20, i32 0, i32 11
  %19 = load i32, ptr %i, align 4
  %idxprom22 = zext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [65536 x i8], ptr %buffered_data21, i64 0, i64 %idxprom22
  store i8 %conv19, ptr %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %21 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %22 = load ptr, ptr %zwrite_file, align 8
  %23 = load ptr, ptr %zi.addr, align 8
  %z_filefunc24 = getelementptr inbounds %struct.zip64_internal, ptr %23, i32 0, i32 0
  %zfile_func6425 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc24, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6425, i32 0, i32 7
  %24 = load ptr, ptr %opaque, align 8
  %25 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %filestream, align 8
  %27 = load ptr, ptr %zi.addr, align 8
  %ci26 = getelementptr inbounds %struct.zip64_internal, ptr %27, i32 0, i32 4
  %buffered_data27 = getelementptr inbounds %struct.curfile64_info, ptr %ci26, i32 0, i32 11
  %arraydecay28 = getelementptr inbounds [65536 x i8], ptr %buffered_data27, i64 0, i64 0
  %28 = load ptr, ptr %zi.addr, align 8
  %ci29 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 4
  %pos_in_buffered_data30 = getelementptr inbounds %struct.curfile64_info, ptr %ci29, i32 0, i32 2
  %29 = load i32, ptr %pos_in_buffered_data30, align 4
  %conv31 = zext i32 %29 to i64
  %call32 = call i64 %22(ptr noundef %24, ptr noundef %26, ptr noundef %arraydecay28, i64 noundef %conv31)
  %30 = load ptr, ptr %zi.addr, align 8
  %ci33 = getelementptr inbounds %struct.zip64_internal, ptr %30, i32 0, i32 4
  %pos_in_buffered_data34 = getelementptr inbounds %struct.curfile64_info, ptr %ci33, i32 0, i32 2
  %31 = load i32, ptr %pos_in_buffered_data34, align 4
  %conv35 = zext i32 %31 to i64
  %cmp36 = icmp ne i64 %call32, %conv35
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end
  store i32 -1, ptr %err, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end
  %32 = load ptr, ptr %zi.addr, align 8
  %ci40 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 4
  %pos_in_buffered_data41 = getelementptr inbounds %struct.curfile64_info, ptr %ci40, i32 0, i32 2
  %33 = load i32, ptr %pos_in_buffered_data41, align 4
  %conv42 = zext i32 %33 to i64
  %34 = load ptr, ptr %zi.addr, align 8
  %ci43 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 4
  %totalCompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci43, i32 0, i32 17
  %35 = load i64, ptr %totalCompressedData, align 8
  %add = add i64 %35, %conv42
  store i64 %add, ptr %totalCompressedData, align 8
  %36 = load ptr, ptr %zi.addr, align 8
  %ci44 = getelementptr inbounds %struct.zip64_internal, ptr %36, i32 0, i32 4
  %stream = getelementptr inbounds %struct.curfile64_info, ptr %ci44, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 2
  %37 = load i64, ptr %total_in, align 8
  %38 = load ptr, ptr %zi.addr, align 8
  %ci45 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 4
  %totalUncompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci45, i32 0, i32 18
  %39 = load i64, ptr %totalUncompressedData, align 8
  %add46 = add i64 %39, %37
  store i64 %add46, ptr %totalUncompressedData, align 8
  %40 = load ptr, ptr %zi.addr, align 8
  %ci47 = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 4
  %stream48 = getelementptr inbounds %struct.curfile64_info, ptr %ci47, i32 0, i32 0
  %total_in49 = getelementptr inbounds %struct.z_stream_s, ptr %stream48, i32 0, i32 2
  store i64 0, ptr %total_in49, align 8
  %41 = load ptr, ptr %zi.addr, align 8
  %ci50 = getelementptr inbounds %struct.zip64_internal, ptr %41, i32 0, i32 4
  %pos_in_buffered_data51 = getelementptr inbounds %struct.curfile64_info, ptr %ci50, i32 0, i32 2
  store i32 0, ptr %pos_in_buffered_data51, align 4
  %42 = load i32, ptr %err, align 4
  ret i32 %42
}

declare i32 @deflate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @zipCloseFileInZipRaw(ptr noundef %file, i64 noundef %uncompressed_size, i64 noundef %crc32) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %uncompressed_size.addr = alloca i64, align 8
  %crc32.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store i64 %uncompressed_size, ptr %uncompressed_size.addr, align 8
  store i64 %crc32, ptr %crc32.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load i64, ptr %uncompressed_size.addr, align 8
  %2 = load i64, ptr %crc32.addr, align 8
  %call = call i32 @zipCloseFileInZipRaw64(ptr noundef %0, i64 noundef %1, i64 noundef %2)
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
  %0 = load ptr, ptr %file.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  store ptr %1, ptr %zi, align 8
  %2 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -102, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %zi, align 8
  %ci = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 4
  %stream = getelementptr inbounds %struct.curfile64_info, ptr %ci, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %5 = load ptr, ptr %zi, align 8
  %ci4 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 4
  %method = getelementptr inbounds %struct.curfile64_info, ptr %ci4, i32 0, i32 9
  %6 = load i32, ptr %method, align 8
  %cmp5 = icmp eq i32 %6, 8
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %7 = load ptr, ptr %zi, align 8
  %ci6 = getelementptr inbounds %struct.zip64_internal, ptr %7, i32 0, i32 4
  %raw = getelementptr inbounds %struct.curfile64_info, ptr %ci6, i32 0, i32 10
  %8 = load i32, ptr %raw, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.then7
  %9 = load i32, ptr %err, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %zi, align 8
  %ci9 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 4
  %stream10 = getelementptr inbounds %struct.curfile64_info, ptr %ci9, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream10, i32 0, i32 4
  %11 = load i32, ptr %avail_out, align 8
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %while.body
  %12 = load ptr, ptr %zi, align 8
  %call = call i32 @zip64FlushWriteBuffer(ptr noundef %12)
  %cmp13 = icmp eq i32 %call, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 -1, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %13 = load ptr, ptr %zi, align 8
  %ci16 = getelementptr inbounds %struct.zip64_internal, ptr %13, i32 0, i32 4
  %stream17 = getelementptr inbounds %struct.curfile64_info, ptr %ci16, i32 0, i32 0
  %avail_out18 = getelementptr inbounds %struct.z_stream_s, ptr %stream17, i32 0, i32 4
  store i32 65536, ptr %avail_out18, align 8
  %14 = load ptr, ptr %zi, align 8
  %ci19 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 4
  %buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci19, i32 0, i32 11
  %arraydecay = getelementptr inbounds [65536 x i8], ptr %buffered_data, i64 0, i64 0
  %15 = load ptr, ptr %zi, align 8
  %ci20 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 4
  %stream21 = getelementptr inbounds %struct.curfile64_info, ptr %ci20, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream21, i32 0, i32 3
  store ptr %arraydecay, ptr %next_out, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end15, %while.body
  %16 = load ptr, ptr %zi, align 8
  %ci23 = getelementptr inbounds %struct.zip64_internal, ptr %16, i32 0, i32 4
  %stream24 = getelementptr inbounds %struct.curfile64_info, ptr %ci23, i32 0, i32 0
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream24, i32 0, i32 5
  %17 = load i64, ptr %total_out, align 8
  store i64 %17, ptr %uTotalOutBefore, align 8
  %18 = load ptr, ptr %zi, align 8
  %ci25 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 4
  %stream26 = getelementptr inbounds %struct.curfile64_info, ptr %ci25, i32 0, i32 0
  %call27 = call i32 @deflate(ptr noundef %stream26, i32 noundef 4)
  store i32 %call27, ptr %err, align 4
  %19 = load ptr, ptr %zi, align 8
  %ci28 = getelementptr inbounds %struct.zip64_internal, ptr %19, i32 0, i32 4
  %stream29 = getelementptr inbounds %struct.curfile64_info, ptr %ci28, i32 0, i32 0
  %total_out30 = getelementptr inbounds %struct.z_stream_s, ptr %stream29, i32 0, i32 5
  %20 = load i64, ptr %total_out30, align 8
  %21 = load i64, ptr %uTotalOutBefore, align 8
  %sub = sub i64 %20, %21
  %conv = trunc i64 %sub to i32
  %22 = load ptr, ptr %zi, align 8
  %ci31 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 4
  %pos_in_buffered_data = getelementptr inbounds %struct.curfile64_info, ptr %ci31, i32 0, i32 2
  %23 = load i32, ptr %pos_in_buffered_data, align 4
  %add = add i32 %23, %conv
  store i32 %add, ptr %pos_in_buffered_data, align 4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %if.end3
  %24 = load ptr, ptr %zi, align 8
  %ci32 = getelementptr inbounds %struct.zip64_internal, ptr %24, i32 0, i32 4
  %method33 = getelementptr inbounds %struct.curfile64_info, ptr %ci32, i32 0, i32 9
  %25 = load i32, ptr %method33, align 8
  %cmp34 = icmp eq i32 %25, 12
  br i1 %cmp34, label %land.lhs.true36, label %if.end41

land.lhs.true36:                                  ; preds = %if.else
  %26 = load ptr, ptr %zi, align 8
  %ci37 = getelementptr inbounds %struct.zip64_internal, ptr %26, i32 0, i32 4
  %raw38 = getelementptr inbounds %struct.curfile64_info, ptr %ci37, i32 0, i32 10
  %27 = load i32, ptr %raw38, align 4
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %land.lhs.true36
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true36, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %while.end
  %28 = load i32, ptr %err, align 4
  %cmp43 = icmp eq i32 %28, 1
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %err, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %29 = load ptr, ptr %zi, align 8
  %ci47 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 4
  %pos_in_buffered_data48 = getelementptr inbounds %struct.curfile64_info, ptr %ci47, i32 0, i32 2
  %30 = load i32, ptr %pos_in_buffered_data48, align 4
  %cmp49 = icmp ugt i32 %30, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end60

land.lhs.true51:                                  ; preds = %if.end46
  %31 = load i32, ptr %err, align 4
  %cmp52 = icmp eq i32 %31, 0
  br i1 %cmp52, label %if.then54, label %if.end60

if.then54:                                        ; preds = %land.lhs.true51
  %32 = load ptr, ptr %zi, align 8
  %call55 = call i32 @zip64FlushWriteBuffer(ptr noundef %32)
  %cmp56 = icmp eq i32 %call55, -1
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then54
  store i32 -1, ptr %err, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then54
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %land.lhs.true51, %if.end46
  %33 = load ptr, ptr %zi, align 8
  %ci61 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 4
  %method62 = getelementptr inbounds %struct.curfile64_info, ptr %ci61, i32 0, i32 9
  %34 = load i32, ptr %method62, align 8
  %cmp63 = icmp eq i32 %34, 8
  br i1 %cmp63, label %land.lhs.true65, label %if.end78

land.lhs.true65:                                  ; preds = %if.end60
  %35 = load ptr, ptr %zi, align 8
  %ci66 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 4
  %raw67 = getelementptr inbounds %struct.curfile64_info, ptr %ci66, i32 0, i32 10
  %36 = load i32, ptr %raw67, align 4
  %tobool68 = icmp ne i32 %36, 0
  br i1 %tobool68, label %if.end78, label %if.then69

if.then69:                                        ; preds = %land.lhs.true65
  %37 = load ptr, ptr %zi, align 8
  %ci70 = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 4
  %stream71 = getelementptr inbounds %struct.curfile64_info, ptr %ci70, i32 0, i32 0
  %call72 = call i32 @deflateEnd(ptr noundef %stream71)
  store i32 %call72, ptr %tmp_err, align 4
  %38 = load i32, ptr %err, align 4
  %cmp73 = icmp eq i32 %38, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then69
  %39 = load i32, ptr %tmp_err, align 4
  store i32 %39, ptr %err, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then69
  %40 = load ptr, ptr %zi, align 8
  %ci77 = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 4
  %stream_initialised = getelementptr inbounds %struct.curfile64_info, ptr %ci77, i32 0, i32 1
  store i32 0, ptr %stream_initialised, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %land.lhs.true65, %if.end60
  %41 = load ptr, ptr %zi, align 8
  %ci79 = getelementptr inbounds %struct.zip64_internal, ptr %41, i32 0, i32 4
  %raw80 = getelementptr inbounds %struct.curfile64_info, ptr %ci79, i32 0, i32 10
  %42 = load i32, ptr %raw80, align 4
  %tobool81 = icmp ne i32 %42, 0
  br i1 %tobool81, label %if.end86, label %if.then82

if.then82:                                        ; preds = %if.end78
  %43 = load ptr, ptr %zi, align 8
  %ci83 = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 4
  %crc3284 = getelementptr inbounds %struct.curfile64_info, ptr %ci83, i32 0, i32 13
  %44 = load i64, ptr %crc3284, align 8
  store i64 %44, ptr %crc32.addr, align 8
  %45 = load ptr, ptr %zi, align 8
  %ci85 = getelementptr inbounds %struct.zip64_internal, ptr %45, i32 0, i32 4
  %totalUncompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci85, i32 0, i32 18
  %46 = load i64, ptr %totalUncompressedData, align 8
  store i64 %46, ptr %uncompressed_size.addr, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end78
  %47 = load ptr, ptr %zi, align 8
  %ci87 = getelementptr inbounds %struct.zip64_internal, ptr %47, i32 0, i32 4
  %totalCompressedData = getelementptr inbounds %struct.curfile64_info, ptr %ci87, i32 0, i32 17
  %48 = load i64, ptr %totalCompressedData, align 8
  store i64 %48, ptr %compressed_size, align 8
  %49 = load ptr, ptr %zi, align 8
  %ci88 = getelementptr inbounds %struct.zip64_internal, ptr %49, i32 0, i32 4
  %crypt_header_size = getelementptr inbounds %struct.curfile64_info, ptr %ci88, i32 0, i32 21
  %50 = load i32, ptr %crypt_header_size, align 8
  %conv89 = zext i32 %50 to i64
  %51 = load i64, ptr %compressed_size, align 8
  %add90 = add i64 %51, %conv89
  store i64 %add90, ptr %compressed_size, align 8
  %52 = load i64, ptr %compressed_size, align 8
  %cmp91 = icmp uge i64 %52, 4294967295
  br i1 %cmp91, label %if.then99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end86
  %53 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp93 = icmp uge i64 %53, 4294967295
  br i1 %cmp93, label %if.then99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false
  %54 = load ptr, ptr %zi, align 8
  %ci96 = getelementptr inbounds %struct.zip64_internal, ptr %54, i32 0, i32 4
  %pos_local_header = getelementptr inbounds %struct.curfile64_info, ptr %ci96, i32 0, i32 3
  %55 = load i64, ptr %pos_local_header, align 8
  %cmp97 = icmp uge i64 %55, 4294967295
  br i1 %cmp97, label %if.then99, label %if.end104

if.then99:                                        ; preds = %lor.lhs.false95, %lor.lhs.false, %if.end86
  %56 = load ptr, ptr %zi, align 8
  %ci100 = getelementptr inbounds %struct.zip64_internal, ptr %56, i32 0, i32 4
  %central_header = getelementptr inbounds %struct.curfile64_info, ptr %ci100, i32 0, i32 4
  %57 = load ptr, ptr %central_header, align 8
  %add.ptr = getelementptr inbounds i8, ptr %57, i64 4
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr, i64 noundef 45, i32 noundef 2)
  %58 = load ptr, ptr %zi, align 8
  %ci101 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 4
  %central_header102 = getelementptr inbounds %struct.curfile64_info, ptr %ci101, i32 0, i32 4
  %59 = load ptr, ptr %central_header102, align 8
  %add.ptr103 = getelementptr inbounds i8, ptr %59, i64 6
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr103, i64 noundef 45, i32 noundef 2)
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %lor.lhs.false95
  %60 = load ptr, ptr %zi, align 8
  %ci105 = getelementptr inbounds %struct.zip64_internal, ptr %60, i32 0, i32 4
  %central_header106 = getelementptr inbounds %struct.curfile64_info, ptr %ci105, i32 0, i32 4
  %61 = load ptr, ptr %central_header106, align 8
  %add.ptr107 = getelementptr inbounds i8, ptr %61, i64 16
  %62 = load i64, ptr %crc32.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr107, i64 noundef %62, i32 noundef 4)
  %63 = load i64, ptr %compressed_size, align 8
  %cmp108 = icmp uge i64 %63, 4294967295
  br i1 %cmp108, label %if.then110, label %if.else114

if.then110:                                       ; preds = %if.end104
  %64 = load ptr, ptr %zi, align 8
  %ci111 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 4
  %central_header112 = getelementptr inbounds %struct.curfile64_info, ptr %ci111, i32 0, i32 4
  %65 = load ptr, ptr %central_header112, align 8
  %add.ptr113 = getelementptr inbounds i8, ptr %65, i64 20
  %66 = load i64, ptr %invalidValue, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr113, i64 noundef %66, i32 noundef 4)
  br label %if.end118

if.else114:                                       ; preds = %if.end104
  %67 = load ptr, ptr %zi, align 8
  %ci115 = getelementptr inbounds %struct.zip64_internal, ptr %67, i32 0, i32 4
  %central_header116 = getelementptr inbounds %struct.curfile64_info, ptr %ci115, i32 0, i32 4
  %68 = load ptr, ptr %central_header116, align 8
  %add.ptr117 = getelementptr inbounds i8, ptr %68, i64 20
  %69 = load i64, ptr %compressed_size, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr117, i64 noundef %69, i32 noundef 4)
  br label %if.end118

if.end118:                                        ; preds = %if.else114, %if.then110
  %70 = load ptr, ptr %zi, align 8
  %ci119 = getelementptr inbounds %struct.zip64_internal, ptr %70, i32 0, i32 4
  %stream120 = getelementptr inbounds %struct.curfile64_info, ptr %ci119, i32 0, i32 0
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %stream120, i32 0, i32 11
  %71 = load i32, ptr %data_type, align 8
  %cmp121 = icmp eq i32 %71, 1
  br i1 %cmp121, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end118
  %72 = load ptr, ptr %zi, align 8
  %ci124 = getelementptr inbounds %struct.zip64_internal, ptr %72, i32 0, i32 4
  %central_header125 = getelementptr inbounds %struct.curfile64_info, ptr %ci124, i32 0, i32 4
  %73 = load ptr, ptr %central_header125, align 8
  %add.ptr126 = getelementptr inbounds i8, ptr %73, i64 36
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr126, i64 noundef 1, i32 noundef 2)
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end118
  %74 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp128 = icmp uge i64 %74, 4294967295
  br i1 %cmp128, label %if.then130, label %if.else134

if.then130:                                       ; preds = %if.end127
  %75 = load ptr, ptr %zi, align 8
  %ci131 = getelementptr inbounds %struct.zip64_internal, ptr %75, i32 0, i32 4
  %central_header132 = getelementptr inbounds %struct.curfile64_info, ptr %ci131, i32 0, i32 4
  %76 = load ptr, ptr %central_header132, align 8
  %add.ptr133 = getelementptr inbounds i8, ptr %76, i64 24
  %77 = load i64, ptr %invalidValue, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr133, i64 noundef %77, i32 noundef 4)
  br label %if.end138

if.else134:                                       ; preds = %if.end127
  %78 = load ptr, ptr %zi, align 8
  %ci135 = getelementptr inbounds %struct.zip64_internal, ptr %78, i32 0, i32 4
  %central_header136 = getelementptr inbounds %struct.curfile64_info, ptr %ci135, i32 0, i32 4
  %79 = load ptr, ptr %central_header136, align 8
  %add.ptr137 = getelementptr inbounds i8, ptr %79, i64 24
  %80 = load i64, ptr %uncompressed_size.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr137, i64 noundef %80, i32 noundef 4)
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %if.then130
  %81 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp139 = icmp uge i64 %81, 4294967295
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end138
  %82 = load i32, ptr %datasize, align 4
  %add142 = add i32 %82, 8
  store i32 %add142, ptr %datasize, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end138
  %83 = load i64, ptr %compressed_size, align 8
  %cmp144 = icmp uge i64 %83, 4294967295
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end143
  %84 = load i32, ptr %datasize, align 4
  %add147 = add i32 %84, 8
  store i32 %add147, ptr %datasize, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end143
  %85 = load ptr, ptr %zi, align 8
  %ci149 = getelementptr inbounds %struct.zip64_internal, ptr %85, i32 0, i32 4
  %pos_local_header150 = getelementptr inbounds %struct.curfile64_info, ptr %ci149, i32 0, i32 3
  %86 = load i64, ptr %pos_local_header150, align 8
  %cmp151 = icmp uge i64 %86, 4294967295
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end148
  %87 = load i32, ptr %datasize, align 4
  %add154 = add i32 %87, 8
  store i32 %add154, ptr %datasize, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.end148
  %88 = load i32, ptr %datasize, align 4
  %cmp156 = icmp ugt i32 %88, 0
  br i1 %cmp156, label %if.then158, label %if.end211

if.then158:                                       ; preds = %if.end155
  store ptr null, ptr %p, align 8
  %89 = load i32, ptr %datasize, align 4
  %add159 = add i32 %89, 4
  %conv160 = zext i32 %add159 to i64
  %90 = load ptr, ptr %zi, align 8
  %ci161 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 4
  %size_centralExtraFree = getelementptr inbounds %struct.curfile64_info, ptr %ci161, i32 0, i32 7
  %91 = load i64, ptr %size_centralExtraFree, align 8
  %cmp162 = icmp ugt i64 %conv160, %91
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.then158
  store i32 -103, ptr %retval, align 4
  br label %return

if.end165:                                        ; preds = %if.then158
  %92 = load ptr, ptr %zi, align 8
  %ci166 = getelementptr inbounds %struct.zip64_internal, ptr %92, i32 0, i32 4
  %central_header167 = getelementptr inbounds %struct.curfile64_info, ptr %ci166, i32 0, i32 4
  %93 = load ptr, ptr %central_header167, align 8
  %94 = load ptr, ptr %zi, align 8
  %ci168 = getelementptr inbounds %struct.zip64_internal, ptr %94, i32 0, i32 4
  %size_centralheader = getelementptr inbounds %struct.curfile64_info, ptr %ci168, i32 0, i32 6
  %95 = load i64, ptr %size_centralheader, align 8
  %add.ptr169 = getelementptr inbounds i8, ptr %93, i64 %95
  store ptr %add.ptr169, ptr %p, align 8
  %96 = load ptr, ptr %p, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %96, i64 noundef 1, i32 noundef 2)
  %97 = load ptr, ptr %p, align 8
  %add.ptr170 = getelementptr inbounds i8, ptr %97, i64 2
  store ptr %add.ptr170, ptr %p, align 8
  %98 = load ptr, ptr %p, align 8
  %99 = load i32, ptr %datasize, align 4
  %conv171 = zext i32 %99 to i64
  call void @zip64local_putValue_inmemory(ptr noundef %98, i64 noundef %conv171, i32 noundef 2)
  %100 = load ptr, ptr %p, align 8
  %add.ptr172 = getelementptr inbounds i8, ptr %100, i64 2
  store ptr %add.ptr172, ptr %p, align 8
  %101 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp173 = icmp uge i64 %101, 4294967295
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end165
  %102 = load ptr, ptr %p, align 8
  %103 = load i64, ptr %uncompressed_size.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %102, i64 noundef %103, i32 noundef 8)
  %104 = load ptr, ptr %p, align 8
  %add.ptr176 = getelementptr inbounds i8, ptr %104, i64 8
  store ptr %add.ptr176, ptr %p, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end165
  %105 = load i64, ptr %compressed_size, align 8
  %cmp178 = icmp uge i64 %105, 4294967295
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end177
  %106 = load ptr, ptr %p, align 8
  %107 = load i64, ptr %compressed_size, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %106, i64 noundef %107, i32 noundef 8)
  %108 = load ptr, ptr %p, align 8
  %add.ptr181 = getelementptr inbounds i8, ptr %108, i64 8
  store ptr %add.ptr181, ptr %p, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end177
  %109 = load ptr, ptr %zi, align 8
  %ci183 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 4
  %pos_local_header184 = getelementptr inbounds %struct.curfile64_info, ptr %ci183, i32 0, i32 3
  %110 = load i64, ptr %pos_local_header184, align 8
  %cmp185 = icmp uge i64 %110, 4294967295
  br i1 %cmp185, label %if.then187, label %if.end191

if.then187:                                       ; preds = %if.end182
  %111 = load ptr, ptr %p, align 8
  %112 = load ptr, ptr %zi, align 8
  %ci188 = getelementptr inbounds %struct.zip64_internal, ptr %112, i32 0, i32 4
  %pos_local_header189 = getelementptr inbounds %struct.curfile64_info, ptr %ci188, i32 0, i32 3
  %113 = load i64, ptr %pos_local_header189, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %111, i64 noundef %113, i32 noundef 8)
  %114 = load ptr, ptr %p, align 8
  %add.ptr190 = getelementptr inbounds i8, ptr %114, i64 8
  store ptr %add.ptr190, ptr %p, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %if.end182
  %115 = load i32, ptr %datasize, align 4
  %add192 = add i32 %115, 4
  %conv193 = zext i32 %add192 to i64
  %116 = load ptr, ptr %zi, align 8
  %ci194 = getelementptr inbounds %struct.zip64_internal, ptr %116, i32 0, i32 4
  %size_centralExtraFree195 = getelementptr inbounds %struct.curfile64_info, ptr %ci194, i32 0, i32 7
  %117 = load i64, ptr %size_centralExtraFree195, align 8
  %sub196 = sub i64 %117, %conv193
  store i64 %sub196, ptr %size_centralExtraFree195, align 8
  %118 = load i32, ptr %datasize, align 4
  %add197 = add i32 %118, 4
  %conv198 = zext i32 %add197 to i64
  %119 = load ptr, ptr %zi, align 8
  %ci199 = getelementptr inbounds %struct.zip64_internal, ptr %119, i32 0, i32 4
  %size_centralheader200 = getelementptr inbounds %struct.curfile64_info, ptr %ci199, i32 0, i32 6
  %120 = load i64, ptr %size_centralheader200, align 8
  %add201 = add i64 %120, %conv198
  store i64 %add201, ptr %size_centralheader200, align 8
  %121 = load i32, ptr %datasize, align 4
  %add202 = add i32 %121, 4
  %conv203 = zext i32 %add202 to i64
  %122 = load ptr, ptr %zi, align 8
  %ci204 = getelementptr inbounds %struct.zip64_internal, ptr %122, i32 0, i32 4
  %size_centralExtra = getelementptr inbounds %struct.curfile64_info, ptr %ci204, i32 0, i32 5
  %123 = load i64, ptr %size_centralExtra, align 8
  %add205 = add i64 %123, %conv203
  store i64 %add205, ptr %size_centralExtra, align 8
  %124 = load ptr, ptr %zi, align 8
  %ci206 = getelementptr inbounds %struct.zip64_internal, ptr %124, i32 0, i32 4
  %central_header207 = getelementptr inbounds %struct.curfile64_info, ptr %ci206, i32 0, i32 4
  %125 = load ptr, ptr %central_header207, align 8
  %add.ptr208 = getelementptr inbounds i8, ptr %125, i64 30
  %126 = load ptr, ptr %zi, align 8
  %ci209 = getelementptr inbounds %struct.zip64_internal, ptr %126, i32 0, i32 4
  %size_centralExtra210 = getelementptr inbounds %struct.curfile64_info, ptr %ci209, i32 0, i32 5
  %127 = load i64, ptr %size_centralExtra210, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr208, i64 noundef %127, i32 noundef 2)
  br label %if.end211

if.end211:                                        ; preds = %if.end191, %if.end155
  %128 = load i32, ptr %err, align 4
  %cmp212 = icmp eq i32 %128, 0
  br i1 %cmp212, label %if.then214, label %if.end220

if.then214:                                       ; preds = %if.end211
  %129 = load ptr, ptr %zi, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %129, i32 0, i32 2
  %130 = load ptr, ptr %zi, align 8
  %ci215 = getelementptr inbounds %struct.zip64_internal, ptr %130, i32 0, i32 4
  %central_header216 = getelementptr inbounds %struct.curfile64_info, ptr %ci215, i32 0, i32 4
  %131 = load ptr, ptr %central_header216, align 8
  %132 = load ptr, ptr %zi, align 8
  %ci217 = getelementptr inbounds %struct.zip64_internal, ptr %132, i32 0, i32 4
  %size_centralheader218 = getelementptr inbounds %struct.curfile64_info, ptr %ci217, i32 0, i32 6
  %133 = load i64, ptr %size_centralheader218, align 8
  %call219 = call i32 @add_data_in_datablock(ptr noundef %central_dir, ptr noundef %131, i64 noundef %133)
  store i32 %call219, ptr %err, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end211
  %134 = load ptr, ptr %zi, align 8
  %ci221 = getelementptr inbounds %struct.zip64_internal, ptr %134, i32 0, i32 4
  %central_header222 = getelementptr inbounds %struct.curfile64_info, ptr %ci221, i32 0, i32 4
  %135 = load ptr, ptr %central_header222, align 8
  call void @free(ptr noundef %135)
  %136 = load i32, ptr %err, align 4
  %cmp223 = icmp eq i32 %136, 0
  br i1 %cmp223, label %if.then225, label %if.end303

if.then225:                                       ; preds = %if.end220
  %137 = load ptr, ptr %zi, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %138, i32 0, i32 1
  %139 = load ptr, ptr %filestream, align 8
  %call226 = call i64 @call_ztell64(ptr noundef %z_filefunc, ptr noundef %139)
  store i64 %call226, ptr %cur_pos_inzip, align 8
  %140 = load ptr, ptr %zi, align 8
  %z_filefunc227 = getelementptr inbounds %struct.zip64_internal, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %zi, align 8
  %filestream228 = getelementptr inbounds %struct.zip64_internal, ptr %141, i32 0, i32 1
  %142 = load ptr, ptr %filestream228, align 8
  %143 = load ptr, ptr %zi, align 8
  %ci229 = getelementptr inbounds %struct.zip64_internal, ptr %143, i32 0, i32 4
  %pos_local_header230 = getelementptr inbounds %struct.curfile64_info, ptr %ci229, i32 0, i32 3
  %144 = load i64, ptr %pos_local_header230, align 8
  %add231 = add i64 %144, 14
  %call232 = call i64 @call_zseek64(ptr noundef %z_filefunc227, ptr noundef %142, i64 noundef %add231, i32 noundef 0)
  %cmp233 = icmp ne i64 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.then225
  store i32 -1, ptr %err, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.then225
  %145 = load i32, ptr %err, align 4
  %cmp237 = icmp eq i32 %145, 0
  br i1 %cmp237, label %if.then239, label %if.end243

if.then239:                                       ; preds = %if.end236
  %146 = load ptr, ptr %zi, align 8
  %z_filefunc240 = getelementptr inbounds %struct.zip64_internal, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %zi, align 8
  %filestream241 = getelementptr inbounds %struct.zip64_internal, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %filestream241, align 8
  %149 = load i64, ptr %crc32.addr, align 8
  %call242 = call i32 @zip64local_putValue(ptr noundef %z_filefunc240, ptr noundef %148, i64 noundef %149, i32 noundef 4)
  store i32 %call242, ptr %err, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.end236
  %150 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp244 = icmp uge i64 %150, 4294967295
  br i1 %cmp244, label %if.then249, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %if.end243
  %151 = load i64, ptr %compressed_size, align 8
  %cmp247 = icmp uge i64 %151, 4294967295
  br i1 %cmp247, label %if.then249, label %if.else280

if.then249:                                       ; preds = %lor.lhs.false246, %if.end243
  %152 = load ptr, ptr %zi, align 8
  %ci250 = getelementptr inbounds %struct.zip64_internal, ptr %152, i32 0, i32 4
  %pos_zip64extrainfo = getelementptr inbounds %struct.curfile64_info, ptr %ci250, i32 0, i32 16
  %153 = load i64, ptr %pos_zip64extrainfo, align 8
  %cmp251 = icmp ugt i64 %153, 0
  br i1 %cmp251, label %if.then253, label %if.else278

if.then253:                                       ; preds = %if.then249
  %154 = load ptr, ptr %zi, align 8
  %z_filefunc254 = getelementptr inbounds %struct.zip64_internal, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %zi, align 8
  %filestream255 = getelementptr inbounds %struct.zip64_internal, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %filestream255, align 8
  %157 = load ptr, ptr %zi, align 8
  %ci256 = getelementptr inbounds %struct.zip64_internal, ptr %157, i32 0, i32 4
  %pos_zip64extrainfo257 = getelementptr inbounds %struct.curfile64_info, ptr %ci256, i32 0, i32 16
  %158 = load i64, ptr %pos_zip64extrainfo257, align 8
  %add258 = add i64 %158, 4
  %call259 = call i64 @call_zseek64(ptr noundef %z_filefunc254, ptr noundef %156, i64 noundef %add258, i32 noundef 0)
  %cmp260 = icmp ne i64 %call259, 0
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.then253
  store i32 -1, ptr %err, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.then253
  %159 = load i32, ptr %err, align 4
  %cmp264 = icmp eq i32 %159, 0
  br i1 %cmp264, label %if.then266, label %if.end270

if.then266:                                       ; preds = %if.end263
  %160 = load ptr, ptr %zi, align 8
  %z_filefunc267 = getelementptr inbounds %struct.zip64_internal, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %zi, align 8
  %filestream268 = getelementptr inbounds %struct.zip64_internal, ptr %161, i32 0, i32 1
  %162 = load ptr, ptr %filestream268, align 8
  %163 = load i64, ptr %uncompressed_size.addr, align 8
  %call269 = call i32 @zip64local_putValue(ptr noundef %z_filefunc267, ptr noundef %162, i64 noundef %163, i32 noundef 8)
  store i32 %call269, ptr %err, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %if.end263
  %164 = load i32, ptr %err, align 4
  %cmp271 = icmp eq i32 %164, 0
  br i1 %cmp271, label %if.then273, label %if.end277

if.then273:                                       ; preds = %if.end270
  %165 = load ptr, ptr %zi, align 8
  %z_filefunc274 = getelementptr inbounds %struct.zip64_internal, ptr %165, i32 0, i32 0
  %166 = load ptr, ptr %zi, align 8
  %filestream275 = getelementptr inbounds %struct.zip64_internal, ptr %166, i32 0, i32 1
  %167 = load ptr, ptr %filestream275, align 8
  %168 = load i64, ptr %compressed_size, align 8
  %call276 = call i32 @zip64local_putValue(ptr noundef %z_filefunc274, ptr noundef %167, i64 noundef %168, i32 noundef 8)
  store i32 %call276, ptr %err, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then273, %if.end270
  br label %if.end279

if.else278:                                       ; preds = %if.then249
  store i32 -103, ptr %err, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.else278, %if.end277
  br label %if.end295

if.else280:                                       ; preds = %lor.lhs.false246
  %169 = load i32, ptr %err, align 4
  %cmp281 = icmp eq i32 %169, 0
  br i1 %cmp281, label %if.then283, label %if.end287

if.then283:                                       ; preds = %if.else280
  %170 = load ptr, ptr %zi, align 8
  %z_filefunc284 = getelementptr inbounds %struct.zip64_internal, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %zi, align 8
  %filestream285 = getelementptr inbounds %struct.zip64_internal, ptr %171, i32 0, i32 1
  %172 = load ptr, ptr %filestream285, align 8
  %173 = load i64, ptr %compressed_size, align 8
  %call286 = call i32 @zip64local_putValue(ptr noundef %z_filefunc284, ptr noundef %172, i64 noundef %173, i32 noundef 4)
  store i32 %call286, ptr %err, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %if.else280
  %174 = load i32, ptr %err, align 4
  %cmp288 = icmp eq i32 %174, 0
  br i1 %cmp288, label %if.then290, label %if.end294

if.then290:                                       ; preds = %if.end287
  %175 = load ptr, ptr %zi, align 8
  %z_filefunc291 = getelementptr inbounds %struct.zip64_internal, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %zi, align 8
  %filestream292 = getelementptr inbounds %struct.zip64_internal, ptr %176, i32 0, i32 1
  %177 = load ptr, ptr %filestream292, align 8
  %178 = load i64, ptr %uncompressed_size.addr, align 8
  %call293 = call i32 @zip64local_putValue(ptr noundef %z_filefunc291, ptr noundef %177, i64 noundef %178, i32 noundef 4)
  store i32 %call293, ptr %err, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %if.end287
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end279
  %179 = load ptr, ptr %zi, align 8
  %z_filefunc296 = getelementptr inbounds %struct.zip64_internal, ptr %179, i32 0, i32 0
  %180 = load ptr, ptr %zi, align 8
  %filestream297 = getelementptr inbounds %struct.zip64_internal, ptr %180, i32 0, i32 1
  %181 = load ptr, ptr %filestream297, align 8
  %182 = load i64, ptr %cur_pos_inzip, align 8
  %call298 = call i64 @call_zseek64(ptr noundef %z_filefunc296, ptr noundef %181, i64 noundef %182, i32 noundef 0)
  %cmp299 = icmp ne i64 %call298, 0
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.end295
  store i32 -1, ptr %err, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %if.end295
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.end220
  %183 = load ptr, ptr %zi, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %183, i32 0, i32 7
  %184 = load i64, ptr %number_entry, align 8
  %inc = add i64 %184, 1
  store i64 %inc, ptr %number_entry, align 8
  %185 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip304 = getelementptr inbounds %struct.zip64_internal, ptr %185, i32 0, i32 3
  store i32 0, ptr %in_opened_file_inzip304, align 8
  %186 = load i32, ptr %err, align 4
  store i32 %186, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end303, %if.then164, %if.then2, %if.then
  %187 = load i32, ptr %retval, align 4
  ret i32 %187
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
  %0 = load ptr, ptr %ll.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -104, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ll.addr, align 8
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %last_block, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %call = call ptr @allocate_new_datablock()
  %3 = load ptr, ptr %ll.addr, align 8
  %last_block3 = getelementptr inbounds %struct.linkedlist_data_s, ptr %3, i32 0, i32 1
  store ptr %call, ptr %last_block3, align 8
  %4 = load ptr, ptr %ll.addr, align 8
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %4, i32 0, i32 0
  store ptr %call, ptr %first_block, align 8
  %5 = load ptr, ptr %ll.addr, align 8
  %first_block4 = getelementptr inbounds %struct.linkedlist_data_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %first_block4, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  store i32 -104, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %7 = load ptr, ptr %ll.addr, align 8
  %last_block9 = getelementptr inbounds %struct.linkedlist_data_s, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %last_block9, align 8
  store ptr %8, ptr %ldi, align 8
  %9 = load ptr, ptr %buf.addr, align 8
  store ptr %9, ptr %from_copy, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end8
  %10 = load i64, ptr %len.addr, align 8
  %cmp10 = icmp ugt i64 %10, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %ldi, align 8
  %avail_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %avail_in_this_block, align 8
  %cmp11 = icmp eq i64 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %while.body
  %call13 = call ptr @allocate_new_datablock()
  %13 = load ptr, ptr %ldi, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %13, i32 0, i32 0
  store ptr %call13, ptr %next_datablock, align 8
  %14 = load ptr, ptr %ldi, align 8
  %next_datablock14 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next_datablock14, align 8
  %cmp15 = icmp eq ptr %15, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  store i32 -104, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then12
  %16 = load ptr, ptr %ldi, align 8
  %next_datablock18 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next_datablock18, align 8
  store ptr %17, ptr %ldi, align 8
  %18 = load ptr, ptr %ldi, align 8
  %19 = load ptr, ptr %ll.addr, align 8
  %last_block19 = getelementptr inbounds %struct.linkedlist_data_s, ptr %19, i32 0, i32 1
  store ptr %18, ptr %last_block19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %while.body
  %20 = load ptr, ptr %ldi, align 8
  %avail_in_this_block21 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %avail_in_this_block21, align 8
  %22 = load i64, ptr %len.addr, align 8
  %cmp22 = icmp ult i64 %21, %22
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %23 = load ptr, ptr %ldi, align 8
  %avail_in_this_block24 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %avail_in_this_block24, align 8
  %conv = trunc i64 %24 to i32
  store i32 %conv, ptr %copy_this, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end20
  %25 = load i64, ptr %len.addr, align 8
  %conv25 = trunc i64 %25 to i32
  store i32 %conv25, ptr %copy_this, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %26 = load ptr, ptr %ldi, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %ldi, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %filled_in_this_block, align 8
  %arrayidx = getelementptr inbounds [4080 x i8], ptr %data, i64 0, i64 %28
  store ptr %arrayidx, ptr %to_copy, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %copy_this, align 4
  %cmp27 = icmp ult i32 %29, %30
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %from_copy, align 8
  %32 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  %33 = load i8, ptr %add.ptr, align 1
  %34 = load ptr, ptr %to_copy, align 8
  %35 = load i32, ptr %i, align 4
  %idx.ext29 = zext i32 %35 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %34, i64 %idx.ext29
  store i8 %33, ptr %add.ptr30, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %copy_this, align 4
  %conv31 = zext i32 %37 to i64
  %38 = load ptr, ptr %ldi, align 8
  %filled_in_this_block32 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %filled_in_this_block32, align 8
  %add = add i64 %39, %conv31
  store i64 %add, ptr %filled_in_this_block32, align 8
  %40 = load i32, ptr %copy_this, align 4
  %conv33 = zext i32 %40 to i64
  %41 = load ptr, ptr %ldi, align 8
  %avail_in_this_block34 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %avail_in_this_block34, align 8
  %sub = sub i64 %42, %conv33
  store i64 %sub, ptr %avail_in_this_block34, align 8
  %43 = load i32, ptr %copy_this, align 4
  %44 = load ptr, ptr %from_copy, align 8
  %idx.ext35 = zext i32 %43 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %44, i64 %idx.ext35
  store ptr %add.ptr36, ptr %from_copy, align 8
  %45 = load i32, ptr %copy_this, align 4
  %conv37 = zext i32 %45 to i64
  %46 = load i64, ptr %len.addr, align 8
  %sub38 = sub i64 %46, %conv37
  store i64 %sub38, ptr %len.addr, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then6, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_putValue(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, i64 noundef %x, i32 noundef %nbByte) #0 {
entry:
  %retval = alloca i32, align 4
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
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %1 = load i32, ptr %nbByte.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %x.addr, align 8
  %and = and i64 %2, 255
  %conv = trunc i64 %and to i8
  %3 = load i32, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %4 = load i64, ptr %x.addr, align 8
  %shr = lshr i64 %4, 8
  store i64 %shr, ptr %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %x.addr, align 8
  %cmp1 = icmp ne i64 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, ptr %n, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %if.then
  %7 = load i32, ptr %n, align 4
  %8 = load i32, ptr %nbByte.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond3
  %9 = load i32, ptr %n, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 %idxprom7
  store i8 -1, ptr %arrayidx8, align 1
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %10 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, ptr %n, align 4
  br label %for.cond3, !llvm.loop !26

for.end11:                                        ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end11, %for.end
  %11 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %11, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %12 = load ptr, ptr %zwrite_file, align 8
  %13 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func6412 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %13, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6412, i32 0, i32 7
  %14 = load ptr, ptr %opaque, align 8
  %15 = load ptr, ptr %filestream.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %16 = load i32, ptr %nbByte.addr, align 4
  %conv13 = sext i32 %16 to i64
  %call = call i64 %12(ptr noundef %14, ptr noundef %15, ptr noundef %arraydecay, i64 noundef %conv13)
  %17 = load i32, ptr %nbByte.addr, align 4
  %conv14 = sext i32 %17 to i64
  %cmp15 = icmp ne i64 %call, %conv14
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then17
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipClose(ptr noundef %file, ptr noundef %global_comment) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %global_comment.addr = alloca ptr, align 8
  %zi = alloca ptr, align 8
  %err = alloca i32, align 4
  %size_centraldir = alloca i64, align 8
  %centraldir_pos_inzip = alloca i64, align 8
  %pos = alloca i64, align 8
  %ldi = alloca ptr, align 8
  %Zip64EOCDpos = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %global_comment, ptr %global_comment.addr, align 8
  store i32 0, ptr %err, align 4
  store i64 0, ptr %size_centraldir, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  store ptr %1, ptr %zi, align 8
  %2 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8
  %call = call i32 @zipCloseFileInZip(ptr noundef %4)
  store i32 %call, ptr %err, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %global_comment.addr, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %zi, align 8
  %globalcomment = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %globalcomment, align 8
  store ptr %7, ptr %global_comment.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %8 = load ptr, ptr %zi, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %filestream, align 8
  %call7 = call i64 @call_ztell64(ptr noundef %z_filefunc, ptr noundef %10)
  store i64 %call7, ptr %centraldir_pos_inzip, align 8
  %11 = load i32, ptr %err, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then9, label %if.end26

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %zi, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 2
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %central_dir, i32 0, i32 0
  %13 = load ptr, ptr %first_block, align 8
  store ptr %13, ptr %ldi, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.then9
  %14 = load ptr, ptr %ldi, align 8
  %cmp10 = icmp ne ptr %14, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, ptr %err, align 4
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %while.body
  %16 = load ptr, ptr %ldi, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %filled_in_this_block, align 8
  %cmp12 = icmp ugt i64 %17, 0
  br i1 %cmp12, label %if.then13, label %if.end24

if.then13:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %zi, align 8
  %z_filefunc14 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc14, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %19 = load ptr, ptr %zwrite_file, align 8
  %20 = load ptr, ptr %zi, align 8
  %z_filefunc15 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 0
  %zfile_func6416 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc15, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6416, i32 0, i32 7
  %21 = load ptr, ptr %opaque, align 8
  %22 = load ptr, ptr %zi, align 8
  %filestream17 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %filestream17, align 8
  %24 = load ptr, ptr %ldi, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %24, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4080 x i8], ptr %data, i64 0, i64 0
  %25 = load ptr, ptr %ldi, align 8
  %filled_in_this_block18 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %filled_in_this_block18, align 8
  %call19 = call i64 %19(ptr noundef %21, ptr noundef %23, ptr noundef %arraydecay, i64 noundef %26)
  %27 = load ptr, ptr %ldi, align 8
  %filled_in_this_block20 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %filled_in_this_block20, align 8
  %cmp21 = icmp ne i64 %call19, %28
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then13
  store i32 -1, ptr %err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true, %while.body
  %29 = load ptr, ptr %ldi, align 8
  %filled_in_this_block25 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %29, i32 0, i32 2
  %30 = load i64, ptr %filled_in_this_block25, align 8
  %31 = load i64, ptr %size_centraldir, align 8
  %add = add i64 %31, %30
  store i64 %add, ptr %size_centraldir, align 8
  %32 = load ptr, ptr %ldi, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next_datablock, align 8
  store ptr %33, ptr %ldi, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  br label %if.end26

if.end26:                                         ; preds = %while.end, %if.end6
  %34 = load ptr, ptr %zi, align 8
  %central_dir27 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 2
  call void @free_linkedlist(ptr noundef %central_dir27)
  %35 = load ptr, ptr %zi, align 8
  %set = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 9
  call void @set_end(ptr noundef %set)
  %36 = load i64, ptr %centraldir_pos_inzip, align 8
  %37 = load ptr, ptr %zi, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 6
  %38 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %36, %38
  store i64 %sub, ptr %pos, align 8
  %39 = load i64, ptr %pos, align 8
  %cmp28 = icmp uge i64 %39, 4294967295
  br i1 %cmp28, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26
  %40 = load ptr, ptr %zi, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %number_entry, align 8
  %cmp29 = icmp uge i64 %41, 65535
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %lor.lhs.false, %if.end26
  %42 = load ptr, ptr %zi, align 8
  %z_filefunc31 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %zi, align 8
  %filestream32 = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %filestream32, align 8
  %call33 = call i64 @call_ztell64(ptr noundef %z_filefunc31, ptr noundef %44)
  store i64 %call33, ptr %Zip64EOCDpos, align 8
  %45 = load ptr, ptr %zi, align 8
  %46 = load i64, ptr %size_centraldir, align 8
  %47 = load i64, ptr %centraldir_pos_inzip, align 8
  %call34 = call i32 @Write_Zip64EndOfCentralDirectoryRecord(ptr noundef %45, i64 noundef %46, i64 noundef %47)
  %48 = load ptr, ptr %zi, align 8
  %49 = load i64, ptr %Zip64EOCDpos, align 8
  %call35 = call i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %48, i64 noundef %49)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %lor.lhs.false
  %50 = load i32, ptr %err, align 4
  %cmp37 = icmp eq i32 %50, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %51 = load ptr, ptr %zi, align 8
  %52 = load i64, ptr %size_centraldir, align 8
  %53 = load i64, ptr %centraldir_pos_inzip, align 8
  %call39 = call i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %51, i64 noundef %52, i64 noundef %53)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %54 = load i32, ptr %err, align 4
  %cmp41 = icmp eq i32 %54, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %55 = load ptr, ptr %zi, align 8
  %56 = load ptr, ptr %global_comment.addr, align 8
  %call43 = call i32 @Write_GlobalComment(ptr noundef %55, ptr noundef %56)
  store i32 %call43, ptr %err, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %57 = load ptr, ptr %zi, align 8
  %z_filefunc45 = getelementptr inbounds %struct.zip64_internal, ptr %57, i32 0, i32 0
  %zfile_func6446 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc45, i32 0, i32 0
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6446, i32 0, i32 5
  %58 = load ptr, ptr %zclose_file, align 8
  %59 = load ptr, ptr %zi, align 8
  %z_filefunc47 = getelementptr inbounds %struct.zip64_internal, ptr %59, i32 0, i32 0
  %zfile_func6448 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc47, i32 0, i32 0
  %opaque49 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6448, i32 0, i32 7
  %60 = load ptr, ptr %opaque49, align 8
  %61 = load ptr, ptr %zi, align 8
  %filestream50 = getelementptr inbounds %struct.zip64_internal, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %filestream50, align 8
  %call51 = call i32 %58(ptr noundef %60, ptr noundef %62)
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end57

if.then53:                                        ; preds = %if.end44
  %63 = load i32, ptr %err, align 4
  %cmp54 = icmp eq i32 %63, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then53
  store i32 -1, ptr %err, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  %64 = load ptr, ptr %zi, align 8
  %globalcomment58 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %globalcomment58, align 8
  call void @free(ptr noundef %65)
  %66 = load ptr, ptr %zi, align 8
  call void @free(ptr noundef %66)
  %67 = load i32, ptr %err, align 4
  store i32 %67, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_linkedlist(ptr noundef %ll) #0 {
entry:
  %ll.addr = alloca ptr, align 8
  store ptr %ll, ptr %ll.addr, align 8
  %0 = load ptr, ptr %ll.addr, align 8
  %first_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first_block, align 8
  call void @free_datablock(ptr noundef %1)
  %2 = load ptr, ptr %ll.addr, align 8
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %2, i32 0, i32 1
  store ptr null, ptr %last_block, align 8
  %3 = load ptr, ptr %ll.addr, align 8
  %first_block1 = getelementptr inbounds %struct.linkedlist_data_s, ptr %3, i32 0, i32 0
  store ptr null, ptr %first_block1, align 8
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
  %pos = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store i64 %size_centraldir, ptr %size_centraldir.addr, align 8
  store i64 %centraldir_pos_inzip, ptr %centraldir_pos_inzip.addr, align 8
  store i32 0, ptr %err, align 4
  store i64 44, ptr %Zip64DataSize, align 8
  %0 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %z_filefunc, ptr noundef %2, i64 noundef 101075792, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %3 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zi.addr, align 8
  %z_filefunc1 = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %filestream2, align 8
  %7 = load i64, ptr %Zip64DataSize, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %z_filefunc1, ptr noundef %6, i64 noundef %7, i32 noundef 8)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %zi.addr, align 8
  %z_filefunc6 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %filestream7, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %z_filefunc6, ptr noundef %11, i64 noundef 45, i32 noundef 2)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %12 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %zi.addr, align 8
  %z_filefunc12 = getelementptr inbounds %struct.zip64_internal, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zi.addr, align 8
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %filestream13, align 8
  %call14 = call i32 @zip64local_putValue(ptr noundef %z_filefunc12, ptr noundef %15, i64 noundef 45, i32 noundef 2)
  store i32 %call14, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %16 = load i32, ptr %err, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  %17 = load ptr, ptr %zi.addr, align 8
  %z_filefunc18 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zi.addr, align 8
  %filestream19 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %filestream19, align 8
  %call20 = call i32 @zip64local_putValue(ptr noundef %z_filefunc18, ptr noundef %19, i64 noundef 0, i32 noundef 4)
  store i32 %call20, ptr %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15
  %20 = load i32, ptr %err, align 4
  %cmp22 = icmp eq i32 %20, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end21
  %21 = load ptr, ptr %zi.addr, align 8
  %z_filefunc24 = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zi.addr, align 8
  %filestream25 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %filestream25, align 8
  %call26 = call i32 @zip64local_putValue(ptr noundef %z_filefunc24, ptr noundef %23, i64 noundef 0, i32 noundef 4)
  store i32 %call26, ptr %err, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21
  %24 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end27
  %25 = load ptr, ptr %zi.addr, align 8
  %z_filefunc30 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zi.addr, align 8
  %filestream31 = getelementptr inbounds %struct.zip64_internal, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %filestream31, align 8
  %28 = load ptr, ptr %zi.addr, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 7
  %29 = load i64, ptr %number_entry, align 8
  %call32 = call i32 @zip64local_putValue(ptr noundef %z_filefunc30, ptr noundef %27, i64 noundef %29, i32 noundef 8)
  store i32 %call32, ptr %err, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27
  %30 = load i32, ptr %err, align 4
  %cmp34 = icmp eq i32 %30, 0
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end33
  %31 = load ptr, ptr %zi.addr, align 8
  %z_filefunc36 = getelementptr inbounds %struct.zip64_internal, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %zi.addr, align 8
  %filestream37 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %filestream37, align 8
  %34 = load ptr, ptr %zi.addr, align 8
  %number_entry38 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 7
  %35 = load i64, ptr %number_entry38, align 8
  %call39 = call i32 @zip64local_putValue(ptr noundef %z_filefunc36, ptr noundef %33, i64 noundef %35, i32 noundef 8)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end33
  %36 = load i32, ptr %err, align 4
  %cmp41 = icmp eq i32 %36, 0
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end40
  %37 = load ptr, ptr %zi.addr, align 8
  %z_filefunc43 = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zi.addr, align 8
  %filestream44 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %filestream44, align 8
  %40 = load i64, ptr %size_centraldir.addr, align 8
  %call45 = call i32 @zip64local_putValue(ptr noundef %z_filefunc43, ptr noundef %39, i64 noundef %40, i32 noundef 8)
  store i32 %call45, ptr %err, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  %41 = load i32, ptr %err, align 4
  %cmp47 = icmp eq i32 %41, 0
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end46
  %42 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %43 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 6
  %44 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %42, %44
  store i64 %sub, ptr %pos, align 8
  %45 = load ptr, ptr %zi.addr, align 8
  %z_filefunc49 = getelementptr inbounds %struct.zip64_internal, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %zi.addr, align 8
  %filestream50 = getelementptr inbounds %struct.zip64_internal, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %filestream50, align 8
  %48 = load i64, ptr %pos, align 8
  %call51 = call i32 @zip64local_putValue(ptr noundef %z_filefunc49, ptr noundef %47, i64 noundef %48, i32 noundef 8)
  store i32 %call51, ptr %err, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46
  %49 = load i32, ptr %err, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %zi, i64 noundef %zip64eocd_pos_inzip) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %zip64eocd_pos_inzip.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %pos = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store i64 %zip64eocd_pos_inzip, ptr %zip64eocd_pos_inzip.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load i64, ptr %zip64eocd_pos_inzip.addr, align 8
  %1 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %0, %2
  store i64 %sub, ptr %pos, align 8
  %3 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %z_filefunc, ptr noundef %5, i64 noundef 117853008, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %6 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %zi.addr, align 8
  %z_filefunc1 = getelementptr inbounds %struct.zip64_internal, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %filestream2, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %z_filefunc1, ptr noundef %9, i64 noundef 0, i32 noundef 4)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %zi.addr, align 8
  %z_filefunc6 = getelementptr inbounds %struct.zip64_internal, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %filestream7, align 8
  %14 = load i64, ptr %pos, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %z_filefunc6, ptr noundef %13, i64 noundef %14, i32 noundef 8)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %15 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %zi.addr, align 8
  %z_filefunc12 = getelementptr inbounds %struct.zip64_internal, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zi.addr, align 8
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %filestream13, align 8
  %call14 = call i32 @zip64local_putValue(ptr noundef %z_filefunc12, ptr noundef %18, i64 noundef 1, i32 noundef 4)
  store i32 %call14, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %19 = load i32, ptr %err, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %zi, i64 noundef %size_centraldir, i64 noundef %centraldir_pos_inzip) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %size_centraldir.addr = alloca i64, align 8
  %centraldir_pos_inzip.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %pos = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store i64 %size_centraldir, ptr %size_centraldir.addr, align 8
  store i64 %centraldir_pos_inzip, ptr %centraldir_pos_inzip.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %z_filefunc, ptr noundef %2, i64 noundef 101010256, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %3 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zi.addr, align 8
  %z_filefunc1 = getelementptr inbounds %struct.zip64_internal, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %filestream2, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %z_filefunc1, ptr noundef %6, i64 noundef 0, i32 noundef 2)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %zi.addr, align 8
  %z_filefunc6 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %filestream7, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %z_filefunc6, ptr noundef %10, i64 noundef 0, i32 noundef 2)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %11 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %zi.addr, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 7
  %13 = load i64, ptr %number_entry, align 8
  %cmp12 = icmp uge i64 %13, 65535
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %14 = load ptr, ptr %zi.addr, align 8
  %z_filefunc14 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zi.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %filestream15, align 8
  %call16 = call i32 @zip64local_putValue(ptr noundef %z_filefunc14, ptr noundef %16, i64 noundef 65535, i32 noundef 2)
  store i32 %call16, ptr %err, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then11
  %17 = load ptr, ptr %zi.addr, align 8
  %z_filefunc17 = getelementptr inbounds %struct.zip64_internal, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zi.addr, align 8
  %filestream18 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %filestream18, align 8
  %20 = load ptr, ptr %zi.addr, align 8
  %number_entry19 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 7
  %21 = load i64, ptr %number_entry19, align 8
  %call20 = call i32 @zip64local_putValue(ptr noundef %z_filefunc17, ptr noundef %19, i64 noundef %21, i32 noundef 2)
  store i32 %call20, ptr %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %22 = load i32, ptr %err, align 4
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %if.end22
  %23 = load ptr, ptr %zi.addr, align 8
  %number_entry25 = getelementptr inbounds %struct.zip64_internal, ptr %23, i32 0, i32 7
  %24 = load i64, ptr %number_entry25, align 8
  %cmp26 = icmp uge i64 %24, 65535
  br i1 %cmp26, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.then24
  %25 = load ptr, ptr %zi.addr, align 8
  %z_filefunc28 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zi.addr, align 8
  %filestream29 = getelementptr inbounds %struct.zip64_internal, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %filestream29, align 8
  %call30 = call i32 @zip64local_putValue(ptr noundef %z_filefunc28, ptr noundef %27, i64 noundef 65535, i32 noundef 2)
  store i32 %call30, ptr %err, align 4
  br label %if.end36

if.else31:                                        ; preds = %if.then24
  %28 = load ptr, ptr %zi.addr, align 8
  %z_filefunc32 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zi.addr, align 8
  %filestream33 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %filestream33, align 8
  %31 = load ptr, ptr %zi.addr, align 8
  %number_entry34 = getelementptr inbounds %struct.zip64_internal, ptr %31, i32 0, i32 7
  %32 = load i64, ptr %number_entry34, align 8
  %call35 = call i32 @zip64local_putValue(ptr noundef %z_filefunc32, ptr noundef %30, i64 noundef %32, i32 noundef 2)
  store i32 %call35, ptr %err, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then27
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end22
  %33 = load i32, ptr %err, align 4
  %cmp38 = icmp eq i32 %33, 0
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end37
  %34 = load ptr, ptr %zi.addr, align 8
  %z_filefunc40 = getelementptr inbounds %struct.zip64_internal, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %zi.addr, align 8
  %filestream41 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %filestream41, align 8
  %37 = load i64, ptr %size_centraldir.addr, align 8
  %call42 = call i32 @zip64local_putValue(ptr noundef %z_filefunc40, ptr noundef %36, i64 noundef %37, i32 noundef 4)
  store i32 %call42, ptr %err, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end37
  %38 = load i32, ptr %err, align 4
  %cmp44 = icmp eq i32 %38, 0
  br i1 %cmp44, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.end43
  %39 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %40 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 6
  %41 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %39, %41
  store i64 %sub, ptr %pos, align 8
  %42 = load i64, ptr %pos, align 8
  %cmp46 = icmp uge i64 %42, 4294967295
  br i1 %cmp46, label %if.then47, label %if.else51

if.then47:                                        ; preds = %if.then45
  %43 = load ptr, ptr %zi.addr, align 8
  %z_filefunc48 = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %zi.addr, align 8
  %filestream49 = getelementptr inbounds %struct.zip64_internal, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %filestream49, align 8
  %call50 = call i32 @zip64local_putValue(ptr noundef %z_filefunc48, ptr noundef %45, i64 noundef 4294967295, i32 noundef 4)
  store i32 %call50, ptr %err, align 4
  br label %if.end57

if.else51:                                        ; preds = %if.then45
  %46 = load ptr, ptr %zi.addr, align 8
  %z_filefunc52 = getelementptr inbounds %struct.zip64_internal, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %zi.addr, align 8
  %filestream53 = getelementptr inbounds %struct.zip64_internal, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %filestream53, align 8
  %49 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %50 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset54 = getelementptr inbounds %struct.zip64_internal, ptr %50, i32 0, i32 6
  %51 = load i64, ptr %add_position_when_writing_offset54, align 8
  %sub55 = sub i64 %49, %51
  %call56 = call i32 @zip64local_putValue(ptr noundef %z_filefunc52, ptr noundef %48, i64 noundef %sub55, i32 noundef 4)
  store i32 %call56, ptr %err, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then47
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end43
  %52 = load i32, ptr %err, align 4
  ret i32 %52
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
  %0 = load ptr, ptr %global_comment.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %global_comment.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size_global_comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %zi.addr, align 8
  %z_filefunc = getelementptr inbounds %struct.zip64_internal, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %filestream, align 8
  %5 = load i32, ptr %size_global_comment, align 4
  %conv1 = zext i32 %5 to i64
  %call2 = call i32 @zip64local_putValue(ptr noundef %z_filefunc, ptr noundef %4, i64 noundef %conv1, i32 noundef 2)
  store i32 %call2, ptr %err, align 4
  %6 = load i32, ptr %err, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %size_global_comment, align 4
  %cmp5 = icmp ugt i32 %7, 0
  br i1 %cmp5, label %if.then7, label %if.end19

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %zi.addr, align 8
  %z_filefunc8 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 0
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc8, i32 0, i32 0
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 2
  %9 = load ptr, ptr %zwrite_file, align 8
  %10 = load ptr, ptr %zi.addr, align 8
  %z_filefunc9 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0
  %zfile_func6410 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %z_filefunc9, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6410, i32 0, i32 7
  %11 = load ptr, ptr %opaque, align 8
  %12 = load ptr, ptr %zi.addr, align 8
  %filestream11 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %filestream11, align 8
  %14 = load ptr, ptr %global_comment.addr, align 8
  %15 = load i32, ptr %size_global_comment, align 4
  %conv12 = zext i32 %15 to i64
  %call13 = call i64 %9(ptr noundef %11, ptr noundef %13, ptr noundef %14, i64 noundef %conv12)
  %16 = load i32, ptr %size_global_comment, align 4
  %conv14 = zext i32 %16 to i64
  %cmp15 = icmp ne i64 %call13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then7
  store i32 -1, ptr %err, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %if.end
  %17 = load i32, ptr %err, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipRemoveExtraInfoBlock(ptr noundef %pData, ptr noundef %dataLen, i16 noundef signext %sHeader) #0 {
entry:
  %retval = alloca i32, align 4
  %pData.addr = alloca ptr, align 8
  %dataLen.addr = alloca ptr, align 8
  %sHeader.addr = alloca i16, align 2
  %p = alloca ptr, align 8
  %size = alloca i32, align 4
  %pNewHeader = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %header = alloca i16, align 2
  %dataSize = alloca i16, align 2
  %retVal = alloca i32, align 4
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %dataLen, ptr %dataLen.addr, align 8
  store i16 %sHeader, ptr %sHeader.addr, align 2
  %0 = load ptr, ptr %pData.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %size, align 4
  store i32 0, ptr %retVal, align 4
  %1 = load ptr, ptr %pData.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %dataLen.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %dataLen.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp3 = icmp slt i32 %4, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %dataLen.addr, align 8
  %6 = load i32, ptr %5, align 4
  %conv = zext i32 %6 to i64
  %call = call ptr @malloc(i64 noundef %conv) #16
  store ptr %call, ptr %pNewHeader, align 8
  %7 = load ptr, ptr %pNewHeader, align 8
  store ptr %7, ptr %pTmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %8 = load ptr, ptr %p, align 8
  %9 = load ptr, ptr %pData.addr, align 8
  %10 = load ptr, ptr %dataLen.addr, align 8
  %11 = load i32, ptr %10, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %cmp4 = icmp ult ptr %8, %add.ptr
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %p, align 8
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %header, align 2
  %14 = load ptr, ptr %p, align 8
  %add.ptr6 = getelementptr inbounds i16, ptr %14, i64 1
  %15 = load i16, ptr %add.ptr6, align 2
  store i16 %15, ptr %dataSize, align 2
  %16 = load i16, ptr %header, align 2
  %conv7 = sext i16 %16 to i32
  %17 = load i16, ptr %sHeader.addr, align 2
  %conv8 = sext i16 %17 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  %18 = load i16, ptr %dataSize, align 2
  %conv12 = sext i16 %18 to i32
  %add = add nsw i32 %conv12, 4
  %19 = load ptr, ptr %p, align 8
  %idx.ext13 = sext i32 %add to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %19, i64 %idx.ext13
  store ptr %add.ptr14, ptr %p, align 8
  br label %if.end26

if.else:                                          ; preds = %while.body
  %20 = load ptr, ptr %pTmp, align 8
  %21 = load ptr, ptr %p, align 8
  %22 = load i16, ptr %dataSize, align 2
  %conv15 = sext i16 %22 to i32
  %add16 = add nsw i32 %conv15, 4
  %conv17 = sext i32 %add16 to i64
  %23 = load ptr, ptr %pTmp, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %20, ptr noundef %21, i64 noundef %conv17, i64 noundef %24) #12
  %25 = load i16, ptr %dataSize, align 2
  %conv19 = sext i16 %25 to i32
  %add20 = add nsw i32 %conv19, 4
  %26 = load ptr, ptr %p, align 8
  %idx.ext21 = sext i32 %add20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %26, i64 %idx.ext21
  store ptr %add.ptr22, ptr %p, align 8
  %27 = load i16, ptr %dataSize, align 2
  %conv23 = sext i16 %27 to i32
  %add24 = add nsw i32 %conv23, 4
  %28 = load i32, ptr %size, align 4
  %add25 = add nsw i32 %28, %add24
  store i32 %add25, ptr %size, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then11
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %size, align 4
  %30 = load ptr, ptr %dataLen.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp27 = icmp slt i32 %29, %31
  br i1 %cmp27, label %if.then29, label %if.else38

if.then29:                                        ; preds = %while.end
  %32 = load ptr, ptr %pData.addr, align 8
  %33 = load ptr, ptr %dataLen.addr, align 8
  %34 = load i32, ptr %33, align 4
  %conv30 = sext i32 %34 to i64
  %35 = load ptr, ptr %pData.addr, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call31 = call ptr @__memset_chk(ptr noundef %32, i32 noundef 0, i64 noundef %conv30, i64 noundef %36) #12
  %37 = load i32, ptr %size, align 4
  %cmp32 = icmp sgt i32 %37, 0
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then29
  %38 = load ptr, ptr %pData.addr, align 8
  %39 = load ptr, ptr %pNewHeader, align 8
  %40 = load i32, ptr %size, align 4
  %conv35 = sext i32 %40 to i64
  %41 = load ptr, ptr %pData.addr, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %38, ptr noundef %39, i64 noundef %conv35, i64 noundef %42) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then29
  %43 = load i32, ptr %size, align 4
  %44 = load ptr, ptr %dataLen.addr, align 8
  store i32 %43, ptr %44, align 4
  store i32 0, ptr %retVal, align 4
  br label %if.end39

if.else38:                                        ; preds = %while.end
  store i32 -1, ptr %retVal, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.end37
  %45 = load ptr, ptr %pNewHeader, align 8
  call void @free(ptr noundef %45)
  %46 = load i32, ptr %retVal, align 4
  store i32 %46, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
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
  %0 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %head, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %right, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %step, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %step, align 8
  %5 = load ptr, ptr %set.addr, align 8
  %head1 = getelementptr inbounds %struct.set_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %head1, align 8
  %cmp = icmp ne ptr %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %step, align 8
  %right2 = getelementptr inbounds %struct.set_node_s, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %right2, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx3, align 8
  store ptr %9, ptr %next, align 8
  %10 = load ptr, ptr %set.addr, align 8
  %11 = load ptr, ptr %step, align 8
  %key = getelementptr inbounds %struct.set_node_s, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %key, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_2(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %set.addr, align 8
  %14 = load ptr, ptr %step, align 8
  %right4 = getelementptr inbounds %struct.set_node_s, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %right4, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_3(ptr noundef %13, ptr noundef %15)
  %16 = load ptr, ptr %set.addr, align 8
  %17 = load ptr, ptr %step, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_4(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %next, align 8
  store ptr %18, ptr %step, align 8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @set_node(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %call = call ptr @set_alloc(ptr noundef %0, ptr noundef null, i64 noundef 24)
  store ptr %call, ptr %node, align 8
  %1 = load ptr, ptr %node, align 8
  %size = getelementptr inbounds %struct.set_node_s, ptr %1, i32 0, i32 1
  store i16 0, ptr %size, align 8
  %2 = load ptr, ptr %node, align 8
  %fill = getelementptr inbounds %struct.set_node_s, ptr %2, i32 0, i32 2
  store i16 0, ptr %fill, align 2
  %3 = load ptr, ptr %node, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %3, i32 0, i32 3
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %node, align 8
  ret ptr %4
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
  %0 = load ptr, ptr %node.addr, align 8
  %size = getelementptr inbounds %struct.set_node_s, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %size, align 8
  %conv = sext i16 %1 to i32
  %2 = load i32, ptr %want.addr, align 4
  %cmp = icmp slt i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8
  %size2 = getelementptr inbounds %struct.set_node_s, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %size2, align 8
  %conv3 = sext i16 %4 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %node.addr, align 8
  %size4 = getelementptr inbounds %struct.set_node_s, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %size4, align 8
  %conv5 = sext i16 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %more, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %7 = load i32, ptr %more, align 4
  %8 = load i32, ptr %want.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %more, align 4
  %shl = shl i32 %9, 1
  store i32 %shl, ptr %more, align 4
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %set.addr, align 8
  %11 = load ptr, ptr %node.addr, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %right, align 8
  %13 = load i32, ptr %more, align 4
  %conv8 = sext i32 %13 to i64
  %mul = mul i64 %conv8, 8
  %call = call ptr @set_alloc(ptr noundef %10, ptr noundef %12, i64 noundef %mul)
  %14 = load ptr, ptr %node.addr, align 8
  %right9 = getelementptr inbounds %struct.set_node_s, ptr %14, i32 0, i32 3
  store ptr %call, ptr %right9, align 8
  %15 = load i32, ptr %more, align 4
  %conv10 = trunc i32 %15 to i16
  %16 = load ptr, ptr %node.addr, align 8
  %size11 = getelementptr inbounds %struct.set_node_s, ptr %16, i32 0, i32 1
  store i16 %conv10, ptr %size11, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %17 = load i32, ptr %fill.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end
  %18 = load ptr, ptr %node.addr, align 8
  %fill14 = getelementptr inbounds %struct.set_node_s, ptr %18, i32 0, i32 2
  %19 = load i16, ptr %fill14, align 2
  %conv15 = sext i16 %19 to i32
  store i32 %conv15, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %want.addr, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %set.addr, align 8
  %head = getelementptr inbounds %struct.set_s, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %head, align 8
  %24 = load ptr, ptr %node.addr, align 8
  %right18 = getelementptr inbounds %struct.set_node_s, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %right18, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %25, i64 %idxprom
  store ptr %23, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.end
  %28 = load i32, ptr %want.addr, align 4
  %conv20 = trunc i32 %28 to i16
  %29 = load ptr, ptr %node.addr, align 8
  %fill21 = getelementptr inbounds %struct.set_node_s, ptr %29, i32 0, i32 2
  store i16 %conv20, ptr %fill21, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_uniq(ptr noundef %gen, ptr noundef %ptr) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %gen.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = ptrtoint ptr %1 to i64
  %shl = shl i64 %2, 32
  %call = call i64 @time(ptr noundef null)
  %shl1 = shl i64 %call, 12
  %xor = xor i64 %shl, %shl1
  %call2 = call i64 @"\01_clock"()
  %xor3 = xor i64 %xor, %call2
  call void @set_seed(ptr noundef %0, i64 noundef %xor3, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_seed(ptr noundef %gen, i64 noundef %seed, i64 noundef %seq) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %seed.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  store ptr %gen, ptr %gen.addr, align 8
  store i64 %seed, ptr %seed.addr, align 8
  store i64 %seq, ptr %seq.addr, align 8
  %0 = load i64, ptr %seq.addr, align 8
  %shl = shl i64 %0, 1
  %or = or i64 %shl, 1
  %1 = load ptr, ptr %gen.addr, align 8
  %inc = getelementptr inbounds %struct.set_rand_t, ptr %1, i32 0, i32 1
  store i64 %or, ptr %inc, align 8
  %2 = load i64, ptr %seed.addr, align 8
  %3 = load ptr, ptr %gen.addr, align 8
  %inc1 = getelementptr inbounds %struct.set_rand_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %inc1, align 8
  %add = add i64 %2, %4
  %mul = mul i64 %add, 6364136223846793005
  %5 = load ptr, ptr %gen.addr, align 8
  %inc2 = getelementptr inbounds %struct.set_rand_t, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %inc2, align 8
  %add3 = add i64 %mul, %6
  %7 = load ptr, ptr %gen.addr, align 8
  %state = getelementptr inbounds %struct.set_rand_t, ptr %7, i32 0, i32 0
  store i64 %add3, ptr %state, align 8
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
  %0 = load ptr, ptr %block.addr, align 8
  %node1 = getelementptr inbounds %struct.block_t, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %node1, align 8
  store ptr %1, ptr %node, align 8
  %2 = load ptr, ptr %node, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next, align 8
  %5 = load ptr, ptr %node, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %5, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4080 x i8], ptr %data, i64 0, i64 0
  %6 = load ptr, ptr %node, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %filled_in_this_block, align 8
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %7
  %cmp2 = icmp ult ptr %4, %add.ptr
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end4
  %8 = load ptr, ptr %node, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next_datablock, align 8
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %node, align 8
  %filled_in_this_block6 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %filled_in_this_block6, align 8
  %cmp7 = icmp ne i64 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.body
  %12 = load ptr, ptr %node, align 8
  %next_datablock10 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next_datablock10, align 8
  store ptr %13, ptr %node, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then3, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @block_get2(ptr noundef %block) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %call = call i32 @block_get(ptr noundef %0)
  store i32 %call, ptr %low, align 4
  %1 = load ptr, ptr %block.addr, align 8
  %call1 = call i32 @block_get(ptr noundef %1)
  store i32 %call1, ptr %high, align 4
  %2 = load i32, ptr %low, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %high, align 4
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i32, ptr %low, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, ptr %high, align 4
  %conv3 = sext i32 %5 to i64
  %shl = shl i64 %conv3, 8
  %or = or i64 %conv, %shl
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %or, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @block_skip(ptr noundef %block, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %block.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %block, ptr %block.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %n.addr, align 8
  %1 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %left, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %block.addr, align 8
  %left1 = getelementptr inbounds %struct.block_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %left1, align 8
  %5 = load i64, ptr %n.addr, align 8
  %sub = sub i64 %5, %4
  store i64 %sub, ptr %n.addr, align 8
  %6 = load ptr, ptr %block.addr, align 8
  %left2 = getelementptr inbounds %struct.block_t, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %left2, align 8
  %8 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %7
  store ptr %add.ptr, ptr %next, align 8
  %10 = load ptr, ptr %block.addr, align 8
  %left3 = getelementptr inbounds %struct.block_t, ptr %10, i32 0, i32 1
  store i64 0, ptr %left3, align 8
  %11 = load ptr, ptr %block.addr, align 8
  %call = call i32 @block_get(ptr noundef %11)
  %cmp4 = icmp eq i32 %call, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %12 = load i64, ptr %n.addr, align 8
  %dec = add i64 %12, -1
  store i64 %dec, ptr %n.addr, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %13 = load i64, ptr %n.addr, align 8
  %14 = load ptr, ptr %block.addr, align 8
  %next5 = getelementptr inbounds %struct.block_t, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next5, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %15, i64 %13
  store ptr %add.ptr6, ptr %next5, align 8
  %16 = load i64, ptr %n.addr, align 8
  %17 = load ptr, ptr %block.addr, align 8
  %left7 = getelementptr inbounds %struct.block_t, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %left7, align 8
  %sub8 = sub i64 %18, %16
  store i64 %sub8, ptr %left7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
  %0 = load i64, ptr %len.addr, align 8
  store i64 %0, ptr %need, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end, %entry
  %1 = load i64, ptr %need, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %left, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %block.addr, align 8
  %call = call i32 @block_get(ptr noundef %4)
  store i32 %call, ptr %got, align 4
  %5 = load i32, ptr %got, align 4
  %cmp1 = icmp eq i32 %5, -1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %6 = load i32, ptr %got, align 4
  %conv = trunc i32 %6 to i8
  %7 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  store i8 %conv, ptr %7, align 1
  %8 = load i64, ptr %need, align 8
  %dec = add i64 %8, -1
  store i64 %dec, ptr %need, align 8
  br label %while.cond, !llvm.loop !34

if.end3:                                          ; preds = %while.body
  %9 = load i64, ptr %need, align 8
  %10 = load ptr, ptr %block.addr, align 8
  %left4 = getelementptr inbounds %struct.block_t, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %left4, align 8
  %cmp5 = icmp ugt i64 %9, %11
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %12 = load ptr, ptr %block.addr, align 8
  %left7 = getelementptr inbounds %struct.block_t, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %left7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %14 = load i64, ptr %need, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ]
  store i64 %cond, ptr %take, align 8
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next, align 8
  %18 = load i64, ptr %take, align 8
  %19 = load ptr, ptr %buf.addr, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef %15, ptr noundef %17, i64 noundef %18, i64 noundef %20) #12
  %21 = load i64, ptr %take, align 8
  %22 = load ptr, ptr %block.addr, align 8
  %next9 = getelementptr inbounds %struct.block_t, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %next9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %21
  store ptr %add.ptr, ptr %next9, align 8
  %24 = load i64, ptr %take, align 8
  %25 = load ptr, ptr %block.addr, align 8
  %left10 = getelementptr inbounds %struct.block_t, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %left10, align 8
  %sub = sub i64 %26, %24
  store i64 %sub, ptr %left10, align 8
  %27 = load i64, ptr %take, align 8
  %28 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %28, i64 %27
  store ptr %add.ptr11, ptr %buf.addr, align 8
  %29 = load i64, ptr %take, align 8
  %30 = load i64, ptr %need, align 8
  %sub12 = sub i64 %30, %29
  store i64 %sub12, ptr %need, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %if.then2, %while.cond
  %31 = load i64, ptr %len.addr, align 8
  %32 = load i64, ptr %need, align 8
  %sub13 = sub i64 %31, %32
  ret i64 %sub13
}

declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @block_stop(ptr noundef %block) #0 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %0, i32 0, i32 1
  store i64 0, ptr %left, align 8
  %1 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %1, i32 0, i32 0
  store ptr null, ptr %next, align 8
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
  %left = getelementptr inbounds %struct.block_t, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %left, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %block.addr, align 8
  %node = getelementptr inbounds %struct.block_t, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %node, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %block.addr, align 8
  %node2 = getelementptr inbounds %struct.block_t, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %node2, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %filled_in_this_block, align 8
  %7 = load ptr, ptr %block.addr, align 8
  %next = getelementptr inbounds %struct.block_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next, align 8
  %9 = load ptr, ptr %block.addr, align 8
  %node3 = getelementptr inbounds %struct.block_t, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %node3, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4080 x i8], ptr %data, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %6, %sub.ptr.sub
  %11 = load ptr, ptr %block.addr, align 8
  %left4 = getelementptr inbounds %struct.block_t, ptr %11, i32 0, i32 1
  store i64 %sub, ptr %left4, align 8
  %12 = load ptr, ptr %block.addr, align 8
  %left5 = getelementptr inbounds %struct.block_t, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %left5, align 8
  %cmp6 = icmp ne i64 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %while.end

if.end8:                                          ; preds = %if.end
  %14 = load ptr, ptr %block.addr, align 8
  %node9 = getelementptr inbounds %struct.block_t, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %node9, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next_datablock, align 8
  %cmp10 = icmp eq ptr %16, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %17 = load ptr, ptr %block.addr, align 8
  %node13 = getelementptr inbounds %struct.block_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %node13, align 8
  %next_datablock14 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next_datablock14, align 8
  %20 = load ptr, ptr %block.addr, align 8
  %node15 = getelementptr inbounds %struct.block_t, ptr %20, i32 0, i32 2
  store ptr %19, ptr %node15, align 8
  %21 = load ptr, ptr %block.addr, align 8
  %node16 = getelementptr inbounds %struct.block_t, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %node16, align 8
  %data17 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %22, i32 0, i32 4
  %arraydecay18 = getelementptr inbounds [4080 x i8], ptr %data17, i64 0, i64 0
  %23 = load ptr, ptr %block.addr, align 8
  %next19 = getelementptr inbounds %struct.block_t, ptr %23, i32 0, i32 0
  store ptr %arraydecay18, ptr %next19, align 8
  %24 = load ptr, ptr %block.addr, align 8
  %node20 = getelementptr inbounds %struct.block_t, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %node20, align 8
  %filled_in_this_block21 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %filled_in_this_block21, align 8
  %27 = load ptr, ptr %block.addr, align 8
  %left22 = getelementptr inbounds %struct.block_t, ptr %27, i32 0, i32 1
  store i64 %26, ptr %left22, align 8
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %if.then7, %while.cond
  %28 = load ptr, ptr %block.addr, align 8
  %left23 = getelementptr inbounds %struct.block_t, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %left23, align 8
  %dec = add i64 %29, -1
  store i64 %dec, ptr %left23, align 8
  %30 = load ptr, ptr %block.addr, align 8
  %next24 = getelementptr inbounds %struct.block_t, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %next24, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %next24, align 8
  %32 = load i8, ptr %31, align 1
  %conv = zext i8 %32 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then11, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_rand(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %mix = alloca i32, align 4
  %rot = alloca i32, align 4
  %state = alloca i64, align 8
  store ptr %gen, ptr %gen.addr, align 8
  %0 = load ptr, ptr %gen.addr, align 8
  %state1 = getelementptr inbounds %struct.set_rand_t, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %state1, align 8
  store i64 %1, ptr %state, align 8
  %2 = load i64, ptr %state, align 8
  %mul = mul i64 %2, 6364136223846793005
  %3 = load ptr, ptr %gen.addr, align 8
  %inc = getelementptr inbounds %struct.set_rand_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %inc, align 8
  %add = add i64 %mul, %4
  %5 = load ptr, ptr %gen.addr, align 8
  %state2 = getelementptr inbounds %struct.set_rand_t, ptr %5, i32 0, i32 0
  store i64 %add, ptr %state2, align 8
  %6 = load i64, ptr %state, align 8
  %shr = lshr i64 %6, 18
  %7 = load i64, ptr %state, align 8
  %xor = xor i64 %shr, %7
  %shr3 = lshr i64 %xor, 27
  %conv = trunc i64 %shr3 to i32
  store i32 %conv, ptr %mix, align 4
  %8 = load i64, ptr %state, align 8
  %shr4 = lshr i64 %8, 59
  %conv5 = trunc i64 %shr4 to i32
  store i32 %conv5, ptr %rot, align 4
  %9 = load i32, ptr %mix, align 4
  %10 = load i32, ptr %rot, align 4
  %shr6 = lshr i32 %9, %10
  %11 = load i32, ptr %mix, align 4
  %12 = load i32, ptr %rot, align 4
  %sub = sub nsw i32 0, %12
  %and = and i32 %sub, 31
  %shl = shl i32 %11, %and
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
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call = call i64 @call_zseek64(ptr noundef %0, ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %3 = load ptr, ptr %filestream.addr, align 8
  %call1 = call i64 @call_ztell64(ptr noundef %2, ptr noundef %3)
  store i64 %call1, ptr %uSizeFile, align 8
  %4 = load i64, ptr %uMaxBack, align 8
  %5 = load i64, ptr %uSizeFile, align 8
  %cmp2 = icmp ugt i64 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %uSizeFile, align 8
  store i64 %6, ptr %uMaxBack, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call ptr @malloc(i64 noundef 1028) #16
  store ptr %call5, ptr %buf, align 8
  %7 = load ptr, ptr %buf, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  store i64 4, ptr %uBackRead, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %if.end8
  %8 = load i64, ptr %uBackRead, align 8
  %9 = load i64, ptr %uMaxBack, align 8
  %cmp9 = icmp ult i64 %8, %9
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %uBackRead, align 8
  %add = add i64 %10, 1024
  %11 = load i64, ptr %uMaxBack, align 8
  %cmp10 = icmp ugt i64 %add, %11
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  %12 = load i64, ptr %uMaxBack, align 8
  store i64 %12, ptr %uBackRead, align 8
  br label %if.end13

if.else:                                          ; preds = %while.body
  %13 = load i64, ptr %uBackRead, align 8
  %add12 = add i64 %13, 1024
  store i64 %add12, ptr %uBackRead, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %14 = load i64, ptr %uSizeFile, align 8
  %15 = load i64, ptr %uBackRead, align 8
  %sub = sub i64 %14, %15
  store i64 %sub, ptr %uReadPos, align 8
  %16 = load i64, ptr %uSizeFile, align 8
  %17 = load i64, ptr %uReadPos, align 8
  %sub14 = sub i64 %16, %17
  %cmp15 = icmp ult i64 1028, %sub14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %18 = load i64, ptr %uSizeFile, align 8
  %19 = load i64, ptr %uReadPos, align 8
  %sub16 = sub i64 %18, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1028, %cond.true ], [ %sub16, %cond.false ]
  store i64 %cond, ptr %uReadSize, align 8
  %20 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %21 = load ptr, ptr %filestream.addr, align 8
  %22 = load i64, ptr %uReadPos, align 8
  %call17 = call i64 @call_zseek64(ptr noundef %20, ptr noundef %21, i64 noundef %22, i32 noundef 0)
  %cmp18 = icmp ne i64 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cond.end
  br label %while.end

if.end20:                                         ; preds = %cond.end
  %23 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %23, i32 0, i32 0
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 1
  %24 = load ptr, ptr %zread_file, align 8
  %25 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func6421 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %25, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6421, i32 0, i32 7
  %26 = load ptr, ptr %opaque, align 8
  %27 = load ptr, ptr %filestream.addr, align 8
  %28 = load ptr, ptr %buf, align 8
  %29 = load i64, ptr %uReadSize, align 8
  %call22 = call i64 %24(ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29)
  %30 = load i64, ptr %uReadSize, align 8
  %cmp23 = icmp ne i64 %call22, %30
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  br label %while.end

if.end25:                                         ; preds = %if.end20
  %31 = load i64, ptr %uReadSize, align 8
  %conv = trunc i64 %31 to i32
  %sub26 = sub nsw i32 %conv, 3
  store i32 %sub26, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end25
  %32 = load i32, ptr %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %i, align 4
  %cmp27 = icmp sgt i32 %32, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %buf, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  %35 = load i8, ptr %add.ptr, align 1
  %conv29 = zext i8 %35 to i32
  %cmp30 = icmp eq i32 %conv29, 80
  br i1 %cmp30, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %for.body
  %36 = load ptr, ptr %buf, align 8
  %37 = load i32, ptr %i, align 4
  %idx.ext32 = sext i32 %37 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %36, i64 %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr33, i64 1
  %38 = load i8, ptr %add.ptr34, align 1
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp eq i32 %conv35, 75
  br i1 %cmp36, label %land.lhs.true38, label %if.end55

land.lhs.true38:                                  ; preds = %land.lhs.true
  %39 = load ptr, ptr %buf, align 8
  %40 = load i32, ptr %i, align 4
  %idx.ext39 = sext i32 %40 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %39, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr40, i64 2
  %41 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %41 to i32
  %cmp43 = icmp eq i32 %conv42, 6
  br i1 %cmp43, label %land.lhs.true45, label %if.end55

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %42 = load ptr, ptr %buf, align 8
  %43 = load i32, ptr %i, align 4
  %idx.ext46 = sext i32 %43 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %42, i64 %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr47, i64 3
  %44 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %44 to i32
  %cmp50 = icmp eq i32 %conv49, 7
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true45
  %45 = load i64, ptr %uReadPos, align 8
  %46 = load i32, ptr %i, align 4
  %conv53 = zext i32 %46 to i64
  %add54 = add i64 %45, %conv53
  store i64 %add54, ptr %uPosFound, align 8
  br label %for.end

if.end55:                                         ; preds = %land.lhs.true45, %land.lhs.true38, %land.lhs.true, %for.body
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %if.then52, %for.cond
  %47 = load i64, ptr %uPosFound, align 8
  %cmp56 = icmp ne i64 %47, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end
  br label %while.end

if.end59:                                         ; preds = %for.end
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %if.then58, %if.then24, %if.then19, %while.cond
  %48 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %48)
  %49 = load i64, ptr %uPosFound, align 8
  %cmp60 = icmp eq i64 %49, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end63:                                         ; preds = %while.end
  %50 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %51 = load ptr, ptr %filestream.addr, align 8
  %52 = load i64, ptr %uPosFound, align 8
  %call64 = call i64 @call_zseek64(ptr noundef %50, ptr noundef %51, i64 noundef %52, i32 noundef 0)
  %cmp65 = icmp ne i64 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  store i64 0, ptr %retval, align 8
  br label %return

if.end68:                                         ; preds = %if.end63
  %53 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %54 = load ptr, ptr %filestream.addr, align 8
  %call69 = call i32 @zip64local_getLong(ptr noundef %53, ptr noundef %54, ptr noundef %uL)
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end68
  store i64 0, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.end68
  %55 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %56 = load ptr, ptr %filestream.addr, align 8
  %call74 = call i32 @zip64local_getLong(ptr noundef %55, ptr noundef %56, ptr noundef %uL)
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  store i64 0, ptr %retval, align 8
  br label %return

if.end78:                                         ; preds = %if.end73
  %57 = load i64, ptr %uL, align 8
  %cmp79 = icmp ne i64 %57, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end78
  store i64 0, ptr %retval, align 8
  br label %return

if.end82:                                         ; preds = %if.end78
  %58 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %59 = load ptr, ptr %filestream.addr, align 8
  %call83 = call i32 @zip64local_getLong64(ptr noundef %58, ptr noundef %59, ptr noundef %relativeOffset)
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  store i64 0, ptr %retval, align 8
  br label %return

if.end87:                                         ; preds = %if.end82
  %60 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %61 = load ptr, ptr %filestream.addr, align 8
  %call88 = call i32 @zip64local_getLong(ptr noundef %60, ptr noundef %61, ptr noundef %uL)
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  store i64 0, ptr %retval, align 8
  br label %return

if.end92:                                         ; preds = %if.end87
  %62 = load i64, ptr %uL, align 8
  %cmp93 = icmp ne i64 %62, 1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  store i64 0, ptr %retval, align 8
  br label %return

if.end96:                                         ; preds = %if.end92
  %63 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %64 = load ptr, ptr %filestream.addr, align 8
  %65 = load i64, ptr %relativeOffset, align 8
  %call97 = call i64 @call_zseek64(ptr noundef %63, ptr noundef %64, i64 noundef %65, i32 noundef 0)
  %cmp98 = icmp ne i64 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end96
  store i64 0, ptr %retval, align 8
  br label %return

if.end101:                                        ; preds = %if.end96
  %66 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %67 = load ptr, ptr %filestream.addr, align 8
  %call102 = call i32 @zip64local_getLong(ptr noundef %66, ptr noundef %67, ptr noundef %uL)
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end101
  store i64 0, ptr %retval, align 8
  br label %return

if.end106:                                        ; preds = %if.end101
  %68 = load i64, ptr %uL, align 8
  %cmp107 = icmp ne i64 %68, 101075792
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  store i64 0, ptr %retval, align 8
  br label %return

if.end110:                                        ; preds = %if.end106
  %69 = load i64, ptr %relativeOffset, align 8
  store i64 %69, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end110, %if.then109, %if.then105, %if.then100, %if.then95, %if.then91, %if.then86, %if.then81, %if.then77, %if.then72, %if.then67, %if.then62, %if.then7, %if.then
  %70 = load i64, ptr %retval, align 8
  ret i64 %70
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
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call = call i64 @call_zseek64(ptr noundef %0, ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %3 = load ptr, ptr %filestream.addr, align 8
  %call1 = call i64 @call_ztell64(ptr noundef %2, ptr noundef %3)
  store i64 %call1, ptr %uSizeFile, align 8
  %4 = load i64, ptr %uMaxBack, align 8
  %5 = load i64, ptr %uSizeFile, align 8
  %cmp2 = icmp ugt i64 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %uSizeFile, align 8
  store i64 %6, ptr %uMaxBack, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call ptr @malloc(i64 noundef 1028) #16
  store ptr %call5, ptr %buf, align 8
  %7 = load ptr, ptr %buf, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  store i64 4, ptr %uBackRead, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %if.end8
  %8 = load i64, ptr %uBackRead, align 8
  %9 = load i64, ptr %uMaxBack, align 8
  %cmp9 = icmp ult i64 %8, %9
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %uBackRead, align 8
  %add = add i64 %10, 1024
  %11 = load i64, ptr %uMaxBack, align 8
  %cmp10 = icmp ugt i64 %add, %11
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  %12 = load i64, ptr %uMaxBack, align 8
  store i64 %12, ptr %uBackRead, align 8
  br label %if.end13

if.else:                                          ; preds = %while.body
  %13 = load i64, ptr %uBackRead, align 8
  %add12 = add i64 %13, 1024
  store i64 %add12, ptr %uBackRead, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %14 = load i64, ptr %uSizeFile, align 8
  %15 = load i64, ptr %uBackRead, align 8
  %sub = sub i64 %14, %15
  store i64 %sub, ptr %uReadPos, align 8
  %16 = load i64, ptr %uSizeFile, align 8
  %17 = load i64, ptr %uReadPos, align 8
  %sub14 = sub i64 %16, %17
  %cmp15 = icmp ult i64 1028, %sub14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %18 = load i64, ptr %uSizeFile, align 8
  %19 = load i64, ptr %uReadPos, align 8
  %sub16 = sub i64 %18, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1028, %cond.true ], [ %sub16, %cond.false ]
  store i64 %cond, ptr %uReadSize, align 8
  %20 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %21 = load ptr, ptr %filestream.addr, align 8
  %22 = load i64, ptr %uReadPos, align 8
  %call17 = call i64 @call_zseek64(ptr noundef %20, ptr noundef %21, i64 noundef %22, i32 noundef 0)
  %cmp18 = icmp ne i64 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cond.end
  br label %while.end

if.end20:                                         ; preds = %cond.end
  %23 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %23, i32 0, i32 0
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 1
  %24 = load ptr, ptr %zread_file, align 8
  %25 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func6421 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %25, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func6421, i32 0, i32 7
  %26 = load ptr, ptr %opaque, align 8
  %27 = load ptr, ptr %filestream.addr, align 8
  %28 = load ptr, ptr %buf, align 8
  %29 = load i64, ptr %uReadSize, align 8
  %call22 = call i64 %24(ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29)
  %30 = load i64, ptr %uReadSize, align 8
  %cmp23 = icmp ne i64 %call22, %30
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  br label %while.end

if.end25:                                         ; preds = %if.end20
  %31 = load i64, ptr %uReadSize, align 8
  %conv = trunc i64 %31 to i32
  %sub26 = sub nsw i32 %conv, 3
  store i32 %sub26, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end25
  %32 = load i32, ptr %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %i, align 4
  %cmp27 = icmp sgt i32 %32, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %buf, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  %35 = load i8, ptr %add.ptr, align 1
  %conv29 = zext i8 %35 to i32
  %cmp30 = icmp eq i32 %conv29, 80
  br i1 %cmp30, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %for.body
  %36 = load ptr, ptr %buf, align 8
  %37 = load i32, ptr %i, align 4
  %idx.ext32 = sext i32 %37 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %36, i64 %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr33, i64 1
  %38 = load i8, ptr %add.ptr34, align 1
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp eq i32 %conv35, 75
  br i1 %cmp36, label %land.lhs.true38, label %if.end55

land.lhs.true38:                                  ; preds = %land.lhs.true
  %39 = load ptr, ptr %buf, align 8
  %40 = load i32, ptr %i, align 4
  %idx.ext39 = sext i32 %40 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %39, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr40, i64 2
  %41 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %41 to i32
  %cmp43 = icmp eq i32 %conv42, 5
  br i1 %cmp43, label %land.lhs.true45, label %if.end55

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %42 = load ptr, ptr %buf, align 8
  %43 = load i32, ptr %i, align 4
  %idx.ext46 = sext i32 %43 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %42, i64 %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr47, i64 3
  %44 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %44 to i32
  %cmp50 = icmp eq i32 %conv49, 6
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true45
  %45 = load i64, ptr %uReadPos, align 8
  %46 = load i32, ptr %i, align 4
  %conv53 = zext i32 %46 to i64
  %add54 = add i64 %45, %conv53
  store i64 %add54, ptr %uPosFound, align 8
  br label %for.end

if.end55:                                         ; preds = %land.lhs.true45, %land.lhs.true38, %land.lhs.true, %for.body
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %if.then52, %for.cond
  %47 = load i64, ptr %uPosFound, align 8
  %cmp56 = icmp ne i64 %47, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end
  br label %while.end

if.end59:                                         ; preds = %for.end
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %if.then58, %if.then24, %if.then19, %while.cond
  %48 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %48)
  %49 = load i64, ptr %uPosFound, align 8
  store i64 %49, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7, %if.then
  %50 = load i64, ptr %retval, align 8
  ret i64 %50
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
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call = call i32 @zip64local_getByte(ptr noundef %0, ptr noundef %1, ptr noundef %i)
  store i32 %call, ptr %err, align 4
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %x, align 8
  %3 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %5 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %4, ptr noundef %5, ptr noundef %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %i, align 4
  %conv3 = sext i32 %6 to i64
  %shl = shl i64 %conv3, 8
  %7 = load i64, ptr %x, align 8
  %add = add i64 %7, %shl
  store i64 %add, ptr %x, align 8
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %10 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 @zip64local_getByte(ptr noundef %9, ptr noundef %10, ptr noundef %i)
  store i32 %call7, ptr %err, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %11 = load i32, ptr %i, align 4
  %conv9 = sext i32 %11 to i64
  %shl10 = shl i64 %conv9, 16
  %12 = load i64, ptr %x, align 8
  %add11 = add i64 %12, %shl10
  store i64 %add11, ptr %x, align 8
  %13 = load i32, ptr %err, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %14 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %15 = load ptr, ptr %filestream.addr, align 8
  %call15 = call i32 @zip64local_getByte(ptr noundef %14, ptr noundef %15, ptr noundef %i)
  store i32 %call15, ptr %err, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8
  %16 = load i32, ptr %i, align 4
  %conv17 = sext i32 %16 to i64
  %shl18 = shl i64 %conv17, 24
  %17 = load i64, ptr %x, align 8
  %add19 = add i64 %17, %shl18
  store i64 %add19, ptr %x, align 8
  %18 = load i32, ptr %err, align 4
  %cmp20 = icmp eq i32 %18, 0
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  %19 = load i64, ptr %x, align 8
  %20 = load ptr, ptr %pX.addr, align 8
  store i64 %19, ptr %20, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end16
  %21 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %21, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %22 = load i32, ptr %err, align 4
  ret i32 %22
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
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call = call i32 @zip64local_getByte(ptr noundef %0, ptr noundef %1, ptr noundef %i)
  store i32 %call, ptr %err, align 4
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %x, align 8
  %3 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %5 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %4, ptr noundef %5, ptr noundef %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %i, align 4
  %conv3 = sext i32 %6 to i64
  %shl = shl i64 %conv3, 8
  %7 = load i64, ptr %x, align 8
  %add = add i64 %7, %shl
  store i64 %add, ptr %x, align 8
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %10 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 @zip64local_getByte(ptr noundef %9, ptr noundef %10, ptr noundef %i)
  store i32 %call7, ptr %err, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %11 = load i32, ptr %i, align 4
  %conv9 = sext i32 %11 to i64
  %shl10 = shl i64 %conv9, 16
  %12 = load i64, ptr %x, align 8
  %add11 = add i64 %12, %shl10
  store i64 %add11, ptr %x, align 8
  %13 = load i32, ptr %err, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %14 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %15 = load ptr, ptr %filestream.addr, align 8
  %call15 = call i32 @zip64local_getByte(ptr noundef %14, ptr noundef %15, ptr noundef %i)
  store i32 %call15, ptr %err, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8
  %16 = load i32, ptr %i, align 4
  %conv17 = sext i32 %16 to i64
  %shl18 = shl i64 %conv17, 24
  %17 = load i64, ptr %x, align 8
  %add19 = add i64 %17, %shl18
  store i64 %add19, ptr %x, align 8
  %18 = load i32, ptr %err, align 4
  %cmp20 = icmp eq i32 %18, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %19 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %20 = load ptr, ptr %filestream.addr, align 8
  %call23 = call i32 @zip64local_getByte(ptr noundef %19, ptr noundef %20, ptr noundef %i)
  store i32 %call23, ptr %err, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %21 = load i32, ptr %i, align 4
  %conv25 = sext i32 %21 to i64
  %shl26 = shl i64 %conv25, 32
  %22 = load i64, ptr %x, align 8
  %add27 = add i64 %22, %shl26
  store i64 %add27, ptr %x, align 8
  %23 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end24
  %24 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %25 = load ptr, ptr %filestream.addr, align 8
  %call31 = call i32 @zip64local_getByte(ptr noundef %24, ptr noundef %25, ptr noundef %i)
  store i32 %call31, ptr %err, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end24
  %26 = load i32, ptr %i, align 4
  %conv33 = sext i32 %26 to i64
  %shl34 = shl i64 %conv33, 40
  %27 = load i64, ptr %x, align 8
  %add35 = add i64 %27, %shl34
  store i64 %add35, ptr %x, align 8
  %28 = load i32, ptr %err, align 4
  %cmp36 = icmp eq i32 %28, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end32
  %29 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %30 = load ptr, ptr %filestream.addr, align 8
  %call39 = call i32 @zip64local_getByte(ptr noundef %29, ptr noundef %30, ptr noundef %i)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end32
  %31 = load i32, ptr %i, align 4
  %conv41 = sext i32 %31 to i64
  %shl42 = shl i64 %conv41, 48
  %32 = load i64, ptr %x, align 8
  %add43 = add i64 %32, %shl42
  store i64 %add43, ptr %x, align 8
  %33 = load i32, ptr %err, align 4
  %cmp44 = icmp eq i32 %33, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end40
  %34 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %35 = load ptr, ptr %filestream.addr, align 8
  %call47 = call i32 @zip64local_getByte(ptr noundef %34, ptr noundef %35, ptr noundef %i)
  store i32 %call47, ptr %err, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end40
  %36 = load i32, ptr %i, align 4
  %conv49 = sext i32 %36 to i64
  %shl50 = shl i64 %conv49, 56
  %37 = load i64, ptr %x, align 8
  %add51 = add i64 %37, %shl50
  store i64 %add51, ptr %x, align 8
  %38 = load i32, ptr %err, align 4
  %cmp52 = icmp eq i32 %38, 0
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end48
  %39 = load i64, ptr %x, align 8
  %40 = load ptr, ptr %pX.addr, align 8
  store i64 %39, ptr %40, align 8
  br label %if.end55

if.else:                                          ; preds = %if.end48
  %41 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %41, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then54
  %42 = load i32, ptr %err, align 4
  ret i32 %42
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
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call = call i32 @zip64local_getByte(ptr noundef %0, ptr noundef %1, ptr noundef %i)
  store i32 %call, ptr %err, align 4
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %x, align 8
  %3 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %5 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %4, ptr noundef %5, ptr noundef %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %i, align 4
  %conv3 = sext i32 %6 to i64
  %shl = shl i64 %conv3, 8
  %7 = load i64, ptr %x, align 8
  %add = add i64 %7, %shl
  store i64 %add, ptr %x, align 8
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %9 = load i64, ptr %x, align 8
  %10 = load ptr, ptr %pX.addr, align 8
  store i64 %9, ptr %10, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %11, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %12 = load i32, ptr %err, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_getByte(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %pi.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %err = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func64 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i32 0, i32 0
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func64, i32 0, i32 1
  %1 = load ptr, ptr %zread_file, align 8
  %2 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func641 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %2, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func641, i32 0, i32 7
  %3 = load ptr, ptr %opaque, align 8
  %4 = load ptr, ptr %filestream.addr, align 8
  %call = call i64 %1(ptr noundef %3, ptr noundef %4, ptr noundef %c, i64 noundef 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %err, align 4
  %5 = load i32, ptr %err, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i8, ptr %c, align 1
  %conv3 = zext i8 %6 to i32
  %7 = load ptr, ptr %pi.addr, align 8
  store i32 %conv3, ptr %7, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func644 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %8, i32 0, i32 0
  %zerror_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func644, i32 0, i32 6
  %9 = load ptr, ptr %zerror_file, align 8
  %10 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zfile_func645 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 0
  %opaque6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %zfile_func645, i32 0, i32 7
  %11 = load ptr, ptr %opaque6, align 8
  %12 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 %9(ptr noundef %11, ptr noundef %12)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @utf8len(ptr noundef %str, i64 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load i64, ptr %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end109

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp slt i32 %conv, 128
  br i1 %cmp1, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.false
  br label %cond.end107

cond.false4:                                      ; preds = %cond.false
  %3 = load ptr, ptr %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %4 to i32
  %cmp7 = icmp slt i32 %conv6, 192
  br i1 %cmp7, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false4
  br label %cond.end105

cond.false10:                                     ; preds = %cond.false4
  %5 = load i64, ptr %len.addr, align 8
  %cmp11 = icmp ult i64 %5, 2
  br i1 %cmp11, label %cond.true17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false10
  %6 = load ptr, ptr %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %shr = ashr i32 %conv14, 6
  %cmp15 = icmp ne i32 %shr, 2
  br i1 %cmp15, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %lor.lhs.false, %cond.false10
  br label %cond.end103

cond.false18:                                     ; preds = %lor.lhs.false
  %8 = load ptr, ptr %str.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %9 to i32
  %cmp21 = icmp slt i32 %conv20, 194
  br i1 %cmp21, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.false18
  br label %cond.end101

cond.false24:                                     ; preds = %cond.false18
  %10 = load ptr, ptr %str.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %11 to i32
  %cmp27 = icmp slt i32 %conv26, 224
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false24
  br label %cond.end99

cond.false30:                                     ; preds = %cond.false24
  %12 = load i64, ptr %len.addr, align 8
  %cmp31 = icmp ult i64 %12, 3
  br i1 %cmp31, label %cond.true39, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %cond.false30
  %13 = load ptr, ptr %str.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %14 to i32
  %shr36 = ashr i32 %conv35, 6
  %cmp37 = icmp ne i32 %shr36, 2
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %lor.lhs.false33, %cond.false30
  br label %cond.end97

cond.false40:                                     ; preds = %lor.lhs.false33
  %15 = load ptr, ptr %str.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %16 to i32
  %cmp43 = icmp eq i32 %conv42, 224
  br i1 %cmp43, label %land.lhs.true, label %cond.false50

land.lhs.true:                                    ; preds = %cond.false40
  %17 = load ptr, ptr %str.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %18 to i32
  %cmp47 = icmp slt i32 %conv46, 160
  br i1 %cmp47, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %land.lhs.true
  br label %cond.end95

cond.false50:                                     ; preds = %land.lhs.true, %cond.false40
  %19 = load ptr, ptr %str.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %20 to i32
  %cmp53 = icmp slt i32 %conv52, 240
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.false50
  br label %cond.end93

cond.false56:                                     ; preds = %cond.false50
  %21 = load i64, ptr %len.addr, align 8
  %cmp57 = icmp ult i64 %21, 4
  br i1 %cmp57, label %cond.true65, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %cond.false56
  %22 = load ptr, ptr %str.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %22, i64 3
  %23 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %23 to i32
  %shr62 = ashr i32 %conv61, 6
  %cmp63 = icmp ne i32 %shr62, 2
  br i1 %cmp63, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %lor.lhs.false59, %cond.false56
  br label %cond.end91

cond.false66:                                     ; preds = %lor.lhs.false59
  %24 = load ptr, ptr %str.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %25 to i32
  %cmp69 = icmp eq i32 %conv68, 240
  br i1 %cmp69, label %land.lhs.true71, label %cond.false77

land.lhs.true71:                                  ; preds = %cond.false66
  %26 = load ptr, ptr %str.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %27 to i32
  %cmp74 = icmp slt i32 %conv73, 144
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %land.lhs.true71
  br label %cond.end

cond.false77:                                     ; preds = %land.lhs.true71, %cond.false66
  %28 = load ptr, ptr %str.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %29 to i32
  %cmp80 = icmp slt i32 %conv79, 244
  br i1 %cmp80, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false77
  %30 = load ptr, ptr %str.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %31 to i32
  %cmp84 = icmp eq i32 %conv83, 244
  br i1 %cmp84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %32 = load ptr, ptr %str.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %33 to i32
  %cmp88 = icmp slt i32 %conv87, 144
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %34 = phi i1 [ false, %lor.rhs ], [ %cmp88, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %cond.false77
  %35 = phi i1 [ true, %cond.false77 ], [ %34, %land.end ]
  %36 = zext i1 %35 to i64
  %cond = select i1 %35, i32 4, i32 -4
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true76
  %cond90 = phi i32 [ -4, %cond.true76 ], [ %cond, %lor.end ]
  br label %cond.end91

cond.end91:                                       ; preds = %cond.end, %cond.true65
  %cond92 = phi i32 [ -4, %cond.true65 ], [ %cond90, %cond.end ]
  br label %cond.end93

cond.end93:                                       ; preds = %cond.end91, %cond.true55
  %cond94 = phi i32 [ 3, %cond.true55 ], [ %cond92, %cond.end91 ]
  br label %cond.end95

cond.end95:                                       ; preds = %cond.end93, %cond.true49
  %cond96 = phi i32 [ -3, %cond.true49 ], [ %cond94, %cond.end93 ]
  br label %cond.end97

cond.end97:                                       ; preds = %cond.end95, %cond.true39
  %cond98 = phi i32 [ -3, %cond.true39 ], [ %cond96, %cond.end95 ]
  br label %cond.end99

cond.end99:                                       ; preds = %cond.end97, %cond.true29
  %cond100 = phi i32 [ 2, %cond.true29 ], [ %cond98, %cond.end97 ]
  br label %cond.end101

cond.end101:                                      ; preds = %cond.end99, %cond.true23
  %cond102 = phi i32 [ -2, %cond.true23 ], [ %cond100, %cond.end99 ]
  br label %cond.end103

cond.end103:                                      ; preds = %cond.end101, %cond.true17
  %cond104 = phi i32 [ -2, %cond.true17 ], [ %cond102, %cond.end101 ]
  br label %cond.end105

cond.end105:                                      ; preds = %cond.end103, %cond.true9
  %cond106 = phi i32 [ -1, %cond.true9 ], [ %cond104, %cond.end103 ]
  br label %cond.end107

cond.end107:                                      ; preds = %cond.end105, %cond.true3
  %cond108 = phi i32 [ 1, %cond.true3 ], [ %cond106, %cond.end105 ]
  br label %cond.end109

cond.end109:                                      ; preds = %cond.end107, %cond.true
  %cond110 = phi i32 [ -1, %cond.true ], [ %cond108, %cond.end107 ]
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
  %0 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 0
  store i64 305419896, ptr %add.ptr, align 8
  %1 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 591751049, ptr %add.ptr1, align 8
  %2 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 878082192, ptr %add.ptr2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %passwd.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pkeys.addr, align 8
  %6 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %7 = load ptr, ptr %passwd.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv4 = sext i8 %8 to i32
  %call = call i32 @update_keys(ptr noundef %5, ptr noundef %6, i32 noundef %conv4)
  %9 = load ptr, ptr %passwd.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %passwd.addr, align 8
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @rand() #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @decrypt_byte(ptr noundef %pkeys, ptr noundef %pcrc_32_tab) #0 {
entry:
  %pkeys.addr = alloca ptr, align 8
  %pcrc_32_tab.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  %0 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %1 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 2
  %2 = load i64, ptr %add.ptr, align 8
  %conv = trunc i64 %2 to i32
  %and = and i32 %conv, 65535
  %or = or i32 %and, 2
  store i32 %or, ptr %temp, align 4
  %3 = load i32, ptr %temp, align 4
  %4 = load i32, ptr %temp, align 4
  %xor = xor i32 %4, 1
  %mul = mul i32 %3, %xor
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
  %keyshift = alloca i32, align 4
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %1 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 0
  %2 = load i64, ptr %add.ptr, align 8
  %conv = trunc i64 %2 to i32
  %3 = load i32, ptr %c.addr, align 4
  %xor = xor i32 %conv, %3
  %and = and i32 %xor, 255
  %idx.ext = sext i32 %and to i64
  %add.ptr1 = getelementptr inbounds i64, ptr %0, i64 %idx.ext
  %4 = load i64, ptr %add.ptr1, align 8
  %5 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr2 = getelementptr inbounds i64, ptr %5, i64 0
  %6 = load i64, ptr %add.ptr2, align 8
  %shr = lshr i64 %6, 8
  %xor3 = xor i64 %4, %shr
  %7 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr4 = getelementptr inbounds i64, ptr %7, i64 0
  store i64 %xor3, ptr %add.ptr4, align 8
  %8 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr5 = getelementptr inbounds i64, ptr %8, i64 0
  %9 = load i64, ptr %add.ptr5, align 8
  %and6 = and i64 %9, 255
  %10 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr7 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %add.ptr7, align 8
  %add = add i64 %11, %and6
  store i64 %add, ptr %add.ptr7, align 8
  %12 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr8 = getelementptr inbounds i64, ptr %12, i64 1
  %13 = load i64, ptr %add.ptr8, align 8
  %mul = mul i64 %13, 134775813
  %add9 = add i64 %mul, 1
  %14 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr10 = getelementptr inbounds i64, ptr %14, i64 1
  store i64 %add9, ptr %add.ptr10, align 8
  %15 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr11 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %add.ptr11, align 8
  %shr12 = lshr i64 %16, 24
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, ptr %keyshift, align 4
  %17 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %18 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr14 = getelementptr inbounds i64, ptr %18, i64 2
  %19 = load i64, ptr %add.ptr14, align 8
  %conv15 = trunc i64 %19 to i32
  %20 = load i32, ptr %keyshift, align 4
  %xor16 = xor i32 %conv15, %20
  %and17 = and i32 %xor16, 255
  %idx.ext18 = sext i32 %and17 to i64
  %add.ptr19 = getelementptr inbounds i64, ptr %17, i64 %idx.ext18
  %21 = load i64, ptr %add.ptr19, align 8
  %22 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr20 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %add.ptr20, align 8
  %shr21 = lshr i64 %23, 8
  %xor22 = xor i64 %21, %shr21
  %24 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr23 = getelementptr inbounds i64, ptr %24, i64 2
  store i64 %xor22, ptr %add.ptr23, align 8
  %25 = load i32, ptr %c.addr, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @allocate_new_datablock() #0 {
entry:
  %ldi = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 4112) #16
  store ptr %call, ptr %ldi, align 8
  %0 = load ptr, ptr %ldi, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ldi, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %1, i32 0, i32 0
  store ptr null, ptr %next_datablock, align 8
  %2 = load ptr, ptr %ldi, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %2, i32 0, i32 2
  store i64 0, ptr %filled_in_this_block, align 8
  %3 = load ptr, ptr %ldi, align 8
  %avail_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %3, i32 0, i32 1
  store i64 4080, ptr %avail_in_this_block, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ldi, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_datablock(ptr noundef %ldi) #0 {
entry:
  %ldi.addr = alloca ptr, align 8
  %ldinext = alloca ptr, align 8
  store ptr %ldi, ptr %ldi.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %ldi.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ldi.addr, align 8
  %next_datablock = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next_datablock, align 8
  store ptr %2, ptr %ldinext, align 8
  %3 = load ptr, ptr %ldi.addr, align 8
  call void @free(ptr noundef %3)
  %4 = load ptr, ptr %ldinext, align 8
  store ptr %4, ptr %ldi.addr, align 8
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %while.cond
  ret void
}

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
attributes #11 = { returns_twice }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn }
attributes #14 = { allocsize(1) }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_0(ptr noundef %set, ptr noundef %ptr)  alwaysinline#0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_1(ptr noundef %set, ptr noundef %ptr)  alwaysinline#0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_2(ptr noundef %set, ptr noundef %ptr)  alwaysinline#0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_3(ptr noundef %set, ptr noundef %ptr)  alwaysinline#0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_zip_4(ptr noundef %set, ptr noundef %ptr)  alwaysinline#0 {
entry:
  %set.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %1)
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
!41 = distinct !{!41, !7}
