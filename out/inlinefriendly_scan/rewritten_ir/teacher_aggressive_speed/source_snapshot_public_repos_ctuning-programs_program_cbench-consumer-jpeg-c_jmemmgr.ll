; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jmemmgr.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jmemmgr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
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

; Function Attrs: nounwind ssp uwtable
define void @jinit_memory_mgr(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %max_to_use = alloca i64, align 8
  %pool = alloca i32, align 4
  %memenv = alloca ptr, align 8
  %ch = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  store ptr null, ptr %mem1, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %call = call i64 @jpeg_mem_init(ptr noundef %0) #3
  store i64 %call, ptr %max_to_use, align 8
  %call3 = call ptr @jpeg_get_small(ptr noundef %0, i64 noundef 160) #3
  store ptr %call3, ptr %mem, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_mem_term(ptr noundef %1) #3
  %2 = load ptr, ptr %1, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 53, ptr %msg_code7, align 8
  %3 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 0, ptr %msg_parm, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %4) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %entry
  %7 = load ptr, ptr %mem, align 8
  store ptr @alloc_small, ptr %7, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i64 0, i32 1
  store ptr @alloc_large, ptr %alloc_large, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i64 0, i32 2
  store ptr @alloc_sarray, ptr %alloc_sarray, align 8
  %alloc_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i64 0, i32 3
  store ptr @alloc_barray, ptr %alloc_barray, align 8
  %8 = load ptr, ptr %mem, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i64 0, i32 4
  store ptr @request_virt_sarray, ptr %request_virt_sarray, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i64 0, i32 5
  store ptr @request_virt_barray, ptr %request_virt_barray, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i64 0, i32 6
  store ptr @realize_virt_arrays, ptr %realize_virt_arrays, align 8
  %9 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i64 0, i32 7
  store ptr @access_virt_sarray, ptr %access_virt_sarray, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i64 0, i32 8
  store ptr @access_virt_barray, ptr %access_virt_barray, align 8
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i64 0, i32 9
  store ptr @free_pool, ptr %free_pool, align 8
  %10 = load ptr, ptr %mem, align 8
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 10
  store ptr @self_destruct, ptr %self_destruct, align 8
  %11 = load i64, ptr %max_to_use, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 11
  store i64 %11, ptr %max_memory_to_use, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end11
  %storemerge = phi i32 [ 1, %if.end11 ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %pool, align 4
  %cmp23 = icmp sgt i32 %storemerge, -1
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %mem, align 8
  %13 = load i32, ptr %pool, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds %struct.my_memory_mgr, ptr %12, i64 0, i32 1, i64 %idxprom
  store ptr null, ptr %arrayidx24, align 8
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds %struct.my_memory_mgr, ptr %12, i64 0, i32 2, i64 %idxprom25
  store ptr null, ptr %arrayidx26, align 8
  %14 = load i32, ptr %pool, align 4
  %dec = add nsw i32 %14, -1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %15, i64 0, i32 3
  store ptr null, ptr %virt_sarray_list, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %15, i64 0, i32 4
  store ptr null, ptr %virt_barray_list, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %15, i64 0, i32 5
  store i64 160, ptr %total_space_allocated, align 8
  %16 = load ptr, ptr %mem, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem28 = getelementptr inbounds %struct.jpeg_common_struct, ptr %17, i64 0, i32 1
  store ptr %16, ptr %mem28, align 8
  %call29 = call ptr @getenv(ptr noundef nonnull @.str) #3
  store ptr %call29, ptr %memenv, align 8
  %cmp30.not = icmp eq ptr %call29, null
  br i1 %cmp30.not, label %if.end46, label %if.then31

if.then31:                                        ; preds = %for.end
  store i8 120, ptr %ch, align 1
  %18 = load ptr, ptr %memenv, align 8
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull %max_to_use, ptr noundef nonnull %ch) #3
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.then31
  %19 = load i8, ptr %ch, align 1
  %cmp35 = icmp eq i8 %19, 109
  %20 = load i8, ptr %ch, align 1
  %cmp38 = icmp eq i8 %20, 77
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp38
  br i1 %or.cond, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then34
  %21 = load i64, ptr %max_to_use, align 8
  %mul = mul nsw i64 %21, 1000
  store i64 %mul, ptr %max_to_use, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.then40
  %22 = load i64, ptr %max_to_use, align 8
  %mul42 = mul nsw i64 %22, 1000
  %23 = load ptr, ptr %mem, align 8
  %max_memory_to_use44 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %23, i64 0, i32 11
  store i64 %mul42, ptr %max_memory_to_use44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then31, %if.end41, %for.end
  ret void
}

declare i64 @jpeg_mem_init(ptr noundef) #1

declare ptr @jpeg_get_small(ptr noundef, i64 noundef) #1

declare void @jpeg_mem_term(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @alloc_small(ptr noundef %cinfo, i32 noundef %pool_id, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr.i1 = alloca ptr, align 8
  %cinfo.addr.i = alloca ptr, align 8
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
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %cmp = icmp ugt i64 %sizeofobject, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  store ptr %1, ptr %cinfo.addr.i, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 53, ptr %msg_code.i, align 8
  %3 = load ptr, ptr %1, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 1, ptr %msg_parm.i, align 4
  %4 = load ptr, ptr %cinfo.addr.i, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %sizeofobject.addr, align 8
  %rem = and i64 %7, 7
  store i64 %rem, ptr %odd_bytes, align 8
  %cmp2.not = icmp eq i64 %rem, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load i64, ptr %odd_bytes, align 8
  %sub = sub i64 8, %8
  %9 = load i64, ptr %sizeofobject.addr, align 8
  %add = add i64 %9, %sub
  store i64 %add, ptr %sizeofobject.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %10, 0
  %11 = load i32, ptr %pool_id.addr, align 4
  %cmp6 = icmp sgt i32 %11, 1
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %14 = load i32, ptr %pool_id.addr, align 4
  %15 = load ptr, ptr %12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %14, ptr %msg_parm, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull %16) #3
  br label %if.end10

if.end10:                                         ; preds = %if.end4, %if.then7
  store ptr null, ptr %prev_hdr_ptr, align 8
  %19 = load ptr, ptr %mem, align 8
  %20 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds %struct.my_memory_mgr, ptr %19, i64 0, i32 1, i64 %idxprom
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end10
  %storemerge.in = phi ptr [ %arrayidx11, %if.end10 ], [ %24, %if.end15 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %hdr_ptr, align 8
  %cmp12.not = icmp eq ptr %storemerge, null
  br i1 %cmp12.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left = getelementptr inbounds %struct.anon, ptr %21, i64 0, i32 2
  %22 = load i64, ptr %bytes_left, align 8
  %23 = load i64, ptr %sizeofobject.addr, align 8
  %cmp13.not = icmp ult i64 %22, %23
  br i1 %cmp13.not, label %if.end15, label %while.end

if.end15:                                         ; preds = %while.body
  %24 = load ptr, ptr %hdr_ptr, align 8
  store ptr %24, ptr %prev_hdr_ptr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.body, %while.cond
  %25 = load ptr, ptr %hdr_ptr, align 8
  %cmp16 = icmp eq ptr %25, null
  br i1 %cmp16, label %if.then17, label %if.end51

if.then17:                                        ; preds = %while.end
  %26 = load i64, ptr %sizeofobject.addr, align 8
  %add18 = add i64 %26, 24
  store i64 %add18, ptr %min_request, align 8
  %27 = load ptr, ptr %prev_hdr_ptr, align 8
  %cmp19 = icmp eq ptr %27, null
  %28 = load i32, ptr %pool_id.addr, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [2 x i64], ptr @extra_pool_slop, i64 0, i64 %idxprom23
  %29 = load i32, ptr %pool_id.addr, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr @first_pool_slop, i64 0, i64 %idxprom21
  %storemerge5.in = select i1 %cmp19, ptr %arrayidx22, ptr %arrayidx24
  %storemerge5 = load i64, ptr %storemerge5.in, align 8
  store i64 %storemerge5, ptr %slop, align 8
  %30 = load i64, ptr %min_request, align 8
  %sub26 = sub i64 1000000000, %30
  %cmp27 = icmp ugt i64 %storemerge5, %sub26
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then17
  %31 = load i64, ptr %min_request, align 8
  %sub29 = sub i64 1000000000, %31
  store i64 %sub29, ptr %slop, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then17
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %if.end30
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load i64, ptr %min_request, align 8
  %34 = load i64, ptr %slop, align 8
  %add31 = add i64 %33, %34
  %call = call ptr @jpeg_get_small(ptr noundef %32, i64 noundef %add31) #3
  store ptr %call, ptr %hdr_ptr, align 8
  %cmp32.not = icmp eq ptr %call, null
  br i1 %cmp32.not, label %if.end34, label %for.end

if.end34:                                         ; preds = %for.cond
  %35 = load i64, ptr %slop, align 8
  %div6 = lshr i64 %35, 1
  store i64 %div6, ptr %slop, align 8
  %cmp35 = icmp ult i64 %35, 100
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  store ptr %36, ptr %cinfo.addr.i1, align 8
  %37 = load ptr, ptr %36, align 8
  %msg_code.i3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 53, ptr %msg_code.i3, align 8
  %38 = load ptr, ptr %36, align 8
  %msg_parm.i4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 6
  store i32 2, ptr %msg_parm.i4, align 4
  %39 = load ptr, ptr %cinfo.addr.i1, align 8
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull %39) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i64, ptr %min_request, align 8
  %43 = load i64, ptr %slop, align 8
  %add38 = add i64 %42, %43
  %44 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %44, i64 0, i32 5
  %45 = load i64, ptr %total_space_allocated, align 8
  %add39 = add i64 %45, %add38
  store i64 %add39, ptr %total_space_allocated, align 8
  %46 = load ptr, ptr %hdr_ptr, align 8
  store ptr null, ptr %46, align 8
  %bytes_used = getelementptr inbounds %struct.anon, ptr %46, i64 0, i32 1
  store i64 0, ptr %bytes_used, align 8
  %47 = load i64, ptr %sizeofobject.addr, align 8
  %48 = load i64, ptr %slop, align 8
  %add41 = add i64 %47, %48
  %49 = load ptr, ptr %hdr_ptr, align 8
  %bytes_left42 = getelementptr inbounds %struct.anon, ptr %49, i64 0, i32 2
  store i64 %add41, ptr %bytes_left42, align 8
  %50 = load ptr, ptr %prev_hdr_ptr, align 8
  %cmp43 = icmp eq ptr %50, null
  br i1 %cmp43, label %if.then44, label %if.else48

if.then44:                                        ; preds = %for.end
  %51 = load ptr, ptr %hdr_ptr, align 8
  %52 = load ptr, ptr %mem, align 8
  %53 = load i32, ptr %pool_id.addr, align 4
  %idxprom46 = sext i32 %53 to i64
  %arrayidx47 = getelementptr inbounds %struct.my_memory_mgr, ptr %52, i64 0, i32 1, i64 %idxprom46
  store ptr %51, ptr %arrayidx47, align 8
  br label %if.end51

if.else48:                                        ; preds = %for.end
  %54 = load ptr, ptr %hdr_ptr, align 8
  %55 = load ptr, ptr %prev_hdr_ptr, align 8
  store ptr %54, ptr %55, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.else48, %while.end
  %56 = load ptr, ptr %hdr_ptr, align 8
  %add.ptr = getelementptr inbounds %union.small_pool_struct, ptr %56, i64 1
  store ptr %add.ptr, ptr %data_ptr, align 8
  %bytes_used52 = getelementptr inbounds %struct.anon, ptr %56, i64 0, i32 1
  %57 = load i64, ptr %bytes_used52, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr, i64 %57
  store ptr %add.ptr53, ptr %data_ptr, align 8
  %58 = load i64, ptr %sizeofobject.addr, align 8
  %59 = load ptr, ptr %hdr_ptr, align 8
  %bytes_used54 = getelementptr inbounds %struct.anon, ptr %59, i64 0, i32 1
  %60 = load i64, ptr %bytes_used54, align 8
  %add55 = add i64 %60, %58
  store i64 %add55, ptr %bytes_used54, align 8
  %bytes_left56 = getelementptr inbounds %struct.anon, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %bytes_left56, align 8
  %sub57 = sub i64 %61, %58
  store i64 %sub57, ptr %bytes_left56, align 8
  %62 = load ptr, ptr %data_ptr, align 8
  ret ptr %62
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @alloc_large(ptr noundef %cinfo, i32 noundef %pool_id, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr.i1 = alloca ptr, align 8
  %cinfo.addr.i = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  %hdr_ptr = alloca ptr, align 8
  %odd_bytes = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %cmp = icmp ugt i64 %sizeofobject, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  store ptr %1, ptr %cinfo.addr.i, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 53, ptr %msg_code.i, align 8
  %3 = load ptr, ptr %1, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 3, ptr %msg_parm.i, align 4
  %4 = load ptr, ptr %cinfo.addr.i, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %sizeofobject.addr, align 8
  %rem = and i64 %7, 7
  store i64 %rem, ptr %odd_bytes, align 8
  %cmp2.not = icmp eq i64 %rem, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load i64, ptr %odd_bytes, align 8
  %sub = sub i64 8, %8
  %9 = load i64, ptr %sizeofobject.addr, align 8
  %add = add i64 %9, %sub
  store i64 %add, ptr %sizeofobject.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %10, 0
  %11 = load i32, ptr %pool_id.addr, align 4
  %cmp6 = icmp sgt i32 %11, 1
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %14 = load i32, ptr %pool_id.addr, align 4
  %15 = load ptr, ptr %12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %14, ptr %msg_parm, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull %16) #3
  br label %if.end10

if.end10:                                         ; preds = %if.end4, %if.then7
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i64, ptr %sizeofobject.addr, align 8
  %add11 = add i64 %20, 24
  %call = call ptr @jpeg_get_large(ptr noundef %19, i64 noundef %add11) #3
  store ptr %call, ptr %hdr_ptr, align 8
  %cmp12 = icmp eq ptr %call, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  store ptr %21, ptr %cinfo.addr.i1, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code.i3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 53, ptr %msg_code.i3, align 8
  %23 = load ptr, ptr %21, align 8
  %msg_parm.i4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 4, ptr %msg_parm.i4, align 4
  %24 = load ptr, ptr %cinfo.addr.i1, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull %24) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %27 = load i64, ptr %sizeofobject.addr, align 8
  %add15 = add i64 %27, 24
  %28 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i64 0, i32 5
  %29 = load i64, ptr %total_space_allocated, align 8
  %add16 = add i64 %29, %add15
  store i64 %add16, ptr %total_space_allocated, align 8
  %30 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i64 0, i32 2, i64 %idxprom
  %31 = load ptr, ptr %arrayidx17, align 8
  %32 = load ptr, ptr %hdr_ptr, align 8
  store ptr %31, ptr %32, align 8
  %33 = load i64, ptr %sizeofobject.addr, align 8
  %bytes_used = getelementptr inbounds %struct.anon.0, ptr %32, i64 0, i32 1
  store i64 %33, ptr %bytes_used, align 8
  %bytes_left = getelementptr inbounds %struct.anon.0, ptr %32, i64 0, i32 2
  store i64 0, ptr %bytes_left, align 8
  %34 = load ptr, ptr %hdr_ptr, align 8
  %35 = load ptr, ptr %mem, align 8
  %36 = load i32, ptr %pool_id.addr, align 4
  %idxprom19 = sext i32 %36 to i64
  %arrayidx20 = getelementptr inbounds %struct.my_memory_mgr, ptr %35, i64 0, i32 2, i64 %idxprom19
  store ptr %34, ptr %arrayidx20, align 8
  %add.ptr = getelementptr inbounds %union.large_pool_struct, ptr %34, i64 1
  ret ptr %add.ptr
}

; Function Attrs: nounwind ssp uwtable
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
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %1 = udiv i32 999999976, %samplesperrow
  %div = zext i32 %1 to i64
  store i64 %div, ptr %ltemp, align 8
  %cmp = icmp ugt i32 %samplesperrow, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr noundef nonnull %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %ltemp, align 8
  %7 = load i32, ptr %numrows.addr, align 4
  %conv4 = zext i32 %7 to i64
  %cmp5 = icmp slt i64 %6, %conv4
  %8 = load i32, ptr %numrows.addr, align 4
  %9 = load i64, ptr %ltemp, align 8
  %conv8 = trunc i64 %9 to i32
  %storemerge = select i1 %cmp5, i32 %conv8, i32 %8
  store i32 %storemerge, ptr %rowsperchunk, align 4
  %10 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %10, i64 0, i32 6
  store i32 %storemerge, ptr %last_rowsperchunk, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load i32, ptr %pool_id.addr, align 4
  %13 = load i32, ptr %numrows.addr, align 4
  %conv10 = zext i32 %13 to i64
  %mul11 = shl nuw nsw i64 %conv10, 3
  %call = call ptr @alloc_small(ptr noundef %11, i32 noundef %12, i64 noundef %mul11)
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.cond, %if.end
  %14 = load i32, ptr %currow, align 4
  %15 = load i32, ptr %numrows.addr, align 4
  %cmp12 = icmp ult i32 %14, %15
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %rowsperchunk, align 4
  %17 = load i32, ptr %numrows.addr, align 4
  %18 = load i32, ptr %currow, align 4
  %sub = sub i32 %17, %18
  %cmp14 = icmp ult i32 %16, %sub
  %19 = load i32, ptr %rowsperchunk, align 4
  %20 = load i32, ptr %numrows.addr, align 4
  %21 = load i32, ptr %currow, align 4
  %sub16 = sub i32 %20, %21
  %cond = select i1 %cmp14, i32 %19, i32 %sub16
  store i32 %cond, ptr %rowsperchunk, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load i32, ptr %pool_id.addr, align 4
  %conv17 = zext i32 %cond to i64
  %24 = load i32, ptr %samplesperrow.addr, align 4
  %conv18 = zext i32 %24 to i64
  %mul19 = mul nuw i64 %conv17, %conv18
  %call21 = call ptr @alloc_large(ptr noundef %22, i32 noundef %23, i64 noundef %mul19)
  store ptr %call21, ptr %workspace, align 8
  %25 = load i32, ptr %rowsperchunk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge1 = phi i32 [ %25, %while.body ], [ %dec, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp22.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp22.not, label %while.cond, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %workspace, align 8
  %27 = load ptr, ptr %result, align 8
  %28 = load i32, ptr %currow, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %currow, align 4
  %idxprom = zext i32 %28 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %27, i64 %idxprom
  store ptr %26, ptr %arrayidx, align 8
  %29 = load i32, ptr %samplesperrow.addr, align 4
  %30 = load ptr, ptr %workspace, align 8
  %idx.ext = zext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext
  store ptr %add.ptr, ptr %workspace, align 8
  %31 = load i32, ptr %i, align 4
  %dec = add i32 %31, -1
  br label %for.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %result, align 8
  ret ptr %32
}

; Function Attrs: nounwind ssp uwtable
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
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %conv = zext i32 %blocksperrow to i64
  %mul = shl nuw nsw i64 %conv, 7
  %div = udiv i64 999999976, %mul
  store i64 %div, ptr %ltemp, align 8
  %cmp = icmp ugt i32 %blocksperrow, 7812499
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %ltemp, align 8
  %6 = load i32, ptr %numrows.addr, align 4
  %conv4 = zext i32 %6 to i64
  %cmp5 = icmp slt i64 %5, %conv4
  %7 = load i32, ptr %numrows.addr, align 4
  %8 = load i64, ptr %ltemp, align 8
  %conv8 = trunc i64 %8 to i32
  %storemerge = select i1 %cmp5, i32 %conv8, i32 %7
  store i32 %storemerge, ptr %rowsperchunk, align 4
  %9 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %9, i64 0, i32 6
  store i32 %storemerge, ptr %last_rowsperchunk, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i32, ptr %pool_id.addr, align 4
  %12 = load i32, ptr %numrows.addr, align 4
  %conv10 = zext i32 %12 to i64
  %mul11 = shl nuw nsw i64 %conv10, 3
  %call = call ptr @alloc_small(ptr noundef %10, i32 noundef %11, i64 noundef %mul11)
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.cond, %if.end
  %13 = load i32, ptr %currow, align 4
  %14 = load i32, ptr %numrows.addr, align 4
  %cmp12 = icmp ult i32 %13, %14
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, ptr %rowsperchunk, align 4
  %16 = load i32, ptr %numrows.addr, align 4
  %17 = load i32, ptr %currow, align 4
  %sub = sub i32 %16, %17
  %cmp14 = icmp ult i32 %15, %sub
  %18 = load i32, ptr %rowsperchunk, align 4
  %19 = load i32, ptr %numrows.addr, align 4
  %20 = load i32, ptr %currow, align 4
  %sub16 = sub i32 %19, %20
  %cond = select i1 %cmp14, i32 %18, i32 %sub16
  store i32 %cond, ptr %rowsperchunk, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load i32, ptr %pool_id.addr, align 4
  %conv17 = zext i32 %cond to i64
  %23 = load i32, ptr %blocksperrow.addr, align 4
  %conv18 = zext i32 %23 to i64
  %mul19 = mul nuw i64 %conv17, %conv18
  %mul20 = shl i64 %mul19, 7
  %call21 = call ptr @alloc_large(ptr noundef %21, i32 noundef %22, i64 noundef %mul20)
  store ptr %call21, ptr %workspace, align 8
  %24 = load i32, ptr %rowsperchunk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge1 = phi i32 [ %24, %while.body ], [ %dec, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp22.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp22.not, label %while.cond, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %workspace, align 8
  %26 = load ptr, ptr %result, align 8
  %27 = load i32, ptr %currow, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %currow, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  store ptr %25, ptr %arrayidx, align 8
  %28 = load i32, ptr %blocksperrow.addr, align 4
  %29 = load ptr, ptr %workspace, align 8
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %29, i64 %idx.ext
  store ptr %add.ptr, ptr %workspace, align 8
  %30 = load i32, ptr %i, align 4
  %dec = add i32 %30, -1
  br label %for.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %result, align 8
  ret ptr %31
}

; Function Attrs: nounwind ssp uwtable
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
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %1 = load i32, ptr %pool_id.addr, align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %4 = load i32, ptr %pool_id.addr, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %pool_id.addr, align 4
  %call = call ptr @alloc_small(ptr noundef %9, i32 noundef %10, i64 noundef 152)
  store ptr %call, ptr %result, align 8
  store ptr null, ptr %call, align 8
  %11 = load i32, ptr %numrows.addr, align 4
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %call, i64 0, i32 1
  store i32 %11, ptr %rows_in_array, align 8
  %12 = load i32, ptr %samplesperrow.addr, align 4
  %samplesperrow4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %call, i64 0, i32 2
  store i32 %12, ptr %samplesperrow4, align 4
  %13 = load i32, ptr %maxaccess.addr, align 4
  %14 = load ptr, ptr %result, align 8
  %maxaccess5 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i64 0, i32 3
  store i32 %13, ptr %maxaccess5, align 8
  %15 = load i32, ptr %pre_zero.addr, align 4
  %pre_zero6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i64 0, i32 8
  store i32 %15, ptr %pre_zero6, align 4
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i64 0, i32 10
  store i32 0, ptr %b_s_open, align 4
  %16 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %virt_sarray_list, align 8
  %18 = load ptr, ptr %result, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %18, i64 0, i32 11
  store ptr %17, ptr %next, align 8
  %virt_sarray_list7 = getelementptr inbounds %struct.my_memory_mgr, ptr %16, i64 0, i32 3
  store ptr %18, ptr %virt_sarray_list7, align 8
  ret ptr %18
}

; Function Attrs: nounwind ssp uwtable
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
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %1 = load i32, ptr %pool_id.addr, align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %4 = load i32, ptr %pool_id.addr, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %pool_id.addr, align 4
  %call = call ptr @alloc_small(ptr noundef %9, i32 noundef %10, i64 noundef 152)
  store ptr %call, ptr %result, align 8
  store ptr null, ptr %call, align 8
  %11 = load i32, ptr %numrows.addr, align 4
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %call, i64 0, i32 1
  store i32 %11, ptr %rows_in_array, align 8
  %12 = load i32, ptr %blocksperrow.addr, align 4
  %blocksperrow4 = getelementptr inbounds %struct.jvirt_barray_control, ptr %call, i64 0, i32 2
  store i32 %12, ptr %blocksperrow4, align 4
  %13 = load i32, ptr %maxaccess.addr, align 4
  %14 = load ptr, ptr %result, align 8
  %maxaccess5 = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 3
  store i32 %13, ptr %maxaccess5, align 8
  %15 = load i32, ptr %pre_zero.addr, align 4
  %pre_zero6 = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 8
  store i32 %15, ptr %pre_zero6, align 4
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 10
  store i32 0, ptr %b_s_open, align 4
  %16 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %virt_barray_list, align 8
  %18 = load ptr, ptr %result, align 8
  %next = getelementptr inbounds %struct.jvirt_barray_control, ptr %18, i64 0, i32 11
  store ptr %17, ptr %next, align 8
  %virt_barray_list7 = getelementptr inbounds %struct.my_memory_mgr, ptr %16, i64 0, i32 4
  store ptr %18, ptr %virt_barray_list7, align 8
  ret ptr %18
}

; Function Attrs: nounwind ssp uwtable
define internal void @realize_virt_arrays(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %space_per_minheight = alloca i64, align 8
  %maximum_space = alloca i64, align 8
  %avail_mem = alloca i64, align 8
  %max_minheights = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %bptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  store i64 0, ptr %space_per_minheight, align 8
  store i64 0, ptr %maximum_space, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %0, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge.in = phi ptr [ %virt_sarray_list, %entry ], [ %next, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %sptr, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %sptr, align 8
  %2 = load ptr, ptr %1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %sptr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %maxaccess, align 8
  %conv = zext i32 %4 to i64
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %samplesperrow, align 4
  %conv3 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv, %conv3
  %6 = load i64, ptr %space_per_minheight, align 8
  %add = add i64 %6, %mul
  store i64 %add, ptr %space_per_minheight, align 8
  %7 = load ptr, ptr %sptr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %rows_in_array, align 8
  %conv5 = zext i32 %8 to i64
  %samplesperrow6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %samplesperrow6, align 4
  %conv7 = zext i32 %9 to i64
  %mul8 = mul nuw nsw i64 %conv5, %conv7
  %10 = load i64, ptr %maximum_space, align 8
  %add10 = add i64 %10, %mul8
  store i64 %add10, ptr %maximum_space, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %11 = load ptr, ptr %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %11, i64 0, i32 11
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %12, i64 0, i32 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc33, %for.end
  %storemerge1.in = phi ptr [ %virt_barray_list, %for.end ], [ %next34, %for.inc33 ]
  %storemerge1 = load ptr, ptr %storemerge1.in, align 8
  store ptr %storemerge1, ptr %bptr, align 8
  %cmp12.not = icmp eq ptr %storemerge1, null
  br i1 %cmp12.not, label %for.end35, label %for.body14

for.body14:                                       ; preds = %for.cond11
  %13 = load ptr, ptr %bptr, align 8
  %14 = load ptr, ptr %13, align 8
  %cmp16 = icmp eq ptr %14, null
  br i1 %cmp16, label %if.then18, label %for.inc33

if.then18:                                        ; preds = %for.body14
  %15 = load ptr, ptr %bptr, align 8
  %maxaccess19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %maxaccess19, align 8
  %conv20 = zext i32 %16 to i64
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %blocksperrow, align 4
  %conv21 = zext i32 %17 to i64
  %mul22 = mul nuw nsw i64 %conv20, %conv21
  %mul23 = shl i64 %mul22, 7
  %18 = load i64, ptr %space_per_minheight, align 8
  %add24 = add i64 %18, %mul23
  store i64 %add24, ptr %space_per_minheight, align 8
  %19 = load ptr, ptr %bptr, align 8
  %rows_in_array25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %rows_in_array25, align 8
  %conv26 = zext i32 %20 to i64
  %blocksperrow27 = getelementptr inbounds %struct.jvirt_barray_control, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %blocksperrow27, align 4
  %conv28 = zext i32 %21 to i64
  %mul29 = mul nuw nsw i64 %conv26, %conv28
  %mul30 = shl i64 %mul29, 7
  %22 = load i64, ptr %maximum_space, align 8
  %add31 = add i64 %22, %mul30
  store i64 %add31, ptr %maximum_space, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %for.body14, %if.then18
  %23 = load ptr, ptr %bptr, align 8
  %next34 = getelementptr inbounds %struct.jvirt_barray_control, ptr %23, i64 0, i32 11
  br label %for.cond11, !llvm.loop !14

for.end35:                                        ; preds = %for.cond11
  %24 = load i64, ptr %space_per_minheight, align 8
  %cmp36 = icmp slt i64 %24, 1
  br i1 %cmp36, label %for.end136, label %if.end39

if.end39:                                         ; preds = %for.end35
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load i64, ptr %space_per_minheight, align 8
  %27 = load i64, ptr %maximum_space, align 8
  %28 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %28, i64 0, i32 5
  %29 = load i64, ptr %total_space_allocated, align 8
  %call = call i64 @jpeg_mem_available(ptr noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %29) #3
  store i64 %call, ptr %avail_mem, align 8
  %cmp40.not = icmp slt i64 %call, %27
  br i1 %cmp40.not, label %if.else, label %if.end47

if.else:                                          ; preds = %if.end39
  %30 = load i64, ptr %avail_mem, align 8
  %31 = load i64, ptr %space_per_minheight, align 8
  %div = sdiv i64 %30, %31
  %cmp43 = icmp slt i64 %div, 1
  %spec.select = select i1 %cmp43, i64 1, i64 %div
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %if.else
  %storemerge5 = phi i64 [ %spec.select, %if.else ], [ 1000000000, %if.end39 ]
  store i64 %storemerge5, ptr %max_minheights, align 8
  %32 = load ptr, ptr %mem, align 8
  %virt_sarray_list48 = getelementptr inbounds %struct.my_memory_mgr, ptr %32, i64 0, i32 3
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc85, %if.end47
  %storemerge2.in = phi ptr [ %virt_sarray_list48, %if.end47 ], [ %next86, %for.inc85 ]
  %storemerge2 = load ptr, ptr %storemerge2.in, align 8
  store ptr %storemerge2, ptr %sptr, align 8
  %cmp50.not = icmp eq ptr %storemerge2, null
  br i1 %cmp50.not, label %for.end87, label %for.body52

for.body52:                                       ; preds = %for.cond49
  %33 = load ptr, ptr %sptr, align 8
  %34 = load ptr, ptr %33, align 8
  %cmp54 = icmp eq ptr %34, null
  br i1 %cmp54, label %if.then56, label %for.inc85

if.then56:                                        ; preds = %for.body52
  %35 = load ptr, ptr %sptr, align 8
  %rows_in_array57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %35, i64 0, i32 1
  %36 = load i32, ptr %rows_in_array57, align 8
  %conv58 = zext i32 %36 to i64
  %sub = add nsw i64 %conv58, -1
  %maxaccess59 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %maxaccess59, align 8
  %conv60 = zext i32 %37 to i64
  %div61 = sdiv i64 %sub, %conv60
  %38 = load i64, ptr %max_minheights, align 8
  %cmp63.not.not = icmp slt i64 %div61, %38
  br i1 %cmp63.not.not, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.then56
  %39 = load ptr, ptr %sptr, align 8
  %rows_in_array66 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %39, i64 0, i32 1
  %40 = load i32, ptr %rows_in_array66, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %39, i64 0, i32 4
  store i32 %40, ptr %rows_in_mem, align 4
  br label %if.end79

if.else67:                                        ; preds = %if.then56
  %41 = load i64, ptr %max_minheights, align 8
  %42 = load ptr, ptr %sptr, align 8
  %maxaccess68 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %42, i64 0, i32 3
  %43 = load i32, ptr %maxaccess68, align 8
  %44 = trunc i64 %41 to i32
  %conv71 = mul i32 %43, %44
  %rows_in_mem72 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %42, i64 0, i32 4
  store i32 %conv71, ptr %rows_in_mem72, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %sptr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, ptr %46, i64 0, i32 12
  %rows_in_array73 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %rows_in_array73, align 8
  %conv74 = zext i32 %47 to i64
  %samplesperrow75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %samplesperrow75, align 4
  %conv76 = zext i32 %48 to i64
  %mul77 = mul nuw nsw i64 %conv74, %conv76
  call void @jpeg_open_backing_store(ptr noundef %45, ptr noundef nonnull %b_s_info, i64 noundef %mul77) #3
  %49 = load ptr, ptr %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %49, i64 0, i32 10
  store i32 1, ptr %b_s_open, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else67, %if.then65
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %sptr, align 8
  %samplesperrow80 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %51, i64 0, i32 2
  %52 = load i32, ptr %samplesperrow80, align 4
  %rows_in_mem81 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %rows_in_mem81, align 4
  %call82 = call ptr @alloc_sarray(ptr noundef %50, i32 noundef 1, i32 noundef %52, i32 noundef %53)
  store ptr %call82, ptr %51, align 8
  %54 = load ptr, ptr %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, ptr %54, i64 0, i32 6
  %55 = load i32, ptr %last_rowsperchunk, align 8
  %56 = load ptr, ptr %sptr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, ptr %56, i64 0, i32 5
  store i32 %55, ptr %rowsperchunk, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %56, i64 0, i32 6
  store i32 0, ptr %cur_start_row, align 4
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %56, i64 0, i32 7
  store i32 0, ptr %first_undef_row, align 8
  %57 = load ptr, ptr %sptr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, ptr %57, i64 0, i32 9
  store i32 0, ptr %dirty, align 8
  br label %for.inc85

for.inc85:                                        ; preds = %for.body52, %if.end79
  %58 = load ptr, ptr %sptr, align 8
  %next86 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %58, i64 0, i32 11
  br label %for.cond49, !llvm.loop !15

for.end87:                                        ; preds = %for.cond49
  %59 = load ptr, ptr %mem, align 8
  %virt_barray_list88 = getelementptr inbounds %struct.my_memory_mgr, ptr %59, i64 0, i32 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc134, %for.end87
  %storemerge3.in = phi ptr [ %virt_barray_list88, %for.end87 ], [ %next135, %for.inc134 ]
  %storemerge3 = load ptr, ptr %storemerge3.in, align 8
  store ptr %storemerge3, ptr %bptr, align 8
  %cmp90.not = icmp eq ptr %storemerge3, null
  br i1 %cmp90.not, label %for.end136, label %for.body92

for.body92:                                       ; preds = %for.cond89
  %60 = load ptr, ptr %bptr, align 8
  %61 = load ptr, ptr %60, align 8
  %cmp94 = icmp eq ptr %61, null
  br i1 %cmp94, label %if.then96, label %for.inc134

if.then96:                                        ; preds = %for.body92
  %62 = load ptr, ptr %bptr, align 8
  %rows_in_array97 = getelementptr inbounds %struct.jvirt_barray_control, ptr %62, i64 0, i32 1
  %63 = load i32, ptr %rows_in_array97, align 8
  %conv98 = zext i32 %63 to i64
  %sub99 = add nsw i64 %conv98, -1
  %maxaccess100 = getelementptr inbounds %struct.jvirt_barray_control, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %maxaccess100, align 8
  %conv101 = zext i32 %64 to i64
  %div102 = sdiv i64 %sub99, %conv101
  %65 = load i64, ptr %max_minheights, align 8
  %cmp104.not.not = icmp slt i64 %div102, %65
  br i1 %cmp104.not.not, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then96
  %66 = load ptr, ptr %bptr, align 8
  %rows_in_array107 = getelementptr inbounds %struct.jvirt_barray_control, ptr %66, i64 0, i32 1
  %67 = load i32, ptr %rows_in_array107, align 8
  %rows_in_mem108 = getelementptr inbounds %struct.jvirt_barray_control, ptr %66, i64 0, i32 4
  store i32 %67, ptr %rows_in_mem108, align 4
  br label %if.end123

if.else109:                                       ; preds = %if.then96
  %68 = load i64, ptr %max_minheights, align 8
  %69 = load ptr, ptr %bptr, align 8
  %maxaccess110 = getelementptr inbounds %struct.jvirt_barray_control, ptr %69, i64 0, i32 3
  %70 = load i32, ptr %maxaccess110, align 8
  %71 = trunc i64 %68 to i32
  %conv113 = mul i32 %70, %71
  %rows_in_mem114 = getelementptr inbounds %struct.jvirt_barray_control, ptr %69, i64 0, i32 4
  store i32 %conv113, ptr %rows_in_mem114, align 4
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %bptr, align 8
  %b_s_info115 = getelementptr inbounds %struct.jvirt_barray_control, ptr %73, i64 0, i32 12
  %rows_in_array116 = getelementptr inbounds %struct.jvirt_barray_control, ptr %73, i64 0, i32 1
  %74 = load i32, ptr %rows_in_array116, align 8
  %conv117 = zext i32 %74 to i64
  %blocksperrow118 = getelementptr inbounds %struct.jvirt_barray_control, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %blocksperrow118, align 4
  %conv119 = zext i32 %75 to i64
  %mul120 = mul nuw nsw i64 %conv117, %conv119
  %mul121 = shl nsw i64 %mul120, 7
  call void @jpeg_open_backing_store(ptr noundef %72, ptr noundef nonnull %b_s_info115, i64 noundef %mul121) #3
  %76 = load ptr, ptr %bptr, align 8
  %b_s_open122 = getelementptr inbounds %struct.jvirt_barray_control, ptr %76, i64 0, i32 10
  store i32 1, ptr %b_s_open122, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else109, %if.then106
  %77 = load ptr, ptr %cinfo.addr, align 8
  %78 = load ptr, ptr %bptr, align 8
  %blocksperrow124 = getelementptr inbounds %struct.jvirt_barray_control, ptr %78, i64 0, i32 2
  %79 = load i32, ptr %blocksperrow124, align 4
  %rows_in_mem125 = getelementptr inbounds %struct.jvirt_barray_control, ptr %78, i64 0, i32 4
  %80 = load i32, ptr %rows_in_mem125, align 4
  %call126 = call ptr @alloc_barray(ptr noundef %77, i32 noundef 1, i32 noundef %79, i32 noundef %80)
  store ptr %call126, ptr %78, align 8
  %81 = load ptr, ptr %mem, align 8
  %last_rowsperchunk128 = getelementptr inbounds %struct.my_memory_mgr, ptr %81, i64 0, i32 6
  %82 = load i32, ptr %last_rowsperchunk128, align 8
  %83 = load ptr, ptr %bptr, align 8
  %rowsperchunk129 = getelementptr inbounds %struct.jvirt_barray_control, ptr %83, i64 0, i32 5
  store i32 %82, ptr %rowsperchunk129, align 8
  %cur_start_row130 = getelementptr inbounds %struct.jvirt_barray_control, ptr %83, i64 0, i32 6
  store i32 0, ptr %cur_start_row130, align 4
  %first_undef_row131 = getelementptr inbounds %struct.jvirt_barray_control, ptr %83, i64 0, i32 7
  store i32 0, ptr %first_undef_row131, align 8
  %84 = load ptr, ptr %bptr, align 8
  %dirty132 = getelementptr inbounds %struct.jvirt_barray_control, ptr %84, i64 0, i32 9
  store i32 0, ptr %dirty132, align 8
  br label %for.inc134

for.inc134:                                       ; preds = %for.body92, %if.end123
  %85 = load ptr, ptr %bptr, align 8
  %next135 = getelementptr inbounds %struct.jvirt_barray_control, ptr %85, i64 0, i32 11
  br label %for.cond89, !llvm.loop !16

for.end136:                                       ; preds = %for.end35, %for.cond89
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @access_virt_sarray(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %start_row, i32 noundef %num_rows, i32 noundef %writable) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %writable, ptr %writable.addr, align 4
  %add = add i32 %start_row, %num_rows
  store i32 %add, ptr %end_row, align 4
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %ptr, i64 0, i32 1
  %0 = load i32, ptr %rows_in_array, align 8
  %cmp = icmp ugt i32 %add, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %num_rows.addr, align 4
  %2 = load ptr, ptr %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %maxaccess, align 8
  %cmp1 = icmp ugt i32 %1, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 20, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %10 = load i32, ptr %start_row.addr, align 4
  %11 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %cur_start_row, align 4
  %cmp5 = icmp ult i32 %10, %12
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %13 = load i32, ptr %end_row, align 4
  %14 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %cur_start_row7, align 4
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %rows_in_mem, align 4
  %add8 = add i32 %15, %16
  %cmp9 = icmp ugt i32 %13, %add8
  br i1 %cmp9, label %if.then10, label %if.end34

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  %17 = load ptr, ptr %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  %18 = load i32, ptr %b_s_open, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then10
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 68, ptr %msg_code13, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then10
  %23 = load ptr, ptr %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, ptr %23, i64 0, i32 9
  %24 = load i32, ptr %dirty, align 8
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %ptr.addr, align 8
  call void @do_sarray_io(ptr noundef %25, ptr noundef %26, i32 noundef 1)
  %dirty19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %26, i64 0, i32 9
  store i32 0, ptr %dirty19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %27 = load i32, ptr %start_row.addr, align 4
  %28 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %28, i64 0, i32 6
  %29 = load i32, ptr %cur_start_row21, align 4
  %cmp22 = icmp ugt i32 %27, %29
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %30 = load i32, ptr %start_row.addr, align 4
  %31 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row24 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %31, i64 0, i32 6
  store i32 %30, ptr %cur_start_row24, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end20
  %32 = load i32, ptr %end_row, align 4
  %conv = zext i32 %32 to i64
  %33 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %33, i64 0, i32 4
  %34 = load i32, ptr %rows_in_mem25, align 4
  %conv26 = zext i32 %34 to i64
  %sub = sub nsw i64 %conv, %conv26
  %cmp27 = icmp slt i64 %sub, 0
  %spec.select = select i1 %cmp27, i64 0, i64 %sub
  %conv31 = trunc i64 %spec.select to i32
  %35 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row32 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %35, i64 0, i32 6
  store i32 %conv31, ptr %cur_start_row32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %ptr.addr, align 8
  call void @do_sarray_io(ptr noundef %36, ptr noundef %37, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false6
  %38 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %38, i64 0, i32 7
  %39 = load i32, ptr %first_undef_row, align 8
  %40 = load i32, ptr %end_row, align 4
  %cmp35 = icmp ult i32 %39, %40
  br i1 %cmp35, label %if.then37, label %if.end75

if.then37:                                        ; preds = %if.end34
  %41 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row38 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %41, i64 0, i32 7
  %42 = load i32, ptr %first_undef_row38, align 8
  %43 = load i32, ptr %start_row.addr, align 4
  %cmp39 = icmp ult i32 %42, %43
  br i1 %cmp39, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.then37
  %44 = load i32, ptr %writable.addr, align 4
  %tobool42.not = icmp eq i32 %44, 0
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.then41
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %msg_code45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 20, ptr %msg_code45, align 8
  %47 = load ptr, ptr %45, align 8
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull %45) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then41
  %49 = load i32, ptr %start_row.addr, align 4
  br label %if.end51

if.else49:                                        ; preds = %if.then37
  %50 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row50 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %50, i64 0, i32 7
  %51 = load i32, ptr %first_undef_row50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.end48
  %storemerge = phi i32 [ %51, %if.else49 ], [ %49, %if.end48 ]
  store i32 %storemerge, ptr %undef_row, align 4
  %52 = load i32, ptr %writable.addr, align 4
  %tobool52.not = icmp eq i32 %52, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end51
  %53 = load i32, ptr %end_row, align 4
  %54 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row54 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %54, i64 0, i32 7
  store i32 %53, ptr %first_undef_row54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %55 = load ptr, ptr %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_sarray_control, ptr %55, i64 0, i32 8
  %56 = load i32, ptr %pre_zero, align 4
  %tobool56.not = icmp eq i32 %56, 0
  br i1 %tobool56.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.end55
  %57 = load ptr, ptr %ptr.addr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %57, i64 0, i32 2
  %58 = load i32, ptr %samplesperrow, align 4
  %conv58 = zext i32 %58 to i64
  store i64 %conv58, ptr %bytesperrow, align 8
  %cur_start_row59 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %57, i64 0, i32 6
  %59 = load i32, ptr %cur_start_row59, align 4
  %60 = load i32, ptr %undef_row, align 4
  %sub60 = sub i32 %60, %59
  store i32 %sub60, ptr %undef_row, align 4
  %61 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row61 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %61, i64 0, i32 6
  %62 = load i32, ptr %cur_start_row61, align 4
  %63 = load i32, ptr %end_row, align 4
  %sub62 = sub i32 %63, %62
  store i32 %sub62, ptr %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %64 = load i32, ptr %undef_row, align 4
  %65 = load i32, ptr %end_row, align 4
  %cmp63 = icmp ult i32 %64, %65
  br i1 %cmp63, label %while.body, label %if.end75

while.body:                                       ; preds = %while.cond
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %68 = load i32, ptr %undef_row, align 4
  %idxprom = zext i32 %68 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %67, i64 %idxprom
  %69 = load ptr, ptr %arrayidx, align 8
  %70 = load i64, ptr %bytesperrow, align 8
  call void @jzero_far(ptr noundef %69, i64 noundef %70) #3
  %inc = add i32 %68, 1
  store i32 %inc, ptr %undef_row, align 4
  br label %while.cond, !llvm.loop !17

if.else66:                                        ; preds = %if.end55
  %71 = load i32, ptr %writable.addr, align 4
  %tobool67.not = icmp eq i32 %71, 0
  br i1 %tobool67.not, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.else66
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 20, ptr %msg_code70, align 8
  %74 = load ptr, ptr %72, align 8
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull %72) #3
  br label %if.end75

if.end75:                                         ; preds = %while.cond, %if.then68, %if.else66, %if.end34
  %76 = load i32, ptr %writable.addr, align 4
  %tobool76.not = icmp eq i32 %76, 0
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end75
  %77 = load ptr, ptr %ptr.addr, align 8
  %dirty78 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %77, i64 0, i32 9
  store i32 1, ptr %dirty78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  %78 = load ptr, ptr %ptr.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %80 = load i32, ptr %start_row.addr, align 4
  %cur_start_row81 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %cur_start_row81, align 4
  %sub82 = sub i32 %80, %81
  %idx.ext = zext i32 %sub82 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %79, i64 %idx.ext
  ret ptr %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @access_virt_barray(ptr noundef %cinfo, ptr noundef %ptr, i32 noundef %start_row, i32 noundef %num_rows, i32 noundef %writable) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %writable, ptr %writable.addr, align 4
  %add = add i32 %start_row, %num_rows
  store i32 %add, ptr %end_row, align 4
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %ptr, i64 0, i32 1
  %0 = load i32, ptr %rows_in_array, align 8
  %cmp = icmp ugt i32 %add, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %num_rows.addr, align 4
  %2 = load ptr, ptr %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_barray_control, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %maxaccess, align 8
  %cmp1 = icmp ugt i32 %1, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 20, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %10 = load i32, ptr %start_row.addr, align 4
  %11 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %cur_start_row, align 4
  %cmp5 = icmp ult i32 %10, %12
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %13 = load i32, ptr %end_row, align 4
  %14 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row7 = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %cur_start_row7, align 4
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %rows_in_mem, align 4
  %add8 = add i32 %15, %16
  %cmp9 = icmp ugt i32 %13, %add8
  br i1 %cmp9, label %if.then10, label %if.end34

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  %17 = load ptr, ptr %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 10
  %18 = load i32, ptr %b_s_open, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then10
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 68, ptr %msg_code13, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then10
  %23 = load ptr, ptr %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_barray_control, ptr %23, i64 0, i32 9
  %24 = load i32, ptr %dirty, align 8
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %ptr.addr, align 8
  call void @do_barray_io(ptr noundef %25, ptr noundef %26, i32 noundef 1)
  %dirty19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %26, i64 0, i32 9
  store i32 0, ptr %dirty19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %27 = load i32, ptr %start_row.addr, align 4
  %28 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row21 = getelementptr inbounds %struct.jvirt_barray_control, ptr %28, i64 0, i32 6
  %29 = load i32, ptr %cur_start_row21, align 4
  %cmp22 = icmp ugt i32 %27, %29
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %30 = load i32, ptr %start_row.addr, align 4
  %31 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row24 = getelementptr inbounds %struct.jvirt_barray_control, ptr %31, i64 0, i32 6
  store i32 %30, ptr %cur_start_row24, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end20
  %32 = load i32, ptr %end_row, align 4
  %conv = zext i32 %32 to i64
  %33 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %33, i64 0, i32 4
  %34 = load i32, ptr %rows_in_mem25, align 4
  %conv26 = zext i32 %34 to i64
  %sub = sub nsw i64 %conv, %conv26
  %cmp27 = icmp slt i64 %sub, 0
  %spec.select = select i1 %cmp27, i64 0, i64 %sub
  %conv31 = trunc i64 %spec.select to i32
  %35 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row32 = getelementptr inbounds %struct.jvirt_barray_control, ptr %35, i64 0, i32 6
  store i32 %conv31, ptr %cur_start_row32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %ptr.addr, align 8
  call void @do_barray_io(ptr noundef %36, ptr noundef %37, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false6
  %38 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %38, i64 0, i32 7
  %39 = load i32, ptr %first_undef_row, align 8
  %40 = load i32, ptr %end_row, align 4
  %cmp35 = icmp ult i32 %39, %40
  br i1 %cmp35, label %if.then37, label %if.end75

if.then37:                                        ; preds = %if.end34
  %41 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row38 = getelementptr inbounds %struct.jvirt_barray_control, ptr %41, i64 0, i32 7
  %42 = load i32, ptr %first_undef_row38, align 8
  %43 = load i32, ptr %start_row.addr, align 4
  %cmp39 = icmp ult i32 %42, %43
  br i1 %cmp39, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.then37
  %44 = load i32, ptr %writable.addr, align 4
  %tobool42.not = icmp eq i32 %44, 0
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.then41
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %msg_code45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 20, ptr %msg_code45, align 8
  %47 = load ptr, ptr %45, align 8
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull %45) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then41
  %49 = load i32, ptr %start_row.addr, align 4
  br label %if.end51

if.else49:                                        ; preds = %if.then37
  %50 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row50 = getelementptr inbounds %struct.jvirt_barray_control, ptr %50, i64 0, i32 7
  %51 = load i32, ptr %first_undef_row50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.end48
  %storemerge = phi i32 [ %51, %if.else49 ], [ %49, %if.end48 ]
  store i32 %storemerge, ptr %undef_row, align 4
  %52 = load i32, ptr %writable.addr, align 4
  %tobool52.not = icmp eq i32 %52, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end51
  %53 = load i32, ptr %end_row, align 4
  %54 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row54 = getelementptr inbounds %struct.jvirt_barray_control, ptr %54, i64 0, i32 7
  store i32 %53, ptr %first_undef_row54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %55 = load ptr, ptr %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_barray_control, ptr %55, i64 0, i32 8
  %56 = load i32, ptr %pre_zero, align 4
  %tobool56.not = icmp eq i32 %56, 0
  br i1 %tobool56.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.end55
  %57 = load ptr, ptr %ptr.addr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %57, i64 0, i32 2
  %58 = load i32, ptr %blocksperrow, align 4
  %conv58 = zext i32 %58 to i64
  %mul = shl nuw nsw i64 %conv58, 7
  store i64 %mul, ptr %bytesperrow, align 8
  %cur_start_row59 = getelementptr inbounds %struct.jvirt_barray_control, ptr %57, i64 0, i32 6
  %59 = load i32, ptr %cur_start_row59, align 4
  %60 = load i32, ptr %undef_row, align 4
  %sub60 = sub i32 %60, %59
  store i32 %sub60, ptr %undef_row, align 4
  %61 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row61 = getelementptr inbounds %struct.jvirt_barray_control, ptr %61, i64 0, i32 6
  %62 = load i32, ptr %cur_start_row61, align 4
  %63 = load i32, ptr %end_row, align 4
  %sub62 = sub i32 %63, %62
  store i32 %sub62, ptr %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %64 = load i32, ptr %undef_row, align 4
  %65 = load i32, ptr %end_row, align 4
  %cmp63 = icmp ult i32 %64, %65
  br i1 %cmp63, label %while.body, label %if.end75

while.body:                                       ; preds = %while.cond
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %68 = load i32, ptr %undef_row, align 4
  %idxprom = zext i32 %68 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %67, i64 %idxprom
  %69 = load ptr, ptr %arrayidx, align 8
  %70 = load i64, ptr %bytesperrow, align 8
  call void @jzero_far(ptr noundef %69, i64 noundef %70) #3
  %inc = add i32 %68, 1
  store i32 %inc, ptr %undef_row, align 4
  br label %while.cond, !llvm.loop !18

if.else66:                                        ; preds = %if.end55
  %71 = load i32, ptr %writable.addr, align 4
  %tobool67.not = icmp eq i32 %71, 0
  br i1 %tobool67.not, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.else66
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 20, ptr %msg_code70, align 8
  %74 = load ptr, ptr %72, align 8
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull %72) #3
  br label %if.end75

if.end75:                                         ; preds = %while.cond, %if.then68, %if.else66, %if.end34
  %76 = load i32, ptr %writable.addr, align 4
  %tobool76.not = icmp eq i32 %76, 0
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end75
  %77 = load ptr, ptr %ptr.addr, align 8
  %dirty78 = getelementptr inbounds %struct.jvirt_barray_control, ptr %77, i64 0, i32 9
  store i32 1, ptr %dirty78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  %78 = load ptr, ptr %ptr.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %80 = load i32, ptr %start_row.addr, align 4
  %cur_start_row81 = getelementptr inbounds %struct.jvirt_barray_control, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %cur_start_row81, align 4
  %sub82 = sub i32 %80, %81
  %idx.ext = zext i32 %sub82 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %79, i64 %idx.ext
  ret ptr %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_pool(ptr noundef %cinfo, i32 noundef %pool_id) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool_id.addr = alloca i32, align 4
  %mem = alloca ptr, align 8
  %shdr_ptr = alloca ptr, align 8
  %lhdr_ptr = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %bptr = alloca ptr, align 8
  %next_lhdr_ptr = alloca ptr, align 8
  %next_shdr_ptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pool_id, ptr %pool_id.addr, align 4
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem1, align 8
  store ptr %0, ptr %mem, align 8
  %cmp = icmp slt i32 %pool_id, 0
  %1 = load i32, ptr %pool_id.addr, align 4
  %cmp2 = icmp sgt i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 12, ptr %msg_code, align 8
  %4 = load i32, ptr %pool_id.addr, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %9 = load i32, ptr %pool_id.addr, align 4
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then6, label %if.end28

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %10, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %storemerge.in = phi ptr [ %virt_sarray_list, %if.then6 ], [ %next, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %sptr, align 8
  %cmp7.not = icmp eq ptr %storemerge, null
  br i1 %cmp7.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, ptr %11, i64 0, i32 10
  %12 = load i32, ptr %b_s_open, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %13 = load ptr, ptr %sptr, align 8
  %b_s_open9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %13, i64 0, i32 10
  store i32 0, ptr %b_s_open9, align 4
  %close_backing_store = getelementptr inbounds %struct.jvirt_sarray_control, ptr %13, i64 0, i32 12, i32 2
  %14 = load ptr, ptr %close_backing_store, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %13, i64 0, i32 12
  call void %14(ptr noundef %15, ptr noundef nonnull %b_s_info10) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %16 = load ptr, ptr %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, ptr %16, i64 0, i32 11
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %mem, align 8
  %virt_sarray_list12 = getelementptr inbounds %struct.my_memory_mgr, ptr %17, i64 0, i32 3
  store ptr null, ptr %virt_sarray_list12, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, ptr %17, i64 0, i32 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %storemerge1.in = phi ptr [ %virt_barray_list, %for.end ], [ %next25, %for.inc24 ]
  %storemerge1 = load ptr, ptr %storemerge1.in, align 8
  store ptr %storemerge1, ptr %bptr, align 8
  %cmp14.not = icmp eq ptr %storemerge1, null
  br i1 %cmp14.not, label %for.end26, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %18 = load ptr, ptr %bptr, align 8
  %b_s_open16 = getelementptr inbounds %struct.jvirt_barray_control, ptr %18, i64 0, i32 10
  %19 = load i32, ptr %b_s_open16, align 4
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %for.inc24, label %if.then18

if.then18:                                        ; preds = %for.body15
  %20 = load ptr, ptr %bptr, align 8
  %b_s_open19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %20, i64 0, i32 10
  store i32 0, ptr %b_s_open19, align 4
  %close_backing_store21 = getelementptr inbounds %struct.jvirt_barray_control, ptr %20, i64 0, i32 12, i32 2
  %21 = load ptr, ptr %close_backing_store21, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info22 = getelementptr inbounds %struct.jvirt_barray_control, ptr %20, i64 0, i32 12
  call void %21(ptr noundef %22, ptr noundef nonnull %b_s_info22) #3
  br label %for.inc24

for.inc24:                                        ; preds = %for.body15, %if.then18
  %23 = load ptr, ptr %bptr, align 8
  %next25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %23, i64 0, i32 11
  br label %for.cond13, !llvm.loop !20

for.end26:                                        ; preds = %for.cond13
  %24 = load ptr, ptr %mem, align 8
  %virt_barray_list27 = getelementptr inbounds %struct.my_memory_mgr, ptr %24, i64 0, i32 4
  store ptr null, ptr %virt_barray_list27, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.end26, %if.end
  %25 = load ptr, ptr %mem, align 8
  %26 = load i32, ptr %pool_id.addr, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds %struct.my_memory_mgr, ptr %25, i64 0, i32 2, i64 %idxprom
  %27 = load ptr, ptr %arrayidx29, align 8
  store ptr %27, ptr %lhdr_ptr, align 8
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds %struct.my_memory_mgr, ptr %25, i64 0, i32 2, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end28
  %28 = load ptr, ptr %lhdr_ptr, align 8
  %cmp33.not = icmp eq ptr %28, null
  br i1 %cmp33.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %lhdr_ptr, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %next_lhdr_ptr, align 8
  %bytes_used = getelementptr inbounds %struct.anon.0, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %bytes_used, align 8
  %bytes_left = getelementptr inbounds %struct.anon.0, ptr %29, i64 0, i32 2
  %32 = load i64, ptr %bytes_left, align 8
  %add = add i64 %31, %32
  %add35 = add i64 %add, 24
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %lhdr_ptr, align 8
  call void @jpeg_free_large(ptr noundef %33, ptr noundef %34, i64 noundef %add35) #3
  %35 = load ptr, ptr %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, ptr %35, i64 0, i32 5
  %36 = load i64, ptr %total_space_allocated, align 8
  %sub = sub i64 %36, %add35
  store i64 %sub, ptr %total_space_allocated, align 8
  %37 = load ptr, ptr %next_lhdr_ptr, align 8
  store ptr %37, ptr %lhdr_ptr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %38 = load ptr, ptr %mem, align 8
  %39 = load i32, ptr %pool_id.addr, align 4
  %idxprom36 = sext i32 %39 to i64
  %arrayidx37 = getelementptr inbounds %struct.my_memory_mgr, ptr %38, i64 0, i32 1, i64 %idxprom36
  %40 = load ptr, ptr %arrayidx37, align 8
  store ptr %40, ptr %shdr_ptr, align 8
  %idxprom39 = sext i32 %39 to i64
  %arrayidx40 = getelementptr inbounds %struct.my_memory_mgr, ptr %38, i64 0, i32 1, i64 %idxprom39
  store ptr null, ptr %arrayidx40, align 8
  br label %while.cond41

while.cond41:                                     ; preds = %while.body43, %while.end
  %41 = load ptr, ptr %shdr_ptr, align 8
  %cmp42.not = icmp eq ptr %41, null
  br i1 %cmp42.not, label %while.end51, label %while.body43

while.body43:                                     ; preds = %while.cond41
  %42 = load ptr, ptr %shdr_ptr, align 8
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %next_shdr_ptr, align 8
  %bytes_used45 = getelementptr inbounds %struct.anon, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %bytes_used45, align 8
  %bytes_left46 = getelementptr inbounds %struct.anon, ptr %42, i64 0, i32 2
  %45 = load i64, ptr %bytes_left46, align 8
  %add47 = add i64 %44, %45
  %add48 = add i64 %add47, 24
  %46 = load ptr, ptr %cinfo.addr, align 8
  %47 = load ptr, ptr %shdr_ptr, align 8
  call void @jpeg_free_small(ptr noundef %46, ptr noundef %47, i64 noundef %add48) #3
  %48 = load ptr, ptr %mem, align 8
  %total_space_allocated49 = getelementptr inbounds %struct.my_memory_mgr, ptr %48, i64 0, i32 5
  %49 = load i64, ptr %total_space_allocated49, align 8
  %sub50 = sub i64 %49, %add48
  store i64 %sub50, ptr %total_space_allocated49, align 8
  %50 = load ptr, ptr %next_shdr_ptr, align 8
  store ptr %50, ptr %shdr_ptr, align 8
  br label %while.cond41, !llvm.loop !22

while.end51:                                      ; preds = %while.cond41
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @self_destruct(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %pool, align 4
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %pool, align 4
  call void @free_pool(ptr noundef %0, i32 noundef %1)
  %2 = load i32, ptr %pool, align 4
  %dec = add nsw i32 %2, -1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %mem, align 8
  call void @jpeg_free_small(ptr noundef %3, ptr noundef %4, i64 noundef 160) #3
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i64 0, i32 1
  store ptr null, ptr %mem1, align 8
  call void @jpeg_mem_term(ptr noundef %3) #3
  ret void
}

declare ptr @getenv(ptr noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare ptr @jpeg_get_large(ptr noundef, i64 noundef) #1

declare i64 @jpeg_mem_available(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare void @jpeg_open_backing_store(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, ptr %ptr, i64 0, i32 2
  %0 = load i32, ptr %samplesperrow, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, ptr %bytesperrow, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %ptr, i64 0, i32 6
  %1 = load i32, ptr %cur_start_row, align 4
  %conv1 = zext i32 %1 to i64
  %mul2 = mul nuw nsw i64 %conv1, %conv
  store i64 %mul2, ptr %file_offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end48, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %add52, %if.end48 ]
  store i64 %storemerge, ptr %i, align 8
  %2 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, ptr %2, i64 0, i32 4
  %3 = load i32, ptr %rows_in_mem, align 4
  %conv3 = zext i32 %3 to i64
  %cmp = icmp slt i64 %storemerge, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %rowsperchunk, align 8
  %conv5 = zext i32 %5 to i64
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %rows_in_mem6, align 4
  %conv7 = zext i32 %6 to i64
  %7 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %conv7, %7
  %cmp8 = icmp sgt i64 %sub, %conv5
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 5
  %9 = load i32, ptr %rowsperchunk10, align 8
  %conv11 = zext i32 %9 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %10, i64 0, i32 4
  %11 = load i32, ptr %rows_in_mem12, align 4
  %conv13 = zext i32 %11 to i64
  %12 = load i64, ptr %i, align 8
  %sub14 = sub nsw i64 %conv13, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, ptr %rows, align 8
  %13 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %13, i64 0, i32 6
  %14 = load i32, ptr %cur_start_row15, align 4
  %conv16 = zext i32 %14 to i64
  %15 = load i64, ptr %i, align 8
  %add = add nsw i64 %15, %conv16
  store i64 %add, ptr %thisrow, align 8
  %16 = load i64, ptr %rows, align 8
  %17 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 7
  %18 = load i32, ptr %first_undef_row, align 8
  %conv17 = zext i32 %18 to i64
  %sub18 = sub nsw i64 %conv17, %add
  %cmp19 = icmp slt i64 %16, %sub18
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %19 = load i64, ptr %rows, align 8
  br label %cond.end26

cond.false22:                                     ; preds = %cond.end
  %20 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %20, i64 0, i32 7
  %21 = load i32, ptr %first_undef_row23, align 8
  %conv24 = zext i32 %21 to i64
  %22 = load i64, ptr %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %22
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false22, %cond.true21
  %cond27 = phi i64 [ %19, %cond.true21 ], [ %sub25, %cond.false22 ]
  store i64 %cond27, ptr %rows, align 8
  %23 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %rows_in_array, align 8
  %conv28 = zext i32 %24 to i64
  %25 = load i64, ptr %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %25
  %cmp30 = icmp slt i64 %cond27, %sub29
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end26
  %26 = load i64, ptr %rows, align 8
  br label %cond.end37

cond.false33:                                     ; preds = %cond.end26
  %27 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %27, i64 0, i32 1
  %28 = load i32, ptr %rows_in_array34, align 8
  %conv35 = zext i32 %28 to i64
  %29 = load i64, ptr %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %29
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %cond.true32
  %cond38 = phi i64 [ %26, %cond.true32 ], [ %sub36, %cond.false33 ]
  store i64 %cond38, ptr %rows, align 8
  %cmp39 = icmp slt i64 %cond38, 1
  br i1 %cmp39, label %for.end, label %if.end

if.end:                                           ; preds = %cond.end37
  %30 = load i64, ptr %rows, align 8
  %31 = load i64, ptr %bytesperrow, align 8
  %mul41 = mul nsw i64 %30, %31
  store i64 %mul41, ptr %byte_count, align 8
  %32 = load i32, ptr %writing.addr, align 4
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end
  %33 = load ptr, ptr %ptr.addr, align 8
  %write_backing_store = getelementptr inbounds %struct.jvirt_sarray_control, ptr %33, i64 0, i32 12, i32 1
  %34 = load ptr, ptr %write_backing_store, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %33, i64 0, i32 12
  %36 = load ptr, ptr %33, align 8
  %37 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %36, i64 %37
  %38 = load ptr, ptr %arrayidx, align 8
  %39 = load i64, ptr %file_offset, align 8
  %40 = load i64, ptr %byte_count, align 8
  call void %34(ptr noundef %35, ptr noundef nonnull %b_s_info43, ptr noundef %38, i64 noundef %39, i64 noundef %40) #3
  br label %if.end48

if.else:                                          ; preds = %if.end
  %41 = load ptr, ptr %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %41, i64 0, i32 12
  %42 = load ptr, ptr %b_s_info44, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %41, i64 0, i32 12
  %44 = load ptr, ptr %41, align 8
  %45 = load i64, ptr %i, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %44, i64 %45
  %46 = load ptr, ptr %arrayidx47, align 8
  %47 = load i64, ptr %file_offset, align 8
  %48 = load i64, ptr %byte_count, align 8
  call void %42(ptr noundef %43, ptr noundef nonnull %b_s_info45, ptr noundef %46, i64 noundef %47, i64 noundef %48) #3
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %49 = load i64, ptr %byte_count, align 8
  %50 = load i64, ptr %file_offset, align 8
  %add49 = add nsw i64 %50, %49
  store i64 %add49, ptr %file_offset, align 8
  %51 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %51, i64 0, i32 5
  %52 = load i32, ptr %rowsperchunk50, align 8
  %conv51 = zext i32 %52 to i64
  %53 = load i64, ptr %i, align 8
  %add52 = add nsw i64 %53, %conv51
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %cond.end37, %for.cond
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, ptr %ptr, i64 0, i32 2
  %0 = load i32, ptr %blocksperrow, align 4
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 7
  store i64 %mul, ptr %bytesperrow, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 6
  %2 = load i32, ptr %cur_start_row, align 4
  %conv1 = zext i32 %2 to i64
  %mul2 = mul nsw i64 %mul, %conv1
  store i64 %mul2, ptr %file_offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end48, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %add52, %if.end48 ]
  store i64 %storemerge, ptr %i, align 8
  %3 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, ptr %3, i64 0, i32 4
  %4 = load i32, ptr %rows_in_mem, align 4
  %conv3 = zext i32 %4 to i64
  %cmp = icmp slt i64 %storemerge, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_barray_control, ptr %5, i64 0, i32 5
  %6 = load i32, ptr %rowsperchunk, align 8
  %conv5 = zext i32 %6 to i64
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_barray_control, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %rows_in_mem6, align 4
  %conv7 = zext i32 %7 to i64
  %8 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %conv7, %8
  %cmp8 = icmp sgt i64 %sub, %conv5
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_barray_control, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %rowsperchunk10, align 8
  %conv11 = zext i32 %10 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load ptr, ptr %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_barray_control, ptr %11, i64 0, i32 4
  %12 = load i32, ptr %rows_in_mem12, align 4
  %conv13 = zext i32 %12 to i64
  %13 = load i64, ptr %i, align 8
  %sub14 = sub nsw i64 %conv13, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, ptr %rows, align 8
  %14 = load ptr, ptr %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_barray_control, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %cur_start_row15, align 4
  %conv16 = zext i32 %15 to i64
  %16 = load i64, ptr %i, align 8
  %add = add nsw i64 %16, %conv16
  store i64 %add, ptr %thisrow, align 8
  %17 = load i64, ptr %rows, align 8
  %18 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, ptr %18, i64 0, i32 7
  %19 = load i32, ptr %first_undef_row, align 8
  %conv17 = zext i32 %19 to i64
  %sub18 = sub nsw i64 %conv17, %add
  %cmp19 = icmp slt i64 %17, %sub18
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %20 = load i64, ptr %rows, align 8
  br label %cond.end26

cond.false22:                                     ; preds = %cond.end
  %21 = load ptr, ptr %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_barray_control, ptr %21, i64 0, i32 7
  %22 = load i32, ptr %first_undef_row23, align 8
  %conv24 = zext i32 %22 to i64
  %23 = load i64, ptr %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %23
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false22, %cond.true21
  %cond27 = phi i64 [ %20, %cond.true21 ], [ %sub25, %cond.false22 ]
  store i64 %cond27, ptr %rows, align 8
  %24 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, ptr %24, i64 0, i32 1
  %25 = load i32, ptr %rows_in_array, align 8
  %conv28 = zext i32 %25 to i64
  %26 = load i64, ptr %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %26
  %cmp30 = icmp slt i64 %cond27, %sub29
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end26
  %27 = load i64, ptr %rows, align 8
  br label %cond.end37

cond.false33:                                     ; preds = %cond.end26
  %28 = load ptr, ptr %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_barray_control, ptr %28, i64 0, i32 1
  %29 = load i32, ptr %rows_in_array34, align 8
  %conv35 = zext i32 %29 to i64
  %30 = load i64, ptr %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %30
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %cond.true32
  %cond38 = phi i64 [ %27, %cond.true32 ], [ %sub36, %cond.false33 ]
  store i64 %cond38, ptr %rows, align 8
  %cmp39 = icmp slt i64 %cond38, 1
  br i1 %cmp39, label %for.end, label %if.end

if.end:                                           ; preds = %cond.end37
  %31 = load i64, ptr %rows, align 8
  %32 = load i64, ptr %bytesperrow, align 8
  %mul41 = mul nsw i64 %31, %32
  store i64 %mul41, ptr %byte_count, align 8
  %33 = load i32, ptr %writing.addr, align 4
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end
  %34 = load ptr, ptr %ptr.addr, align 8
  %write_backing_store = getelementptr inbounds %struct.jvirt_barray_control, ptr %34, i64 0, i32 12, i32 1
  %35 = load ptr, ptr %write_backing_store, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_barray_control, ptr %34, i64 0, i32 12
  %37 = load ptr, ptr %34, align 8
  %38 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %37, i64 %38
  %39 = load ptr, ptr %arrayidx, align 8
  %40 = load i64, ptr %file_offset, align 8
  %41 = load i64, ptr %byte_count, align 8
  call void %35(ptr noundef %36, ptr noundef nonnull %b_s_info43, ptr noundef %39, i64 noundef %40, i64 noundef %41) #3
  br label %if.end48

if.else:                                          ; preds = %if.end
  %42 = load ptr, ptr %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_barray_control, ptr %42, i64 0, i32 12
  %43 = load ptr, ptr %b_s_info44, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_barray_control, ptr %42, i64 0, i32 12
  %45 = load ptr, ptr %42, align 8
  %46 = load i64, ptr %i, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %47 = load ptr, ptr %arrayidx47, align 8
  %48 = load i64, ptr %file_offset, align 8
  %49 = load i64, ptr %byte_count, align 8
  call void %43(ptr noundef %44, ptr noundef nonnull %b_s_info45, ptr noundef %47, i64 noundef %48, i64 noundef %49) #3
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %50 = load i64, ptr %byte_count, align 8
  %51 = load i64, ptr %file_offset, align 8
  %add49 = add nsw i64 %51, %50
  store i64 %add49, ptr %file_offset, align 8
  %52 = load ptr, ptr %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_barray_control, ptr %52, i64 0, i32 5
  %53 = load i32, ptr %rowsperchunk50, align 8
  %conv51 = zext i32 %53 to i64
  %54 = load i64, ptr %i, align 8
  %add52 = add nsw i64 %54, %conv51
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %cond.end37, %for.cond
  ret void
}

declare void @jpeg_free_large(ptr noundef, ptr noundef, i64 noundef) #1

declare void @jpeg_free_small(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
