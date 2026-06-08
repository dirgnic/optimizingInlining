; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmaster.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmaster.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_color_converter = type { ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  store ptr %call, ptr %master, align 8
  %4 = load ptr, ptr %master, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 51
  store ptr %4, ptr %master1, align 8
  %6 = load ptr, ptr %master, align 8
  %pub = getelementptr inbounds %struct.my_comp_master, ptr %6, i32 0, i32 0
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub, i32 0, i32 0
  store ptr @prepare_for_pass, ptr %prepare_for_pass, align 8
  %7 = load ptr, ptr %master, align 8
  %pub2 = getelementptr inbounds %struct.my_comp_master, ptr %7, i32 0, i32 0
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub2, i32 0, i32 1
  store ptr @pass_startup, ptr %pass_startup, align 8
  %8 = load ptr, ptr %master, align 8
  %pub3 = getelementptr inbounds %struct.my_comp_master, ptr %8, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub3, i32 0, i32 2
  store ptr @finish_pass_master, ptr %finish_pass, align 8
  %9 = load ptr, ptr %master, align 8
  %pub4 = getelementptr inbounds %struct.my_comp_master, ptr %9, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub4, i32 0, i32 4
  store i32 0, ptr %is_last_pass, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void @initial_setup(ptr noundef %10)
  %11 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 22
  %12 = load ptr, ptr %scan_info, align 8
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void @validate_script(ptr noundef %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 37
  store i32 0, ptr %progressive_mode, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 21
  store i32 1, ptr %num_scans, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 37
  %17 = load i32, ptr %progressive_mode5, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %18 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %19 = load i32, ptr %transcode_only.addr, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.end7
  %20 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 25
  %21 = load i32, ptr %optimize_coding10, align 8
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then9
  %22 = load ptr, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %22, i32 0, i32 1
  store i32 1, ptr %pass_type, align 8
  br label %if.end15

if.else13:                                        ; preds = %if.then9
  %23 = load ptr, ptr %master, align 8
  %pass_type14 = getelementptr inbounds %struct.my_comp_master, ptr %23, i32 0, i32 1
  store i32 2, ptr %pass_type14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then12
  br label %if.end18

if.else16:                                        ; preds = %if.end7
  %24 = load ptr, ptr %master, align 8
  %pass_type17 = getelementptr inbounds %struct.my_comp_master, ptr %24, i32 0, i32 1
  store i32 0, ptr %pass_type17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.end15
  %25 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %25, i32 0, i32 4
  store i32 0, ptr %scan_number, align 4
  %26 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %26, i32 0, i32 2
  store i32 0, ptr %pass_number, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 25
  %28 = load i32, ptr %optimize_coding19, align 8
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.end18
  %29 = load ptr, ptr %cinfo.addr, align 8
  %num_scans22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 21
  %30 = load i32, ptr %num_scans22, align 8
  %mul = mul nsw i32 %30, 2
  %31 = load ptr, ptr %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, ptr %31, i32 0, i32 3
  store i32 %mul, ptr %total_passes, align 8
  br label %if.end26

if.else23:                                        ; preds = %if.end18
  %32 = load ptr, ptr %cinfo.addr, align 8
  %num_scans24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 21
  %33 = load i32, ptr %num_scans24, align 8
  %34 = load ptr, ptr %master, align 8
  %total_passes25 = getelementptr inbounds %struct.my_comp_master, ptr %34, i32 0, i32 3
  store i32 %33, ptr %total_passes25, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %pass_type, align 8
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %4)
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 23
  %7 = load i32, ptr %raw_data_in, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 56
  %9 = load ptr, ptr %cconvert, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %start_pass, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  %12 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 57
  %13 = load ptr, ptr %downsample, align 8
  %start_pass2 = getelementptr inbounds %struct.jpeg_downsampler, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %start_pass2, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  %16 = load ptr, ptr %cinfo.addr, align 8
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 53
  %17 = load ptr, ptr %prep, align 8
  %start_pass3 = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %start_pass3, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %20 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 58
  %21 = load ptr, ptr %fdct, align 8
  %start_pass4 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %start_pass4, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  %24 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 59
  %25 = load ptr, ptr %entropy, align 8
  %start_pass5 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %start_pass5, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 25
  %29 = load i32, ptr %optimize_coding, align 8
  call void %26(ptr noundef %27, i32 noundef %29)
  %30 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 54
  %31 = load ptr, ptr %coef, align 8
  %start_pass6 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %start_pass6, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %total_passes, align 8
  %cmp = icmp sgt i32 %35, 1
  %36 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 3, i32 0
  call void %32(ptr noundef %33, i32 noundef %cond)
  %37 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 52
  %38 = load ptr, ptr %main, align 8
  %start_pass7 = getelementptr inbounds %struct.jpeg_c_main_controller, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %start_pass7, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  call void %39(ptr noundef %40, i32 noundef 0)
  %41 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 25
  %42 = load i32, ptr %optimize_coding8, align 8
  %tobool9 = icmp ne i32 %42, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %43 = load ptr, ptr %master, align 8
  %pub = getelementptr inbounds %struct.my_comp_master, ptr %43, i32 0, i32 0
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub, i32 0, i32 3
  store i32 0, ptr %call_pass_startup, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %44 = load ptr, ptr %master, align 8
  %pub11 = getelementptr inbounds %struct.my_comp_master, ptr %44, i32 0, i32 0
  %call_pass_startup12 = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub11, i32 0, i32 3
  store i32 1, ptr %call_pass_startup12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %45)
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %46)
  %47 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 47
  %48 = load i32, ptr %Ss, align 4
  %cmp15 = icmp ne i32 %48, 0
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb14
  %49 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 49
  %50 = load i32, ptr %Ah, align 4
  %cmp16 = icmp eq i32 %50, 0
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %51 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 24
  %52 = load i32, ptr %arith_code, align 4
  %tobool18 = icmp ne i32 %52, 0
  br i1 %tobool18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %sw.bb14
  %53 = load ptr, ptr %cinfo.addr, align 8
  %entropy20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 59
  %54 = load ptr, ptr %entropy20, align 8
  %start_pass21 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %start_pass21, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void %55(ptr noundef %56, i32 noundef 1)
  %57 = load ptr, ptr %cinfo.addr, align 8
  %coef22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 54
  %58 = load ptr, ptr %coef22, align 8
  %start_pass23 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %start_pass23, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  call void %59(ptr noundef %60, i32 noundef 2)
  %61 = load ptr, ptr %master, align 8
  %pub24 = getelementptr inbounds %struct.my_comp_master, ptr %61, i32 0, i32 0
  %call_pass_startup25 = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub24, i32 0, i32 3
  store i32 0, ptr %call_pass_startup25, align 8
  br label %sw.epilog

if.end26:                                         ; preds = %lor.lhs.false17
  %62 = load ptr, ptr %master, align 8
  %pass_type27 = getelementptr inbounds %struct.my_comp_master, ptr %62, i32 0, i32 1
  store i32 2, ptr %pass_type27, align 8
  %63 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %pass_number, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %pass_number, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %entry, %if.end26
  %65 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i32 0, i32 25
  %66 = load i32, ptr %optimize_coding29, align 8
  %tobool30 = icmp ne i32 %66, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb28
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void @select_scan_parameters(ptr noundef %67)
  %68 = load ptr, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %68)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb28
  %69 = load ptr, ptr %cinfo.addr, align 8
  %entropy33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 59
  %70 = load ptr, ptr %entropy33, align 8
  %start_pass34 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %start_pass34, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  call void %71(ptr noundef %72, i32 noundef 0)
  %73 = load ptr, ptr %cinfo.addr, align 8
  %coef35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i32 0, i32 54
  %74 = load ptr, ptr %coef35, align 8
  %start_pass36 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %start_pass36, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void %75(ptr noundef %76, i32 noundef 2)
  %77 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %scan_number, align 4
  %cmp37 = icmp eq i32 %78, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  %79 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %79, i32 0, i32 55
  %80 = load ptr, ptr %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %write_frame_header, align 8
  %82 = load ptr, ptr %cinfo.addr, align 8
  call void %81(ptr noundef %82)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end32
  %83 = load ptr, ptr %cinfo.addr, align 8
  %marker40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i32 0, i32 55
  %84 = load ptr, ptr %marker40, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %write_scan_header, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  call void %85(ptr noundef %86)
  %87 = load ptr, ptr %master, align 8
  %pub41 = getelementptr inbounds %struct.my_comp_master, ptr %87, i32 0, i32 0
  %call_pass_startup42 = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub41, i32 0, i32 3
  store i32 0, ptr %call_pass_startup42, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %88 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i32 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %90 = load ptr, ptr %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %err43, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %error_exit, align 8
  %93 = load ptr, ptr %cinfo.addr, align 8
  call void %92(ptr noundef %93)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end39, %if.then19, %if.end13
  %94 = load ptr, ptr %master, align 8
  %pass_number44 = getelementptr inbounds %struct.my_comp_master, ptr %94, i32 0, i32 2
  %95 = load i32, ptr %pass_number44, align 4
  %96 = load ptr, ptr %master, align 8
  %total_passes45 = getelementptr inbounds %struct.my_comp_master, ptr %96, i32 0, i32 3
  %97 = load i32, ptr %total_passes45, align 8
  %sub = sub nsw i32 %97, 1
  %cmp46 = icmp eq i32 %95, %sub
  %conv = zext i1 %cmp46 to i32
  %98 = load ptr, ptr %master, align 8
  %pub47 = getelementptr inbounds %struct.my_comp_master, ptr %98, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %pub47, i32 0, i32 4
  store i32 %conv, ptr %is_last_pass, align 4
  %99 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %99, i32 0, i32 2
  %100 = load ptr, ptr %progress, align 8
  %cmp48 = icmp ne ptr %100, null
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %sw.epilog
  %101 = load ptr, ptr %master, align 8
  %pass_number51 = getelementptr inbounds %struct.my_comp_master, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %pass_number51, align 4
  %103 = load ptr, ptr %cinfo.addr, align 8
  %progress52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 2
  %104 = load ptr, ptr %progress52, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %104, i32 0, i32 3
  store i32 %102, ptr %completed_passes, align 8
  %105 = load ptr, ptr %master, align 8
  %total_passes53 = getelementptr inbounds %struct.my_comp_master, ptr %105, i32 0, i32 3
  %106 = load i32, ptr %total_passes53, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %progress54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %progress54, align 8
  %total_passes55 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i32 0, i32 4
  store i32 %106, ptr %total_passes55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %sw.epilog
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass_startup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %1, i32 0, i32 3
  store i32 0, ptr %call_pass_startup, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 55
  %3 = load ptr, ptr %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %write_frame_header, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 55
  %7 = load ptr, ptr %marker1, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %write_scan_header, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_master(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 59
  %3 = load ptr, ptr %entropy, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %finish_pass, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %pass_type, align 8
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %8 = load ptr, ptr %master, align 8
  %pass_type2 = getelementptr inbounds %struct.my_comp_master, ptr %8, i32 0, i32 1
  store i32 2, ptr %pass_type2, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 25
  %10 = load i32, ptr %optimize_coding, align 8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %scan_number, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %scan_number, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %13 = load ptr, ptr %master, align 8
  %pass_type4 = getelementptr inbounds %struct.my_comp_master, ptr %13, i32 0, i32 1
  store i32 2, ptr %pass_type4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 25
  %15 = load i32, ptr %optimize_coding6, align 8
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %sw.bb5
  %16 = load ptr, ptr %master, align 8
  %pass_type9 = getelementptr inbounds %struct.my_comp_master, ptr %16, i32 0, i32 1
  store i32 1, ptr %pass_type9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb5
  %17 = load ptr, ptr %master, align 8
  %scan_number11 = getelementptr inbounds %struct.my_comp_master, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %scan_number11, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, ptr %scan_number11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end10, %sw.bb3, %if.end
  %19 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %pass_number, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, ptr %pass_number, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %image_height, align 4
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 12
  %5 = load i32, ptr %num_components, align 4
  %cmp3 = icmp sle i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %input_components, align 8
  %cmp5 = icmp sle i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 31, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_height7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_height7, align 4
  %conv = zext i32 %15 to i64
  %cmp8 = icmp sgt i64 %conv, 65500
  br i1 %cmp8, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %image_width11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %image_width11, align 8
  %conv12 = zext i32 %17 to i64
  %cmp13 = icmp sgt i64 %conv12, 65500
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %lor.lhs.false10, %if.end
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 5
  store i32 40, ptr %msg_code17, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err18, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 65500, ptr %arrayidx, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %error_exit20, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  call void %24(ptr noundef %25)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %lor.lhs.false10
  %26 = load ptr, ptr %cinfo.addr, align 8
  %image_width22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %image_width22, align 8
  %conv23 = zext i32 %27 to i64
  %28 = load ptr, ptr %cinfo.addr, align 8
  %input_components24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 8
  %29 = load i32, ptr %input_components24, align 8
  %conv25 = sext i32 %29 to i64
  %mul = mul nsw i64 %conv23, %conv25
  store i64 %mul, ptr %samplesperrow, align 8
  %30 = load i64, ptr %samplesperrow, align 8
  %conv26 = trunc i64 %30 to i32
  store i32 %conv26, ptr %jd_samplesperrow, align 4
  %31 = load i32, ptr %jd_samplesperrow, align 4
  %conv27 = zext i32 %31 to i64
  %32 = load i64, ptr %samplesperrow, align 8
  %cmp28 = icmp ne i64 %conv27, %32
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end21
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5
  store i32 69, ptr %msg_code32, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err33, align 8
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %error_exit34, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  call void %37(ptr noundef %38)
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end21
  %39 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 11
  %40 = load i32, ptr %data_precision, align 8
  %cmp36 = icmp ne i32 %40, 8
  br i1 %cmp36, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end35
  %41 = load ptr, ptr %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err39, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i32 0, i32 5
  store i32 13, ptr %msg_code40, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %data_precision41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 11
  %44 = load i32, ptr %data_precision41, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %msg_parm43, i64 0, i64 0
  store i32 %44, ptr %arrayidx44, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err45, align 8
  %error_exit46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %error_exit46, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50)
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.end35
  %51 = load ptr, ptr %cinfo.addr, align 8
  %num_components48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 12
  %52 = load i32, ptr %num_components48, align 4
  %cmp49 = icmp sgt i32 %52, 10
  br i1 %cmp49, label %if.then51, label %if.end63

if.then51:                                        ; preds = %if.end47
  %53 = load ptr, ptr %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %err52, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i32 0, i32 5
  store i32 24, ptr %msg_code53, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %num_components54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 12
  %56 = load i32, ptr %num_components54, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err55, align 8
  %msg_parm56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [8 x i32], ptr %msg_parm56, i64 0, i64 0
  store i32 %56, ptr %arrayidx57, align 4
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err58, align 8
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 6
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %msg_parm59, i64 0, i64 1
  store i32 10, ptr %arrayidx60, align 4
  %61 = load ptr, ptr %cinfo.addr, align 8
  %err61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err61, align 8
  %error_exit62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %error_exit62, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  call void %63(ptr noundef %64)
  br label %if.end63

if.end63:                                         ; preds = %if.then51, %if.end47
  %65 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i32 0, i32 38
  store i32 1, ptr %max_h_samp_factor, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 39
  store i32 1, ptr %max_v_samp_factor, align 4
  store i32 0, ptr %ci, align 4
  %67 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i32 0, i32 14
  %68 = load ptr, ptr %comp_info, align 8
  store ptr %68, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %69 = load i32, ptr %ci, align 4
  %70 = load ptr, ptr %cinfo.addr, align 8
  %num_components64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %70, i32 0, i32 12
  %71 = load i32, ptr %num_components64, align 4
  %cmp65 = icmp slt i32 %69, %71
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %h_samp_factor, align 8
  %cmp67 = icmp sle i32 %73, 0
  br i1 %cmp67, label %if.then80, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %for.body
  %74 = load ptr, ptr %compptr, align 8
  %h_samp_factor70 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %h_samp_factor70, align 8
  %cmp71 = icmp sgt i32 %75, 4
  br i1 %cmp71, label %if.then80, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %76 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %v_samp_factor, align 4
  %cmp74 = icmp sle i32 %77, 0
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %78 = load ptr, ptr %compptr, align 8
  %v_samp_factor77 = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %v_samp_factor77, align 4
  %cmp78 = icmp sgt i32 %79, 4
  br i1 %cmp78, label %if.then80, label %if.end85

if.then80:                                        ; preds = %lor.lhs.false76, %lor.lhs.false73, %lor.lhs.false69, %for.body
  %80 = load ptr, ptr %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %err81, align 8
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %81, i32 0, i32 5
  store i32 16, ptr %msg_code82, align 8
  %82 = load ptr, ptr %cinfo.addr, align 8
  %err83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %err83, align 8
  %error_exit84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %error_exit84, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  call void %84(ptr noundef %85)
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %lor.lhs.false76
  %86 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i32 0, i32 38
  %87 = load i32, ptr %max_h_samp_factor86, align 8
  %88 = load ptr, ptr %compptr, align 8
  %h_samp_factor87 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %h_samp_factor87, align 8
  %cmp88 = icmp sgt i32 %87, %89
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end85
  %90 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i32 0, i32 38
  %91 = load i32, ptr %max_h_samp_factor90, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end85
  %92 = load ptr, ptr %compptr, align 8
  %h_samp_factor91 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %h_samp_factor91, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %91, %cond.true ], [ %93, %cond.false ]
  %94 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 38
  store i32 %cond, ptr %max_h_samp_factor92, align 8
  %95 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor93 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %95, i32 0, i32 39
  %96 = load i32, ptr %max_v_samp_factor93, align 4
  %97 = load ptr, ptr %compptr, align 8
  %v_samp_factor94 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i32 0, i32 3
  %98 = load i32, ptr %v_samp_factor94, align 4
  %cmp95 = icmp sgt i32 %96, %98
  br i1 %cmp95, label %cond.true97, label %cond.false99

cond.true97:                                      ; preds = %cond.end
  %99 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %99, i32 0, i32 39
  %100 = load i32, ptr %max_v_samp_factor98, align 4
  br label %cond.end101

cond.false99:                                     ; preds = %cond.end
  %101 = load ptr, ptr %compptr, align 8
  %v_samp_factor100 = getelementptr inbounds %struct.jpeg_component_info, ptr %101, i32 0, i32 3
  %102 = load i32, ptr %v_samp_factor100, align 4
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false99, %cond.true97
  %cond102 = phi i32 [ %100, %cond.true97 ], [ %102, %cond.false99 ]
  %103 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor103 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 39
  store i32 %cond102, ptr %max_v_samp_factor103, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end101
  %104 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, ptr %ci, align 4
  %105 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %105, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ci, align 4
  %106 = load ptr, ptr %cinfo.addr, align 8
  %comp_info104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %106, i32 0, i32 14
  %107 = load ptr, ptr %comp_info104, align 8
  store ptr %107, ptr %compptr, align 8
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc147, %for.end
  %108 = load i32, ptr %ci, align 4
  %109 = load ptr, ptr %cinfo.addr, align 8
  %num_components106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %109, i32 0, i32 12
  %110 = load i32, ptr %num_components106, align 4
  %cmp107 = icmp slt i32 %108, %110
  br i1 %cmp107, label %for.body109, label %for.end150

for.body109:                                      ; preds = %for.cond105
  %111 = load i32, ptr %ci, align 4
  %112 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %112, i32 0, i32 1
  store i32 %111, ptr %component_index, align 4
  %113 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %113, i32 0, i32 9
  store i32 8, ptr %DCT_scaled_size, align 4
  %114 = load ptr, ptr %cinfo.addr, align 8
  %image_width110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i32 0, i32 6
  %115 = load i32, ptr %image_width110, align 8
  %conv111 = zext i32 %115 to i64
  %116 = load ptr, ptr %compptr, align 8
  %h_samp_factor112 = getelementptr inbounds %struct.jpeg_component_info, ptr %116, i32 0, i32 2
  %117 = load i32, ptr %h_samp_factor112, align 8
  %conv113 = sext i32 %117 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %118 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i32 0, i32 38
  %119 = load i32, ptr %max_h_samp_factor115, align 8
  %mul116 = mul nsw i32 %119, 8
  %conv117 = sext i32 %mul116 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %mul114, i64 noundef %conv117)
  %conv118 = trunc i64 %call to i32
  %120 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i32 0, i32 7
  store i32 %conv118, ptr %width_in_blocks, align 4
  %121 = load ptr, ptr %cinfo.addr, align 8
  %image_height119 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %121, i32 0, i32 7
  %122 = load i32, ptr %image_height119, align 4
  %conv120 = zext i32 %122 to i64
  %123 = load ptr, ptr %compptr, align 8
  %v_samp_factor121 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i32 0, i32 3
  %124 = load i32, ptr %v_samp_factor121, align 4
  %conv122 = sext i32 %124 to i64
  %mul123 = mul nsw i64 %conv120, %conv122
  %125 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %125, i32 0, i32 39
  %126 = load i32, ptr %max_v_samp_factor124, align 4
  %mul125 = mul nsw i32 %126, 8
  %conv126 = sext i32 %mul125 to i64
  %call127 = call i64 @jdiv_round_up(i64 noundef %mul123, i64 noundef %conv126)
  %conv128 = trunc i64 %call127 to i32
  %127 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %127, i32 0, i32 8
  store i32 %conv128, ptr %height_in_blocks, align 8
  %128 = load ptr, ptr %cinfo.addr, align 8
  %image_width129 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %128, i32 0, i32 6
  %129 = load i32, ptr %image_width129, align 8
  %conv130 = zext i32 %129 to i64
  %130 = load ptr, ptr %compptr, align 8
  %h_samp_factor131 = getelementptr inbounds %struct.jpeg_component_info, ptr %130, i32 0, i32 2
  %131 = load i32, ptr %h_samp_factor131, align 8
  %conv132 = sext i32 %131 to i64
  %mul133 = mul nsw i64 %conv130, %conv132
  %132 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %132, i32 0, i32 38
  %133 = load i32, ptr %max_h_samp_factor134, align 8
  %conv135 = sext i32 %133 to i64
  %call136 = call i64 @jdiv_round_up(i64 noundef %mul133, i64 noundef %conv135)
  %conv137 = trunc i64 %call136 to i32
  %134 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %134, i32 0, i32 10
  store i32 %conv137, ptr %downsampled_width, align 8
  %135 = load ptr, ptr %cinfo.addr, align 8
  %image_height138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %135, i32 0, i32 7
  %136 = load i32, ptr %image_height138, align 4
  %conv139 = zext i32 %136 to i64
  %137 = load ptr, ptr %compptr, align 8
  %v_samp_factor140 = getelementptr inbounds %struct.jpeg_component_info, ptr %137, i32 0, i32 3
  %138 = load i32, ptr %v_samp_factor140, align 4
  %conv141 = sext i32 %138 to i64
  %mul142 = mul nsw i64 %conv139, %conv141
  %139 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor143 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %139, i32 0, i32 39
  %140 = load i32, ptr %max_v_samp_factor143, align 4
  %conv144 = sext i32 %140 to i64
  %call145 = call i64 @jdiv_round_up(i64 noundef %mul142, i64 noundef %conv144)
  %conv146 = trunc i64 %call145 to i32
  %141 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %141, i32 0, i32 11
  store i32 %conv146, ptr %downsampled_height, align 4
  %142 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %142, i32 0, i32 12
  store i32 1, ptr %component_needed, align 8
  br label %for.inc147

for.inc147:                                       ; preds = %for.body109
  %143 = load i32, ptr %ci, align 4
  %inc148 = add nsw i32 %143, 1
  store i32 %inc148, ptr %ci, align 4
  %144 = load ptr, ptr %compptr, align 8
  %incdec.ptr149 = getelementptr inbounds %struct.jpeg_component_info, ptr %144, i32 1
  store ptr %incdec.ptr149, ptr %compptr, align 8
  br label %for.cond105, !llvm.loop !8

for.end150:                                       ; preds = %for.cond105
  %145 = load ptr, ptr %cinfo.addr, align 8
  %image_height151 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %145, i32 0, i32 7
  %146 = load i32, ptr %image_height151, align 4
  %conv152 = zext i32 %146 to i64
  %147 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor153 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %147, i32 0, i32 39
  %148 = load i32, ptr %max_v_samp_factor153, align 4
  %mul154 = mul nsw i32 %148, 8
  %conv155 = sext i32 %mul154 to i64
  %call156 = call i64 @jdiv_round_up(i64 noundef %conv152, i64 noundef %conv155)
  %conv157 = trunc i64 %call156 to i32
  %149 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i32 0, i32 40
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 21
  %1 = load i32, ptr %num_scans, align 8
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 17, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %error_exit, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 22
  %11 = load ptr, ptr %scan_info, align 8
  store ptr %11, ptr %scanptr, align 8
  %12 = load ptr, ptr %scanptr, align 8
  %Ss3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %Ss3, align 4
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load ptr, ptr %scanptr, align 8
  %Se5 = getelementptr inbounds %struct.jpeg_scan_info, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %Se5, align 4
  %cmp6 = icmp ne i32 %15, 63
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 37
  store i32 1, ptr %progressive_mode, align 4
  %arrayidx8 = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i32], ptr %arrayidx8, i64 0, i64 0
  store ptr %arrayidx9, ptr %last_bitpos_ptr, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %if.then7
  %17 = load i32, ptr %ci, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 12
  %19 = load i32, ptr %num_components, align 4
  %cmp10 = icmp slt i32 %17, %19
  br i1 %cmp10, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %coefi, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %20 = load i32, ptr %coefi, align 4
  %cmp12 = icmp slt i32 %20, 64
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %21 = load ptr, ptr %last_bitpos_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %last_bitpos_ptr, align 8
  store i32 -1, ptr %21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %22 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %coefi, align 4
  br label %for.cond11, !llvm.loop !9

for.end:                                          ; preds = %for.cond11
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %23 = load i32, ptr %ci, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, ptr %ci, align 4
  br label %for.cond, !llvm.loop !10

for.end16:                                        ; preds = %for.cond
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 37
  store i32 0, ptr %progressive_mode17, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc23, %if.else
  %25 = load i32, ptr %ci, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %num_components19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 12
  %27 = load i32, ptr %num_components19, align 4
  %cmp20 = icmp slt i32 %25, %27
  br i1 %cmp20, label %for.body21, label %for.end25

for.body21:                                       ; preds = %for.cond18
  %28 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body21
  %29 = load i32, ptr %ci, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, ptr %ci, align 4
  br label %for.cond18, !llvm.loop !11

for.end25:                                        ; preds = %for.cond18
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %for.end16
  store i32 1, ptr %scanno, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc240, %if.end26
  %30 = load i32, ptr %scanno, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %num_scans28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %num_scans28, align 8
  %cmp29 = icmp sle i32 %30, %32
  br i1 %cmp29, label %for.body30, label %for.end243

for.body30:                                       ; preds = %for.cond27
  %33 = load ptr, ptr %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %comps_in_scan, align 4
  store i32 %34, ptr %ncomps, align 4
  %35 = load i32, ptr %ncomps, align 4
  %cmp31 = icmp sle i32 %35, 0
  br i1 %cmp31, label %if.then34, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %for.body30
  %36 = load i32, ptr %ncomps, align 4
  %cmp33 = icmp sgt i32 %36, 4
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %lor.lhs.false32, %for.body30
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i32 0, i32 5
  store i32 24, ptr %msg_code36, align 8
  %39 = load i32, ptr %ncomps, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err37, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 0
  store i32 %39, ptr %arrayidx39, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err40, align 8
  %msg_parm41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], ptr %msg_parm41, i64 0, i64 1
  store i32 4, ptr %arrayidx42, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err43, align 8
  %error_exit44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %error_exit44, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void %46(ptr noundef %47)
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %lor.lhs.false32
  store i32 0, ptr %ci, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc78, %if.end45
  %48 = load i32, ptr %ci, align 4
  %49 = load i32, ptr %ncomps, align 4
  %cmp47 = icmp slt i32 %48, %49
  br i1 %cmp47, label %for.body48, label %for.end80

for.body48:                                       ; preds = %for.cond46
  %50 = load ptr, ptr %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %ci, align 4
  %idxprom49 = sext i32 %51 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 %idxprom49
  %52 = load i32, ptr %arrayidx50, align 4
  store i32 %52, ptr %thisi, align 4
  %53 = load i32, ptr %thisi, align 4
  %cmp51 = icmp slt i32 %53, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %for.body48
  %54 = load i32, ptr %thisi, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %num_components53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 12
  %56 = load i32, ptr %num_components53, align 4
  %cmp54 = icmp sge i32 %54, %56
  br i1 %cmp54, label %if.then55, label %if.end63

if.then55:                                        ; preds = %lor.lhs.false52, %for.body48
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err56 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err56, align 8
  %msg_code57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 5
  store i32 17, ptr %msg_code57, align 8
  %59 = load i32, ptr %scanno, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err58, align 8
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 6
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %msg_parm59, i64 0, i64 0
  store i32 %59, ptr %arrayidx60, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err61, align 8
  %error_exit62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %error_exit62, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  call void %64(ptr noundef %65)
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %lor.lhs.false52
  %66 = load i32, ptr %ci, align 4
  %cmp64 = icmp sgt i32 %66, 0
  br i1 %cmp64, label %land.lhs.true, label %if.end77

land.lhs.true:                                    ; preds = %if.end63
  %67 = load i32, ptr %thisi, align 4
  %68 = load ptr, ptr %scanptr, align 8
  %component_index65 = getelementptr inbounds %struct.jpeg_scan_info, ptr %68, i32 0, i32 1
  %69 = load i32, ptr %ci, align 4
  %sub = sub nsw i32 %69, 1
  %idxprom66 = sext i32 %sub to i64
  %arrayidx67 = getelementptr inbounds [4 x i32], ptr %component_index65, i64 0, i64 %idxprom66
  %70 = load i32, ptr %arrayidx67, align 4
  %cmp68 = icmp sle i32 %67, %70
  br i1 %cmp68, label %if.then69, label %if.end77

if.then69:                                        ; preds = %land.lhs.true
  %71 = load ptr, ptr %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %err70, align 8
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i32 0, i32 5
  store i32 17, ptr %msg_code71, align 8
  %73 = load i32, ptr %scanno, align 4
  %74 = load ptr, ptr %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %err72, align 8
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i32 0, i32 6
  %arrayidx74 = getelementptr inbounds [8 x i32], ptr %msg_parm73, i64 0, i64 0
  store i32 %73, ptr %arrayidx74, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %err75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %err75, align 8
  %error_exit76 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %error_exit76, align 8
  %79 = load ptr, ptr %cinfo.addr, align 8
  call void %78(ptr noundef %79)
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %land.lhs.true, %if.end63
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %80 = load i32, ptr %ci, align 4
  %inc79 = add nsw i32 %80, 1
  store i32 %inc79, ptr %ci, align 4
  br label %for.cond46, !llvm.loop !12

for.end80:                                        ; preds = %for.cond46
  %81 = load ptr, ptr %scanptr, align 8
  %Ss81 = getelementptr inbounds %struct.jpeg_scan_info, ptr %81, i32 0, i32 2
  %82 = load i32, ptr %Ss81, align 4
  store i32 %82, ptr %Ss, align 4
  %83 = load ptr, ptr %scanptr, align 8
  %Se82 = getelementptr inbounds %struct.jpeg_scan_info, ptr %83, i32 0, i32 3
  %84 = load i32, ptr %Se82, align 4
  store i32 %84, ptr %Se, align 4
  %85 = load ptr, ptr %scanptr, align 8
  %Ah83 = getelementptr inbounds %struct.jpeg_scan_info, ptr %85, i32 0, i32 4
  %86 = load i32, ptr %Ah83, align 4
  store i32 %86, ptr %Ah, align 4
  %87 = load ptr, ptr %scanptr, align 8
  %Al84 = getelementptr inbounds %struct.jpeg_scan_info, ptr %87, i32 0, i32 5
  %88 = load i32, ptr %Al84, align 4
  store i32 %88, ptr %Al, align 4
  %89 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %89, i32 0, i32 37
  %90 = load i32, ptr %progressive_mode85, align 4
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %if.then86, label %if.else199

if.then86:                                        ; preds = %for.end80
  %91 = load i32, ptr %Ss, align 4
  %cmp87 = icmp slt i32 %91, 0
  br i1 %cmp87, label %if.then102, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.then86
  %92 = load i32, ptr %Ss, align 4
  %cmp89 = icmp sge i32 %92, 64
  br i1 %cmp89, label %if.then102, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false88
  %93 = load i32, ptr %Se, align 4
  %94 = load i32, ptr %Ss, align 4
  %cmp91 = icmp slt i32 %93, %94
  br i1 %cmp91, label %if.then102, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false90
  %95 = load i32, ptr %Se, align 4
  %cmp93 = icmp sge i32 %95, 64
  br i1 %cmp93, label %if.then102, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false92
  %96 = load i32, ptr %Ah, align 4
  %cmp95 = icmp slt i32 %96, 0
  br i1 %cmp95, label %if.then102, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false94
  %97 = load i32, ptr %Ah, align 4
  %cmp97 = icmp sgt i32 %97, 13
  br i1 %cmp97, label %if.then102, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false96
  %98 = load i32, ptr %Al, align 4
  %cmp99 = icmp slt i32 %98, 0
  br i1 %cmp99, label %if.then102, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false98
  %99 = load i32, ptr %Al, align 4
  %cmp101 = icmp sgt i32 %99, 13
  br i1 %cmp101, label %if.then102, label %if.end110

if.then102:                                       ; preds = %lor.lhs.false100, %lor.lhs.false98, %lor.lhs.false96, %lor.lhs.false94, %lor.lhs.false92, %lor.lhs.false90, %lor.lhs.false88, %if.then86
  %100 = load ptr, ptr %cinfo.addr, align 8
  %err103 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %err103, align 8
  %msg_code104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5
  store i32 15, ptr %msg_code104, align 8
  %102 = load i32, ptr %scanno, align 4
  %103 = load ptr, ptr %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %err105, align 8
  %msg_parm106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %104, i32 0, i32 6
  %arrayidx107 = getelementptr inbounds [8 x i32], ptr %msg_parm106, i64 0, i64 0
  store i32 %102, ptr %arrayidx107, align 4
  %105 = load ptr, ptr %cinfo.addr, align 8
  %err108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %err108, align 8
  %error_exit109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %error_exit109, align 8
  %108 = load ptr, ptr %cinfo.addr, align 8
  call void %107(ptr noundef %108)
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %lor.lhs.false100
  %109 = load i32, ptr %Ss, align 4
  %cmp111 = icmp eq i32 %109, 0
  br i1 %cmp111, label %if.then112, label %if.else123

if.then112:                                       ; preds = %if.end110
  %110 = load i32, ptr %Se, align 4
  %cmp113 = icmp ne i32 %110, 0
  br i1 %cmp113, label %if.then114, label %if.end122

if.then114:                                       ; preds = %if.then112
  %111 = load ptr, ptr %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %err115, align 8
  %msg_code116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i32 0, i32 5
  store i32 15, ptr %msg_code116, align 8
  %113 = load i32, ptr %scanno, align 4
  %114 = load ptr, ptr %cinfo.addr, align 8
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %err117, align 8
  %msg_parm118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i32 0, i32 6
  %arrayidx119 = getelementptr inbounds [8 x i32], ptr %msg_parm118, i64 0, i64 0
  store i32 %113, ptr %arrayidx119, align 4
  %116 = load ptr, ptr %cinfo.addr, align 8
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %err120, align 8
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %error_exit121, align 8
  %119 = load ptr, ptr %cinfo.addr, align 8
  call void %118(ptr noundef %119)
  br label %if.end122

if.end122:                                        ; preds = %if.then114, %if.then112
  br label %if.end134

if.else123:                                       ; preds = %if.end110
  %120 = load i32, ptr %ncomps, align 4
  %cmp124 = icmp ne i32 %120, 1
  br i1 %cmp124, label %if.then125, label %if.end133

if.then125:                                       ; preds = %if.else123
  %121 = load ptr, ptr %cinfo.addr, align 8
  %err126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %err126, align 8
  %msg_code127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i32 0, i32 5
  store i32 15, ptr %msg_code127, align 8
  %123 = load i32, ptr %scanno, align 4
  %124 = load ptr, ptr %cinfo.addr, align 8
  %err128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %err128, align 8
  %msg_parm129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i32 0, i32 6
  %arrayidx130 = getelementptr inbounds [8 x i32], ptr %msg_parm129, i64 0, i64 0
  store i32 %123, ptr %arrayidx130, align 4
  %126 = load ptr, ptr %cinfo.addr, align 8
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %err131, align 8
  %error_exit132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %error_exit132, align 8
  %129 = load ptr, ptr %cinfo.addr, align 8
  call void %128(ptr noundef %129)
  br label %if.end133

if.end133:                                        ; preds = %if.then125, %if.else123
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end122
  store i32 0, ptr %ci, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc196, %if.end134
  %130 = load i32, ptr %ci, align 4
  %131 = load i32, ptr %ncomps, align 4
  %cmp136 = icmp slt i32 %130, %131
  br i1 %cmp136, label %for.body137, label %for.end198

for.body137:                                      ; preds = %for.cond135
  %132 = load ptr, ptr %scanptr, align 8
  %component_index138 = getelementptr inbounds %struct.jpeg_scan_info, ptr %132, i32 0, i32 1
  %133 = load i32, ptr %ci, align 4
  %idxprom139 = sext i32 %133 to i64
  %arrayidx140 = getelementptr inbounds [4 x i32], ptr %component_index138, i64 0, i64 %idxprom139
  %134 = load i32, ptr %arrayidx140, align 4
  %idxprom141 = sext i32 %134 to i64
  %arrayidx142 = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos, i64 0, i64 %idxprom141
  %arrayidx143 = getelementptr inbounds [64 x i32], ptr %arrayidx142, i64 0, i64 0
  store ptr %arrayidx143, ptr %last_bitpos_ptr, align 8
  %135 = load i32, ptr %Ss, align 4
  %cmp144 = icmp ne i32 %135, 0
  br i1 %cmp144, label %land.lhs.true145, label %if.end156

land.lhs.true145:                                 ; preds = %for.body137
  %136 = load ptr, ptr %last_bitpos_ptr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %136, i64 0
  %137 = load i32, ptr %arrayidx146, align 4
  %cmp147 = icmp slt i32 %137, 0
  br i1 %cmp147, label %if.then148, label %if.end156

if.then148:                                       ; preds = %land.lhs.true145
  %138 = load ptr, ptr %cinfo.addr, align 8
  %err149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %138, i32 0, i32 0
  %139 = load ptr, ptr %err149, align 8
  %msg_code150 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i32 0, i32 5
  store i32 15, ptr %msg_code150, align 8
  %140 = load i32, ptr %scanno, align 4
  %141 = load ptr, ptr %cinfo.addr, align 8
  %err151 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %err151, align 8
  %msg_parm152 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %142, i32 0, i32 6
  %arrayidx153 = getelementptr inbounds [8 x i32], ptr %msg_parm152, i64 0, i64 0
  store i32 %140, ptr %arrayidx153, align 4
  %143 = load ptr, ptr %cinfo.addr, align 8
  %err154 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %err154, align 8
  %error_exit155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %error_exit155, align 8
  %146 = load ptr, ptr %cinfo.addr, align 8
  call void %145(ptr noundef %146)
  br label %if.end156

if.end156:                                        ; preds = %if.then148, %land.lhs.true145, %for.body137
  %147 = load i32, ptr %Ss, align 4
  store i32 %147, ptr %coefi, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc193, %if.end156
  %148 = load i32, ptr %coefi, align 4
  %149 = load i32, ptr %Se, align 4
  %cmp158 = icmp sle i32 %148, %149
  br i1 %cmp158, label %for.body159, label %for.end195

for.body159:                                      ; preds = %for.cond157
  %150 = load ptr, ptr %last_bitpos_ptr, align 8
  %151 = load i32, ptr %coefi, align 4
  %idxprom160 = sext i32 %151 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %150, i64 %idxprom160
  %152 = load i32, ptr %arrayidx161, align 4
  %cmp162 = icmp slt i32 %152, 0
  br i1 %cmp162, label %if.then163, label %if.else174

if.then163:                                       ; preds = %for.body159
  %153 = load i32, ptr %Ah, align 4
  %cmp164 = icmp ne i32 %153, 0
  br i1 %cmp164, label %if.then165, label %if.end173

if.then165:                                       ; preds = %if.then163
  %154 = load ptr, ptr %cinfo.addr, align 8
  %err166 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err166, align 8
  %msg_code167 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %155, i32 0, i32 5
  store i32 15, ptr %msg_code167, align 8
  %156 = load i32, ptr %scanno, align 4
  %157 = load ptr, ptr %cinfo.addr, align 8
  %err168 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %err168, align 8
  %msg_parm169 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %158, i32 0, i32 6
  %arrayidx170 = getelementptr inbounds [8 x i32], ptr %msg_parm169, i64 0, i64 0
  store i32 %156, ptr %arrayidx170, align 4
  %159 = load ptr, ptr %cinfo.addr, align 8
  %err171 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %err171, align 8
  %error_exit172 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %error_exit172, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  call void %161(ptr noundef %162)
  br label %if.end173

if.end173:                                        ; preds = %if.then165, %if.then163
  br label %if.end190

if.else174:                                       ; preds = %for.body159
  %163 = load i32, ptr %Ah, align 4
  %164 = load ptr, ptr %last_bitpos_ptr, align 8
  %165 = load i32, ptr %coefi, align 4
  %idxprom175 = sext i32 %165 to i64
  %arrayidx176 = getelementptr inbounds i32, ptr %164, i64 %idxprom175
  %166 = load i32, ptr %arrayidx176, align 4
  %cmp177 = icmp ne i32 %163, %166
  br i1 %cmp177, label %if.then181, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.else174
  %167 = load i32, ptr %Al, align 4
  %168 = load i32, ptr %Ah, align 4
  %sub179 = sub nsw i32 %168, 1
  %cmp180 = icmp ne i32 %167, %sub179
  br i1 %cmp180, label %if.then181, label %if.end189

if.then181:                                       ; preds = %lor.lhs.false178, %if.else174
  %169 = load ptr, ptr %cinfo.addr, align 8
  %err182 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %err182, align 8
  %msg_code183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %170, i32 0, i32 5
  store i32 15, ptr %msg_code183, align 8
  %171 = load i32, ptr %scanno, align 4
  %172 = load ptr, ptr %cinfo.addr, align 8
  %err184 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %err184, align 8
  %msg_parm185 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %173, i32 0, i32 6
  %arrayidx186 = getelementptr inbounds [8 x i32], ptr %msg_parm185, i64 0, i64 0
  store i32 %171, ptr %arrayidx186, align 4
  %174 = load ptr, ptr %cinfo.addr, align 8
  %err187 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %err187, align 8
  %error_exit188 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %error_exit188, align 8
  %177 = load ptr, ptr %cinfo.addr, align 8
  call void %176(ptr noundef %177)
  br label %if.end189

if.end189:                                        ; preds = %if.then181, %lor.lhs.false178
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end173
  %178 = load i32, ptr %Al, align 4
  %179 = load ptr, ptr %last_bitpos_ptr, align 8
  %180 = load i32, ptr %coefi, align 4
  %idxprom191 = sext i32 %180 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %179, i64 %idxprom191
  store i32 %178, ptr %arrayidx192, align 4
  br label %for.inc193

for.inc193:                                       ; preds = %if.end190
  %181 = load i32, ptr %coefi, align 4
  %inc194 = add nsw i32 %181, 1
  store i32 %inc194, ptr %coefi, align 4
  br label %for.cond157, !llvm.loop !13

for.end195:                                       ; preds = %for.cond157
  br label %for.inc196

for.inc196:                                       ; preds = %for.end195
  %182 = load i32, ptr %ci, align 4
  %inc197 = add nsw i32 %182, 1
  store i32 %inc197, ptr %ci, align 4
  br label %for.cond135, !llvm.loop !14

for.end198:                                       ; preds = %for.cond135
  br label %if.end239

if.else199:                                       ; preds = %for.end80
  %183 = load i32, ptr %Ss, align 4
  %cmp200 = icmp ne i32 %183, 0
  br i1 %cmp200, label %if.then207, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %if.else199
  %184 = load i32, ptr %Se, align 4
  %cmp202 = icmp ne i32 %184, 63
  br i1 %cmp202, label %if.then207, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %lor.lhs.false201
  %185 = load i32, ptr %Ah, align 4
  %cmp204 = icmp ne i32 %185, 0
  br i1 %cmp204, label %if.then207, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %lor.lhs.false203
  %186 = load i32, ptr %Al, align 4
  %cmp206 = icmp ne i32 %186, 0
  br i1 %cmp206, label %if.then207, label %if.end215

if.then207:                                       ; preds = %lor.lhs.false205, %lor.lhs.false203, %lor.lhs.false201, %if.else199
  %187 = load ptr, ptr %cinfo.addr, align 8
  %err208 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %187, i32 0, i32 0
  %188 = load ptr, ptr %err208, align 8
  %msg_code209 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i32 0, i32 5
  store i32 15, ptr %msg_code209, align 8
  %189 = load i32, ptr %scanno, align 4
  %190 = load ptr, ptr %cinfo.addr, align 8
  %err210 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %190, i32 0, i32 0
  %191 = load ptr, ptr %err210, align 8
  %msg_parm211 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %191, i32 0, i32 6
  %arrayidx212 = getelementptr inbounds [8 x i32], ptr %msg_parm211, i64 0, i64 0
  store i32 %189, ptr %arrayidx212, align 4
  %192 = load ptr, ptr %cinfo.addr, align 8
  %err213 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %err213, align 8
  %error_exit214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %error_exit214, align 8
  %195 = load ptr, ptr %cinfo.addr, align 8
  call void %194(ptr noundef %195)
  br label %if.end215

if.end215:                                        ; preds = %if.then207, %lor.lhs.false205
  store i32 0, ptr %ci, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc236, %if.end215
  %196 = load i32, ptr %ci, align 4
  %197 = load i32, ptr %ncomps, align 4
  %cmp217 = icmp slt i32 %196, %197
  br i1 %cmp217, label %for.body218, label %for.end238

for.body218:                                      ; preds = %for.cond216
  %198 = load ptr, ptr %scanptr, align 8
  %component_index219 = getelementptr inbounds %struct.jpeg_scan_info, ptr %198, i32 0, i32 1
  %199 = load i32, ptr %ci, align 4
  %idxprom220 = sext i32 %199 to i64
  %arrayidx221 = getelementptr inbounds [4 x i32], ptr %component_index219, i64 0, i64 %idxprom220
  %200 = load i32, ptr %arrayidx221, align 4
  store i32 %200, ptr %thisi, align 4
  %201 = load i32, ptr %thisi, align 4
  %idxprom222 = sext i32 %201 to i64
  %arrayidx223 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom222
  %202 = load i32, ptr %arrayidx223, align 4
  %tobool224 = icmp ne i32 %202, 0
  br i1 %tobool224, label %if.then225, label %if.end233

if.then225:                                       ; preds = %for.body218
  %203 = load ptr, ptr %cinfo.addr, align 8
  %err226 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %203, i32 0, i32 0
  %204 = load ptr, ptr %err226, align 8
  %msg_code227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %204, i32 0, i32 5
  store i32 17, ptr %msg_code227, align 8
  %205 = load i32, ptr %scanno, align 4
  %206 = load ptr, ptr %cinfo.addr, align 8
  %err228 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %206, i32 0, i32 0
  %207 = load ptr, ptr %err228, align 8
  %msg_parm229 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %207, i32 0, i32 6
  %arrayidx230 = getelementptr inbounds [8 x i32], ptr %msg_parm229, i64 0, i64 0
  store i32 %205, ptr %arrayidx230, align 4
  %208 = load ptr, ptr %cinfo.addr, align 8
  %err231 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %208, i32 0, i32 0
  %209 = load ptr, ptr %err231, align 8
  %error_exit232 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %209, i32 0, i32 0
  %210 = load ptr, ptr %error_exit232, align 8
  %211 = load ptr, ptr %cinfo.addr, align 8
  call void %210(ptr noundef %211)
  br label %if.end233

if.end233:                                        ; preds = %if.then225, %for.body218
  %212 = load i32, ptr %thisi, align 4
  %idxprom234 = sext i32 %212 to i64
  %arrayidx235 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom234
  store i32 1, ptr %arrayidx235, align 4
  br label %for.inc236

for.inc236:                                       ; preds = %if.end233
  %213 = load i32, ptr %ci, align 4
  %inc237 = add nsw i32 %213, 1
  store i32 %inc237, ptr %ci, align 4
  br label %for.cond216, !llvm.loop !15

for.end238:                                       ; preds = %for.cond216
  br label %if.end239

if.end239:                                        ; preds = %for.end238, %for.end198
  br label %for.inc240

for.inc240:                                       ; preds = %if.end239
  %214 = load ptr, ptr %scanptr, align 8
  %incdec.ptr241 = getelementptr inbounds %struct.jpeg_scan_info, ptr %214, i32 1
  store ptr %incdec.ptr241, ptr %scanptr, align 8
  %215 = load i32, ptr %scanno, align 4
  %inc242 = add nsw i32 %215, 1
  store i32 %inc242, ptr %scanno, align 4
  br label %for.cond27, !llvm.loop !16

for.end243:                                       ; preds = %for.cond27
  %216 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode244 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %216, i32 0, i32 37
  %217 = load i32, ptr %progressive_mode244, align 4
  %tobool245 = icmp ne i32 %217, 0
  br i1 %tobool245, label %if.then246, label %if.else264

if.then246:                                       ; preds = %for.end243
  store i32 0, ptr %ci, align 4
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc261, %if.then246
  %218 = load i32, ptr %ci, align 4
  %219 = load ptr, ptr %cinfo.addr, align 8
  %num_components248 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %219, i32 0, i32 12
  %220 = load i32, ptr %num_components248, align 4
  %cmp249 = icmp slt i32 %218, %220
  br i1 %cmp249, label %for.body250, label %for.end263

for.body250:                                      ; preds = %for.cond247
  %221 = load i32, ptr %ci, align 4
  %idxprom251 = sext i32 %221 to i64
  %arrayidx252 = getelementptr inbounds [10 x [64 x i32]], ptr %last_bitpos, i64 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [64 x i32], ptr %arrayidx252, i64 0, i64 0
  %222 = load i32, ptr %arrayidx253, align 4
  %cmp254 = icmp slt i32 %222, 0
  br i1 %cmp254, label %if.then255, label %if.end260

if.then255:                                       ; preds = %for.body250
  %223 = load ptr, ptr %cinfo.addr, align 8
  %err256 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %223, i32 0, i32 0
  %224 = load ptr, ptr %err256, align 8
  %msg_code257 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %224, i32 0, i32 5
  store i32 44, ptr %msg_code257, align 8
  %225 = load ptr, ptr %cinfo.addr, align 8
  %err258 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %225, i32 0, i32 0
  %226 = load ptr, ptr %err258, align 8
  %error_exit259 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %error_exit259, align 8
  %228 = load ptr, ptr %cinfo.addr, align 8
  call void %227(ptr noundef %228)
  br label %if.end260

if.end260:                                        ; preds = %if.then255, %for.body250
  br label %for.inc261

for.inc261:                                       ; preds = %if.end260
  %229 = load i32, ptr %ci, align 4
  %inc262 = add nsw i32 %229, 1
  store i32 %inc262, ptr %ci, align 4
  br label %for.cond247, !llvm.loop !17

for.end263:                                       ; preds = %for.cond247
  br label %if.end281

if.else264:                                       ; preds = %for.end243
  store i32 0, ptr %ci, align 4
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc278, %if.else264
  %230 = load i32, ptr %ci, align 4
  %231 = load ptr, ptr %cinfo.addr, align 8
  %num_components266 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %231, i32 0, i32 12
  %232 = load i32, ptr %num_components266, align 4
  %cmp267 = icmp slt i32 %230, %232
  br i1 %cmp267, label %for.body268, label %for.end280

for.body268:                                      ; preds = %for.cond265
  %233 = load i32, ptr %ci, align 4
  %idxprom269 = sext i32 %233 to i64
  %arrayidx270 = getelementptr inbounds [10 x i32], ptr %component_sent, i64 0, i64 %idxprom269
  %234 = load i32, ptr %arrayidx270, align 4
  %tobool271 = icmp ne i32 %234, 0
  br i1 %tobool271, label %if.end277, label %if.then272

if.then272:                                       ; preds = %for.body268
  %235 = load ptr, ptr %cinfo.addr, align 8
  %err273 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %235, i32 0, i32 0
  %236 = load ptr, ptr %err273, align 8
  %msg_code274 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %236, i32 0, i32 5
  store i32 44, ptr %msg_code274, align 8
  %237 = load ptr, ptr %cinfo.addr, align 8
  %err275 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %err275, align 8
  %error_exit276 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %238, i32 0, i32 0
  %239 = load ptr, ptr %error_exit276, align 8
  %240 = load ptr, ptr %cinfo.addr, align 8
  call void %239(ptr noundef %240)
  br label %if.end277

if.end277:                                        ; preds = %if.then272, %for.body268
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %241 = load i32, ptr %ci, align 4
  %inc279 = add nsw i32 %241, 1
  store i32 %inc279, ptr %ci, align 4
  br label %for.cond265, !llvm.loop !18

for.end280:                                       ; preds = %for.cond265
  br label %if.end281

if.end281:                                        ; preds = %for.end280, %for.end263
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @select_scan_parameters(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %master = alloca ptr, align 8
  %scanptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 22
  %1 = load ptr, ptr %scan_info, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 51
  %3 = load ptr, ptr %master1, align 8
  store ptr %3, ptr %master, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %scan_info2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 22
  %5 = load ptr, ptr %scan_info2, align 8
  %6 = load ptr, ptr %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %scan_number, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %scanptr, align 8
  %8 = load ptr, ptr %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %comps_in_scan, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 41
  store i32 %9, ptr %comps_in_scan3, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %ci, align 4
  %12 = load ptr, ptr %scanptr, align 8
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_scan_info, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %comps_in_scan4, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %comp_info, align 8
  %16 = load ptr, ptr %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 %idxprom6
  %19 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 42
  %20 = load i32, ptr %ci, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom8
  store ptr %arrayidx7, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %Ss, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %Ss10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 47
  store i32 %23, ptr %Ss10, align 4
  %25 = load ptr, ptr %scanptr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %Se, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %Se11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 48
  store i32 %26, ptr %Se11, align 8
  %28 = load ptr, ptr %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %Ah, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %Ah12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 49
  store i32 %29, ptr %Ah12, align 4
  %31 = load ptr, ptr %scanptr, align 8
  %Al = getelementptr inbounds %struct.jpeg_scan_info, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %Al, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %Al13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 50
  store i32 %32, ptr %Al13, align 8
  br label %if.end42

if.else:                                          ; preds = %entry
  %34 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 12
  %35 = load i32, ptr %num_components, align 4
  %cmp14 = icmp sgt i32 %35, 4
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  %num_components16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 12
  %39 = load i32, ptr %num_components16, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err17, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %39, ptr %arrayidx18, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err19, align 8
  %msg_parm20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [8 x i32], ptr %msg_parm20, i64 0, i64 1
  store i32 4, ptr %arrayidx21, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err22, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %error_exit, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void %46(ptr noundef %47)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  %48 = load ptr, ptr %cinfo.addr, align 8
  %num_components23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 12
  %49 = load i32, ptr %num_components23, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i32 0, i32 41
  store i32 %49, ptr %comps_in_scan24, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc35, %if.end
  %51 = load i32, ptr %ci, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %num_components26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i32 0, i32 12
  %53 = load i32, ptr %num_components26, align 4
  %cmp27 = icmp slt i32 %51, %53
  br i1 %cmp27, label %for.body28, label %for.end37

for.body28:                                       ; preds = %for.cond25
  %54 = load ptr, ptr %cinfo.addr, align 8
  %comp_info29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i32 0, i32 14
  %55 = load ptr, ptr %comp_info29, align 8
  %56 = load i32, ptr %ci, align 4
  %idxprom30 = sext i32 %56 to i64
  %arrayidx31 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 %idxprom30
  %57 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 42
  %58 = load i32, ptr %ci, align 4
  %idxprom33 = sext i32 %58 to i64
  %arrayidx34 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info32, i64 0, i64 %idxprom33
  store ptr %arrayidx31, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body28
  %59 = load i32, ptr %ci, align 4
  %inc36 = add nsw i32 %59, 1
  store i32 %inc36, ptr %ci, align 4
  br label %for.cond25, !llvm.loop !20

for.end37:                                        ; preds = %for.cond25
  %60 = load ptr, ptr %cinfo.addr, align 8
  %Ss38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i32 0, i32 47
  store i32 0, ptr %Ss38, align 4
  %61 = load ptr, ptr %cinfo.addr, align 8
  %Se39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 48
  store i32 63, ptr %Se39, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  %Ah40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i32 0, i32 49
  store i32 0, ptr %Ah40, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %Al41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 50
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 41
  %1 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %compptr, align 8
  %4 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %width_in_blocks, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 43
  store i32 %5, ptr %MCUs_per_row, align 8
  %7 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %height_in_blocks, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 44
  store i32 %8, ptr %MCU_rows_in_scan, align 4
  %10 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 13
  store i32 1, ptr %MCU_width, align 4
  %11 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 14
  store i32 1, ptr %MCU_height, align 8
  %12 = load ptr, ptr %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 0, i32 15
  store i32 1, ptr %MCU_blocks, align 4
  %13 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 16
  store i32 8, ptr %MCU_sample_width, align 8
  %14 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 17
  store i32 1, ptr %last_col_width, align 4
  %15 = load ptr, ptr %compptr, align 8
  %height_in_blocks1 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %height_in_blocks1, align 8
  %17 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %v_samp_factor, align 4
  %rem = urem i32 %16, %18
  store i32 %rem, ptr %tmp, align 4
  %19 = load i32, ptr %tmp, align 4
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %20 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %v_samp_factor4, align 4
  store i32 %21, ptr %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %22 = load i32, ptr %tmp, align 4
  %23 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 18
  store i32 %22, ptr %last_row_height, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 45
  store i32 1, ptr %blocks_in_MCU, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 46
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 0
  store i32 0, ptr %arrayidx5, align 4
  br label %if.end79

if.else:                                          ; preds = %entry
  %26 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 41
  %27 = load i32, ptr %comps_in_scan6, align 4
  %cmp7 = icmp sle i32 %27, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %28 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 41
  %29 = load i32, ptr %comps_in_scan8, align 4
  %cmp9 = icmp sgt i32 %29, 4
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 41
  %33 = load i32, ptr %comps_in_scan11, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %33, ptr %arrayidx13, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err14, align 8
  %msg_parm15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %msg_parm15, i64 0, i64 1
  store i32 4, ptr %arrayidx16, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err17, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %error_exit, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void %40(ptr noundef %41)
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %lor.lhs.false
  %42 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 6
  %43 = load i32, ptr %image_width, align 8
  %conv = zext i32 %43 to i64
  %44 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 38
  %45 = load i32, ptr %max_h_samp_factor, align 8
  %mul = mul nsw i32 %45, 8
  %conv19 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef %conv19)
  %conv20 = trunc i64 %call to i32
  %46 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %46, i32 0, i32 43
  store i32 %conv20, ptr %MCUs_per_row21, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 7
  %48 = load i32, ptr %image_height, align 4
  %conv22 = zext i32 %48 to i64
  %49 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 39
  %50 = load i32, ptr %max_v_samp_factor, align 4
  %mul23 = mul nsw i32 %50, 8
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef %conv24)
  %conv26 = trunc i64 %call25 to i32
  %51 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 44
  store i32 %conv26, ptr %MCU_rows_in_scan27, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i32 0, i32 45
  store i32 0, ptr %blocks_in_MCU28, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %53 = load i32, ptr %ci, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i32 0, i32 41
  %55 = load i32, ptr %comps_in_scan29, align 4
  %cmp30 = icmp slt i32 %53, %55
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i32 0, i32 42
  %57 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %57 to i64
  %arrayidx33 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info32, i64 0, i64 %idxprom
  %58 = load ptr, ptr %arrayidx33, align 8
  store ptr %58, ptr %compptr, align 8
  %59 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %h_samp_factor, align 8
  %61 = load ptr, ptr %compptr, align 8
  %MCU_width34 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 13
  store i32 %60, ptr %MCU_width34, align 4
  %62 = load ptr, ptr %compptr, align 8
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i32 0, i32 3
  %63 = load i32, ptr %v_samp_factor35, align 4
  %64 = load ptr, ptr %compptr, align 8
  %MCU_height36 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i32 0, i32 14
  store i32 %63, ptr %MCU_height36, align 8
  %65 = load ptr, ptr %compptr, align 8
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i32 0, i32 13
  %66 = load i32, ptr %MCU_width37, align 4
  %67 = load ptr, ptr %compptr, align 8
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 14
  %68 = load i32, ptr %MCU_height38, align 8
  %mul39 = mul nsw i32 %66, %68
  %69 = load ptr, ptr %compptr, align 8
  %MCU_blocks40 = getelementptr inbounds %struct.jpeg_component_info, ptr %69, i32 0, i32 15
  store i32 %mul39, ptr %MCU_blocks40, align 4
  %70 = load ptr, ptr %compptr, align 8
  %MCU_width41 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i32 0, i32 13
  %71 = load i32, ptr %MCU_width41, align 4
  %mul42 = mul nsw i32 %71, 8
  %72 = load ptr, ptr %compptr, align 8
  %MCU_sample_width43 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i32 0, i32 16
  store i32 %mul42, ptr %MCU_sample_width43, align 8
  %73 = load ptr, ptr %compptr, align 8
  %width_in_blocks44 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i32 0, i32 7
  %74 = load i32, ptr %width_in_blocks44, align 4
  %75 = load ptr, ptr %compptr, align 8
  %MCU_width45 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i32 0, i32 13
  %76 = load i32, ptr %MCU_width45, align 4
  %rem46 = urem i32 %74, %76
  store i32 %rem46, ptr %tmp, align 4
  %77 = load i32, ptr %tmp, align 4
  %cmp47 = icmp eq i32 %77, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body
  %78 = load ptr, ptr %compptr, align 8
  %MCU_width50 = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i32 0, i32 13
  %79 = load i32, ptr %MCU_width50, align 4
  store i32 %79, ptr %tmp, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body
  %80 = load i32, ptr %tmp, align 4
  %81 = load ptr, ptr %compptr, align 8
  %last_col_width52 = getelementptr inbounds %struct.jpeg_component_info, ptr %81, i32 0, i32 17
  store i32 %80, ptr %last_col_width52, align 4
  %82 = load ptr, ptr %compptr, align 8
  %height_in_blocks53 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 8
  %83 = load i32, ptr %height_in_blocks53, align 8
  %84 = load ptr, ptr %compptr, align 8
  %MCU_height54 = getelementptr inbounds %struct.jpeg_component_info, ptr %84, i32 0, i32 14
  %85 = load i32, ptr %MCU_height54, align 8
  %rem55 = urem i32 %83, %85
  store i32 %rem55, ptr %tmp, align 4
  %86 = load i32, ptr %tmp, align 4
  %cmp56 = icmp eq i32 %86, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end51
  %87 = load ptr, ptr %compptr, align 8
  %MCU_height59 = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i32 0, i32 14
  %88 = load i32, ptr %MCU_height59, align 8
  store i32 %88, ptr %tmp, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end51
  %89 = load i32, ptr %tmp, align 4
  %90 = load ptr, ptr %compptr, align 8
  %last_row_height61 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i32 0, i32 18
  store i32 %89, ptr %last_row_height61, align 8
  %91 = load ptr, ptr %compptr, align 8
  %MCU_blocks62 = getelementptr inbounds %struct.jpeg_component_info, ptr %91, i32 0, i32 15
  %92 = load i32, ptr %MCU_blocks62, align 4
  store i32 %92, ptr %mcublks, align 4
  %93 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %93, i32 0, i32 45
  %94 = load i32, ptr %blocks_in_MCU63, align 8
  %95 = load i32, ptr %mcublks, align 4
  %add = add nsw i32 %94, %95
  %cmp64 = icmp sgt i32 %add, 10
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end60
  %96 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err67, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i32 0, i32 5
  store i32 11, ptr %msg_code68, align 8
  %98 = load ptr, ptr %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %err69, align 8
  %error_exit70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %error_exit70, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  call void %100(ptr noundef %101)
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end60
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end71
  %102 = load i32, ptr %mcublks, align 4
  %dec = add nsw i32 %102, -1
  store i32 %dec, ptr %mcublks, align 4
  %cmp72 = icmp sgt i32 %102, 0
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %103 = load i32, ptr %ci, align 4
  %104 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %104, i32 0, i32 46
  %105 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 45
  %106 = load i32, ptr %blocks_in_MCU75, align 8
  %inc = add nsw i32 %106, 1
  store i32 %inc, ptr %blocks_in_MCU75, align 8
  %idxprom76 = sext i32 %106 to i64
  %arrayidx77 = getelementptr inbounds [10 x i32], ptr %MCU_membership74, i64 0, i64 %idxprom76
  store i32 %103, ptr %arrayidx77, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %107 = load i32, ptr %ci, align 4
  %inc78 = add nsw i32 %107, 1
  store i32 %inc78, ptr %ci, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end79

if.end79:                                         ; preds = %for.end, %if.end
  %108 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %108, i32 0, i32 30
  %109 = load i32, ptr %restart_in_rows, align 4
  %cmp80 = icmp sgt i32 %109, 0
  br i1 %cmp80, label %if.then82, label %if.end91

if.then82:                                        ; preds = %if.end79
  %110 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %110, i32 0, i32 30
  %111 = load i32, ptr %restart_in_rows83, align 4
  %conv84 = sext i32 %111 to i64
  %112 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i32 0, i32 43
  %113 = load i32, ptr %MCUs_per_row85, align 8
  %conv86 = zext i32 %113 to i64
  %mul87 = mul nsw i64 %conv84, %conv86
  store i64 %mul87, ptr %nominal, align 8
  %114 = load i64, ptr %nominal, align 8
  %cmp88 = icmp slt i64 %114, 65535
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then82
  %115 = load i64, ptr %nominal, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then82
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %115, %cond.true ], [ 65535, %cond.false ]
  %conv90 = trunc i64 %cond to i32
  %116 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %116, i32 0, i32 29
  store i32 %conv90, ptr %restart_interval, align 8
  br label %if.end91

if.end91:                                         ; preds = %cond.end, %if.end79
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
