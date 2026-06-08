; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jdcolor.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jdcolor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, ptr, ptr, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_color_deconverter(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  store ptr %call, ptr %cconvert, align 8
  %4 = load ptr, ptr %cconvert, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 82
  store ptr %4, ptr %cconvert1, align 8
  %6 = load ptr, ptr %cconvert, align 8
  %pub = getelementptr inbounds %struct.my_color_deconverter, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub, i32 0, i32 0
  store ptr @start_pass_dcolor, ptr %start_pass, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %jpeg_color_space, align 4
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 4, label %sw.bb12
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %num_components, align 8
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 8, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  %17 = load ptr, ptr %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %num_components4, align 8
  %cmp5 = icmp ne i32 %18, 3
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %sw.bb3
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 8, ptr %msg_code8, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err9, align 8
  %error_exit10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit10, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %sw.bb3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry, %entry
  %25 = load ptr, ptr %cinfo.addr, align 8
  %num_components13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %num_components13, align 8
  %cmp14 = icmp ne i32 %26, 4
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %sw.bb12
  %27 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5
  store i32 8, ptr %msg_code17, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %err18, align 8
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %error_exit19, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  call void %31(ptr noundef %32)
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %sw.bb12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %33 = load ptr, ptr %cinfo.addr, align 8
  %num_components21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 8
  %34 = load i32, ptr %num_components21, align 8
  %cmp22 = icmp slt i32 %34, 1
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %sw.default
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5
  store i32 8, ptr %msg_code25, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err26, align 8
  %error_exit27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %error_exit27, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  call void %39(ptr noundef %40)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %if.end20, %if.end11, %if.end
  %41 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %out_color_space, align 8
  switch i32 %42, label %sw.default83 [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb43
    i32 4, label %sw.bb63
  ]

sw.bb29:                                          ; preds = %sw.epilog
  %43 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 28
  store i32 1, ptr %out_color_components, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 9
  %45 = load i32, ptr %jpeg_color_space30, align 4
  %cmp31 = icmp eq i32 %45, 1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb29
  %46 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 9
  %47 = load i32, ptr %jpeg_color_space32, align 4
  %cmp33 = icmp eq i32 %47, 3
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %lor.lhs.false, %sw.bb29
  %48 = load ptr, ptr %cconvert, align 8
  %pub35 = getelementptr inbounds %struct.my_color_deconverter, ptr %48, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub35, i32 0, i32 1
  store ptr @grayscale_convert, ptr %color_convert, align 8
  store i32 1, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then34
  %49 = load i32, ptr %ci, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %num_components36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 8
  %51 = load i32, ptr %num_components36, align 8
  %cmp37 = icmp slt i32 %49, %51
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 43
  %53 = load ptr, ptr %comp_info, align 8
  %54 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i64 %idxprom
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx, i32 0, i32 12
  store i32 0, ptr %component_needed, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false
  %56 = load ptr, ptr %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %err38, align 8
  %msg_code39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i32 0, i32 5
  store i32 25, ptr %msg_code39, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err40, align 8
  %error_exit41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %error_exit41, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  call void %60(ptr noundef %61)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %for.end
  br label %sw.epilog98

sw.bb43:                                          ; preds = %sw.epilog
  %62 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 28
  store i32 3, ptr %out_color_components44, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 9
  %64 = load i32, ptr %jpeg_color_space45, align 4
  %cmp46 = icmp eq i32 %64, 3
  br i1 %cmp46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %sw.bb43
  %65 = load ptr, ptr %cconvert, align 8
  %pub48 = getelementptr inbounds %struct.my_color_deconverter, ptr %65, i32 0, i32 0
  %color_convert49 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub48, i32 0, i32 1
  store ptr @ycc_rgb_convert, ptr %color_convert49, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  call void @build_ycc_rgb_table(ptr noundef %66)
  br label %if.end62

if.else50:                                        ; preds = %sw.bb43
  %67 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 9
  %68 = load i32, ptr %jpeg_color_space51, align 4
  %cmp52 = icmp eq i32 %68, 2
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.else50
  %69 = load ptr, ptr %cconvert, align 8
  %pub54 = getelementptr inbounds %struct.my_color_deconverter, ptr %69, i32 0, i32 0
  %color_convert55 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub54, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert55, align 8
  br label %if.end61

if.else56:                                        ; preds = %if.else50
  %70 = load ptr, ptr %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %err57, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i32 0, i32 5
  store i32 25, ptr %msg_code58, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %err59, align 8
  %error_exit60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %error_exit60, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  call void %74(ptr noundef %75)
  br label %if.end61

if.end61:                                         ; preds = %if.else56, %if.then53
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then47
  br label %sw.epilog98

sw.bb63:                                          ; preds = %sw.epilog
  %76 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 28
  store i32 4, ptr %out_color_components64, align 8
  %77 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 9
  %78 = load i32, ptr %jpeg_color_space65, align 4
  %cmp66 = icmp eq i32 %78, 5
  br i1 %cmp66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %sw.bb63
  %79 = load ptr, ptr %cconvert, align 8
  %pub68 = getelementptr inbounds %struct.my_color_deconverter, ptr %79, i32 0, i32 0
  %color_convert69 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub68, i32 0, i32 1
  store ptr @ycck_cmyk_convert, ptr %color_convert69, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  call void @build_ycc_rgb_table(ptr noundef %80)
  br label %if.end82

if.else70:                                        ; preds = %sw.bb63
  %81 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 9
  %82 = load i32, ptr %jpeg_color_space71, align 4
  %cmp72 = icmp eq i32 %82, 4
  br i1 %cmp72, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.else70
  %83 = load ptr, ptr %cconvert, align 8
  %pub74 = getelementptr inbounds %struct.my_color_deconverter, ptr %83, i32 0, i32 0
  %color_convert75 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub74, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert75, align 8
  br label %if.end81

if.else76:                                        ; preds = %if.else70
  %84 = load ptr, ptr %cinfo.addr, align 8
  %err77 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %err77, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i32 0, i32 5
  store i32 25, ptr %msg_code78, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err79, align 8
  %error_exit80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %error_exit80, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  call void %88(ptr noundef %89)
  br label %if.end81

if.end81:                                         ; preds = %if.else76, %if.then73
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then67
  br label %sw.epilog98

sw.default83:                                     ; preds = %sw.epilog
  %90 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 10
  %91 = load i32, ptr %out_color_space84, align 8
  %92 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 9
  %93 = load i32, ptr %jpeg_color_space85, align 4
  %cmp86 = icmp eq i32 %91, %93
  br i1 %cmp86, label %if.then87, label %if.else92

if.then87:                                        ; preds = %sw.default83
  %94 = load ptr, ptr %cinfo.addr, align 8
  %num_components88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 8
  %95 = load i32, ptr %num_components88, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 28
  store i32 %95, ptr %out_color_components89, align 8
  %97 = load ptr, ptr %cconvert, align 8
  %pub90 = getelementptr inbounds %struct.my_color_deconverter, ptr %97, i32 0, i32 0
  %color_convert91 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %pub90, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert91, align 8
  br label %if.end97

if.else92:                                        ; preds = %sw.default83
  %98 = load ptr, ptr %cinfo.addr, align 8
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %err93, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i32 0, i32 5
  store i32 25, ptr %msg_code94, align 8
  %100 = load ptr, ptr %cinfo.addr, align 8
  %err95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %err95, align 8
  %error_exit96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %error_exit96, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  call void %102(ptr noundef %103)
  br label %if.end97

if.end97:                                         ; preds = %if.else92, %if.then87
  br label %sw.epilog98

sw.epilog98:                                      ; preds = %if.end97, %if.end82, %if.end62, %if.end42
  %104 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 19
  %105 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.then99, label %if.else100

if.then99:                                        ; preds = %sw.epilog98
  %106 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 29
  store i32 1, ptr %output_components, align 4
  br label %if.end103

if.else100:                                       ; preds = %sw.epilog98
  %107 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 28
  %108 = load i32, ptr %out_color_components101, align 8
  %109 = load ptr, ptr %cinfo.addr, align 8
  %output_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 29
  store i32 %108, ptr %output_components102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then99
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_dcolor(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @grayscale_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = load i32, ptr %input_row.addr, align 4
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load i32, ptr %num_rows.addr, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 26
  %6 = load i32, ptr %output_width, align 8
  call void @jcopy_sample_rows(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %4, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ycc_rgb_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 82
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %num_cols, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 61
  %5 = load ptr, ptr %sample_range_limit, align 8
  store ptr %5, ptr %range_limit, align 8
  %6 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %7, ptr %Crrtab, align 8
  %8 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %9, ptr %Cbbtab, align 8
  %10 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %11, ptr %Crgtab, align 8
  %12 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %13, ptr %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %14 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %input_row.addr, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx2, align 8
  store ptr %18, ptr %inptr0, align 8
  %19 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx3, align 8
  %21 = load i32, ptr %input_row.addr, align 4
  %idxprom4 = zext i32 %21 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %20, i64 %idxprom4
  %22 = load ptr, ptr %arrayidx5, align 8
  store ptr %22, ptr %inptr1, align 8
  %23 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx6, align 8
  %25 = load i32, ptr %input_row.addr, align 4
  %idxprom7 = zext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %24, i64 %idxprom7
  %26 = load ptr, ptr %arrayidx8, align 8
  store ptr %26, ptr %inptr2, align 8
  %27 = load i32, ptr %input_row.addr, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %input_row.addr, align 4
  %28 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %output_buf.addr, align 8
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %outptr, align 8
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %30 = load i32, ptr %col, align 4
  %31 = load i32, ptr %num_cols, align 4
  %cmp9 = icmp ult i32 %30, %31
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %inptr0, align 8
  %33 = load i32, ptr %col, align 4
  %idxprom10 = zext i32 %33 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %32, i64 %idxprom10
  %34 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %34 to i32
  store i32 %conv, ptr %y, align 4
  %35 = load ptr, ptr %inptr1, align 8
  %36 = load i32, ptr %col, align 4
  %idxprom12 = zext i32 %36 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %35, i64 %idxprom12
  %37 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %37 to i32
  store i32 %conv14, ptr %cb, align 4
  %38 = load ptr, ptr %inptr2, align 8
  %39 = load i32, ptr %col, align 4
  %idxprom15 = zext i32 %39 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %38, i64 %idxprom15
  %40 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %40 to i32
  store i32 %conv17, ptr %cr, align 4
  %41 = load ptr, ptr %range_limit, align 8
  %42 = load i32, ptr %y, align 4
  %43 = load ptr, ptr %Crrtab, align 8
  %44 = load i32, ptr %cr, align 4
  %idxprom18 = sext i32 %44 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %43, i64 %idxprom18
  %45 = load i32, ptr %arrayidx19, align 4
  %add = add nsw i32 %42, %45
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %41, i64 %idxprom20
  %46 = load i8, ptr %arrayidx21, align 1
  %47 = load ptr, ptr %outptr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %47, i64 0
  store i8 %46, ptr %arrayidx22, align 1
  %48 = load ptr, ptr %range_limit, align 8
  %49 = load i32, ptr %y, align 4
  %50 = load ptr, ptr %Cbgtab, align 8
  %51 = load i32, ptr %cb, align 4
  %idxprom23 = sext i32 %51 to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %50, i64 %idxprom23
  %52 = load i64, ptr %arrayidx24, align 8
  %53 = load ptr, ptr %Crgtab, align 8
  %54 = load i32, ptr %cr, align 4
  %idxprom25 = sext i32 %54 to i64
  %arrayidx26 = getelementptr inbounds i64, ptr %53, i64 %idxprom25
  %55 = load i64, ptr %arrayidx26, align 8
  %add27 = add nsw i64 %52, %55
  %shr = ashr i64 %add27, 16
  %conv28 = trunc i64 %shr to i32
  %add29 = add nsw i32 %49, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %48, i64 %idxprom30
  %56 = load i8, ptr %arrayidx31, align 1
  %57 = load ptr, ptr %outptr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %arrayidx32, align 1
  %58 = load ptr, ptr %range_limit, align 8
  %59 = load i32, ptr %y, align 4
  %60 = load ptr, ptr %Cbbtab, align 8
  %61 = load i32, ptr %cb, align 4
  %idxprom33 = sext i32 %61 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %60, i64 %idxprom33
  %62 = load i32, ptr %arrayidx34, align 4
  %add35 = add nsw i32 %59, %62
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %58, i64 %idxprom36
  %63 = load i8, ptr %arrayidx37, align 1
  %64 = load ptr, ptr %outptr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %64, i64 2
  store i8 %63, ptr %arrayidx38, align 1
  %65 = load ptr, ptr %outptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %65, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, ptr %col, align 4
  %inc39 = add i32 %66, 1
  store i32 %inc39, ptr %col, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @build_ycc_rgb_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 82
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 1024)
  %6 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %6, i32 0, i32 1
  store ptr %call, ptr %Cr_r_tab, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %alloc_small3, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 1024)
  %11 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %11, i32 0, i32 2
  store ptr %call4, ptr %Cb_b_tab, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %alloc_small6, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 2048)
  %16 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %16, i32 0, i32 3
  store ptr %call7, ptr %Cr_g_tab, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem8, align 8
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %alloc_small9, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call10 = call ptr %19(ptr noundef %20, i32 noundef 1, i64 noundef 2048)
  %21 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %21, i32 0, i32 4
  store ptr %call10, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  store i64 -128, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %22, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, ptr %x, align 8
  %mul = mul nsw i64 91881, %23
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %24 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %Cr_r_tab11, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  store i32 %conv, ptr %arrayidx, align 4
  %27 = load i64, ptr %x, align 8
  %mul12 = mul nsw i64 116130, %27
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %28 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab16 = getelementptr inbounds %struct.my_color_deconverter, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %Cb_b_tab16, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 %idxprom17
  store i32 %conv15, ptr %arrayidx18, align 4
  %31 = load i64, ptr %x, align 8
  %mul19 = mul nsw i64 -46802, %31
  %32 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab20 = getelementptr inbounds %struct.my_color_deconverter, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %Cr_g_tab20, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %33, i64 %idxprom21
  store i64 %mul19, ptr %arrayidx22, align 8
  %35 = load i64, ptr %x, align 8
  %mul23 = mul nsw i64 -22554, %35
  %add24 = add nsw i64 %mul23, 32768
  %36 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab25 = getelementptr inbounds %struct.my_color_deconverter, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %Cb_g_tab25, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %37, i64 %idxprom26
  store i64 %add24, ptr %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  %40 = load i64, ptr %x, align 8
  %inc28 = add nsw i64 %40, 1
  store i64 %inc28, ptr %x, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @null_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %count = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %num_components1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %num_components1, align 8
  store i32 %1, ptr %num_components, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end13, %entry
  %4 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %while.body
  %5 = load i32, ptr %ci, align 4
  %6 = load i32, ptr %num_components, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %8 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %input_row.addr, align 4
  %idxprom3 = zext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %11 = load ptr, ptr %arrayidx4, align 8
  store ptr %11, ptr %inptr, align 8
  %12 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx5, align 8
  %14 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %outptr, align 8
  %15 = load i32, ptr %num_cols, align 4
  store i32 %15, ptr %count, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %16 = load i32, ptr %count, align 4
  %cmp7 = icmp ugt i32 %16, 0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %18 = load i8, ptr %17, align 1
  %19 = load ptr, ptr %outptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load i32, ptr %num_components, align 4
  %21 = load ptr, ptr %outptr, align 8
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %21, i64 %idx.ext9
  store ptr %add.ptr10, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %22 = load i32, ptr %count, align 4
  %dec11 = add i32 %22, -1
  store i32 %dec11, ptr %count, align 4
  br label %for.cond6, !llvm.loop !11

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %23 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %24 = load i32, ptr %input_row.addr, align 4
  %inc14 = add i32 %24, 1
  store i32 %inc14, ptr %input_row.addr, align 4
  %25 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr15 = getelementptr inbounds ptr, ptr %25, i32 1
  store ptr %incdec.ptr15, ptr %output_buf.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ycck_cmyk_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %inptr3 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 82
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %num_cols, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 61
  %5 = load ptr, ptr %sample_range_limit, align 8
  store ptr %5, ptr %range_limit, align 8
  %6 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %7, ptr %Crrtab, align 8
  %8 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %9, ptr %Cbbtab, align 8
  %10 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %11, ptr %Crgtab, align 8
  %12 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %13, ptr %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %14 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %input_row.addr, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx2, align 8
  store ptr %18, ptr %inptr0, align 8
  %19 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx3, align 8
  %21 = load i32, ptr %input_row.addr, align 4
  %idxprom4 = zext i32 %21 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %20, i64 %idxprom4
  %22 = load ptr, ptr %arrayidx5, align 8
  store ptr %22, ptr %inptr1, align 8
  %23 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx6, align 8
  %25 = load i32, ptr %input_row.addr, align 4
  %idxprom7 = zext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %24, i64 %idxprom7
  %26 = load ptr, ptr %arrayidx8, align 8
  store ptr %26, ptr %inptr2, align 8
  %27 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %27, i64 3
  %28 = load ptr, ptr %arrayidx9, align 8
  %29 = load i32, ptr %input_row.addr, align 4
  %idxprom10 = zext i32 %29 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %28, i64 %idxprom10
  %30 = load ptr, ptr %arrayidx11, align 8
  store ptr %30, ptr %inptr3, align 8
  %31 = load i32, ptr %input_row.addr, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %input_row.addr, align 4
  %32 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %output_buf.addr, align 8
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %outptr, align 8
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, ptr %col, align 4
  %35 = load i32, ptr %num_cols, align 4
  %cmp12 = icmp ult i32 %34, %35
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %inptr0, align 8
  %37 = load i32, ptr %col, align 4
  %idxprom13 = zext i32 %37 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %36, i64 %idxprom13
  %38 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %38 to i32
  store i32 %conv, ptr %y, align 4
  %39 = load ptr, ptr %inptr1, align 8
  %40 = load i32, ptr %col, align 4
  %idxprom15 = zext i32 %40 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %39, i64 %idxprom15
  %41 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %41 to i32
  store i32 %conv17, ptr %cb, align 4
  %42 = load ptr, ptr %inptr2, align 8
  %43 = load i32, ptr %col, align 4
  %idxprom18 = zext i32 %43 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %42, i64 %idxprom18
  %44 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %44 to i32
  store i32 %conv20, ptr %cr, align 4
  %45 = load ptr, ptr %range_limit, align 8
  %46 = load i32, ptr %y, align 4
  %47 = load ptr, ptr %Crrtab, align 8
  %48 = load i32, ptr %cr, align 4
  %idxprom21 = sext i32 %48 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %47, i64 %idxprom21
  %49 = load i32, ptr %arrayidx22, align 4
  %add = add nsw i32 %46, %49
  %sub = sub nsw i32 255, %add
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %45, i64 %idxprom23
  %50 = load i8, ptr %arrayidx24, align 1
  %51 = load ptr, ptr %outptr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %51, i64 0
  store i8 %50, ptr %arrayidx25, align 1
  %52 = load ptr, ptr %range_limit, align 8
  %53 = load i32, ptr %y, align 4
  %54 = load ptr, ptr %Cbgtab, align 8
  %55 = load i32, ptr %cb, align 4
  %idxprom26 = sext i32 %55 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %54, i64 %idxprom26
  %56 = load i64, ptr %arrayidx27, align 8
  %57 = load ptr, ptr %Crgtab, align 8
  %58 = load i32, ptr %cr, align 4
  %idxprom28 = sext i32 %58 to i64
  %arrayidx29 = getelementptr inbounds i64, ptr %57, i64 %idxprom28
  %59 = load i64, ptr %arrayidx29, align 8
  %add30 = add nsw i64 %56, %59
  %shr = ashr i64 %add30, 16
  %conv31 = trunc i64 %shr to i32
  %add32 = add nsw i32 %53, %conv31
  %sub33 = sub nsw i32 255, %add32
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %52, i64 %idxprom34
  %60 = load i8, ptr %arrayidx35, align 1
  %61 = load ptr, ptr %outptr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %60, ptr %arrayidx36, align 1
  %62 = load ptr, ptr %range_limit, align 8
  %63 = load i32, ptr %y, align 4
  %64 = load ptr, ptr %Cbbtab, align 8
  %65 = load i32, ptr %cb, align 4
  %idxprom37 = sext i32 %65 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %64, i64 %idxprom37
  %66 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %63, %66
  %sub40 = sub nsw i32 255, %add39
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %62, i64 %idxprom41
  %67 = load i8, ptr %arrayidx42, align 1
  %68 = load ptr, ptr %outptr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 %67, ptr %arrayidx43, align 1
  %69 = load ptr, ptr %inptr3, align 8
  %70 = load i32, ptr %col, align 4
  %idxprom44 = zext i32 %70 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %69, i64 %idxprom44
  %71 = load i8, ptr %arrayidx45, align 1
  %72 = load ptr, ptr %outptr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %72, i64 3
  store i8 %71, ptr %arrayidx46, align 1
  %73 = load ptr, ptr %outptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 4
  store ptr %add.ptr, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, ptr %col, align 4
  %inc47 = add i32 %74, 1
  store i32 %inc47, ptr %col, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

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
