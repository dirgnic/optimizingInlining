; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jcmaster.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmaster.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_master_control(ptr noundef %cinfo, i32 noundef %transcode_only) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %transcode_only.addr = alloca i32, align 4
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %transcode_only, ptr %transcode_only.addr, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 48) #2
  store ptr %call, ptr %master, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 51
  store ptr %call, ptr %master1, align 8
  store ptr @prepare_for_pass, ptr %call, align 8
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %call, i64 0, i32 1
  store ptr @pass_startup, ptr %pass_startup, align 8
  %3 = load ptr, ptr %master, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 2
  store ptr @finish_pass_master, ptr %finish_pass, align 8
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 4
  store i32 0, ptr %is_last_pass, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @initial_setup(ptr noundef %4)
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 22
  %5 = load ptr, ptr %scan_info, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @validate_script(ptr noundef %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 37
  store i32 0, ptr %progressive_mode, align 4
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 21
  store i32 1, ptr %num_scans, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  %9 = load i32, ptr %progressive_mode5, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %11 = load i32, ptr %transcode_only.addr, align 4
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.else16, label %if.then9

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 25
  %13 = load i32, ptr %optimize_coding10, align 8
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.then9
  %14 = load ptr, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %14, i64 0, i32 1
  store i32 1, ptr %pass_type, align 8
  br label %if.end18

if.else13:                                        ; preds = %if.then9
  %15 = load ptr, ptr %master, align 8
  %pass_type14 = getelementptr inbounds %struct.my_comp_master, ptr %15, i64 0, i32 1
  store i32 2, ptr %pass_type14, align 8
  br label %if.end18

if.else16:                                        ; preds = %if.end7
  %16 = load ptr, ptr %master, align 8
  %pass_type17 = getelementptr inbounds %struct.my_comp_master, ptr %16, i64 0, i32 1
  store i32 0, ptr %pass_type17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.else13, %if.else16
  %17 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %17, i64 0, i32 4
  store i32 0, ptr %scan_number, align 4
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %17, i64 0, i32 2
  store i32 0, ptr %pass_number, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 25
  %19 = load i32, ptr %optimize_coding19, align 8
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.end18
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_scans22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 21
  %21 = load i32, ptr %num_scans22, align 8
  %mul = shl nsw i32 %21, 1
  %22 = load ptr, ptr %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, ptr %22, i64 0, i32 3
  store i32 %mul, ptr %total_passes, align 8
  br label %if.end26

if.else23:                                        ; preds = %if.end18
  %23 = load ptr, ptr %cinfo.addr, align 8
  %num_scans24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 21
  %24 = load i32, ptr %num_scans24, align 8
  %25 = load ptr, ptr %master, align 8
  %total_passes25 = getelementptr inbounds %struct.my_comp_master, ptr %25, i64 0, i32 3
  store i32 %24, ptr %total_passes25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then21
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_for_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %pass_type, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %2)
  call void @per_scan_setup(ptr noundef %2)
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 23
  %3 = load i32, ptr %raw_data_in, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 56
  %5 = load ptr, ptr %cconvert, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef %4) #2
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 57
  %7 = load ptr, ptr %downsample, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9) #2
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 53
  %10 = load ptr, ptr %prep, align 8
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr noundef %9, i32 noundef 0) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %12 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 58
  %13 = load ptr, ptr %fdct, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef %12) #2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 59
  %15 = load ptr, ptr %entropy, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 25
  %18 = load i32, ptr %optimize_coding, align 8
  call void %16(ptr noundef %17, i32 noundef %18) #2
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 54
  %19 = load ptr, ptr %coef, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, ptr %22, i64 0, i32 3
  %23 = load i32, ptr %total_passes, align 8
  %cmp = icmp sgt i32 %23, 1
  %cond = select i1 %cmp, i32 3, i32 0
  call void %20(ptr noundef %21, i32 noundef %cond) #2
  %24 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 52
  %25 = load ptr, ptr %main, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef %24, i32 noundef 0) #2
  %optimize_coding8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 25
  %27 = load i32, ptr %optimize_coding8, align 8
  %tobool9.not = icmp eq i32 %27, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %28 = load ptr, ptr %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %28, i64 0, i32 3
  store i32 0, ptr %call_pass_startup, align 8
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  %29 = load ptr, ptr %master, align 8
  %call_pass_startup12 = getelementptr inbounds %struct.jpeg_comp_master, ptr %29, i64 0, i32 3
  store i32 1, ptr %call_pass_startup12, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %30 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %30)
  call void @per_scan_setup(ptr noundef %30)
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i64 0, i32 47
  %31 = load i32, ptr %Ss, align 4
  %cmp15.not = icmp eq i32 %31, 0
  br i1 %cmp15.not, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %sw.bb14
  %32 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i64 0, i32 49
  %33 = load i32, ptr %Ah, align 4
  %cmp16 = icmp eq i32 %33, 0
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %34 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 24
  %35 = load i32, ptr %arith_code, align 4
  %tobool18.not = icmp eq i32 %35, 0
  br i1 %tobool18.not, label %if.end26, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %sw.bb14
  %36 = load ptr, ptr %cinfo.addr, align 8
  %entropy20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 59
  %37 = load ptr, ptr %entropy20, align 8
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef %36, i32 noundef 1) #2
  %coef22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 54
  %39 = load ptr, ptr %coef22, align 8
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void %40(ptr noundef %41, i32 noundef 2) #2
  %42 = load ptr, ptr %master, align 8
  %call_pass_startup25 = getelementptr inbounds %struct.jpeg_comp_master, ptr %42, i64 0, i32 3
  store i32 0, ptr %call_pass_startup25, align 8
  br label %sw.epilog

if.end26:                                         ; preds = %lor.lhs.false17
  %43 = load ptr, ptr %master, align 8
  %pass_type27 = getelementptr inbounds %struct.my_comp_master, ptr %43, i64 0, i32 1
  store i32 2, ptr %pass_type27, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %43, i64 0, i32 2
  %44 = load i32, ptr %pass_number, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %pass_number, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.end26, %entry
  %45 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i64 0, i32 25
  %46 = load i32, ptr %optimize_coding29, align 8
  %tobool30.not = icmp eq i32 %46, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb28
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %47)
  call void @per_scan_setup(ptr noundef %47)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb28
  %48 = load ptr, ptr %cinfo.addr, align 8
  %entropy33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 59
  %49 = load ptr, ptr %entropy33, align 8
  %50 = load ptr, ptr %49, align 8
  call void %50(ptr noundef %48, i32 noundef 0) #2
  %coef35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 54
  %51 = load ptr, ptr %coef35, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53, i32 noundef 2) #2
  %54 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %54, i64 0, i32 4
  %55 = load i32, ptr %scan_number, align 4
  %cmp37 = icmp eq i32 %55, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  %56 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i64 0, i32 55
  %57 = load ptr, ptr %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %57, i64 0, i32 2
  %58 = load ptr, ptr %write_frame_header, align 8
  call void %58(ptr noundef %56) #2
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end32
  %59 = load ptr, ptr %cinfo.addr, align 8
  %marker40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i64 0, i32 55
  %60 = load ptr, ptr %marker40, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %60, i64 0, i32 3
  %61 = load ptr, ptr %write_scan_header, align 8
  call void %61(ptr noundef %59) #2
  %62 = load ptr, ptr %master, align 8
  %call_pass_startup42 = getelementptr inbounds %struct.jpeg_comp_master, ptr %62, i64 0, i32 3
  store i32 0, ptr %call_pass_startup42, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %65 = load ptr, ptr %63, align 8
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr noundef nonnull %63) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %if.else, %sw.default, %if.end39, %if.then19
  %67 = load ptr, ptr %master, align 8
  %pass_number44 = getelementptr inbounds %struct.my_comp_master, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %pass_number44, align 4
  %total_passes45 = getelementptr inbounds %struct.my_comp_master, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %total_passes45, align 8
  %sub = add nsw i32 %69, -1
  %cmp46 = icmp eq i32 %68, %sub
  %conv = zext i1 %cmp46 to i32
  %70 = load ptr, ptr %master, align 8
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %70, i64 0, i32 4
  store i32 %conv, ptr %is_last_pass, align 4
  %71 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 2
  %72 = load ptr, ptr %progress, align 8
  %cmp48.not = icmp eq ptr %72, null
  br i1 %cmp48.not, label %if.end56, label %if.then50

if.then50:                                        ; preds = %sw.epilog
  %73 = load ptr, ptr %master, align 8
  %pass_number51 = getelementptr inbounds %struct.my_comp_master, ptr %73, i64 0, i32 2
  %74 = load i32, ptr %pass_number51, align 4
  %75 = load ptr, ptr %cinfo.addr, align 8
  %progress52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i64 0, i32 2
  %76 = load ptr, ptr %progress52, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %76, i64 0, i32 3
  store i32 %74, ptr %completed_passes, align 8
  %77 = load ptr, ptr %master, align 8
  %total_passes53 = getelementptr inbounds %struct.my_comp_master, ptr %77, i64 0, i32 3
  %78 = load i32, ptr %total_passes53, align 8
  %79 = load ptr, ptr %cinfo.addr, align 8
  %progress54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %79, i64 0, i32 2
  %80 = load ptr, ptr %progress54, align 8
  %total_passes55 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %80, i64 0, i32 4
  store i32 %78, ptr %total_passes55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %sw.epilog
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass_startup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  store i32 0, ptr %call_pass_startup, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  %1 = load ptr, ptr %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %write_frame_header, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void %2(ptr noundef %3) #2
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 55
  %4 = load ptr, ptr %marker1, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %write_scan_header, align 8
  call void %5(ptr noundef %3) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_master(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 51
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %1 = load ptr, ptr %entropy, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %finish_pass, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void %2(ptr noundef %3) #2
  %4 = load ptr, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %pass_type, align 8
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %master, align 8
  %pass_type2 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 1
  store i32 2, ptr %pass_type2, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 25
  %8 = load i32, ptr %optimize_coding, align 8
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %9 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %9, i64 0, i32 4
  %10 = load i32, ptr %scan_number, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %scan_number, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %11 = load ptr, ptr %master, align 8
  %pass_type4 = getelementptr inbounds %struct.my_comp_master, ptr %11, i64 0, i32 1
  store i32 2, ptr %pass_type4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 25
  %13 = load i32, ptr %optimize_coding6, align 8
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  %14 = load ptr, ptr %master, align 8
  %pass_type9 = getelementptr inbounds %struct.my_comp_master, ptr %14, i64 0, i32 1
  store i32 1, ptr %pass_type9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb5
  %15 = load ptr, ptr %master, align 8
  %scan_number11 = getelementptr inbounds %struct.my_comp_master, ptr %15, i64 0, i32 4
  %16 = load i32, ptr %scan_number11, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, ptr %scan_number11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then, %if.end10, %sw.bb3, %entry
  %17 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %17, i64 0, i32 2
  %18 = load i32, ptr %pass_number, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, ptr %pass_number, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %0 = load i32, ptr %image_height, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  %2 = load i32, ptr %image_width, align 8
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 12
  %4 = load i32, ptr %num_components, align 4
  %cmp3 = icmp slt i32 %4, 1
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 8
  %6 = load i32, ptr %input_components, align 8
  %cmp5 = icmp slt i32 %6, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 31, ptr %msg_code, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %image_height7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 7
  %12 = load i32, ptr %image_height7, align 4
  %cmp8 = icmp ugt i32 %12, 65500
  br i1 %cmp8, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %13 = load ptr, ptr %cinfo.addr, align 8
  %image_width11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 6
  %14 = load i32, ptr %image_width11, align 8
  %cmp13 = icmp ugt i32 %14, 65500
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %lor.lhs.false10, %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 40, ptr %msg_code17, align 8
  %17 = load ptr, ptr %15, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 65500, ptr %msg_parm, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull %18) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %lor.lhs.false10
  %21 = load ptr, ptr %cinfo.addr, align 8
  %image_width22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 6
  %22 = load i32, ptr %image_width22, align 8
  %conv23 = zext i32 %22 to i64
  %input_components24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %input_components24, align 8
  %conv25 = sext i32 %23 to i64
  %mul = mul nsw i64 %conv23, %conv25
  %24 = icmp ult i64 %mul, 4294967296
  br i1 %24, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end21
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 69, ptr %msg_code32, align 8
  %27 = load ptr, ptr %25, align 8
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull %25) #2
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end21
  %29 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i64 0, i32 11
  %30 = load i32, ptr %data_precision, align 8
  %cmp36.not = icmp eq i32 %30, 8
  br i1 %cmp36.not, label %if.end47, label %if.then38

if.then38:                                        ; preds = %if.end35
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 13, ptr %msg_code40, align 8
  %data_precision41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 11
  %33 = load i32, ptr %data_precision41, align 8
  %34 = load ptr, ptr %31, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 6
  store i32 %33, ptr %msg_parm43, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull %35) #2
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.end35
  %38 = load ptr, ptr %cinfo.addr, align 8
  %num_components48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i64 0, i32 12
  %39 = load i32, ptr %num_components48, align 4
  %cmp49 = icmp sgt i32 %39, 10
  br i1 %cmp49, label %if.then51, label %if.end63

if.then51:                                        ; preds = %if.end47
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 24, ptr %msg_code53, align 8
  %num_components54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %num_components54, align 4
  %43 = load ptr, ptr %40, align 8
  %msg_parm56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 6
  store i32 %42, ptr %msg_parm56, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %44, align 8
  %arrayidx60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %arrayidx60, align 4
  %46 = load ptr, ptr %44, align 8
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull %44) #2
  br label %if.end63

if.end63:                                         ; preds = %if.then51, %if.end47
  %48 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 38
  store i32 1, ptr %max_h_samp_factor, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 39
  store i32 1, ptr %max_v_samp_factor, align 4
  store i32 0, ptr %ci, align 4
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 14
  %49 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end85, %if.end63
  %storemerge = phi ptr [ %49, %if.end63 ], [ %incdec.ptr, %if.end85 ]
  store ptr %storemerge, ptr %compptr, align 8
  %50 = load i32, ptr %ci, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %num_components64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i64 0, i32 12
  %52 = load i32, ptr %num_components64, align 4
  %cmp65 = icmp slt i32 %50, %52
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i64 0, i32 2
  %54 = load i32, ptr %h_samp_factor, align 8
  %cmp67 = icmp slt i32 %54, 1
  br i1 %cmp67, label %if.then80, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %for.body
  %55 = load ptr, ptr %compptr, align 8
  %h_samp_factor70 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 2
  %56 = load i32, ptr %h_samp_factor70, align 8
  %cmp71 = icmp sgt i32 %56, 4
  br i1 %cmp71, label %if.then80, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %57 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 3
  %58 = load i32, ptr %v_samp_factor, align 4
  %cmp74 = icmp slt i32 %58, 1
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %59 = load ptr, ptr %compptr, align 8
  %v_samp_factor77 = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i64 0, i32 3
  %60 = load i32, ptr %v_samp_factor77, align 4
  %cmp78 = icmp sgt i32 %60, 4
  br i1 %cmp78, label %if.then80, label %if.end85

if.then80:                                        ; preds = %lor.lhs.false76, %lor.lhs.false73, %lor.lhs.false69, %for.body
  %61 = load ptr, ptr %cinfo.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 16, ptr %msg_code82, align 8
  %63 = load ptr, ptr %61, align 8
  %64 = load ptr, ptr %63, align 8
  call void %64(ptr noundef nonnull %61) #2
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %lor.lhs.false76
  %65 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i64 0, i32 38
  %66 = load i32, ptr %max_h_samp_factor86, align 8
  %67 = load ptr, ptr %compptr, align 8
  %h_samp_factor87 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %h_samp_factor87, align 8
  %cmp88 = icmp sgt i32 %66, %68
  %69 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 38
  %70 = load ptr, ptr %compptr, align 8
  %h_samp_factor91 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 2
  %cond.in = select i1 %cmp88, ptr %max_h_samp_factor90, ptr %h_samp_factor91
  %cond = load i32, ptr %cond.in, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 38
  store i32 %cond, ptr %max_h_samp_factor92, align 8
  %max_v_samp_factor93 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 39
  %72 = load i32, ptr %max_v_samp_factor93, align 4
  %73 = load ptr, ptr %compptr, align 8
  %v_samp_factor94 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i64 0, i32 3
  %74 = load i32, ptr %v_samp_factor94, align 4
  %cmp95 = icmp sgt i32 %72, %74
  %75 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i64 0, i32 39
  %76 = load ptr, ptr %compptr, align 8
  %v_samp_factor100 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i64 0, i32 3
  %cond102.in = select i1 %cmp95, ptr %max_v_samp_factor98, ptr %v_samp_factor100
  %cond102 = load i32, ptr %cond102.in, align 4
  %77 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor103 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 39
  store i32 %cond102, ptr %max_v_samp_factor103, align 4
  %78 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %ci, align 4
  %79 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %79, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ci, align 4
  %80 = load ptr, ptr %cinfo.addr, align 8
  %comp_info104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i64 0, i32 14
  %81 = load ptr, ptr %comp_info104, align 8
  br label %for.cond105

for.cond105:                                      ; preds = %for.body109, %for.end
  %storemerge1 = phi ptr [ %81, %for.end ], [ %incdec.ptr149, %for.body109 ]
  store ptr %storemerge1, ptr %compptr, align 8
  %82 = load i32, ptr %ci, align 4
  %83 = load ptr, ptr %cinfo.addr, align 8
  %num_components106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i64 0, i32 12
  %84 = load i32, ptr %num_components106, align 4
  %cmp107 = icmp slt i32 %82, %84
  br i1 %cmp107, label %for.body109, label %for.end150

for.body109:                                      ; preds = %for.cond105
  %85 = load i32, ptr %ci, align 4
  %86 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i64 0, i32 1
  store i32 %85, ptr %component_index, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i64 0, i32 9
  store i32 8, ptr %DCT_scaled_size, align 4
  %87 = load ptr, ptr %cinfo.addr, align 8
  %image_width110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %87, i64 0, i32 6
  %88 = load i32, ptr %image_width110, align 8
  %conv111 = zext i32 %88 to i64
  %89 = load ptr, ptr %compptr, align 8
  %h_samp_factor112 = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i64 0, i32 2
  %90 = load i32, ptr %h_samp_factor112, align 8
  %conv113 = sext i32 %90 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %91 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %91, i64 0, i32 38
  %92 = load i32, ptr %max_h_samp_factor115, align 8
  %mul116 = shl nsw i32 %92, 3
  %conv117 = sext i32 %mul116 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %mul114, i64 noundef %conv117) #2
  %conv118 = trunc i64 %call to i32
  %93 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i64 0, i32 7
  store i32 %conv118, ptr %width_in_blocks, align 4
  %94 = load ptr, ptr %cinfo.addr, align 8
  %image_height119 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i64 0, i32 7
  %95 = load i32, ptr %image_height119, align 4
  %conv120 = zext i32 %95 to i64
  %96 = load ptr, ptr %compptr, align 8
  %v_samp_factor121 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 0, i32 3
  %97 = load i32, ptr %v_samp_factor121, align 4
  %conv122 = sext i32 %97 to i64
  %mul123 = mul nsw i64 %conv120, %conv122
  %98 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %98, i64 0, i32 39
  %99 = load i32, ptr %max_v_samp_factor124, align 4
  %mul125 = shl nsw i32 %99, 3
  %conv126 = sext i32 %mul125 to i64
  %call127 = call i64 @jdiv_round_up(i64 noundef %mul123, i64 noundef %conv126) #2
  %conv128 = trunc i64 %call127 to i32
  %100 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 0, i32 8
  store i32 %conv128, ptr %height_in_blocks, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  %image_width129 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %101, i64 0, i32 6
  %102 = load i32, ptr %image_width129, align 8
  %conv130 = zext i32 %102 to i64
  %103 = load ptr, ptr %compptr, align 8
  %h_samp_factor131 = getelementptr inbounds %struct.jpeg_component_info, ptr %103, i64 0, i32 2
  %104 = load i32, ptr %h_samp_factor131, align 8
  %conv132 = sext i32 %104 to i64
  %mul133 = mul nsw i64 %conv130, %conv132
  %105 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i64 0, i32 38
  %106 = load i32, ptr %max_h_samp_factor134, align 8
  %conv135 = sext i32 %106 to i64
  %call136 = call i64 @jdiv_round_up(i64 noundef %mul133, i64 noundef %conv135) #2
  %conv137 = trunc i64 %call136 to i32
  %107 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %107, i64 0, i32 10
  store i32 %conv137, ptr %downsampled_width, align 8
  %108 = load ptr, ptr %cinfo.addr, align 8
  %image_height138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %108, i64 0, i32 7
  %109 = load i32, ptr %image_height138, align 4
  %conv139 = zext i32 %109 to i64
  %110 = load ptr, ptr %compptr, align 8
  %v_samp_factor140 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i64 0, i32 3
  %111 = load i32, ptr %v_samp_factor140, align 4
  %conv141 = sext i32 %111 to i64
  %mul142 = mul nsw i64 %conv139, %conv141
  %112 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor143 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i64 0, i32 39
  %113 = load i32, ptr %max_v_samp_factor143, align 4
  %conv144 = sext i32 %113 to i64
  %call145 = call i64 @jdiv_round_up(i64 noundef %mul142, i64 noundef %conv144) #2
  %conv146 = trunc i64 %call145 to i32
  %114 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %114, i64 0, i32 11
  store i32 %conv146, ptr %downsampled_height, align 4
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %114, i64 0, i32 12
  store i32 1, ptr %component_needed, align 8
  %115 = load i32, ptr %ci, align 4
  %inc148 = add nsw i32 %115, 1
  store i32 %inc148, ptr %ci, align 4
  %116 = load ptr, ptr %compptr, align 8
  %incdec.ptr149 = getelementptr inbounds %struct.jpeg_component_info, ptr %116, i64 1
  br label %for.cond105, !llvm.loop !8

for.end150:                                       ; preds = %for.cond105
  %117 = load ptr, ptr %cinfo.addr, align 8
  %image_height151 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %117, i64 0, i32 7
  %118 = load i32, ptr %image_height151, align 4
  %conv152 = zext i32 %118 to i64
  %max_v_samp_factor153 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %117, i64 0, i32 39
  %119 = load i32, ptr %max_v_samp_factor153, align 4
  %mul154 = shl nsw i32 %119, 3
  %conv155 = sext i32 %mul154 to i64
  %call156 = call i64 @jdiv_round_up(i64 noundef %conv152, i64 noundef %conv155) #2
  %conv157 = trunc i64 %call156 to i32
  %120 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %120, i64 0, i32 40
  store i32 %conv157, ptr %total_iMCU_rows, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @validate_script(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scanptr = alloca ptr, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %thisi = alloca i32, align 4
  %Ss = alloca i32, align 4
  %Se = alloca i32, align 4
  %Ah = alloca i32, align 4
  %Al = alloca i32, align 4
  %component_sent = alloca [10 x i32], align 4
  %last_bitpos_ptr = alloca ptr, align 8
  %last_bitpos = alloca [10 x [64 x i32]], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 21
  %0 = load i32, ptr %num_scans, align 8
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 17, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 0, ptr %msg_parm, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %4) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 22
  %8 = load ptr, ptr %scan_info, align 8
  store ptr %8, ptr %scanptr, align 8
  %Ss3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %Ss3, align 4
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %scanptr, align 8
  %Se5 = getelementptr inbounds %struct.jpeg_scan_info, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %Se5, align 4
  %cmp6.not = icmp eq i32 %11, 63
  br i1 %cmp6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 37
  store i32 1, ptr %progressive_mode, align 4
  store ptr %last_bitpos, ptr %last_bitpos_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %if.then7
  %storemerge8 = phi i32 [ 0, %if.then7 ], [ %inc15, %for.inc14 ]
  store i32 %storemerge8, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 12
  %14 = load i32, ptr %num_components, align 4
  %cmp10 = icmp slt i32 %storemerge8, %14
  br i1 %cmp10, label %for.cond11, label %if.end26

for.cond11:                                       ; preds = %for.cond, %for.body13
  %storemerge9 = phi i32 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i32 %storemerge9, ptr %coefi, align 4
  %cmp12 = icmp slt i32 %storemerge9, 64
  br i1 %cmp12, label %for.body13, label %for.inc14

for.body13:                                       ; preds = %for.cond11
  %15 = load ptr, ptr %last_bitpos_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %last_bitpos_ptr, align 8
  store i32 -1, ptr %15, align 4
  %16 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond11, !llvm.loop !9

for.inc14:                                        ; preds = %for.cond11
  %17 = load i32, ptr %ci, align 4
  %inc15 = add nsw i32 %17, 1
  br label %for.cond, !llvm.loop !10

if.else:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 37
  store i32 0, ptr %progressive_mode17, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.body21, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc24, %for.body21 ]
  store i32 %storemerge, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %num_components19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 12
  %20 = load i32, ptr %num_components19, align 4
  %cmp20 = icmp slt i32 %storemerge, %20
  br i1 %cmp20, label %for.body21, label %if.end26

for.body21:                                       ; preds = %for.cond18
  %21 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx22, align 4
  %22 = load i32, ptr %ci, align 4
  %inc24 = add nsw i32 %22, 1
  br label %for.cond18, !llvm.loop !11

if.end26:                                         ; preds = %for.cond18, %for.cond
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc240, %if.end26
  %storemerge1 = phi i32 [ 1, %if.end26 ], [ %inc242, %for.inc240 ]
  store i32 %storemerge1, ptr %scanno, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %num_scans28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 21
  %24 = load i32, ptr %num_scans28, align 8
  %cmp29.not = icmp sgt i32 %storemerge1, %24
  br i1 %cmp29.not, label %for.end243, label %for.body30

for.body30:                                       ; preds = %for.cond27
  %25 = load ptr, ptr %scanptr, align 8
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %ncomps, align 4
  %cmp31 = icmp slt i32 %26, 1
  %27 = load i32, ptr %ncomps, align 4
  %cmp33 = icmp sgt i32 %27, 4
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.then34, label %if.end45

if.then34:                                        ; preds = %for.body30
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 5
  store i32 24, ptr %msg_code36, align 8
  %30 = load i32, ptr %ncomps, align 4
  %31 = load ptr, ptr %28, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %30, ptr %msg_parm38, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %arrayidx42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %arrayidx42, align 4
  %34 = load ptr, ptr %32, align 8
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr noundef nonnull %32) #2
  br label %if.end45

if.end45:                                         ; preds = %for.body30, %if.then34
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc78, %if.end45
  %storemerge4 = phi i32 [ 0, %if.end45 ], [ %inc79, %for.inc78 ]
  store i32 %storemerge4, ptr %ci, align 4
  %36 = load i32, ptr %ncomps, align 4
  %cmp47 = icmp slt i32 %storemerge4, %36
  br i1 %cmp47, label %for.body48, label %for.end80

for.body48:                                       ; preds = %for.cond46
  %37 = load ptr, ptr %scanptr, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom49 = sext i32 %38 to i64
  %arrayidx50 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 1, i64 %idxprom49
  %39 = load i32, ptr %arrayidx50, align 4
  store i32 %39, ptr %thisi, align 4
  %cmp51 = icmp slt i32 %39, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %for.body48
  %40 = load i32, ptr %thisi, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %num_components53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 12
  %42 = load i32, ptr %num_components53, align 4
  %cmp54.not = icmp slt i32 %40, %42
  br i1 %cmp54.not, label %if.end63, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false52, %for.body48
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %msg_code57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i64 0, i32 5
  store i32 17, ptr %msg_code57, align 8
  %45 = load i32, ptr %scanno, align 4
  %46 = load ptr, ptr %43, align 8
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 6
  store i32 %45, ptr %msg_parm59, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 8
  call void %49(ptr noundef nonnull %47) #2
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %lor.lhs.false52
  %50 = load i32, ptr %ci, align 4
  %cmp64 = icmp sgt i32 %50, 0
  br i1 %cmp64, label %land.lhs.true, label %for.inc78

land.lhs.true:                                    ; preds = %if.end63
  %51 = load i32, ptr %thisi, align 4
  %52 = load ptr, ptr %scanptr, align 8
  %53 = load i32, ptr %ci, align 4
  %sub = add nsw i32 %53, -1
  %idxprom66 = sext i32 %sub to i64
  %arrayidx67 = getelementptr inbounds %struct.jpeg_scan_info, ptr %52, i64 0, i32 1, i64 %idxprom66
  %54 = load i32, ptr %arrayidx67, align 4
  %cmp68.not = icmp sgt i32 %51, %54
  br i1 %cmp68.not, label %for.inc78, label %if.then69

if.then69:                                        ; preds = %land.lhs.true
  %55 = load ptr, ptr %cinfo.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 17, ptr %msg_code71, align 8
  %57 = load i32, ptr %scanno, align 4
  %58 = load ptr, ptr %55, align 8
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 6
  store i32 %57, ptr %msg_parm73, align 4
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %60, align 8
  call void %61(ptr noundef nonnull %59) #2
  br label %for.inc78

for.inc78:                                        ; preds = %if.end63, %land.lhs.true, %if.then69
  %62 = load i32, ptr %ci, align 4
  %inc79 = add nsw i32 %62, 1
  br label %for.cond46, !llvm.loop !12

for.end80:                                        ; preds = %for.cond46
  %63 = load ptr, ptr %scanptr, align 8
  %Ss81 = getelementptr inbounds %struct.jpeg_scan_info, ptr %63, i64 0, i32 2
  %64 = load i32, ptr %Ss81, align 4
  store i32 %64, ptr %Ss, align 4
  %Se82 = getelementptr inbounds %struct.jpeg_scan_info, ptr %63, i64 0, i32 3
  %65 = load i32, ptr %Se82, align 4
  store i32 %65, ptr %Se, align 4
  %66 = load ptr, ptr %scanptr, align 8
  %Ah83 = getelementptr inbounds %struct.jpeg_scan_info, ptr %66, i64 0, i32 4
  %67 = load i32, ptr %Ah83, align 4
  store i32 %67, ptr %Ah, align 4
  %Al84 = getelementptr inbounds %struct.jpeg_scan_info, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %Al84, align 4
  store i32 %68, ptr %Al, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 37
  %70 = load i32, ptr %progressive_mode85, align 4
  %tobool.not = icmp eq i32 %70, 0
  br i1 %tobool.not, label %if.else199, label %if.then86

if.then86:                                        ; preds = %for.end80
  %71 = load i32, ptr %Ss, align 4
  %cmp87 = icmp slt i32 %71, 0
  %72 = load i32, ptr %Ss, align 4
  %cmp89 = icmp sgt i32 %72, 63
  %or.cond10 = select i1 %cmp87, i1 true, i1 %cmp89
  br i1 %or.cond10, label %if.then102, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.then86
  %73 = load i32, ptr %Se, align 4
  %74 = load i32, ptr %Ss, align 4
  %cmp91 = icmp slt i32 %73, %74
  %75 = load i32, ptr %Se, align 4
  %cmp93 = icmp sgt i32 %75, 63
  %or.cond11 = select i1 %cmp91, i1 true, i1 %cmp93
  %76 = load i32, ptr %Ah, align 4
  %cmp95 = icmp slt i32 %76, 0
  %or.cond12 = select i1 %or.cond11, i1 true, i1 %cmp95
  %77 = load i32, ptr %Ah, align 4
  %cmp97 = icmp sgt i32 %77, 13
  %or.cond13 = select i1 %or.cond12, i1 true, i1 %cmp97
  %78 = load i32, ptr %Al, align 4
  %cmp99 = icmp slt i32 %78, 0
  %or.cond14 = select i1 %or.cond13, i1 true, i1 %cmp99
  %79 = load i32, ptr %Al, align 4
  %cmp101 = icmp sgt i32 %79, 13
  %or.cond15 = select i1 %or.cond14, i1 true, i1 %cmp101
  br i1 %or.cond15, label %if.then102, label %if.end110

if.then102:                                       ; preds = %lor.lhs.false90, %if.then86
  %80 = load ptr, ptr %cinfo.addr, align 8
  %81 = load ptr, ptr %80, align 8
  %msg_code104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %81, i64 0, i32 5
  store i32 15, ptr %msg_code104, align 8
  %82 = load i32, ptr %scanno, align 4
  %83 = load ptr, ptr %80, align 8
  %msg_parm106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 6
  store i32 %82, ptr %msg_parm106, align 4
  %84 = load ptr, ptr %cinfo.addr, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = load ptr, ptr %85, align 8
  call void %86(ptr noundef nonnull %84) #2
  br label %if.end110

if.end110:                                        ; preds = %lor.lhs.false90, %if.then102
  %87 = load i32, ptr %Ss, align 4
  %cmp111 = icmp eq i32 %87, 0
  br i1 %cmp111, label %if.then112, label %if.else123

if.then112:                                       ; preds = %if.end110
  %88 = load i32, ptr %Se, align 4
  %cmp113.not = icmp eq i32 %88, 0
  br i1 %cmp113.not, label %if.end134, label %if.then114

if.then114:                                       ; preds = %if.then112
  %89 = load ptr, ptr %cinfo.addr, align 8
  %90 = load ptr, ptr %89, align 8
  %msg_code116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i64 0, i32 5
  store i32 15, ptr %msg_code116, align 8
  %91 = load i32, ptr %scanno, align 4
  %92 = load ptr, ptr %89, align 8
  %msg_parm118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 6
  store i32 %91, ptr %msg_parm118, align 4
  %93 = load ptr, ptr %cinfo.addr, align 8
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %94, align 8
  call void %95(ptr noundef nonnull %93) #2
  br label %if.end134

if.else123:                                       ; preds = %if.end110
  %96 = load i32, ptr %ncomps, align 4
  %cmp124.not = icmp eq i32 %96, 1
  br i1 %cmp124.not, label %if.end134, label %if.then125

if.then125:                                       ; preds = %if.else123
  %97 = load ptr, ptr %cinfo.addr, align 8
  %98 = load ptr, ptr %97, align 8
  %msg_code127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 5
  store i32 15, ptr %msg_code127, align 8
  %99 = load i32, ptr %scanno, align 4
  %100 = load ptr, ptr %97, align 8
  %msg_parm129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 6
  store i32 %99, ptr %msg_parm129, align 4
  %101 = load ptr, ptr %cinfo.addr, align 8
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull %101) #2
  br label %if.end134

if.end134:                                        ; preds = %if.else123, %if.then125, %if.then112, %if.then114
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc196, %if.end134
  %storemerge6 = phi i32 [ 0, %if.end134 ], [ %inc197, %for.inc196 ]
  store i32 %storemerge6, ptr %ci, align 4
  %104 = load i32, ptr %ncomps, align 4
  %cmp136 = icmp slt i32 %storemerge6, %104
  br i1 %cmp136, label %for.body137, label %for.inc240

for.body137:                                      ; preds = %for.cond135
  %105 = load ptr, ptr %scanptr, align 8
  %106 = load i32, ptr %ci, align 4
  %idxprom139 = sext i32 %106 to i64
  %arrayidx140 = getelementptr inbounds %struct.jpeg_scan_info, ptr %105, i64 0, i32 1, i64 %idxprom139
  %107 = load i32, ptr %arrayidx140, align 4
  %idxprom141 = sext i32 %107 to i64
  %arrayidx142 = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos, i64 0, i64 %idxprom141
  store ptr %arrayidx142, ptr %last_bitpos_ptr, align 8
  %108 = load i32, ptr %Ss, align 4
  %cmp144.not = icmp eq i32 %108, 0
  br i1 %cmp144.not, label %if.end156, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %for.body137
  %109 = load ptr, ptr %last_bitpos_ptr, align 8
  %110 = load i32, ptr %109, align 4
  %cmp147 = icmp slt i32 %110, 0
  br i1 %cmp147, label %if.then148, label %if.end156

if.then148:                                       ; preds = %land.lhs.true145
  %111 = load ptr, ptr %cinfo.addr, align 8
  %112 = load ptr, ptr %111, align 8
  %msg_code150 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 15, ptr %msg_code150, align 8
  %113 = load i32, ptr %scanno, align 4
  %114 = load ptr, ptr %111, align 8
  %msg_parm152 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %114, i64 0, i32 6
  store i32 %113, ptr %msg_parm152, align 4
  %115 = load ptr, ptr %cinfo.addr, align 8
  %116 = load ptr, ptr %115, align 8
  %117 = load ptr, ptr %116, align 8
  call void %117(ptr noundef nonnull %115) #2
  br label %if.end156

if.end156:                                        ; preds = %if.then148, %land.lhs.true145, %for.body137
  %118 = load i32, ptr %Ss, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %if.end190, %if.end156
  %storemerge7 = phi i32 [ %118, %if.end156 ], [ %inc194, %if.end190 ]
  store i32 %storemerge7, ptr %coefi, align 4
  %119 = load i32, ptr %Se, align 4
  %cmp158.not = icmp sgt i32 %storemerge7, %119
  br i1 %cmp158.not, label %for.inc196, label %for.body159

for.body159:                                      ; preds = %for.cond157
  %120 = load ptr, ptr %last_bitpos_ptr, align 8
  %121 = load i32, ptr %coefi, align 4
  %idxprom160 = sext i32 %121 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %120, i64 %idxprom160
  %122 = load i32, ptr %arrayidx161, align 4
  %cmp162 = icmp slt i32 %122, 0
  br i1 %cmp162, label %if.then163, label %if.else174

if.then163:                                       ; preds = %for.body159
  %123 = load i32, ptr %Ah, align 4
  %cmp164.not = icmp eq i32 %123, 0
  br i1 %cmp164.not, label %if.end190, label %if.then165

if.then165:                                       ; preds = %if.then163
  %124 = load ptr, ptr %cinfo.addr, align 8
  %125 = load ptr, ptr %124, align 8
  %msg_code167 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i64 0, i32 5
  store i32 15, ptr %msg_code167, align 8
  %126 = load i32, ptr %scanno, align 4
  %127 = load ptr, ptr %124, align 8
  %msg_parm169 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 6
  store i32 %126, ptr %msg_parm169, align 4
  %128 = load ptr, ptr %cinfo.addr, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = load ptr, ptr %129, align 8
  call void %130(ptr noundef nonnull %128) #2
  br label %if.end190

if.else174:                                       ; preds = %for.body159
  %131 = load i32, ptr %Ah, align 4
  %132 = load ptr, ptr %last_bitpos_ptr, align 8
  %133 = load i32, ptr %coefi, align 4
  %idxprom175 = sext i32 %133 to i64
  %arrayidx176 = getelementptr inbounds i32, ptr %132, i64 %idxprom175
  %134 = load i32, ptr %arrayidx176, align 4
  %cmp177.not = icmp eq i32 %131, %134
  br i1 %cmp177.not, label %lor.lhs.false178, label %if.then181

lor.lhs.false178:                                 ; preds = %if.else174
  %135 = load i32, ptr %Al, align 4
  %136 = load i32, ptr %Ah, align 4
  %sub179 = add nsw i32 %136, -1
  %cmp180.not = icmp eq i32 %135, %sub179
  br i1 %cmp180.not, label %if.end190, label %if.then181

if.then181:                                       ; preds = %lor.lhs.false178, %if.else174
  %137 = load ptr, ptr %cinfo.addr, align 8
  %138 = load ptr, ptr %137, align 8
  %msg_code183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i64 0, i32 5
  store i32 15, ptr %msg_code183, align 8
  %139 = load i32, ptr %scanno, align 4
  %140 = load ptr, ptr %137, align 8
  %msg_parm185 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 6
  store i32 %139, ptr %msg_parm185, align 4
  %141 = load ptr, ptr %cinfo.addr, align 8
  %142 = load ptr, ptr %141, align 8
  %143 = load ptr, ptr %142, align 8
  call void %143(ptr noundef nonnull %141) #2
  br label %if.end190

if.end190:                                        ; preds = %lor.lhs.false178, %if.then181, %if.then163, %if.then165
  %144 = load i32, ptr %Al, align 4
  %145 = load ptr, ptr %last_bitpos_ptr, align 8
  %146 = load i32, ptr %coefi, align 4
  %idxprom191 = sext i32 %146 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %145, i64 %idxprom191
  store i32 %144, ptr %arrayidx192, align 4
  %147 = load i32, ptr %coefi, align 4
  %inc194 = add nsw i32 %147, 1
  br label %for.cond157, !llvm.loop !13

for.inc196:                                       ; preds = %for.cond157
  %148 = load i32, ptr %ci, align 4
  %inc197 = add nsw i32 %148, 1
  br label %for.cond135, !llvm.loop !14

if.else199:                                       ; preds = %for.end80
  %149 = load i32, ptr %Ss, align 4
  %cmp200.not = icmp eq i32 %149, 0
  %150 = load i32, ptr %Se, align 4
  %cmp202.not = icmp eq i32 %150, 63
  %or.cond16 = select i1 %cmp200.not, i1 %cmp202.not, i1 false
  %151 = load i32, ptr %Ah, align 4
  %cmp204.not = icmp eq i32 %151, 0
  %or.cond17 = select i1 %or.cond16, i1 %cmp204.not, i1 false
  %152 = load i32, ptr %Al, align 4
  %cmp206.not = icmp eq i32 %152, 0
  %or.cond18 = select i1 %or.cond17, i1 %cmp206.not, i1 false
  br i1 %or.cond18, label %if.end215, label %if.then207

if.then207:                                       ; preds = %if.else199
  %153 = load ptr, ptr %cinfo.addr, align 8
  %154 = load ptr, ptr %153, align 8
  %msg_code209 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i64 0, i32 5
  store i32 15, ptr %msg_code209, align 8
  %155 = load i32, ptr %scanno, align 4
  %156 = load ptr, ptr %153, align 8
  %msg_parm211 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %156, i64 0, i32 6
  store i32 %155, ptr %msg_parm211, align 4
  %157 = load ptr, ptr %cinfo.addr, align 8
  %158 = load ptr, ptr %157, align 8
  %159 = load ptr, ptr %158, align 8
  call void %159(ptr noundef nonnull %157) #2
  br label %if.end215

if.end215:                                        ; preds = %if.else199, %if.then207
  br label %for.cond216

for.cond216:                                      ; preds = %if.end233, %if.end215
  %storemerge5 = phi i32 [ 0, %if.end215 ], [ %inc237, %if.end233 ]
  store i32 %storemerge5, ptr %ci, align 4
  %160 = load i32, ptr %ncomps, align 4
  %cmp217 = icmp slt i32 %storemerge5, %160
  br i1 %cmp217, label %for.body218, label %for.inc240

for.body218:                                      ; preds = %for.cond216
  %161 = load ptr, ptr %scanptr, align 8
  %162 = load i32, ptr %ci, align 4
  %idxprom220 = sext i32 %162 to i64
  %arrayidx221 = getelementptr inbounds %struct.jpeg_scan_info, ptr %161, i64 0, i32 1, i64 %idxprom220
  %163 = load i32, ptr %arrayidx221, align 4
  store i32 %163, ptr %thisi, align 4
  %idxprom222 = sext i32 %163 to i64
  %arrayidx223 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom222
  %164 = load i32, ptr %arrayidx223, align 4
  %tobool224.not = icmp eq i32 %164, 0
  br i1 %tobool224.not, label %if.end233, label %if.then225

if.then225:                                       ; preds = %for.body218
  %165 = load ptr, ptr %cinfo.addr, align 8
  %166 = load ptr, ptr %165, align 8
  %msg_code227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %166, i64 0, i32 5
  store i32 17, ptr %msg_code227, align 8
  %167 = load i32, ptr %scanno, align 4
  %168 = load ptr, ptr %165, align 8
  %msg_parm229 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %168, i64 0, i32 6
  store i32 %167, ptr %msg_parm229, align 4
  %169 = load ptr, ptr %cinfo.addr, align 8
  %170 = load ptr, ptr %169, align 8
  %171 = load ptr, ptr %170, align 8
  call void %171(ptr noundef nonnull %169) #2
  br label %if.end233

if.end233:                                        ; preds = %if.then225, %for.body218
  %172 = load i32, ptr %thisi, align 4
  %idxprom234 = sext i32 %172 to i64
  %arrayidx235 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom234
  store i32 1, ptr %arrayidx235, align 4
  %173 = load i32, ptr %ci, align 4
  %inc237 = add nsw i32 %173, 1
  br label %for.cond216, !llvm.loop !15

for.inc240:                                       ; preds = %for.cond135, %for.cond216
  %174 = load ptr, ptr %scanptr, align 8
  %incdec.ptr241 = getelementptr inbounds %struct.jpeg_scan_info, ptr %174, i64 1
  store ptr %incdec.ptr241, ptr %scanptr, align 8
  %175 = load i32, ptr %scanno, align 4
  %inc242 = add nsw i32 %175, 1
  br label %for.cond27, !llvm.loop !16

for.end243:                                       ; preds = %for.cond27
  %176 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode244 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %176, i64 0, i32 37
  %177 = load i32, ptr %progressive_mode244, align 4
  %tobool245.not = icmp eq i32 %177, 0
  br i1 %tobool245.not, label %for.cond265, label %for.cond247

for.cond247:                                      ; preds = %for.end243, %for.inc261
  %storemerge3 = phi i32 [ %inc262, %for.inc261 ], [ 0, %for.end243 ]
  store i32 %storemerge3, ptr %ci, align 4
  %178 = load ptr, ptr %cinfo.addr, align 8
  %num_components248 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %178, i64 0, i32 12
  %179 = load i32, ptr %num_components248, align 4
  %cmp249 = icmp slt i32 %storemerge3, %179
  br i1 %cmp249, label %for.body250, label %if.end281

for.body250:                                      ; preds = %for.cond247
  %180 = load i32, ptr %ci, align 4
  %idxprom251 = sext i32 %180 to i64
  %arrayidx252 = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos, i64 0, i64 %idxprom251
  %181 = load i32, ptr %arrayidx252, align 4
  %cmp254 = icmp slt i32 %181, 0
  br i1 %cmp254, label %if.then255, label %for.inc261

if.then255:                                       ; preds = %for.body250
  %182 = load ptr, ptr %cinfo.addr, align 8
  %183 = load ptr, ptr %182, align 8
  %msg_code257 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %183, i64 0, i32 5
  store i32 44, ptr %msg_code257, align 8
  %184 = load ptr, ptr %182, align 8
  %185 = load ptr, ptr %184, align 8
  call void %185(ptr noundef nonnull %182) #2
  br label %for.inc261

for.inc261:                                       ; preds = %for.body250, %if.then255
  %186 = load i32, ptr %ci, align 4
  %inc262 = add nsw i32 %186, 1
  br label %for.cond247, !llvm.loop !17

for.cond265:                                      ; preds = %for.end243, %for.inc278
  %storemerge2 = phi i32 [ %inc279, %for.inc278 ], [ 0, %for.end243 ]
  store i32 %storemerge2, ptr %ci, align 4
  %187 = load ptr, ptr %cinfo.addr, align 8
  %num_components266 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %187, i64 0, i32 12
  %188 = load i32, ptr %num_components266, align 4
  %cmp267 = icmp slt i32 %storemerge2, %188
  br i1 %cmp267, label %for.body268, label %if.end281

for.body268:                                      ; preds = %for.cond265
  %189 = load i32, ptr %ci, align 4
  %idxprom269 = sext i32 %189 to i64
  %arrayidx270 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom269
  %190 = load i32, ptr %arrayidx270, align 4
  %tobool271.not = icmp eq i32 %190, 0
  br i1 %tobool271.not, label %if.then272, label %for.inc278

if.then272:                                       ; preds = %for.body268
  %191 = load ptr, ptr %cinfo.addr, align 8
  %192 = load ptr, ptr %191, align 8
  %msg_code274 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %192, i64 0, i32 5
  store i32 44, ptr %msg_code274, align 8
  %193 = load ptr, ptr %191, align 8
  %194 = load ptr, ptr %193, align 8
  call void %194(ptr noundef nonnull %191) #2
  br label %for.inc278

for.inc278:                                       ; preds = %for.body268, %if.then272
  %195 = load i32, ptr %ci, align 4
  %inc279 = add nsw i32 %195, 1
  br label %for.cond265, !llvm.loop !18

if.end281:                                        ; preds = %for.cond265, %for.cond247
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @select_scan_parameters(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %scanptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 22
  %0 = load ptr, ptr %scan_info, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 51
  %2 = load ptr, ptr %master1, align 8
  %scan_info2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 22
  %3 = load ptr, ptr %scan_info2, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %scan_number, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %scanptr, align 8
  %5 = load i32, ptr %add.ptr, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 41
  store i32 %5, ptr %comps_in_scan3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %ci, align 4
  %7 = load ptr, ptr %scanptr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp5 = icmp slt i32 %storemerge1, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 14
  %10 = load ptr, ptr %comp_info, align 8
  %11 = load ptr, ptr %scanptr, align 8
  %12 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_scan_info, ptr %11, i64 0, i32 1, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 %idxprom6
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load i32, ptr %ci, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 42, i64 %idxprom8
  store ptr %arrayidx7, ptr %arrayidx9, align 8
  %16 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %17, i64 0, i32 2
  %18 = load i32, ptr %Ss, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %Ss10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 47
  store i32 %18, ptr %Ss10, align 4
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %Se, align 4
  %Se11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 48
  store i32 %20, ptr %Se11, align 8
  %21 = load ptr, ptr %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, ptr %21, i64 0, i32 4
  %22 = load i32, ptr %Ah, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %Ah12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 49
  store i32 %22, ptr %Ah12, align 4
  %Al = getelementptr inbounds %struct.jpeg_scan_info, ptr %21, i64 0, i32 5
  %24 = load i32, ptr %Al, align 4
  %Al13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 50
  store i32 %24, ptr %Al13, align 8
  br label %if.end42

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 12
  %26 = load i32, ptr %num_components, align 4
  %cmp14 = icmp sgt i32 %26, 4
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %num_components16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 12
  %29 = load i32, ptr %num_components16, align 4
  %30 = load ptr, ptr %27, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 6
  store i32 %29, ptr %msg_parm, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %arrayidx21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %arrayidx21, align 4
  %33 = load ptr, ptr %31, align 8
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull %31) #2
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  %35 = load ptr, ptr %cinfo.addr, align 8
  %num_components23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 12
  %36 = load i32, ptr %num_components23, align 4
  %comps_in_scan24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 41
  store i32 %36, ptr %comps_in_scan24, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.body28, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc36, %for.body28 ]
  store i32 %storemerge, ptr %ci, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %num_components26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i64 0, i32 12
  %38 = load i32, ptr %num_components26, align 4
  %cmp27 = icmp slt i32 %storemerge, %38
  br i1 %cmp27, label %for.body28, label %for.end37

for.body28:                                       ; preds = %for.cond25
  %39 = load ptr, ptr %cinfo.addr, align 8
  %comp_info29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 14
  %40 = load ptr, ptr %comp_info29, align 8
  %41 = load i32, ptr %ci, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 %idxprom30
  %idxprom33 = sext i32 %41 to i64
  %arrayidx34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 42, i64 %idxprom33
  store ptr %arrayidx31, ptr %arrayidx34, align 8
  %42 = load i32, ptr %ci, align 4
  %inc36 = add nsw i32 %42, 1
  br label %for.cond25, !llvm.loop !20

for.end37:                                        ; preds = %for.cond25
  %43 = load ptr, ptr %cinfo.addr, align 8
  %Ss38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 47
  store i32 0, ptr %Ss38, align 4
  %Se39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 48
  store i32 63, ptr %Se39, align 8
  %Ah40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 49
  store i32 0, ptr %Ah40, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %Al41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 50
  store i32 0, ptr %Al41, align 8
  br label %if.end42

if.end42:                                         ; preds = %for.end37, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @per_scan_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %nominal = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %0 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 42
  %2 = load ptr, ptr %cur_comp_info, align 8
  store ptr %2, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i64 0, i32 7
  %3 = load i32, ptr %width_in_blocks, align 4
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 43
  store i32 %3, ptr %MCUs_per_row, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i64 0, i32 8
  %4 = load i32, ptr %height_in_blocks, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 44
  store i32 %4, ptr %MCU_rows_in_scan, align 4
  %6 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 13
  store i32 1, ptr %MCU_width, align 4
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 14
  store i32 1, ptr %MCU_height, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 15
  store i32 1, ptr %MCU_blocks, align 4
  %7 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 16
  store i32 8, ptr %MCU_sample_width, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 17
  store i32 1, ptr %last_col_width, align 4
  %height_in_blocks1 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 8
  %8 = load i32, ptr %height_in_blocks1, align 8
  %9 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %rem = urem i32 %8, %10
  store i32 %rem, ptr %tmp, align 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %11 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %v_samp_factor4, align 4
  store i32 %12, ptr %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %13 = load i32, ptr %tmp, align 4
  %14 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 18
  store i32 %13, ptr %last_row_height, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 45
  store i32 1, ptr %blocks_in_MCU, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 46
  store i32 0, ptr %MCU_membership, align 4
  br label %if.end79

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 41
  %17 = load i32, ptr %comps_in_scan6, align 4
  %cmp7 = icmp slt i32 %17, 1
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %18 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 41
  %19 = load i32, ptr %comps_in_scan8, align 4
  %cmp9 = icmp sgt i32 %19, 4
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %comps_in_scan11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 41
  %22 = load i32, ptr %comps_in_scan11, align 4
  %23 = load ptr, ptr %20, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 %22, ptr %msg_parm, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %arrayidx16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %arrayidx16, align 4
  %26 = load ptr, ptr %24, align 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull %24) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %lor.lhs.false
  %28 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i64 0, i32 6
  %29 = load i32, ptr %image_width, align 8
  %conv = zext i32 %29 to i64
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i64 0, i32 38
  %30 = load i32, ptr %max_h_samp_factor, align 8
  %mul = shl nsw i32 %30, 3
  %conv19 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef %conv19) #2
  %conv20 = trunc i64 %call to i32
  %31 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 43
  store i32 %conv20, ptr %MCUs_per_row21, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 7
  %32 = load i32, ptr %image_height, align 4
  %conv22 = zext i32 %32 to i64
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 39
  %33 = load i32, ptr %max_v_samp_factor, align 4
  %mul23 = shl nsw i32 %33, 3
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef %conv24) #2
  %conv26 = trunc i64 %call25 to i32
  %34 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 44
  store i32 %conv26, ptr %MCU_rows_in_scan27, align 4
  %blocks_in_MCU28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 45
  store i32 0, ptr %blocks_in_MCU28, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc78, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 41
  %36 = load i32, ptr %comps_in_scan29, align 4
  %cmp30 = icmp slt i32 %storemerge, %36
  br i1 %cmp30, label %for.body, label %if.end79

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i64 0, i32 42, i64 %idxprom
  %39 = load ptr, ptr %arrayidx33, align 8
  store ptr %39, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 2
  %40 = load i32, ptr %h_samp_factor, align 8
  %MCU_width34 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 13
  store i32 %40, ptr %MCU_width34, align 4
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %v_samp_factor35, align 4
  %42 = load ptr, ptr %compptr, align 8
  %MCU_height36 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 14
  store i32 %41, ptr %MCU_height36, align 8
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 13
  %43 = load i32, ptr %MCU_width37, align 4
  %mul39 = mul nsw i32 %43, %41
  %MCU_blocks40 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 15
  store i32 %mul39, ptr %MCU_blocks40, align 4
  %44 = load ptr, ptr %compptr, align 8
  %MCU_width41 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 0, i32 13
  %45 = load i32, ptr %MCU_width41, align 4
  %mul42 = shl nsw i32 %45, 3
  %MCU_sample_width43 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 0, i32 16
  store i32 %mul42, ptr %MCU_sample_width43, align 8
  %width_in_blocks44 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %width_in_blocks44, align 4
  %47 = load ptr, ptr %compptr, align 8
  %MCU_width45 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 0, i32 13
  %48 = load i32, ptr %MCU_width45, align 4
  %rem46 = urem i32 %46, %48
  store i32 %rem46, ptr %tmp, align 4
  %cmp47 = icmp eq i32 %rem46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body
  %49 = load ptr, ptr %compptr, align 8
  %MCU_width50 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 13
  %50 = load i32, ptr %MCU_width50, align 4
  store i32 %50, ptr %tmp, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body
  %51 = load i32, ptr %tmp, align 4
  %52 = load ptr, ptr %compptr, align 8
  %last_col_width52 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 17
  store i32 %51, ptr %last_col_width52, align 4
  %height_in_blocks53 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 8
  %53 = load i32, ptr %height_in_blocks53, align 8
  %MCU_height54 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 14
  %54 = load i32, ptr %MCU_height54, align 8
  %rem55 = urem i32 %53, %54
  store i32 %rem55, ptr %tmp, align 4
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end51
  %55 = load ptr, ptr %compptr, align 8
  %MCU_height59 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 14
  %56 = load i32, ptr %MCU_height59, align 8
  store i32 %56, ptr %tmp, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end51
  %57 = load i32, ptr %tmp, align 4
  %58 = load ptr, ptr %compptr, align 8
  %last_row_height61 = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i64 0, i32 18
  store i32 %57, ptr %last_row_height61, align 8
  %MCU_blocks62 = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i64 0, i32 15
  %59 = load i32, ptr %MCU_blocks62, align 4
  store i32 %59, ptr %mcublks, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 45
  %61 = load i32, ptr %blocks_in_MCU63, align 8
  %add = add nsw i32 %61, %59
  %cmp64 = icmp sgt i32 %add, 10
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end60
  %62 = load ptr, ptr %cinfo.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 5
  store i32 11, ptr %msg_code68, align 8
  %64 = load ptr, ptr %62, align 8
  %65 = load ptr, ptr %64, align 8
  call void %65(ptr noundef nonnull %62) #2
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end60
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end71
  %66 = load i32, ptr %mcublks, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, ptr %mcublks, align 4
  %cmp72 = icmp sgt i32 %66, 0
  br i1 %cmp72, label %while.body, label %for.inc

while.body:                                       ; preds = %while.cond
  %67 = load i32, ptr %ci, align 4
  %68 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i64 0, i32 45
  %69 = load i32, ptr %blocks_in_MCU75, align 8
  %inc = add nsw i32 %69, 1
  store i32 %inc, ptr %blocks_in_MCU75, align 8
  %idxprom76 = sext i32 %69 to i64
  %arrayidx77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i64 0, i32 46, i64 %idxprom76
  store i32 %67, ptr %arrayidx77, align 4
  br label %while.cond, !llvm.loop !21

for.inc:                                          ; preds = %while.cond
  %70 = load i32, ptr %ci, align 4
  %inc78 = add nsw i32 %70, 1
  br label %for.cond, !llvm.loop !22

if.end79:                                         ; preds = %for.cond, %if.end
  %71 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 30
  %72 = load i32, ptr %restart_in_rows, align 4
  %cmp80 = icmp sgt i32 %72, 0
  br i1 %cmp80, label %if.then82, label %if.end91

if.then82:                                        ; preds = %if.end79
  %73 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i64 0, i32 30
  %74 = load i32, ptr %restart_in_rows83, align 4
  %conv84 = sext i32 %74 to i64
  %MCUs_per_row85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i64 0, i32 43
  %75 = load i32, ptr %MCUs_per_row85, align 8
  %conv86 = zext i32 %75 to i64
  %mul87 = mul nsw i64 %conv84, %conv86
  store i64 %mul87, ptr %nominal, align 8
  %cmp88 = icmp slt i64 %mul87, 65535
  %76 = load i64, ptr %nominal, align 8
  %phi.cast = trunc i64 %76 to i32
  %cond = select i1 %cmp88, i32 %phi.cast, i32 65535
  %77 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 29
  store i32 %cond, ptr %restart_interval, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.end79
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
