; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jmemmgr.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jmemmgr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.anon = type { ptr, i64, i64 }
%union.small_pool_struct = type { %struct.anon }
%struct.anon.0 = type { ptr, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.jvirt_sarray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jvirt_barray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal constant [2 x i64] [i64 1600, i64 16000], align 8
@extra_pool_slop = internal constant [2 x i64] [i64 0, i64 5000], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_memory_mgr(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %max_to_use = alloca i64, align 8
  %pool = alloca i32, align 4
  %test_mac = alloca i64, align 8
  %memenv = alloca ptr, align 8
  %ch = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  store ptr null, ptr %mem1, align 8
  store i64 1000000000, ptr %test_mac, align 8
  %1 = load i64, ptr %test_mac, align 8
  %cmp = icmp ne i64 %1, 1000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 3, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %error_exit, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void %6(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %call = call i64 @jpeg_mem_init(ptr noundef %8)
  store i64 %call, ptr %max_to_use, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call3 = call ptr @jpeg_get_small(ptr noundef %9, i64 noundef 160)
  store ptr %call3, ptr %mem, align 8
  %10 = load ptr, ptr %mem, align 8
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_mem_term(ptr noundef %11)
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_common_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5
  store i32 53, ptr %msg_code7, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err9, align 8
  %error_exit10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %error_exit10, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  %20 = load ptr, ptr %mem, align 8
  %pub = getelementptr inbounds %struct.my_memory_mgr, ptr %20, i32 0, i32 0
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub, i32 0, i32 0
  store ptr @alloc_small, ptr %alloc_small, align 8
  %21 = load ptr, ptr %mem, align 8
  %pub12 = getelementptr inbounds %struct.my_memory_mgr, ptr %21, i32 0, i32 0
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub12, i32 0, i32 1
  store ptr @alloc_large, ptr %alloc_large, align 8
  %22 = load ptr, ptr %mem, align 8
  %pub13 = getelementptr inbounds %struct.my_memory_mgr, ptr %22, i32 0, i32 0
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub13, i32 0, i32 2
  store ptr @alloc_sarray, ptr %alloc_sarray, align 8
  %23 = load ptr, ptr %mem, align 8
  %pub14 = getelementptr inbounds %struct.my_memory_mgr, ptr %23, i32 0, i32 0
  %alloc_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub14, i32 0, i32 3
  store ptr @alloc_barray, ptr %alloc_barray, align 8
  %24 = load ptr, ptr %mem, align 8
  %pub15 = getelementptr inbounds %struct.my_memory_mgr, ptr %24, i32 0, i32 0
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub15, i32 0, i32 4
  store ptr @request_virt_sarray, ptr %request_virt_sarray, align 8
  %25 = load ptr, ptr %mem, align 8
  %pub16 = getelementptr inbounds %struct.my_memory_mgr, ptr %25, i32 0, i32 0
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub16, i32 0, i32 5
  store ptr @request_virt_barray, ptr %request_virt_barray, align 8
  %26 = load ptr, ptr %mem, align 8
  %pub17 = getelementptr inbounds %struct.my_memory_mgr, ptr %26, i32 0, i32 0
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub17, i32 0, i32 6
  store ptr @realize_virt_arrays, ptr %realize_virt_arrays, align 8
  %27 = load ptr, ptr %mem, align 8
  %pub18 = getelementptr inbounds %struct.my_memory_mgr, ptr %27, i32 0, i32 0
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub18, i32 0, i32 7
  store ptr @access_virt_sarray, ptr %access_virt_sarray, align 8
  %28 = load ptr, ptr %mem, align 8
  %pub19 = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i32 0, i32 0
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub19, i32 0, i32 8
  store ptr @access_virt_barray, ptr %access_virt_barray, align 8
  %29 = load ptr, ptr %mem, align 8
  %pub20 = getelementptr inbounds %struct.my_memory_mgr, ptr %29, i32 0, i32 0
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub20, i32 0, i32 9
  store ptr @free_pool, ptr %free_pool, align 8
  %30 = load ptr, ptr %mem, align 8
  %pub21 = getelementptr inbounds %struct.my_memory_mgr, ptr %30, i32 0, i32 0
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub21, i32 0, i32 10
  store ptr @self_destruct, ptr %self_destruct, align 8
  %31 = load i64, ptr %max_to_use, align 8
  %32 = load ptr, ptr %mem, align 8
  %pub22 = getelementptr inbounds %struct.my_memory_mgr, ptr %32, i32 0, i32 0
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub22, i32 0, i32 11
  store i64 %31, ptr %max_memory_to_use, align 8
  store i32 1, ptr %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %33 = load i32, ptr %pool, align 4
  %cmp23 = icmp sge i32 %33, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %pool, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds [2 x ptr], ptr %small_list, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx24, align 8
  %36 = load ptr, ptr %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %pool, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds [2 x ptr], ptr %large_list, i64 0, i64 %idxprom25
  store ptr null, ptr %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %pool, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, ptr %pool, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %39, i32 0, i32 3
  store ptr null, ptr %virt_sarray_list, align 8
  %40 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %40, i32 0, i32 4
  store ptr null, ptr %virt_barray_list, align 8
  %41 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %41, i32 0, i32 5
  store i64 160, ptr %total_space_allocated, align 8
  %42 = load ptr, ptr %mem, align 8
  %pub27 = getelementptr inbounds %struct.my_memory_mgr, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %cinfo.addr, align 8
  %mem28 = getelementptr inbounds %struct.jpeg_common_struct, ptr %43, i32 0, i32 1
  store ptr %pub27, ptr %mem28, align 8
  %call29 = call ptr @getenv(ptr noundef @.str)
  store ptr %call29, ptr %memenv, align 8
  %cmp30 = icmp ne ptr %call29, null
  br i1 %cmp30, label %if.then31, label %if.end46

if.then31:                                        ; preds = %for.end
  store i8 120, ptr %ch, align 1
  %44 = load ptr, ptr %memenv, align 8
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %44, ptr noundef @.str.1, ptr noundef %max_to_use, ptr noundef %ch)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.then31
  %45 = load i8, ptr %ch, align 1
  %conv = sext i8 %45 to i32
  %cmp35 = icmp eq i32 %conv, 109
  br i1 %cmp35, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34
  %46 = load i8, ptr %ch, align 1
  %conv37 = sext i8 %46 to i32
  %cmp38 = icmp eq i32 %conv37, 77
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %if.then34
  %47 = load i64, ptr %max_to_use, align 8
  %mul = mul nsw i64 %47, 1000
  store i64 %mul, ptr %max_to_use, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false
  %48 = load i64, ptr %max_to_use, align 8
  %mul42 = mul nsw i64 %48, 1000
  %49 = load ptr, ptr %mem, align 8
  %pub43 = getelementptr inbounds %struct.my_memory_mgr, ptr %49, i32 0, i32 0
  %max_memory_to_use44 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %pub43, i32 0, i32 11
  store i64 %mul42, ptr %max_memory_to_use44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.then31
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  ret void
}

declare i64 @jpeg_mem_init(ptr noundef) #1

declare ptr @jpeg_get_small(ptr noundef, i64 noundef) #1

declare void @jpeg_mem_term(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @alloc_small(ptr noundef %cinfo, i32 noundef %pool_id, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  %hdr_ptr = alloca ptr, align 8
  %prev_hdr_ptr = alloca ptr, align 8
  %data_ptr = alloca ptr, align 8
  %odd_bytes = alloca i64, align 8
  %min_request = alloca i64, align 8
  %slop = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i64, ptr %sizeofobject.addr, align 8
  %cmp = icmp ugt i64 %2, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @out_of_memory(ptr noundef %3, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %sizeofobject.addr, align 8
  %rem = urem i64 %4, 8
  store i64 %rem, ptr %odd_bytes, align 8
  %5 = load i64, ptr %odd_bytes, align 8
  %cmp2 = icmp ugt i64 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %odd_bytes, align 8
  %sub = sub i64 8, %6
  %7 = load i64, ptr %sizeofobject.addr, align 8
  %add = add i64 %7, %sub
  store i64 %add, ptr %sizeofobject.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %9 = load i32, ptr %pool_id.addr, align 4
  %cmp6 = icmp sge i32 %9, 2
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %12 = load i32, ptr %pool_id.addr, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %error_exit, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %lor.lhs.false
  store ptr null, ptr %prev_hdr_ptr, align 8
  %19 = load ptr, ptr %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [2 x ptr], ptr %small_list, i64 0, i64 %idxprom
  %21 = load ptr, ptr %arrayidx11, align 8
  store ptr %21, ptr %hdr_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end10
  %22 = load ptr, ptr %hdr_ptr, align 8
  %cmp12 = icmp ne ptr %22, null
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %bytes_left, align 8
  %25 = load i64, ptr %sizeofobject.addr, align 8
  %cmp13 = icmp uge i64 %24, %25
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  br label %while.end

if.end15:                                         ; preds = %while.body
  %26 = load ptr, ptr %hdr_ptr, align 8
  store ptr %26, ptr %prev_hdr_ptr, align 8
  %27 = load ptr, ptr %hdr_ptr, align 8
  %next = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %next, align 8
  store ptr %28, ptr %hdr_ptr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then14, %while.cond
  %29 = load ptr, ptr %hdr_ptr, align 8
  %cmp16 = icmp eq ptr %29, null
  br i1 %cmp16, label %if.then17, label %if.end51

if.then17:                                        ; preds = %while.end
  %30 = load i64, ptr %sizeofobject.addr, align 8
  %add18 = add i64 %30, 24
  store i64 %add18, ptr %min_request, align 8
  %31 = load ptr, ptr %prev_hdr_ptr, align 8
  %cmp19 = icmp eq ptr %31, null
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then17
  %32 = load i32, ptr %pool_id.addr, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr @first_pool_slop, i64 0, i64 %idxprom21
  %33 = load i64, ptr %arrayidx22, align 8
  store i64 %33, ptr %slop, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then17
  %34 = load i32, ptr %pool_id.addr, align 4
  %idxprom23 = sext i32 %34 to i64
  %arrayidx24 = getelementptr inbounds [2 x i64], ptr @extra_pool_slop, i64 0, i64 %idxprom23
  %35 = load i64, ptr %arrayidx24, align 8
  store i64 %35, ptr %slop, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %36 = load i64, ptr %slop, align 8
  %37 = load i64, ptr %min_request, align 8
  %sub26 = sub i64 1000000000, %37
  %cmp27 = icmp ugt i64 %36, %sub26
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %38 = load i64, ptr %min_request, align 8
  %sub29 = sub i64 1000000000, %38
  store i64 %sub29, ptr %slop, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %if.end30
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load i64, ptr %min_request, align 8
  %41 = load i64, ptr %slop, align 8
  %add31 = add i64 %40, %41
  %call = call ptr @jpeg_get_small(ptr noundef %39, i64 noundef %add31)
  store ptr %call, ptr %hdr_ptr, align 8
  %42 = load ptr, ptr %hdr_ptr, align 8
  %cmp32 = icmp ne ptr %42, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.cond
  br label %for.end

if.end34:                                         ; preds = %for.cond
  %43 = load i64, ptr %slop, align 8
  %div = udiv i64 %43, 2
  store i64 %div, ptr %slop, align 8
  %44 = load i64, ptr %slop, align 8
  %cmp35 = icmp ult i64 %44, 50
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void @out_of_memory(ptr noundef %45, i32 noundef 2)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %for.cond

for.end:                                          ; preds = %if.then33
  %46 = load i64, ptr %min_request, align 8
  %47 = load i64, ptr %slop, align 8
  %add38 = add i64 %46, %47
  %48 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %48, i32 0, i32 5
  %49 = load i64, ptr %total_space_allocated, align 8
  %add39 = add i64 %49, %add38
  store i64 %add39, ptr %total_space_allocated, align 8
  %50 = load ptr, ptr %hdr_ptr, align 8
  %next40 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 0
  store ptr null, ptr %next40, align 8
  %51 = load ptr, ptr %hdr_ptr, align 8
  %bytes_used = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 1
  store i64 0, ptr %bytes_used, align 8
  %52 = load i64, ptr %sizeofobject.addr, align 8
  %53 = load i64, ptr %slop, align 8
  %add41 = add i64 %52, %53
  %54 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left42 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 2
  store i64 %add41, ptr %bytes_left42, align 8
  %55 = load ptr, ptr %prev_hdr_ptr, align 8
  %cmp43 = icmp eq ptr %55, null
  br i1 %cmp43, label %if.then44, label %if.else48

if.then44:                                        ; preds = %for.end
  %56 = load ptr, ptr %hdr_ptr, align 8
  %57 = load ptr, ptr %mem, align 8
  %small_list45 = getelementptr inbounds %struct.my_memory_mgr, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %pool_id.addr, align 4
  %idxprom46 = sext i32 %58 to i64
  %arrayidx47 = getelementptr inbounds [2 x ptr], ptr %small_list45, i64 0, i64 %idxprom46
  store ptr %56, ptr %arrayidx47, align 8
  br label %if.end50

if.else48:                                        ; preds = %for.end
  %59 = load ptr, ptr %hdr_ptr, align 8
  %60 = load ptr, ptr %prev_hdr_ptr, align 8
  %next49 = getelementptr inbounds %struct.anon, ptr %60, i32 0, i32 0
  store ptr %59, ptr %next49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then44
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %while.end
  %61 = load ptr, ptr %hdr_ptr, align 8
  %add.ptr = getelementptr inbounds %union.small_pool_struct, ptr %61, i64 1
  store ptr %add.ptr, ptr %data_ptr, align 8
  %62 = load ptr, ptr %hdr_ptr, align 8
  %bytes_used52 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1
  %63 = load i64, ptr %bytes_used52, align 8
  %64 = load ptr, ptr %data_ptr, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %64, i64 %63
  store ptr %add.ptr53, ptr %data_ptr, align 8
  %65 = load i64, ptr %sizeofobject.addr, align 8
  %66 = load ptr, ptr %hdr_ptr, align 8
  %bytes_used54 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 1
  %67 = load i64, ptr %bytes_used54, align 8
  %add55 = add i64 %67, %65
  store i64 %add55, ptr %bytes_used54, align 8
  %68 = load i64, ptr %sizeofobject.addr, align 8
  %69 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left56 = getelementptr inbounds %struct.anon, ptr %69, i32 0, i32 2
  %70 = load i64, ptr %bytes_left56, align 8
  %sub57 = sub i64 %70, %68
  store i64 %sub57, ptr %bytes_left56, align 8
  %71 = load ptr, ptr %data_ptr, align 8
  ret ptr %71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @alloc_large(ptr noundef %cinfo, i32 noundef %pool_id, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  %hdr_ptr = alloca ptr, align 8
  %odd_bytes = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i64, ptr %sizeofobject.addr, align 8
  %cmp = icmp ugt i64 %2, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @out_of_memory(ptr noundef %3, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %sizeofobject.addr, align 8
  %rem = urem i64 %4, 8
  store i64 %rem, ptr %odd_bytes, align 8
  %5 = load i64, ptr %odd_bytes, align 8
  %cmp2 = icmp ugt i64 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %odd_bytes, align 8
  %sub = sub i64 8, %6
  %7 = load i64, ptr %sizeofobject.addr, align 8
  %add = add i64 %7, %sub
  store i64 %add, ptr %sizeofobject.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %9 = load i32, ptr %pool_id.addr, align 4
  %cmp6 = icmp sge i32 %9, 2
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %12 = load i32, ptr %pool_id.addr, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %error_exit, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %lor.lhs.false
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i64, ptr %sizeofobject.addr, align 8
  %add11 = add i64 %20, 24
  %call = call ptr @jpeg_get_large(ptr noundef %19, i64 noundef %add11)
  store ptr %call, ptr %hdr_ptr, align 8
  %21 = load ptr, ptr %hdr_ptr, align 8
  %cmp12 = icmp eq ptr %21, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void @out_of_memory(ptr noundef %22, i32 noundef 4)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %23 = load i64, ptr %sizeofobject.addr, align 8
  %add15 = add i64 %23, 24
  %24 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %24, i32 0, i32 5
  %25 = load i64, ptr %total_space_allocated, align 8
  %add16 = add i64 %25, %add15
  store i64 %add16, ptr %total_space_allocated, align 8
  %26 = load ptr, ptr %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds [2 x ptr], ptr %large_list, i64 0, i64 %idxprom
  %28 = load ptr, ptr %arrayidx17, align 8
  %29 = load ptr, ptr %hdr_ptr, align 8
  %next = getelementptr inbounds %struct.anon.0, ptr %29, i32 0, i32 0
  store ptr %28, ptr %next, align 8
  %30 = load i64, ptr %sizeofobject.addr, align 8
  %31 = load ptr, ptr %hdr_ptr, align 8
  %bytes_used = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 1
  store i64 %30, ptr %bytes_used, align 8
  %32 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 2
  store i64 0, ptr %bytes_left, align 8
  %33 = load ptr, ptr %hdr_ptr, align 8
  %34 = load ptr, ptr %mem, align 8
  %large_list18 = getelementptr inbounds %struct.my_memory_mgr, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %pool_id.addr, align 4
  %idxprom19 = sext i32 %35 to i64
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %large_list18, i64 0, i64 %idxprom19
  store ptr %33, ptr %arrayidx20, align 8
  %36 = load ptr, ptr %hdr_ptr, align 8
  %add.ptr = getelementptr inbounds %union.large_pool_struct, ptr %36, i64 1
  ret ptr %add.ptr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @alloc_sarray(ptr noundef %cinfo, i32 noundef %pool_id, i32 noundef %samplesperrow, i32 noundef %numrows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %result = alloca ptr, align 8
  %workspace = alloca ptr, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i32 %samplesperrow, ptr %samplesperrow.addr, align 4
  store i32 %numrows, ptr %numrows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i32, ptr %samplesperrow.addr, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 1
  %div = udiv i64 999999976, %mul
  store i64 %div, ptr %ltemp, align 8
  %3 = load i64, ptr %ltemp, align 8
  %cmp = icmp sle i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %error_exit, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %ltemp, align 8
  %11 = load i32, ptr %numrows.addr, align 4
  %conv4 = zext i32 %11 to i64
  %cmp5 = icmp slt i64 %10, %conv4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %12 = load i64, ptr %ltemp, align 8
  %conv8 = trunc i64 %12 to i32
  store i32 %conv8, ptr %rowsperchunk, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %numrows.addr, align 4
  store i32 %13, ptr %rowsperchunk, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %14 = load i32, ptr %rowsperchunk, align 4
  %15 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %15, i32 0, i32 6
  store i32 %14, ptr %last_rowsperchunk, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %pool_id.addr, align 4
  %18 = load i32, ptr %numrows.addr, align 4
  %conv10 = zext i32 %18 to i64
  %mul11 = mul i64 %conv10, 8
  %call = call ptr @alloc_small(ptr noundef %16, i32 noundef %17, i64 noundef %mul11)
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end9
  %19 = load i32, ptr %currow, align 4
  %20 = load i32, ptr %numrows.addr, align 4
  %cmp12 = icmp ult i32 %19, %20
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %rowsperchunk, align 4
  %22 = load i32, ptr %numrows.addr, align 4
  %23 = load i32, ptr %currow, align 4
  %sub = sub i32 %22, %23
  %cmp14 = icmp ult i32 %21, %sub
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i32, ptr %rowsperchunk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %25 = load i32, ptr %numrows.addr, align 4
  %26 = load i32, ptr %currow, align 4
  %sub16 = sub i32 %25, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %sub16, %cond.false ]
  store i32 %cond, ptr %rowsperchunk, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %pool_id.addr, align 4
  %29 = load i32, ptr %rowsperchunk, align 4
  %conv17 = zext i32 %29 to i64
  %30 = load i32, ptr %samplesperrow.addr, align 4
  %conv18 = zext i32 %30 to i64
  %mul19 = mul i64 %conv17, %conv18
  %mul20 = mul i64 %mul19, 1
  %call21 = call ptr @alloc_large(ptr noundef %27, i32 noundef %28, i64 noundef %mul20)
  store ptr %call21, ptr %workspace, align 8
  %31 = load i32, ptr %rowsperchunk, align 4
  store i32 %31, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %32 = load i32, ptr %i, align 4
  %cmp22 = icmp ugt i32 %32, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %workspace, align 8
  %34 = load ptr, ptr %result, align 8
  %35 = load i32, ptr %currow, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %currow, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %34, i64 %idxprom
  store ptr %33, ptr %arrayidx, align 8
  %36 = load i32, ptr %samplesperrow.addr, align 4
  %37 = load ptr, ptr %workspace, align 8
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %idx.ext
  store ptr %add.ptr, ptr %workspace, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %39 = load ptr, ptr %result, align 8
  ret ptr %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @alloc_barray(ptr noundef %cinfo, i32 noundef %pool_id, i32 noundef %blocksperrow, i32 noundef %numrows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %result = alloca ptr, align 8
  %workspace = alloca ptr, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i32 %blocksperrow, ptr %blocksperrow.addr, align 4
  store i32 %numrows, ptr %numrows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i32, ptr %blocksperrow.addr, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 128
  %div = udiv i64 999999976, %mul
  store i64 %div, ptr %ltemp, align 8
  %3 = load i64, ptr %ltemp, align 8
  %cmp = icmp sle i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %error_exit, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %ltemp, align 8
  %11 = load i32, ptr %numrows.addr, align 4
  %conv4 = zext i32 %11 to i64
  %cmp5 = icmp slt i64 %10, %conv4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %12 = load i64, ptr %ltemp, align 8
  %conv8 = trunc i64 %12 to i32
  store i32 %conv8, ptr %rowsperchunk, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %numrows.addr, align 4
  store i32 %13, ptr %rowsperchunk, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %14 = load i32, ptr %rowsperchunk, align 4
  %15 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %15, i32 0, i32 6
  store i32 %14, ptr %last_rowsperchunk, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %pool_id.addr, align 4
  %18 = load i32, ptr %numrows.addr, align 4
  %conv10 = zext i32 %18 to i64
  %mul11 = mul i64 %conv10, 8
  %call = call ptr @alloc_small(ptr noundef %16, i32 noundef %17, i64 noundef %mul11)
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end9
  %19 = load i32, ptr %currow, align 4
  %20 = load i32, ptr %numrows.addr, align 4
  %cmp12 = icmp ult i32 %19, %20
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %rowsperchunk, align 4
  %22 = load i32, ptr %numrows.addr, align 4
  %23 = load i32, ptr %currow, align 4
  %sub = sub i32 %22, %23
  %cmp14 = icmp ult i32 %21, %sub
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i32, ptr %rowsperchunk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %25 = load i32, ptr %numrows.addr, align 4
  %26 = load i32, ptr %currow, align 4
  %sub16 = sub i32 %25, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %sub16, %cond.false ]
  store i32 %cond, ptr %rowsperchunk, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %pool_id.addr, align 4
  %29 = load i32, ptr %rowsperchunk, align 4
  %conv17 = zext i32 %29 to i64
  %30 = load i32, ptr %blocksperrow.addr, align 4
  %conv18 = zext i32 %30 to i64
  %mul19 = mul i64 %conv17, %conv18
  %mul20 = mul i64 %mul19, 128
  %call21 = call ptr @alloc_large(ptr noundef %27, i32 noundef %28, i64 noundef %mul20)
  store ptr %call21, ptr %workspace, align 8
  %31 = load i32, ptr %rowsperchunk, align 4
  store i32 %31, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %32 = load i32, ptr %i, align 4
  %cmp22 = icmp ugt i32 %32, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %workspace, align 8
  %34 = load ptr, ptr %result, align 8
  %35 = load i32, ptr %currow, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %currow, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %34, i64 %idxprom
  store ptr %33, ptr %arrayidx, align 8
  %36 = load i32, ptr %blocksperrow.addr, align 4
  %37 = load ptr, ptr %workspace, align 8
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %37, i64 %idx.ext
  store ptr %add.ptr, ptr %workspace, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %39 = load ptr, ptr %result, align 8
  ret ptr %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @request_virt_sarray(ptr noundef %cinfo, i32 noundef %pool_id, i32 noundef %pre_zero, i32 noundef %samplesperrow, i32 noundef %numrows, i32 noundef %maxaccess) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i32 %pre_zero, ptr %pre_zero.addr, align 4
  store i32 %samplesperrow, ptr %samplesperrow.addr, align 4
  store i32 %numrows, ptr %numrows.addr, align 4
  store i32 %maxaccess, ptr %maxaccess.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i32, ptr %pool_id.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %5 = load i32, ptr %pool_id.addr, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load i32, ptr %pool_id.addr, align 4
  %call = call ptr @alloc_small(ptr noundef %12, i32 noundef %13, i64 noundef 152)
  store ptr %call, ptr %result, align 8
  %14 = load ptr, ptr %result, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i32 0, i32 0
  store ptr null, ptr %mem_buffer, align 8
  %15 = load i32, ptr %numrows.addr, align 4
  %16 = load ptr, ptr %result, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %16, i32 0, i32 1
  store i32 %15, ptr %rows_in_array, align 8
  %17 = load i32, ptr %samplesperrow.addr, align 4
  %18 = load ptr, ptr %result, align 8
  %samplesperrow4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %18, i32 0, i32 2
  store i32 %17, ptr %samplesperrow4, align 4
  %19 = load i32, ptr %maxaccess.addr, align 4
  %20 = load ptr, ptr %result, align 8
  %maxaccess5 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %20, i32 0, i32 3
  store i32 %19, ptr %maxaccess5, align 8
  %21 = load i32, ptr %pre_zero.addr, align 4
  %22 = load ptr, ptr %result, align 8
  %pre_zero6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %22, i32 0, i32 8
  store i32 %21, ptr %pre_zero6, align 4
  %23 = load ptr, ptr %result, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %23, i32 0, i32 10
  store i32 0, ptr %b_s_open, align 4
  %24 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %virt_sarray_list, align 8
  %26 = load ptr, ptr %result, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %26, i32 0, i32 11
  store ptr %25, ptr %next, align 8
  %27 = load ptr, ptr %result, align 8
  %28 = load ptr, ptr %mem, align 8
  %virt_sarray_list7 = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i32 0, i32 3
  store ptr %27, ptr %virt_sarray_list7, align 8
  %29 = load ptr, ptr %result, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @request_virt_barray(ptr noundef %cinfo, i32 noundef %pool_id, i32 noundef %pre_zero, i32 noundef %blocksperrow, i32 noundef %numrows, i32 noundef %maxaccess) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i32 %pre_zero, ptr %pre_zero.addr, align 4
  store i32 %blocksperrow, ptr %blocksperrow.addr, align 4
  store i32 %numrows, ptr %numrows.addr, align 4
  store i32 %maxaccess, ptr %maxaccess.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i32, ptr %pool_id.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %5 = load i32, ptr %pool_id.addr, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load i32, ptr %pool_id.addr, align 4
  %call = call ptr @alloc_small(ptr noundef %12, i32 noundef %13, i64 noundef 152)
  store ptr %call, ptr %result, align 8
  %14 = load ptr, ptr %result, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i32 0, i32 0
  store ptr null, ptr %mem_buffer, align 8
  %15 = load i32, ptr %numrows.addr, align 4
  %16 = load ptr, ptr %result, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %16, i32 0, i32 1
  store i32 %15, ptr %rows_in_array, align 8
  %17 = load i32, ptr %blocksperrow.addr, align 4
  %18 = load ptr, ptr %result, align 8
  %blocksperrow4 = getelementptr inbounds %struct.jvirt_barray_control, ptr %18, i32 0, i32 2
  store i32 %17, ptr %blocksperrow4, align 4
  %19 = load i32, ptr %maxaccess.addr, align 4
  %20 = load ptr, ptr %result, align 8
  %maxaccess5 = getelementptr inbounds %struct.jvirt_barray_control, ptr %20, i32 0, i32 3
  store i32 %19, ptr %maxaccess5, align 8
  %21 = load i32, ptr %pre_zero.addr, align 4
  %22 = load ptr, ptr %result, align 8
  %pre_zero6 = getelementptr inbounds %struct.jvirt_barray_control, ptr %22, i32 0, i32 8
  store i32 %21, ptr %pre_zero6, align 4
  %23 = load ptr, ptr %result, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, ptr %23, i32 0, i32 10
  store i32 0, ptr %b_s_open, align 4
  %24 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %virt_barray_list, align 8
  %26 = load ptr, ptr %result, align 8
  %next = getelementptr inbounds %struct.jvirt_barray_control, ptr %26, i32 0, i32 11
  store ptr %25, ptr %next, align 8
  %27 = load ptr, ptr %result, align 8
  %28 = load ptr, ptr %mem, align 8
  %virt_barray_list7 = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i32 0, i32 4
  store ptr %27, ptr %virt_barray_list7, align 8
  %29 = load ptr, ptr %result, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @realize_virt_arrays(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %space_per_minheight = alloca i64, align 8
  %maximum_space = alloca i64, align 8
  %avail_mem = alloca i64, align 8
  %minheights = alloca i64, align 8
  %max_minheights = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %bptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  store i64 0, ptr %space_per_minheight, align 8
  store i64 0, ptr %maximum_space, align 8
  %2 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %virt_sarray_list, align 8
  store ptr %3, ptr %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %sptr, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %sptr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %mem_buffer, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %sptr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %maxaccess, align 8
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %sptr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %samplesperrow, align 4
  %conv3 = zext i32 %10 to i64
  %mul = mul nsw i64 %conv, %conv3
  %mul4 = mul i64 %mul, 1
  %11 = load i64, ptr %space_per_minheight, align 8
  %add = add i64 %11, %mul4
  store i64 %add, ptr %space_per_minheight, align 8
  %12 = load ptr, ptr %sptr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %rows_in_array, align 8
  %conv5 = zext i32 %13 to i64
  %14 = load ptr, ptr %sptr, align 8
  %samplesperrow6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %samplesperrow6, align 4
  %conv7 = zext i32 %15 to i64
  %mul8 = mul nsw i64 %conv5, %conv7
  %mul9 = mul i64 %mul8, 1
  %16 = load i64, ptr %maximum_space, align 8
  %add10 = add i64 %16, %mul9
  store i64 %add10, ptr %maximum_space, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %next, align 8
  store ptr %18, ptr %sptr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %virt_barray_list, align 8
  store ptr %20, ptr %bptr, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc33, %for.end
  %21 = load ptr, ptr %bptr, align 8
  %cmp12 = icmp ne ptr %21, null
  br i1 %cmp12, label %for.body14, label %for.end35

for.body14:                                       ; preds = %for.cond11
  %22 = load ptr, ptr %bptr, align 8
  %mem_buffer15 = getelementptr inbounds %struct.jvirt_barray_control, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %mem_buffer15, align 8
  %cmp16 = icmp eq ptr %23, null
  br i1 %cmp16, label %if.then18, label %if.end32

if.then18:                                        ; preds = %for.body14
  %24 = load ptr, ptr %bptr, align 8
  %maxaccess19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %maxaccess19, align 8
  %conv20 = zext i32 %25 to i64
  %26 = load ptr, ptr %bptr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %blocksperrow, align 4
  %conv21 = zext i32 %27 to i64
  %mul22 = mul nsw i64 %conv20, %conv21
  %mul23 = mul i64 %mul22, 128
  %28 = load i64, ptr %space_per_minheight, align 8
  %add24 = add i64 %28, %mul23
  store i64 %add24, ptr %space_per_minheight, align 8
  %29 = load ptr, ptr %bptr, align 8
  %rows_in_array25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %rows_in_array25, align 8
  %conv26 = zext i32 %30 to i64
  %31 = load ptr, ptr %bptr, align 8
  %blocksperrow27 = getelementptr inbounds %struct.jvirt_barray_control, ptr %31, i32 0, i32 2
  %32 = load i32, ptr %blocksperrow27, align 4
  %conv28 = zext i32 %32 to i64
  %mul29 = mul nsw i64 %conv26, %conv28
  %mul30 = mul i64 %mul29, 128
  %33 = load i64, ptr %maximum_space, align 8
  %add31 = add i64 %33, %mul30
  store i64 %add31, ptr %maximum_space, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then18, %for.body14
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %34 = load ptr, ptr %bptr, align 8
  %next34 = getelementptr inbounds %struct.jvirt_barray_control, ptr %34, i32 0, i32 11
  %35 = load ptr, ptr %next34, align 8
  store ptr %35, ptr %bptr, align 8
  br label %for.cond11, !llvm.loop !14

for.end35:                                        ; preds = %for.cond11
  %36 = load i64, ptr %space_per_minheight, align 8
  %cmp36 = icmp sle i64 %36, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end35
  br label %for.end136

if.end39:                                         ; preds = %for.end35
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load i64, ptr %space_per_minheight, align 8
  %39 = load i64, ptr %maximum_space, align 8
  %40 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %total_space_allocated, align 8
  %call = call i64 @jpeg_mem_available(ptr noundef %37, i64 noundef %38, i64 noundef %39, i64 noundef %41)
  store i64 %call, ptr %avail_mem, align 8
  %42 = load i64, ptr %avail_mem, align 8
  %43 = load i64, ptr %maximum_space, align 8
  %cmp40 = icmp sge i64 %42, %43
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  store i64 1000000000, ptr %max_minheights, align 8
  br label %if.end47

if.else:                                          ; preds = %if.end39
  %44 = load i64, ptr %avail_mem, align 8
  %45 = load i64, ptr %space_per_minheight, align 8
  %div = sdiv i64 %44, %45
  store i64 %div, ptr %max_minheights, align 8
  %46 = load i64, ptr %max_minheights, align 8
  %cmp43 = icmp sle i64 %46, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else
  store i64 1, ptr %max_minheights, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then42
  %47 = load ptr, ptr %mem, align 8
  %virt_sarray_list48 = getelementptr inbounds %struct.my_memory_mgr, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %virt_sarray_list48, align 8
  store ptr %48, ptr %sptr, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc85, %if.end47
  %49 = load ptr, ptr %sptr, align 8
  %cmp50 = icmp ne ptr %49, null
  br i1 %cmp50, label %for.body52, label %for.end87

for.body52:                                       ; preds = %for.cond49
  %50 = load ptr, ptr %sptr, align 8
  %mem_buffer53 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %mem_buffer53, align 8
  %cmp54 = icmp eq ptr %51, null
  br i1 %cmp54, label %if.then56, label %if.end84

if.then56:                                        ; preds = %for.body52
  %52 = load ptr, ptr %sptr, align 8
  %rows_in_array57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %rows_in_array57, align 8
  %conv58 = zext i32 %53 to i64
  %sub = sub nsw i64 %conv58, 1
  %54 = load ptr, ptr %sptr, align 8
  %maxaccess59 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %maxaccess59, align 8
  %conv60 = zext i32 %55 to i64
  %div61 = sdiv i64 %sub, %conv60
  %add62 = add nsw i64 %div61, 1
  store i64 %add62, ptr %minheights, align 8
  %56 = load i64, ptr %minheights, align 8
  %57 = load i64, ptr %max_minheights, align 8
  %cmp63 = icmp sle i64 %56, %57
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.then56
  %58 = load ptr, ptr %sptr, align 8
  %rows_in_array66 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %rows_in_array66, align 8
  %60 = load ptr, ptr %sptr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %60, i32 0, i32 4
  store i32 %59, ptr %rows_in_mem, align 4
  br label %if.end79

if.else67:                                        ; preds = %if.then56
  %61 = load i64, ptr %max_minheights, align 8
  %62 = load ptr, ptr %sptr, align 8
  %maxaccess68 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %62, i32 0, i32 3
  %63 = load i32, ptr %maxaccess68, align 8
  %conv69 = zext i32 %63 to i64
  %mul70 = mul nsw i64 %61, %conv69
  %conv71 = trunc i64 %mul70 to i32
  %64 = load ptr, ptr %sptr, align 8
  %rows_in_mem72 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %64, i32 0, i32 4
  store i32 %conv71, ptr %rows_in_mem72, align 4
  %65 = load ptr, ptr %cinfo.addr, align 8
  %66 = load ptr, ptr %sptr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %sptr, align 8
  %rows_in_array73 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %rows_in_array73, align 8
  %conv74 = zext i32 %68 to i64
  %69 = load ptr, ptr %sptr, align 8
  %samplesperrow75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %samplesperrow75, align 4
  %conv76 = zext i32 %70 to i64
  %mul77 = mul nsw i64 %conv74, %conv76
  %mul78 = mul nsw i64 %mul77, 1
  call void @jpeg_open_backing_store(ptr noundef %65, ptr noundef %b_s_info, i64 noundef %mul78)
  %71 = load ptr, ptr %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %71, i32 0, i32 10
  store i32 1, ptr %b_s_open, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else67, %if.then65
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %sptr, align 8
  %samplesperrow80 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %73, i32 0, i32 2
  %74 = load i32, ptr %samplesperrow80, align 4
  %75 = load ptr, ptr %sptr, align 8
  %rows_in_mem81 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %rows_in_mem81, align 4
  %call82 = call ptr @alloc_sarray(ptr noundef %72, i32 noundef 1, i32 noundef %74, i32 noundef %76)
  %77 = load ptr, ptr %sptr, align 8
  %mem_buffer83 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %77, i32 0, i32 0
  store ptr %call82, ptr %mem_buffer83, align 8
  %78 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %last_rowsperchunk, align 8
  %80 = load ptr, ptr %sptr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, ptr %80, i32 0, i32 5
  store i32 %79, ptr %rowsperchunk, align 8
  %81 = load ptr, ptr %sptr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %81, i32 0, i32 6
  store i32 0, ptr %cur_start_row, align 4
  %82 = load ptr, ptr %sptr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %82, i32 0, i32 7
  store i32 0, ptr %first_undef_row, align 8
  %83 = load ptr, ptr %sptr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, ptr %83, i32 0, i32 9
  store i32 0, ptr %dirty, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.end79, %for.body52
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %84 = load ptr, ptr %sptr, align 8
  %next86 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %84, i32 0, i32 11
  %85 = load ptr, ptr %next86, align 8
  store ptr %85, ptr %sptr, align 8
  br label %for.cond49, !llvm.loop !15

for.end87:                                        ; preds = %for.cond49
  %86 = load ptr, ptr %mem, align 8
  %virt_barray_list88 = getelementptr inbounds %struct.my_memory_mgr, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %virt_barray_list88, align 8
  store ptr %87, ptr %bptr, align 8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc134, %for.end87
  %88 = load ptr, ptr %bptr, align 8
  %cmp90 = icmp ne ptr %88, null
  br i1 %cmp90, label %for.body92, label %for.end136

for.body92:                                       ; preds = %for.cond89
  %89 = load ptr, ptr %bptr, align 8
  %mem_buffer93 = getelementptr inbounds %struct.jvirt_barray_control, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %mem_buffer93, align 8
  %cmp94 = icmp eq ptr %90, null
  br i1 %cmp94, label %if.then96, label %if.end133

if.then96:                                        ; preds = %for.body92
  %91 = load ptr, ptr %bptr, align 8
  %rows_in_array97 = getelementptr inbounds %struct.jvirt_barray_control, ptr %91, i32 0, i32 1
  %92 = load i32, ptr %rows_in_array97, align 8
  %conv98 = zext i32 %92 to i64
  %sub99 = sub nsw i64 %conv98, 1
  %93 = load ptr, ptr %bptr, align 8
  %maxaccess100 = getelementptr inbounds %struct.jvirt_barray_control, ptr %93, i32 0, i32 3
  %94 = load i32, ptr %maxaccess100, align 8
  %conv101 = zext i32 %94 to i64
  %div102 = sdiv i64 %sub99, %conv101
  %add103 = add nsw i64 %div102, 1
  store i64 %add103, ptr %minheights, align 8
  %95 = load i64, ptr %minheights, align 8
  %96 = load i64, ptr %max_minheights, align 8
  %cmp104 = icmp sle i64 %95, %96
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then96
  %97 = load ptr, ptr %bptr, align 8
  %rows_in_array107 = getelementptr inbounds %struct.jvirt_barray_control, ptr %97, i32 0, i32 1
  %98 = load i32, ptr %rows_in_array107, align 8
  %99 = load ptr, ptr %bptr, align 8
  %rows_in_mem108 = getelementptr inbounds %struct.jvirt_barray_control, ptr %99, i32 0, i32 4
  store i32 %98, ptr %rows_in_mem108, align 4
  br label %if.end123

if.else109:                                       ; preds = %if.then96
  %100 = load i64, ptr %max_minheights, align 8
  %101 = load ptr, ptr %bptr, align 8
  %maxaccess110 = getelementptr inbounds %struct.jvirt_barray_control, ptr %101, i32 0, i32 3
  %102 = load i32, ptr %maxaccess110, align 8
  %conv111 = zext i32 %102 to i64
  %mul112 = mul nsw i64 %100, %conv111
  %conv113 = trunc i64 %mul112 to i32
  %103 = load ptr, ptr %bptr, align 8
  %rows_in_mem114 = getelementptr inbounds %struct.jvirt_barray_control, ptr %103, i32 0, i32 4
  store i32 %conv113, ptr %rows_in_mem114, align 4
  %104 = load ptr, ptr %cinfo.addr, align 8
  %105 = load ptr, ptr %bptr, align 8
  %b_s_info115 = getelementptr inbounds %struct.jvirt_barray_control, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %bptr, align 8
  %rows_in_array116 = getelementptr inbounds %struct.jvirt_barray_control, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %rows_in_array116, align 8
  %conv117 = zext i32 %107 to i64
  %108 = load ptr, ptr %bptr, align 8
  %blocksperrow118 = getelementptr inbounds %struct.jvirt_barray_control, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %blocksperrow118, align 4
  %conv119 = zext i32 %109 to i64
  %mul120 = mul nsw i64 %conv117, %conv119
  %mul121 = mul nsw i64 %mul120, 128
  call void @jpeg_open_backing_store(ptr noundef %104, ptr noundef %b_s_info115, i64 noundef %mul121)
  %110 = load ptr, ptr %bptr, align 8
  %b_s_open122 = getelementptr inbounds %struct.jvirt_barray_control, ptr %110, i32 0, i32 10
  store i32 1, ptr %b_s_open122, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else109, %if.then106
  %111 = load ptr, ptr %cinfo.addr, align 8
  %112 = load ptr, ptr %bptr, align 8
  %blocksperrow124 = getelementptr inbounds %struct.jvirt_barray_control, ptr %112, i32 0, i32 2
  %113 = load i32, ptr %blocksperrow124, align 4
  %114 = load ptr, ptr %bptr, align 8
  %rows_in_mem125 = getelementptr inbounds %struct.jvirt_barray_control, ptr %114, i32 0, i32 4
  %115 = load i32, ptr %rows_in_mem125, align 4
  %call126 = call ptr @alloc_barray(ptr noundef %111, i32 noundef 1, i32 noundef %113, i32 noundef %115)
  %116 = load ptr, ptr %bptr, align 8
  %mem_buffer127 = getelementptr inbounds %struct.jvirt_barray_control, ptr %116, i32 0, i32 0
  store ptr %call126, ptr %mem_buffer127, align 8
  %117 = load ptr, ptr %mem, align 8
  %last_rowsperchunk128 = getelementptr inbounds %struct.my_memory_mgr, ptr %117, i32 0, i32 6
  %118 = load i32, ptr %last_rowsperchunk128, align 8
  %119 = load ptr, ptr %bptr, align 8
  %rowsperchunk129 = getelementptr inbounds %struct.jvirt_barray_control, ptr %119, i32 0, i32 5
  store i32 %118, ptr %rowsperchunk129, align 8
  %120 = load ptr, ptr %bptr, align 8
  %cur_start_row130 = getelementptr inbounds %struct.jvirt_barray_control, ptr %120, i32 0, i32 6
  store i32 0, ptr %cur_start_row130, align 4
  %121 = load ptr, ptr %bptr, align 8
  %first_undef_row131 = getelementptr inbounds %struct.jvirt_barray_control, ptr %121, i32 0, i32 7
  store i32 0, ptr %first_undef_row131, align 8
  %122 = load ptr, ptr %bptr, align 8
  %dirty132 = getelementptr inbounds %struct.jvirt_barray_control, ptr %122, i32 0, i32 9
  store i32 0, ptr %dirty132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.end123, %for.body92
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %123 = load ptr, ptr %bptr, align 8
  %next135 = getelementptr inbounds %struct.jvirt_barray_control, ptr %123, i32 0, i32 11
  %124 = load ptr, ptr %next135, align 8
  store ptr %124, ptr %bptr, align 8
  br label %for.cond89, !llvm.loop !16

for.end136:                                       ; preds = %if.then38, %for.cond89
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @access_virt_sarray(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %start_row, i32 noundef %num_rows, i32 noundef %writable) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %writable, ptr %writable.addr, align 4
  %0 = load i32, ptr %start_row.addr, align 4
  %1 = load i32, ptr %num_rows.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, ptr %end_row, align 4
  %2 = load i32, ptr %end_row, align 4
  %3 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %rows_in_array, align 8
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %num_rows.addr, align 4
  %6 = load ptr, ptr %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %maxaccess, align 8
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %mem_buffer, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 20, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %16 = load i32, ptr %start_row.addr, align 4
  %17 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %cur_start_row, align 4
  %cmp5 = icmp ult i32 %16, %18
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %19 = load i32, ptr %end_row, align 4
  %20 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %cur_start_row7, align 4
  %22 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %rows_in_mem, align 4
  %add8 = add i32 %21, %23
  %cmp9 = icmp ugt i32 %19, %add8
  br i1 %cmp9, label %if.then10, label %if.end34

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  %24 = load ptr, ptr %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %b_s_open, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.then10
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_common_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err12, align 8
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 68, ptr %msg_code13, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_common_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err14, align 8
  %error_exit15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %error_exit15, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then10
  %32 = load ptr, ptr %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, ptr %32, i32 0, i32 9
  %33 = load i32, ptr %dirty, align 8
  %tobool17 = icmp ne i32 %33, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %ptr.addr, align 8
  call void @do_sarray_io(ptr noundef %34, ptr noundef %35, i32 noundef 1)
  %36 = load ptr, ptr %ptr.addr, align 8
  %dirty19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i32 0, i32 9
  store i32 0, ptr %dirty19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %37 = load i32, ptr %start_row.addr, align 4
  %38 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %38, i32 0, i32 6
  %39 = load i32, ptr %cur_start_row21, align 4
  %cmp22 = icmp ugt i32 %37, %39
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %40 = load i32, ptr %start_row.addr, align 4
  %41 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row24 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %41, i32 0, i32 6
  store i32 %40, ptr %cur_start_row24, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end20
  %42 = load i32, ptr %end_row, align 4
  %conv = zext i32 %42 to i64
  %43 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %rows_in_mem25, align 4
  %conv26 = zext i32 %44 to i64
  %sub = sub nsw i64 %conv, %conv26
  store i64 %sub, ptr %ltemp, align 8
  %45 = load i64, ptr %ltemp, align 8
  %cmp27 = icmp slt i64 %45, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  store i64 0, ptr %ltemp, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else
  %46 = load i64, ptr %ltemp, align 8
  %conv31 = trunc i64 %46 to i32
  %47 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row32 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %47, i32 0, i32 6
  store i32 %conv31, ptr %cur_start_row32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.then23
  %48 = load ptr, ptr %cinfo.addr, align 8
  %49 = load ptr, ptr %ptr.addr, align 8
  call void @do_sarray_io(ptr noundef %48, ptr noundef %49, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false6
  %50 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %50, i32 0, i32 7
  %51 = load i32, ptr %first_undef_row, align 8
  %52 = load i32, ptr %end_row, align 4
  %cmp35 = icmp ult i32 %51, %52
  br i1 %cmp35, label %if.then37, label %if.end75

if.then37:                                        ; preds = %if.end34
  %53 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row38 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %53, i32 0, i32 7
  %54 = load i32, ptr %first_undef_row38, align 8
  %55 = load i32, ptr %start_row.addr, align 4
  %cmp39 = icmp ult i32 %54, %55
  br i1 %cmp39, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.then37
  %56 = load i32, ptr %writable.addr, align 4
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.then41
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err44 = getelementptr inbounds %struct.jpeg_common_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err44, align 8
  %msg_code45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 5
  store i32 20, ptr %msg_code45, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err46, align 8
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %error_exit47, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void %61(ptr noundef %62)
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then41
  %63 = load i32, ptr %start_row.addr, align 4
  store i32 %63, ptr %undef_row, align 4
  br label %if.end51

if.else49:                                        ; preds = %if.then37
  %64 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row50 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %64, i32 0, i32 7
  %65 = load i32, ptr %first_undef_row50, align 8
  store i32 %65, ptr %undef_row, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.end48
  %66 = load i32, ptr %writable.addr, align 4
  %tobool52 = icmp ne i32 %66, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %67 = load i32, ptr %end_row, align 4
  %68 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row54 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %68, i32 0, i32 7
  store i32 %67, ptr %first_undef_row54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %69 = load ptr, ptr %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_sarray_control, ptr %69, i32 0, i32 8
  %70 = load i32, ptr %pre_zero, align 4
  %tobool56 = icmp ne i32 %70, 0
  br i1 %tobool56, label %if.then57, label %if.else66

if.then57:                                        ; preds = %if.end55
  %71 = load ptr, ptr %ptr.addr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %samplesperrow, align 4
  %conv58 = zext i32 %72 to i64
  %mul = mul i64 %conv58, 1
  store i64 %mul, ptr %bytesperrow, align 8
  %73 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row59 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %cur_start_row59, align 4
  %75 = load i32, ptr %undef_row, align 4
  %sub60 = sub i32 %75, %74
  store i32 %sub60, ptr %undef_row, align 4
  %76 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row61 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %76, i32 0, i32 6
  %77 = load i32, ptr %cur_start_row61, align 4
  %78 = load i32, ptr %end_row, align 4
  %sub62 = sub i32 %78, %77
  store i32 %sub62, ptr %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %79 = load i32, ptr %undef_row, align 4
  %80 = load i32, ptr %end_row, align 4
  %cmp63 = icmp ult i32 %79, %80
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer65 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %mem_buffer65, align 8
  %83 = load i32, ptr %undef_row, align 4
  %idxprom = zext i32 %83 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %82, i64 %idxprom
  %84 = load ptr, ptr %arrayidx, align 8
  %85 = load i64, ptr %bytesperrow, align 8
  call void @jzero_far(ptr noundef %84, i64 noundef %85)
  %86 = load i32, ptr %undef_row, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %undef_row, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  br label %if.end74

if.else66:                                        ; preds = %if.end55
  %87 = load i32, ptr %writable.addr, align 4
  %tobool67 = icmp ne i32 %87, 0
  br i1 %tobool67, label %if.end73, label %if.then68

if.then68:                                        ; preds = %if.else66
  %88 = load ptr, ptr %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_common_struct, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %err69, align 8
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i32 0, i32 5
  store i32 20, ptr %msg_code70, align 8
  %90 = load ptr, ptr %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_common_struct, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %err71, align 8
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %error_exit72, align 8
  %93 = load ptr, ptr %cinfo.addr, align 8
  call void %92(ptr noundef %93)
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.else66
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %while.end
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end34
  %94 = load i32, ptr %writable.addr, align 4
  %tobool76 = icmp ne i32 %94, 0
  br i1 %tobool76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end75
  %95 = load ptr, ptr %ptr.addr, align 8
  %dirty78 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %95, i32 0, i32 9
  store i32 1, ptr %dirty78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  %96 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer80 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %mem_buffer80, align 8
  %98 = load i32, ptr %start_row.addr, align 4
  %99 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row81 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %99, i32 0, i32 6
  %100 = load i32, ptr %cur_start_row81, align 4
  %sub82 = sub i32 %98, %100
  %idx.ext = zext i32 %sub82 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %97, i64 %idx.ext
  ret ptr %add.ptr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @access_virt_barray(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %start_row, i32 noundef %num_rows, i32 noundef %writable) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %writable, ptr %writable.addr, align 4
  %0 = load i32, ptr %start_row.addr, align 4
  %1 = load i32, ptr %num_rows.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, ptr %end_row, align 4
  %2 = load i32, ptr %end_row, align 4
  %3 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %rows_in_array, align 8
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %num_rows.addr, align 4
  %6 = load ptr, ptr %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_barray_control, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %maxaccess, align 8
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %mem_buffer, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 20, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %16 = load i32, ptr %start_row.addr, align 4
  %17 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %cur_start_row, align 4
  %cmp5 = icmp ult i32 %16, %18
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %19 = load i32, ptr %end_row, align 4
  %20 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row7 = getelementptr inbounds %struct.jvirt_barray_control, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %cur_start_row7, align 4
  %22 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %rows_in_mem, align 4
  %add8 = add i32 %21, %23
  %cmp9 = icmp ugt i32 %19, %add8
  br i1 %cmp9, label %if.then10, label %if.end34

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  %24 = load ptr, ptr %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %b_s_open, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.then10
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_common_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err12, align 8
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 68, ptr %msg_code13, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_common_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err14, align 8
  %error_exit15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %error_exit15, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then10
  %32 = load ptr, ptr %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_barray_control, ptr %32, i32 0, i32 9
  %33 = load i32, ptr %dirty, align 8
  %tobool17 = icmp ne i32 %33, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %ptr.addr, align 8
  call void @do_barray_io(ptr noundef %34, ptr noundef %35, i32 noundef 1)
  %36 = load ptr, ptr %ptr.addr, align 8
  %dirty19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i32 0, i32 9
  store i32 0, ptr %dirty19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %37 = load i32, ptr %start_row.addr, align 4
  %38 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row21 = getelementptr inbounds %struct.jvirt_barray_control, ptr %38, i32 0, i32 6
  %39 = load i32, ptr %cur_start_row21, align 4
  %cmp22 = icmp ugt i32 %37, %39
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %40 = load i32, ptr %start_row.addr, align 4
  %41 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row24 = getelementptr inbounds %struct.jvirt_barray_control, ptr %41, i32 0, i32 6
  store i32 %40, ptr %cur_start_row24, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end20
  %42 = load i32, ptr %end_row, align 4
  %conv = zext i32 %42 to i64
  %43 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %rows_in_mem25, align 4
  %conv26 = zext i32 %44 to i64
  %sub = sub nsw i64 %conv, %conv26
  store i64 %sub, ptr %ltemp, align 8
  %45 = load i64, ptr %ltemp, align 8
  %cmp27 = icmp slt i64 %45, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  store i64 0, ptr %ltemp, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else
  %46 = load i64, ptr %ltemp, align 8
  %conv31 = trunc i64 %46 to i32
  %47 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row32 = getelementptr inbounds %struct.jvirt_barray_control, ptr %47, i32 0, i32 6
  store i32 %conv31, ptr %cur_start_row32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.then23
  %48 = load ptr, ptr %cinfo.addr, align 8
  %49 = load ptr, ptr %ptr.addr, align 8
  call void @do_barray_io(ptr noundef %48, ptr noundef %49, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false6
  %50 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %50, i32 0, i32 7
  %51 = load i32, ptr %first_undef_row, align 8
  %52 = load i32, ptr %end_row, align 4
  %cmp35 = icmp ult i32 %51, %52
  br i1 %cmp35, label %if.then37, label %if.end75

if.then37:                                        ; preds = %if.end34
  %53 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row38 = getelementptr inbounds %struct.jvirt_barray_control, ptr %53, i32 0, i32 7
  %54 = load i32, ptr %first_undef_row38, align 8
  %55 = load i32, ptr %start_row.addr, align 4
  %cmp39 = icmp ult i32 %54, %55
  br i1 %cmp39, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.then37
  %56 = load i32, ptr %writable.addr, align 4
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.then41
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err44 = getelementptr inbounds %struct.jpeg_common_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err44, align 8
  %msg_code45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 5
  store i32 20, ptr %msg_code45, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err46, align 8
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %error_exit47, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void %61(ptr noundef %62)
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then41
  %63 = load i32, ptr %start_row.addr, align 4
  store i32 %63, ptr %undef_row, align 4
  br label %if.end51

if.else49:                                        ; preds = %if.then37
  %64 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row50 = getelementptr inbounds %struct.jvirt_barray_control, ptr %64, i32 0, i32 7
  %65 = load i32, ptr %first_undef_row50, align 8
  store i32 %65, ptr %undef_row, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.end48
  %66 = load i32, ptr %writable.addr, align 4
  %tobool52 = icmp ne i32 %66, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %67 = load i32, ptr %end_row, align 4
  %68 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row54 = getelementptr inbounds %struct.jvirt_barray_control, ptr %68, i32 0, i32 7
  store i32 %67, ptr %first_undef_row54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %69 = load ptr, ptr %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_barray_control, ptr %69, i32 0, i32 8
  %70 = load i32, ptr %pre_zero, align 4
  %tobool56 = icmp ne i32 %70, 0
  br i1 %tobool56, label %if.then57, label %if.else66

if.then57:                                        ; preds = %if.end55
  %71 = load ptr, ptr %ptr.addr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %blocksperrow, align 4
  %conv58 = zext i32 %72 to i64
  %mul = mul i64 %conv58, 128
  store i64 %mul, ptr %bytesperrow, align 8
  %73 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row59 = getelementptr inbounds %struct.jvirt_barray_control, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %cur_start_row59, align 4
  %75 = load i32, ptr %undef_row, align 4
  %sub60 = sub i32 %75, %74
  store i32 %sub60, ptr %undef_row, align 4
  %76 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row61 = getelementptr inbounds %struct.jvirt_barray_control, ptr %76, i32 0, i32 6
  %77 = load i32, ptr %cur_start_row61, align 4
  %78 = load i32, ptr %end_row, align 4
  %sub62 = sub i32 %78, %77
  store i32 %sub62, ptr %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %79 = load i32, ptr %undef_row, align 4
  %80 = load i32, ptr %end_row, align 4
  %cmp63 = icmp ult i32 %79, %80
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer65 = getelementptr inbounds %struct.jvirt_barray_control, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %mem_buffer65, align 8
  %83 = load i32, ptr %undef_row, align 4
  %idxprom = zext i32 %83 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %82, i64 %idxprom
  %84 = load ptr, ptr %arrayidx, align 8
  %85 = load i64, ptr %bytesperrow, align 8
  call void @jzero_far(ptr noundef %84, i64 noundef %85)
  %86 = load i32, ptr %undef_row, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %undef_row, align 4
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  br label %if.end74

if.else66:                                        ; preds = %if.end55
  %87 = load i32, ptr %writable.addr, align 4
  %tobool67 = icmp ne i32 %87, 0
  br i1 %tobool67, label %if.end73, label %if.then68

if.then68:                                        ; preds = %if.else66
  %88 = load ptr, ptr %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_common_struct, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %err69, align 8
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i32 0, i32 5
  store i32 20, ptr %msg_code70, align 8
  %90 = load ptr, ptr %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_common_struct, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %err71, align 8
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %error_exit72, align 8
  %93 = load ptr, ptr %cinfo.addr, align 8
  call void %92(ptr noundef %93)
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.else66
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %while.end
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end34
  %94 = load i32, ptr %writable.addr, align 4
  %tobool76 = icmp ne i32 %94, 0
  br i1 %tobool76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end75
  %95 = load ptr, ptr %ptr.addr, align 8
  %dirty78 = getelementptr inbounds %struct.jvirt_barray_control, ptr %95, i32 0, i32 9
  store i32 1, ptr %dirty78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  %96 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer80 = getelementptr inbounds %struct.jvirt_barray_control, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %mem_buffer80, align 8
  %98 = load i32, ptr %start_row.addr, align 4
  %99 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row81 = getelementptr inbounds %struct.jvirt_barray_control, ptr %99, i32 0, i32 6
  %100 = load i32, ptr %cur_start_row81, align 4
  %sub82 = sub i32 %98, %100
  %idx.ext = zext i32 %sub82 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %97, i64 %idx.ext
  ret ptr %add.ptr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @free_pool(ptr noundef %cinfo, i32 noundef %pool_id) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %shdr_ptr = alloca ptr, align 8
  %lhdr_ptr = alloca ptr, align 8
  %space_freed = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %bptr = alloca ptr, align 8
  %next_lhdr_ptr = alloca ptr, align 8
  %next_shdr_ptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem1, align 8
  store ptr %1, ptr %mem, align 8
  %2 = load i32, ptr %pool_id.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %pool_id.addr, align 4
  %cmp2 = icmp sge i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %6 = load i32, ptr %pool_id.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %6, ptr %arrayidx, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %13 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %if.then6, label %if.end28

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %virt_sarray_list, align 8
  store ptr %15, ptr %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %16 = load ptr, ptr %sptr, align 8
  %cmp7 = icmp ne ptr %16, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %b_s_open, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %for.body
  %19 = load ptr, ptr %sptr, align 8
  %b_s_open9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i32 0, i32 10
  store i32 0, ptr %b_s_open9, align 4
  %20 = load ptr, ptr %sptr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, ptr %20, i32 0, i32 12
  %close_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info, i32 0, i32 2
  %21 = load ptr, ptr %close_backing_store, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %sptr, align 8
  %b_s_info10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %23, i32 0, i32 12
  call void %21(ptr noundef %22, ptr noundef %b_s_info10)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %24 = load ptr, ptr %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %24, i32 0, i32 11
  %25 = load ptr, ptr %next, align 8
  store ptr %25, ptr %sptr, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %mem, align 8
  %virt_sarray_list12 = getelementptr inbounds %struct.my_memory_mgr, ptr %26, i32 0, i32 3
  store ptr null, ptr %virt_sarray_list12, align 8
  %27 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %virt_barray_list, align 8
  store ptr %28, ptr %bptr, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %29 = load ptr, ptr %bptr, align 8
  %cmp14 = icmp ne ptr %29, null
  br i1 %cmp14, label %for.body15, label %for.end26

for.body15:                                       ; preds = %for.cond13
  %30 = load ptr, ptr %bptr, align 8
  %b_s_open16 = getelementptr inbounds %struct.jvirt_barray_control, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %b_s_open16, align 4
  %tobool17 = icmp ne i32 %31, 0
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.body15
  %32 = load ptr, ptr %bptr, align 8
  %b_s_open19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %32, i32 0, i32 10
  store i32 0, ptr %b_s_open19, align 4
  %33 = load ptr, ptr %bptr, align 8
  %b_s_info20 = getelementptr inbounds %struct.jvirt_barray_control, ptr %33, i32 0, i32 12
  %close_backing_store21 = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info20, i32 0, i32 2
  %34 = load ptr, ptr %close_backing_store21, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %bptr, align 8
  %b_s_info22 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i32 0, i32 12
  call void %34(ptr noundef %35, ptr noundef %b_s_info22)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %for.body15
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %37 = load ptr, ptr %bptr, align 8
  %next25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %37, i32 0, i32 11
  %38 = load ptr, ptr %next25, align 8
  store ptr %38, ptr %bptr, align 8
  br label %for.cond13, !llvm.loop !20

for.end26:                                        ; preds = %for.cond13
  %39 = load ptr, ptr %mem, align 8
  %virt_barray_list27 = getelementptr inbounds %struct.my_memory_mgr, ptr %39, i32 0, i32 4
  store ptr null, ptr %virt_barray_list27, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.end26, %if.end
  %40 = load ptr, ptr %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds [2 x ptr], ptr %large_list, i64 0, i64 %idxprom
  %42 = load ptr, ptr %arrayidx29, align 8
  store ptr %42, ptr %lhdr_ptr, align 8
  %43 = load ptr, ptr %mem, align 8
  %large_list30 = getelementptr inbounds %struct.my_memory_mgr, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %pool_id.addr, align 4
  %idxprom31 = sext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds [2 x ptr], ptr %large_list30, i64 0, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end28
  %45 = load ptr, ptr %lhdr_ptr, align 8
  %cmp33 = icmp ne ptr %45, null
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load ptr, ptr %lhdr_ptr, align 8
  %next34 = getelementptr inbounds %struct.anon.0, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %next34, align 8
  store ptr %47, ptr %next_lhdr_ptr, align 8
  %48 = load ptr, ptr %lhdr_ptr, align 8
  %bytes_used = getelementptr inbounds %struct.anon.0, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %bytes_used, align 8
  %50 = load ptr, ptr %lhdr_ptr, align 8
  %bytes_left = getelementptr inbounds %struct.anon.0, ptr %50, i32 0, i32 2
  %51 = load i64, ptr %bytes_left, align 8
  %add = add i64 %49, %51
  %add35 = add i64 %add, 24
  store i64 %add35, ptr %space_freed, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %lhdr_ptr, align 8
  %54 = load i64, ptr %space_freed, align 8
  call void @jpeg_free_large(ptr noundef %52, ptr noundef %53, i64 noundef %54)
  %55 = load i64, ptr %space_freed, align 8
  %56 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %total_space_allocated, align 8
  %sub = sub i64 %57, %55
  store i64 %sub, ptr %total_space_allocated, align 8
  %58 = load ptr, ptr %next_lhdr_ptr, align 8
  store ptr %58, ptr %lhdr_ptr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %59 = load ptr, ptr %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %pool_id.addr, align 4
  %idxprom36 = sext i32 %60 to i64
  %arrayidx37 = getelementptr inbounds [2 x ptr], ptr %small_list, i64 0, i64 %idxprom36
  %61 = load ptr, ptr %arrayidx37, align 8
  store ptr %61, ptr %shdr_ptr, align 8
  %62 = load ptr, ptr %mem, align 8
  %small_list38 = getelementptr inbounds %struct.my_memory_mgr, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %pool_id.addr, align 4
  %idxprom39 = sext i32 %63 to i64
  %arrayidx40 = getelementptr inbounds [2 x ptr], ptr %small_list38, i64 0, i64 %idxprom39
  store ptr null, ptr %arrayidx40, align 8
  br label %while.cond41

while.cond41:                                     ; preds = %while.body43, %while.end
  %64 = load ptr, ptr %shdr_ptr, align 8
  %cmp42 = icmp ne ptr %64, null
  br i1 %cmp42, label %while.body43, label %while.end51

while.body43:                                     ; preds = %while.cond41
  %65 = load ptr, ptr %shdr_ptr, align 8
  %next44 = getelementptr inbounds %struct.anon, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %next44, align 8
  store ptr %66, ptr %next_shdr_ptr, align 8
  %67 = load ptr, ptr %shdr_ptr, align 8
  %bytes_used45 = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 1
  %68 = load i64, ptr %bytes_used45, align 8
  %69 = load ptr, ptr %shdr_ptr, align 8
  %bytes_left46 = getelementptr inbounds %struct.anon, ptr %69, i32 0, i32 2
  %70 = load i64, ptr %bytes_left46, align 8
  %add47 = add i64 %68, %70
  %add48 = add i64 %add47, 24
  store i64 %add48, ptr %space_freed, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %72 = load ptr, ptr %shdr_ptr, align 8
  %73 = load i64, ptr %space_freed, align 8
  call void @jpeg_free_small(ptr noundef %71, ptr noundef %72, i64 noundef %73)
  %74 = load i64, ptr %space_freed, align 8
  %75 = load ptr, ptr %mem, align 8
  %total_space_allocated49 = getelementptr inbounds %struct.my_memory_mgr, ptr %75, i32 0, i32 5
  %76 = load i64, ptr %total_space_allocated49, align 8
  %sub50 = sub i64 %76, %74
  store i64 %sub50, ptr %total_space_allocated49, align 8
  %77 = load ptr, ptr %next_shdr_ptr, align 8
  store ptr %77, ptr %shdr_ptr, align 8
  br label %while.cond41, !llvm.loop !22

while.end51:                                      ; preds = %while.cond41
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @self_destruct(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 1, ptr %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %pool, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load i32, ptr %pool, align 4
  call void @free_pool(ptr noundef %1, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %pool, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %pool, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  call void @jpeg_free_small(ptr noundef %4, ptr noundef %6, i64 noundef 160)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %7, i32 0, i32 1
  store ptr null, ptr %mem1, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_mem_term(ptr noundef %8)
  ret void
}

declare ptr @getenv(ptr noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @out_of_memory(ptr noundef %cinfo, i32 noundef %which) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 5
  store i32 53, ptr %msg_code, align 8
  %2 = load i32, ptr %which.addr, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %2, ptr %arrayidx, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  ret void
}

declare ptr @jpeg_get_large(ptr noundef, i64 noundef) #1

declare i64 @jpeg_mem_available(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare void @jpeg_open_backing_store(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @do_sarray_io(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %writing) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %writing, ptr %writing.addr, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %samplesperrow, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, ptr %bytesperrow, align 8
  %2 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %cur_start_row, align 4
  %conv1 = zext i32 %3 to i64
  %4 = load i64, ptr %bytesperrow, align 8
  %mul2 = mul nsw i64 %conv1, %4
  store i64 %mul2, ptr %file_offset, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8
  %6 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %rows_in_mem, align 4
  %conv3 = zext i32 %7 to i64
  %cmp = icmp slt i64 %5, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %rowsperchunk, align 8
  %conv5 = zext i32 %9 to i64
  %10 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %rows_in_mem6, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %conv7, %12
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %rowsperchunk10, align 8
  %conv11 = zext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %rows_in_mem12, align 4
  %conv13 = zext i32 %16 to i64
  %17 = load i64, ptr %i, align 8
  %sub14 = sub nsw i64 %conv13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, ptr %rows, align 8
  %18 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %cur_start_row15, align 4
  %conv16 = zext i32 %19 to i64
  %20 = load i64, ptr %i, align 8
  %add = add nsw i64 %conv16, %20
  store i64 %add, ptr %thisrow, align 8
  %21 = load i64, ptr %rows, align 8
  %22 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %first_undef_row, align 8
  %conv17 = zext i32 %23 to i64
  %24 = load i64, ptr %thisrow, align 8
  %sub18 = sub nsw i64 %conv17, %24
  %cmp19 = icmp slt i64 %21, %sub18
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %25 = load i64, ptr %rows, align 8
  br label %cond.end26

cond.false22:                                     ; preds = %cond.end
  %26 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %first_undef_row23, align 8
  %conv24 = zext i32 %27 to i64
  %28 = load i64, ptr %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %28
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false22, %cond.true21
  %cond27 = phi i64 [ %25, %cond.true21 ], [ %sub25, %cond.false22 ]
  store i64 %cond27, ptr %rows, align 8
  %29 = load i64, ptr %rows, align 8
  %30 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %rows_in_array, align 8
  %conv28 = zext i32 %31 to i64
  %32 = load i64, ptr %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %32
  %cmp30 = icmp slt i64 %29, %sub29
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end26
  %33 = load i64, ptr %rows, align 8
  br label %cond.end37

cond.false33:                                     ; preds = %cond.end26
  %34 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %rows_in_array34, align 8
  %conv35 = zext i32 %35 to i64
  %36 = load i64, ptr %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %36
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %cond.true32
  %cond38 = phi i64 [ %33, %cond.true32 ], [ %sub36, %cond.false33 ]
  store i64 %cond38, ptr %rows, align 8
  %37 = load i64, ptr %rows, align 8
  %cmp39 = icmp sle i64 %37, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end37
  br label %for.end

if.end:                                           ; preds = %cond.end37
  %38 = load i64, ptr %rows, align 8
  %39 = load i64, ptr %bytesperrow, align 8
  %mul41 = mul nsw i64 %38, %39
  store i64 %mul41, ptr %byte_count, align 8
  %40 = load i32, ptr %writing.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end
  %41 = load ptr, ptr %ptr.addr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, ptr %41, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info, i32 0, i32 1
  %42 = load ptr, ptr %write_backing_store, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load ptr, ptr %ptr.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %mem_buffer, align 8
  %47 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %46, i64 %47
  %48 = load ptr, ptr %arrayidx, align 8
  %49 = load i64, ptr %file_offset, align 8
  %50 = load i64, ptr %byte_count, align 8
  call void %42(ptr noundef %43, ptr noundef %b_s_info43, ptr noundef %48, i64 noundef %49, i64 noundef %50)
  br label %if.end48

if.else:                                          ; preds = %if.end
  %51 = load ptr, ptr %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %51, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info44, i32 0, i32 0
  %52 = load ptr, ptr %read_backing_store, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %ptr.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %mem_buffer46, align 8
  %57 = load i64, ptr %i, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %56, i64 %57
  %58 = load ptr, ptr %arrayidx47, align 8
  %59 = load i64, ptr %file_offset, align 8
  %60 = load i64, ptr %byte_count, align 8
  call void %52(ptr noundef %53, ptr noundef %b_s_info45, ptr noundef %58, i64 noundef %59, i64 noundef %60)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %61 = load i64, ptr %byte_count, align 8
  %62 = load i64, ptr %file_offset, align 8
  %add49 = add nsw i64 %62, %61
  store i64 %add49, ptr %file_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %63 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %rowsperchunk50, align 8
  %conv51 = zext i32 %64 to i64
  %65 = load i64, ptr %i, align 8
  %add52 = add nsw i64 %65, %conv51
  store i64 %add52, ptr %i, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @do_barray_io(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %writing) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %writing, ptr %writing.addr, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %blocksperrow, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 128
  store i64 %mul, ptr %bytesperrow, align 8
  %2 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %cur_start_row, align 4
  %conv1 = zext i32 %3 to i64
  %4 = load i64, ptr %bytesperrow, align 8
  %mul2 = mul nsw i64 %conv1, %4
  store i64 %mul2, ptr %file_offset, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8
  %6 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %rows_in_mem, align 4
  %conv3 = zext i32 %7 to i64
  %cmp = icmp slt i64 %5, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_barray_control, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %rowsperchunk, align 8
  %conv5 = zext i32 %9 to i64
  %10 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_barray_control, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %rows_in_mem6, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %conv7, %12
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_barray_control, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %rowsperchunk10, align 8
  %conv11 = zext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_barray_control, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %rows_in_mem12, align 4
  %conv13 = zext i32 %16 to i64
  %17 = load i64, ptr %i, align 8
  %sub14 = sub nsw i64 %conv13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, ptr %rows, align 8
  %18 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_barray_control, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %cur_start_row15, align 4
  %conv16 = zext i32 %19 to i64
  %20 = load i64, ptr %i, align 8
  %add = add nsw i64 %conv16, %20
  store i64 %add, ptr %thisrow, align 8
  %21 = load i64, ptr %rows, align 8
  %22 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %first_undef_row, align 8
  %conv17 = zext i32 %23 to i64
  %24 = load i64, ptr %thisrow, align 8
  %sub18 = sub nsw i64 %conv17, %24
  %cmp19 = icmp slt i64 %21, %sub18
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %25 = load i64, ptr %rows, align 8
  br label %cond.end26

cond.false22:                                     ; preds = %cond.end
  %26 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_barray_control, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %first_undef_row23, align 8
  %conv24 = zext i32 %27 to i64
  %28 = load i64, ptr %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %28
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false22, %cond.true21
  %cond27 = phi i64 [ %25, %cond.true21 ], [ %sub25, %cond.false22 ]
  store i64 %cond27, ptr %rows, align 8
  %29 = load i64, ptr %rows, align 8
  %30 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %rows_in_array, align 8
  %conv28 = zext i32 %31 to i64
  %32 = load i64, ptr %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %32
  %cmp30 = icmp slt i64 %29, %sub29
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end26
  %33 = load i64, ptr %rows, align 8
  br label %cond.end37

cond.false33:                                     ; preds = %cond.end26
  %34 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_barray_control, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %rows_in_array34, align 8
  %conv35 = zext i32 %35 to i64
  %36 = load i64, ptr %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %36
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %cond.true32
  %cond38 = phi i64 [ %33, %cond.true32 ], [ %sub36, %cond.false33 ]
  store i64 %cond38, ptr %rows, align 8
  %37 = load i64, ptr %rows, align 8
  %cmp39 = icmp sle i64 %37, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end37
  br label %for.end

if.end:                                           ; preds = %cond.end37
  %38 = load i64, ptr %rows, align 8
  %39 = load i64, ptr %bytesperrow, align 8
  %mul41 = mul nsw i64 %38, %39
  store i64 %mul41, ptr %byte_count, align 8
  %40 = load i32, ptr %writing.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end
  %41 = load ptr, ptr %ptr.addr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_barray_control, ptr %41, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info, i32 0, i32 1
  %42 = load ptr, ptr %write_backing_store, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load ptr, ptr %ptr.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_barray_control, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %mem_buffer, align 8
  %47 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %46, i64 %47
  %48 = load ptr, ptr %arrayidx, align 8
  %49 = load i64, ptr %file_offset, align 8
  %50 = load i64, ptr %byte_count, align 8
  call void %42(ptr noundef %43, ptr noundef %b_s_info43, ptr noundef %48, i64 noundef %49, i64 noundef %50)
  br label %if.end48

if.else:                                          ; preds = %if.end
  %51 = load ptr, ptr %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_barray_control, ptr %51, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %b_s_info44, i32 0, i32 0
  %52 = load ptr, ptr %read_backing_store, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %ptr.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_barray_control, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %ptr.addr, align 8
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_barray_control, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %mem_buffer46, align 8
  %57 = load i64, ptr %i, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %56, i64 %57
  %58 = load ptr, ptr %arrayidx47, align 8
  %59 = load i64, ptr %file_offset, align 8
  %60 = load i64, ptr %byte_count, align 8
  call void %52(ptr noundef %53, ptr noundef %b_s_info45, ptr noundef %58, i64 noundef %59, i64 noundef %60)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %61 = load i64, ptr %byte_count, align 8
  %62 = load i64, ptr %file_offset, align 8
  %add49 = add nsw i64 %62, %61
  store i64 %add49, ptr %file_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %63 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_barray_control, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %rowsperchunk50, align 8
  %conv51 = zext i32 %64 to i64
  %65 = load i64, ptr %i, align 8
  %add52 = add nsw i64 %65, %conv51
  store i64 %add52, ptr %i, align 8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @jpeg_free_large(ptr noundef, ptr noundef, i64 noundef) #1

declare void @jpeg_free_small(ptr noundef, ptr noundef, i64 noundef) #1

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
