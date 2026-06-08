; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jccolor.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jccolor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_color_converter = type { %struct.jpeg_color_converter, ptr }
%struct.jpeg_color_converter = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_color_converter(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 24)
  store ptr %call, ptr %cconvert, align 8
  %4 = load ptr, ptr %cconvert, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 56
  store ptr %4, ptr %cconvert1, align 8
  %6 = load ptr, ptr %cconvert, align 8
  %pub = getelementptr inbounds %struct.my_color_converter, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub, i32 0, i32 0
  store ptr @null_method, ptr %start_pass, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %in_color_space, align 4
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 4, label %sw.bb12
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %input_components, align 8
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 7, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
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
  %input_components4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %input_components4, align 8
  %cmp5 = icmp ne i32 %18, 3
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %sw.bb3
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 7, ptr %msg_code8, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0
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
  %input_components13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %input_components13, align 8
  %cmp14 = icmp ne i32 %26, 4
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %sw.bb12
  %27 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5
  store i32 7, ptr %msg_code17, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 0
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
  %input_components21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 8
  %34 = load i32, ptr %input_components21, align 8
  %cmp22 = icmp slt i32 %34, 1
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %sw.default
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5
  store i32 7, ptr %msg_code25, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0
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
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 13
  %42 = load i32, ptr %jpeg_color_space, align 8
  switch i32 %42, label %sw.default160 [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb62
    i32 3, label %sw.bb82
    i32 4, label %sw.bb111
    i32 5, label %sw.bb131
  ]

sw.bb29:                                          ; preds = %sw.epilog
  %43 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %num_components, align 4
  %cmp30 = icmp ne i32 %44, 1
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %sw.bb29
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err32, align 8
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 8, ptr %msg_code33, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err34, align 8
  %error_exit35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %error_exit35, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %sw.bb29
  %51 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 9
  %52 = load i32, ptr %in_color_space37, align 4
  %cmp38 = icmp eq i32 %52, 1
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end36
  %53 = load ptr, ptr %cconvert, align 8
  %pub40 = getelementptr inbounds %struct.my_color_converter, ptr %53, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub40, i32 0, i32 1
  store ptr @grayscale_convert, ptr %color_convert, align 8
  br label %if.end61

if.else:                                          ; preds = %if.end36
  %54 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i32 0, i32 9
  %55 = load i32, ptr %in_color_space41, align 4
  %cmp42 = icmp eq i32 %55, 2
  br i1 %cmp42, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.else
  %56 = load ptr, ptr %cconvert, align 8
  %pub44 = getelementptr inbounds %struct.my_color_converter, ptr %56, i32 0, i32 0
  %start_pass45 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub44, i32 0, i32 0
  store ptr @rgb_ycc_start, ptr %start_pass45, align 8
  %57 = load ptr, ptr %cconvert, align 8
  %pub46 = getelementptr inbounds %struct.my_color_converter, ptr %57, i32 0, i32 0
  %color_convert47 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub46, i32 0, i32 1
  store ptr @rgb_gray_convert, ptr %color_convert47, align 8
  br label %if.end60

if.else48:                                        ; preds = %if.else
  %58 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i32 0, i32 9
  %59 = load i32, ptr %in_color_space49, align 4
  %cmp50 = icmp eq i32 %59, 3
  br i1 %cmp50, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.else48
  %60 = load ptr, ptr %cconvert, align 8
  %pub52 = getelementptr inbounds %struct.my_color_converter, ptr %60, i32 0, i32 0
  %color_convert53 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub52, i32 0, i32 1
  store ptr @grayscale_convert, ptr %color_convert53, align 8
  br label %if.end59

if.else54:                                        ; preds = %if.else48
  %61 = load ptr, ptr %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err55, align 8
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5
  store i32 25, ptr %msg_code56, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %err57, align 8
  %error_exit58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %error_exit58, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  call void %65(ptr noundef %66)
  br label %if.end59

if.end59:                                         ; preds = %if.else54, %if.then51
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then43
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then39
  br label %sw.epilog175

sw.bb62:                                          ; preds = %sw.epilog
  %67 = load ptr, ptr %cinfo.addr, align 8
  %num_components63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i32 0, i32 12
  %68 = load i32, ptr %num_components63, align 4
  %cmp64 = icmp ne i32 %68, 3
  br i1 %cmp64, label %if.then65, label %if.end70

if.then65:                                        ; preds = %sw.bb62
  %69 = load ptr, ptr %cinfo.addr, align 8
  %err66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err66, align 8
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i32 0, i32 5
  store i32 8, ptr %msg_code67, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %err68, align 8
  %error_exit69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %error_exit69, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  call void %73(ptr noundef %74)
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %sw.bb62
  %75 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i32 0, i32 9
  %76 = load i32, ptr %in_color_space71, align 4
  %cmp72 = icmp eq i32 %76, 2
  br i1 %cmp72, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.end70
  %77 = load ptr, ptr %cconvert, align 8
  %pub74 = getelementptr inbounds %struct.my_color_converter, ptr %77, i32 0, i32 0
  %color_convert75 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub74, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert75, align 8
  br label %if.end81

if.else76:                                        ; preds = %if.end70
  %78 = load ptr, ptr %cinfo.addr, align 8
  %err77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %err77, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5
  store i32 25, ptr %msg_code78, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %err79, align 8
  %error_exit80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %error_exit80, align 8
  %83 = load ptr, ptr %cinfo.addr, align 8
  call void %82(ptr noundef %83)
  br label %if.end81

if.end81:                                         ; preds = %if.else76, %if.then73
  br label %sw.epilog175

sw.bb82:                                          ; preds = %sw.epilog
  %84 = load ptr, ptr %cinfo.addr, align 8
  %num_components83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i32 0, i32 12
  %85 = load i32, ptr %num_components83, align 4
  %cmp84 = icmp ne i32 %85, 3
  br i1 %cmp84, label %if.then85, label %if.end90

if.then85:                                        ; preds = %sw.bb82
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err86, align 8
  %msg_code87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 5
  store i32 8, ptr %msg_code87, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %err88, align 8
  %error_exit89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %error_exit89, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  call void %90(ptr noundef %91)
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %sw.bb82
  %92 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space91 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %92, i32 0, i32 9
  %93 = load i32, ptr %in_color_space91, align 4
  %cmp92 = icmp eq i32 %93, 2
  br i1 %cmp92, label %if.then93, label %if.else98

if.then93:                                        ; preds = %if.end90
  %94 = load ptr, ptr %cconvert, align 8
  %pub94 = getelementptr inbounds %struct.my_color_converter, ptr %94, i32 0, i32 0
  %start_pass95 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub94, i32 0, i32 0
  store ptr @rgb_ycc_start, ptr %start_pass95, align 8
  %95 = load ptr, ptr %cconvert, align 8
  %pub96 = getelementptr inbounds %struct.my_color_converter, ptr %95, i32 0, i32 0
  %color_convert97 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub96, i32 0, i32 1
  store ptr @rgb_ycc_convert, ptr %color_convert97, align 8
  br label %if.end110

if.else98:                                        ; preds = %if.end90
  %96 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space99 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 9
  %97 = load i32, ptr %in_color_space99, align 4
  %cmp100 = icmp eq i32 %97, 3
  br i1 %cmp100, label %if.then101, label %if.else104

if.then101:                                       ; preds = %if.else98
  %98 = load ptr, ptr %cconvert, align 8
  %pub102 = getelementptr inbounds %struct.my_color_converter, ptr %98, i32 0, i32 0
  %color_convert103 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub102, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert103, align 8
  br label %if.end109

if.else104:                                       ; preds = %if.else98
  %99 = load ptr, ptr %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %err105, align 8
  %msg_code106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i32 0, i32 5
  store i32 25, ptr %msg_code106, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  %err107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %err107, align 8
  %error_exit108 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %error_exit108, align 8
  %104 = load ptr, ptr %cinfo.addr, align 8
  call void %103(ptr noundef %104)
  br label %if.end109

if.end109:                                        ; preds = %if.else104, %if.then101
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then93
  br label %sw.epilog175

sw.bb111:                                         ; preds = %sw.epilog
  %105 = load ptr, ptr %cinfo.addr, align 8
  %num_components112 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 12
  %106 = load i32, ptr %num_components112, align 4
  %cmp113 = icmp ne i32 %106, 4
  br i1 %cmp113, label %if.then114, label %if.end119

if.then114:                                       ; preds = %sw.bb111
  %107 = load ptr, ptr %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %err115, align 8
  %msg_code116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i32 0, i32 5
  store i32 8, ptr %msg_code116, align 8
  %109 = load ptr, ptr %cinfo.addr, align 8
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %err117, align 8
  %error_exit118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %error_exit118, align 8
  %112 = load ptr, ptr %cinfo.addr, align 8
  call void %111(ptr noundef %112)
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %sw.bb111
  %113 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %113, i32 0, i32 9
  %114 = load i32, ptr %in_color_space120, align 4
  %cmp121 = icmp eq i32 %114, 4
  br i1 %cmp121, label %if.then122, label %if.else125

if.then122:                                       ; preds = %if.end119
  %115 = load ptr, ptr %cconvert, align 8
  %pub123 = getelementptr inbounds %struct.my_color_converter, ptr %115, i32 0, i32 0
  %color_convert124 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub123, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert124, align 8
  br label %if.end130

if.else125:                                       ; preds = %if.end119
  %116 = load ptr, ptr %cinfo.addr, align 8
  %err126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %err126, align 8
  %msg_code127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i32 0, i32 5
  store i32 25, ptr %msg_code127, align 8
  %118 = load ptr, ptr %cinfo.addr, align 8
  %err128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i32 0, i32 0
  %119 = load ptr, ptr %err128, align 8
  %error_exit129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %error_exit129, align 8
  %121 = load ptr, ptr %cinfo.addr, align 8
  call void %120(ptr noundef %121)
  br label %if.end130

if.end130:                                        ; preds = %if.else125, %if.then122
  br label %sw.epilog175

sw.bb131:                                         ; preds = %sw.epilog
  %122 = load ptr, ptr %cinfo.addr, align 8
  %num_components132 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %122, i32 0, i32 12
  %123 = load i32, ptr %num_components132, align 4
  %cmp133 = icmp ne i32 %123, 4
  br i1 %cmp133, label %if.then134, label %if.end139

if.then134:                                       ; preds = %sw.bb131
  %124 = load ptr, ptr %cinfo.addr, align 8
  %err135 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %err135, align 8
  %msg_code136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i32 0, i32 5
  store i32 8, ptr %msg_code136, align 8
  %126 = load ptr, ptr %cinfo.addr, align 8
  %err137 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %err137, align 8
  %error_exit138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %error_exit138, align 8
  %129 = load ptr, ptr %cinfo.addr, align 8
  call void %128(ptr noundef %129)
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %sw.bb131
  %130 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space140 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %130, i32 0, i32 9
  %131 = load i32, ptr %in_color_space140, align 4
  %cmp141 = icmp eq i32 %131, 4
  br i1 %cmp141, label %if.then142, label %if.else147

if.then142:                                       ; preds = %if.end139
  %132 = load ptr, ptr %cconvert, align 8
  %pub143 = getelementptr inbounds %struct.my_color_converter, ptr %132, i32 0, i32 0
  %start_pass144 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub143, i32 0, i32 0
  store ptr @rgb_ycc_start, ptr %start_pass144, align 8
  %133 = load ptr, ptr %cconvert, align 8
  %pub145 = getelementptr inbounds %struct.my_color_converter, ptr %133, i32 0, i32 0
  %color_convert146 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub145, i32 0, i32 1
  store ptr @cmyk_ycck_convert, ptr %color_convert146, align 8
  br label %if.end159

if.else147:                                       ; preds = %if.end139
  %134 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space148 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %134, i32 0, i32 9
  %135 = load i32, ptr %in_color_space148, align 4
  %cmp149 = icmp eq i32 %135, 5
  br i1 %cmp149, label %if.then150, label %if.else153

if.then150:                                       ; preds = %if.else147
  %136 = load ptr, ptr %cconvert, align 8
  %pub151 = getelementptr inbounds %struct.my_color_converter, ptr %136, i32 0, i32 0
  %color_convert152 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub151, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert152, align 8
  br label %if.end158

if.else153:                                       ; preds = %if.else147
  %137 = load ptr, ptr %cinfo.addr, align 8
  %err154 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %err154, align 8
  %msg_code155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i32 0, i32 5
  store i32 25, ptr %msg_code155, align 8
  %139 = load ptr, ptr %cinfo.addr, align 8
  %err156 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %err156, align 8
  %error_exit157 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %error_exit157, align 8
  %142 = load ptr, ptr %cinfo.addr, align 8
  call void %141(ptr noundef %142)
  br label %if.end158

if.end158:                                        ; preds = %if.else153, %if.then150
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then142
  br label %sw.epilog175

sw.default160:                                    ; preds = %sw.epilog
  %143 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space161 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %143, i32 0, i32 13
  %144 = load i32, ptr %jpeg_color_space161, align 8
  %145 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space162 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %145, i32 0, i32 9
  %146 = load i32, ptr %in_color_space162, align 4
  %cmp163 = icmp ne i32 %144, %146
  br i1 %cmp163, label %if.then167, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default160
  %147 = load ptr, ptr %cinfo.addr, align 8
  %num_components164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %147, i32 0, i32 12
  %148 = load i32, ptr %num_components164, align 4
  %149 = load ptr, ptr %cinfo.addr, align 8
  %input_components165 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i32 0, i32 8
  %150 = load i32, ptr %input_components165, align 8
  %cmp166 = icmp ne i32 %148, %150
  br i1 %cmp166, label %if.then167, label %if.end172

if.then167:                                       ; preds = %lor.lhs.false, %sw.default160
  %151 = load ptr, ptr %cinfo.addr, align 8
  %err168 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %err168, align 8
  %msg_code169 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %152, i32 0, i32 5
  store i32 25, ptr %msg_code169, align 8
  %153 = load ptr, ptr %cinfo.addr, align 8
  %err170 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %err170, align 8
  %error_exit171 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %error_exit171, align 8
  %156 = load ptr, ptr %cinfo.addr, align 8
  call void %155(ptr noundef %156)
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %lor.lhs.false
  %157 = load ptr, ptr %cconvert, align 8
  %pub173 = getelementptr inbounds %struct.my_color_converter, ptr %157, i32 0, i32 0
  %color_convert174 = getelementptr inbounds %struct.jpeg_color_converter, ptr %pub173, i32 0, i32 1
  store ptr @null_convert, ptr %color_convert174, align 8
  br label %sw.epilog175

sw.epilog175:                                     ; preds = %if.end172, %if.end159, %if.end130, %if.end110, %if.end81, %if.end61
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @null_method(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @grayscale_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %instride = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %image_width, align 8
  store i32 %1, ptr %num_cols, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %input_components, align 8
  store i32 %3, ptr %instride, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %input_buf.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %inptr, align 8
  %7 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load i32, ptr %output_row.addr, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx1 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx1, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %output_row.addr, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, ptr %col, align 4
  %13 = load i32, ptr %num_cols, align 4
  %cmp2 = icmp ult i32 %12, %13
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %inptr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx3, align 1
  %16 = load ptr, ptr %outptr, align 8
  %17 = load i32, ptr %col, align 4
  %idxprom4 = zext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %16, i64 %idxprom4
  store i8 %15, ptr %arrayidx5, align 1
  %18 = load i32, ptr %instride, align 4
  %19 = load ptr, ptr %inptr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %col, align 4
  %inc6 = add i32 %20, 1
  store i32 %inc6, ptr %col, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rgb_ycc_start(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  %rgb_ycc_tab = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 56
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 16384)
  store ptr %call, ptr %rgb_ycc_tab, align 8
  %6 = load ptr, ptr %cconvert, align 8
  %rgb_ycc_tab2 = getelementptr inbounds %struct.my_color_converter, ptr %6, i32 0, i32 1
  store ptr %call, ptr %rgb_ycc_tab2, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %cmp = icmp sle i64 %7, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %i, align 8
  %mul = mul nsw i64 19595, %8
  %9 = load ptr, ptr %rgb_ycc_tab, align 8
  %10 = load i64, ptr %i, align 8
  %add = add nsw i64 %10, 0
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %add
  store i64 %mul, ptr %arrayidx, align 8
  %11 = load i64, ptr %i, align 8
  %mul3 = mul nsw i64 38470, %11
  %12 = load ptr, ptr %rgb_ycc_tab, align 8
  %13 = load i64, ptr %i, align 8
  %add4 = add nsw i64 %13, 256
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 %add4
  store i64 %mul3, ptr %arrayidx5, align 8
  %14 = load i64, ptr %i, align 8
  %mul6 = mul nsw i64 7471, %14
  %add7 = add nsw i64 %mul6, 32768
  %15 = load ptr, ptr %rgb_ycc_tab, align 8
  %16 = load i64, ptr %i, align 8
  %add8 = add nsw i64 %16, 512
  %arrayidx9 = getelementptr inbounds i64, ptr %15, i64 %add8
  store i64 %add7, ptr %arrayidx9, align 8
  %17 = load i64, ptr %i, align 8
  %mul10 = mul nsw i64 -11059, %17
  %18 = load ptr, ptr %rgb_ycc_tab, align 8
  %19 = load i64, ptr %i, align 8
  %add11 = add nsw i64 %19, 768
  %arrayidx12 = getelementptr inbounds i64, ptr %18, i64 %add11
  store i64 %mul10, ptr %arrayidx12, align 8
  %20 = load i64, ptr %i, align 8
  %mul13 = mul nsw i64 -21709, %20
  %21 = load ptr, ptr %rgb_ycc_tab, align 8
  %22 = load i64, ptr %i, align 8
  %add14 = add nsw i64 %22, 1024
  %arrayidx15 = getelementptr inbounds i64, ptr %21, i64 %add14
  store i64 %mul13, ptr %arrayidx15, align 8
  %23 = load i64, ptr %i, align 8
  %mul16 = mul nsw i64 32768, %23
  %add17 = add nsw i64 %mul16, 8388608
  %add18 = add nsw i64 %add17, 32768
  %sub = sub nsw i64 %add18, 1
  %24 = load ptr, ptr %rgb_ycc_tab, align 8
  %25 = load i64, ptr %i, align 8
  %add19 = add nsw i64 %25, 1280
  %arrayidx20 = getelementptr inbounds i64, ptr %24, i64 %add19
  store i64 %sub, ptr %arrayidx20, align 8
  %26 = load i64, ptr %i, align 8
  %mul21 = mul nsw i64 -27439, %26
  %27 = load ptr, ptr %rgb_ycc_tab, align 8
  %28 = load i64, ptr %i, align 8
  %add22 = add nsw i64 %28, 1536
  %arrayidx23 = getelementptr inbounds i64, ptr %27, i64 %add22
  store i64 %mul21, ptr %arrayidx23, align 8
  %29 = load i64, ptr %i, align 8
  %mul24 = mul nsw i64 -5329, %29
  %30 = load ptr, ptr %rgb_ycc_tab, align 8
  %31 = load i64, ptr %i, align 8
  %add25 = add nsw i64 %31, 1792
  %arrayidx26 = getelementptr inbounds i64, ptr %30, i64 %add25
  store i64 %mul24, ptr %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %i, align 8
  %inc = add nsw i64 %32, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rgb_gray_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 56
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rgb_ycc_tab, align 8
  store ptr %3, ptr %ctab, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %input_buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx2, align 8
  store ptr %12, ptr %outptr, align 8
  %13 = load i32, ptr %output_row.addr, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %output_row.addr, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %14 = load i32, ptr %col, align 4
  %15 = load i32, ptr %num_cols, align 4
  %cmp3 = icmp ult i32 %14, %15
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %inptr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %17 to i32
  store i32 %conv, ptr %r, align 4
  %18 = load ptr, ptr %inptr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %18, i64 1
  %19 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %19 to i32
  store i32 %conv6, ptr %g, align 4
  %20 = load ptr, ptr %inptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %21 to i32
  store i32 %conv8, ptr %b, align 4
  %22 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 3
  store ptr %add.ptr, ptr %inptr, align 8
  %23 = load ptr, ptr %ctab, align 8
  %24 = load i32, ptr %r, align 4
  %add = add nsw i32 %24, 0
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %23, i64 %idxprom9
  %25 = load i64, ptr %arrayidx10, align 8
  %26 = load ptr, ptr %ctab, align 8
  %27 = load i32, ptr %g, align 4
  %add11 = add nsw i32 %27, 256
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %26, i64 %idxprom12
  %28 = load i64, ptr %arrayidx13, align 8
  %add14 = add nsw i64 %25, %28
  %29 = load ptr, ptr %ctab, align 8
  %30 = load i32, ptr %b, align 4
  %add15 = add nsw i32 %30, 512
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds i64, ptr %29, i64 %idxprom16
  %31 = load i64, ptr %arrayidx17, align 8
  %add18 = add nsw i64 %add14, %31
  %shr = ashr i64 %add18, 16
  %conv19 = trunc i64 %shr to i8
  %32 = load ptr, ptr %outptr, align 8
  %33 = load i32, ptr %col, align 4
  %idxprom20 = zext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %32, i64 %idxprom20
  store i8 %conv19, ptr %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %col, align 4
  %inc22 = add i32 %34, 1
  store i32 %inc22, ptr %col, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @null_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %ci = alloca i32, align 4
  %nc = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %num_components, align 4
  store i32 %1, ptr %nc, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %image_width, align 8
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

for.cond:                                         ; preds = %for.inc11, %while.body
  %5 = load i32, ptr %ci, align 4
  %6 = load i32, ptr %nc, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %output_buf.addr, align 8
  %10 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = load i32, ptr %output_row.addr, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %11, i64 %idxprom2
  %13 = load ptr, ptr %arrayidx3, align 8
  store ptr %13, ptr %outptr, align 8
  store i32 0, ptr %col, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %14 = load i32, ptr %col, align 4
  %15 = load i32, ptr %num_cols, align 4
  %cmp5 = icmp ult i32 %14, %15
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %16 = load ptr, ptr %inptr, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %16, i64 %idxprom7
  %18 = load i8, ptr %arrayidx8, align 1
  %19 = load ptr, ptr %outptr, align 8
  %20 = load i32, ptr %col, align 4
  %idxprom9 = zext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %19, i64 %idxprom9
  store i8 %18, ptr %arrayidx10, align 1
  %21 = load i32, ptr %nc, align 4
  %22 = load ptr, ptr %inptr, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %23 = load i32, ptr %col, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %col, align 4
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %24 = load i32, ptr %ci, align 4
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, ptr %ci, align 4
  br label %for.cond, !llvm.loop !13

for.end13:                                        ; preds = %for.cond
  %25 = load ptr, ptr %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %input_buf.addr, align 8
  %26 = load i32, ptr %output_row.addr, align 4
  %inc14 = add i32 %26, 1
  store i32 %inc14, ptr %output_row.addr, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rgb_ycc_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr0 = alloca ptr, align 8
  %outptr1 = alloca ptr, align 8
  %outptr2 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 56
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rgb_ycc_tab, align 8
  store ptr %3, ptr %ctab, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %input_buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx2, align 8
  store ptr %12, ptr %outptr0, align 8
  %13 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx3, align 8
  %15 = load i32, ptr %output_row.addr, align 4
  %idxprom4 = zext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %14, i64 %idxprom4
  %16 = load ptr, ptr %arrayidx5, align 8
  store ptr %16, ptr %outptr1, align 8
  %17 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx6, align 8
  %19 = load i32, ptr %output_row.addr, align 4
  %idxprom7 = zext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  store ptr %20, ptr %outptr2, align 8
  %21 = load i32, ptr %output_row.addr, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %output_row.addr, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %22 = load i32, ptr %col, align 4
  %23 = load i32, ptr %num_cols, align 4
  %cmp9 = icmp ult i32 %22, %23
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %inptr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %25 to i32
  store i32 %conv, ptr %r, align 4
  %26 = load ptr, ptr %inptr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %27 to i32
  store i32 %conv12, ptr %g, align 4
  %28 = load ptr, ptr %inptr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %29 to i32
  store i32 %conv14, ptr %b, align 4
  %30 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 3
  store ptr %add.ptr, ptr %inptr, align 8
  %31 = load ptr, ptr %ctab, align 8
  %32 = load i32, ptr %r, align 4
  %add = add nsw i32 %32, 0
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 %idxprom15
  %33 = load i64, ptr %arrayidx16, align 8
  %34 = load ptr, ptr %ctab, align 8
  %35 = load i32, ptr %g, align 4
  %add17 = add nsw i32 %35, 256
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i64, ptr %34, i64 %idxprom18
  %36 = load i64, ptr %arrayidx19, align 8
  %add20 = add nsw i64 %33, %36
  %37 = load ptr, ptr %ctab, align 8
  %38 = load i32, ptr %b, align 4
  %add21 = add nsw i32 %38, 512
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i64, ptr %37, i64 %idxprom22
  %39 = load i64, ptr %arrayidx23, align 8
  %add24 = add nsw i64 %add20, %39
  %shr = ashr i64 %add24, 16
  %conv25 = trunc i64 %shr to i8
  %40 = load ptr, ptr %outptr0, align 8
  %41 = load i32, ptr %col, align 4
  %idxprom26 = zext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %40, i64 %idxprom26
  store i8 %conv25, ptr %arrayidx27, align 1
  %42 = load ptr, ptr %ctab, align 8
  %43 = load i32, ptr %r, align 4
  %add28 = add nsw i32 %43, 768
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i64, ptr %42, i64 %idxprom29
  %44 = load i64, ptr %arrayidx30, align 8
  %45 = load ptr, ptr %ctab, align 8
  %46 = load i32, ptr %g, align 4
  %add31 = add nsw i32 %46, 1024
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i64, ptr %45, i64 %idxprom32
  %47 = load i64, ptr %arrayidx33, align 8
  %add34 = add nsw i64 %44, %47
  %48 = load ptr, ptr %ctab, align 8
  %49 = load i32, ptr %b, align 4
  %add35 = add nsw i32 %49, 1280
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i64, ptr %48, i64 %idxprom36
  %50 = load i64, ptr %arrayidx37, align 8
  %add38 = add nsw i64 %add34, %50
  %shr39 = ashr i64 %add38, 16
  %conv40 = trunc i64 %shr39 to i8
  %51 = load ptr, ptr %outptr1, align 8
  %52 = load i32, ptr %col, align 4
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %51, i64 %idxprom41
  store i8 %conv40, ptr %arrayidx42, align 1
  %53 = load ptr, ptr %ctab, align 8
  %54 = load i32, ptr %r, align 4
  %add43 = add nsw i32 %54, 1280
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %53, i64 %idxprom44
  %55 = load i64, ptr %arrayidx45, align 8
  %56 = load ptr, ptr %ctab, align 8
  %57 = load i32, ptr %g, align 4
  %add46 = add nsw i32 %57, 1536
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i64, ptr %56, i64 %idxprom47
  %58 = load i64, ptr %arrayidx48, align 8
  %add49 = add nsw i64 %55, %58
  %59 = load ptr, ptr %ctab, align 8
  %60 = load i32, ptr %b, align 4
  %add50 = add nsw i32 %60, 1792
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i64, ptr %59, i64 %idxprom51
  %61 = load i64, ptr %arrayidx52, align 8
  %add53 = add nsw i64 %add49, %61
  %shr54 = ashr i64 %add53, 16
  %conv55 = trunc i64 %shr54 to i8
  %62 = load ptr, ptr %outptr2, align 8
  %63 = load i32, ptr %col, align 4
  %idxprom56 = zext i32 %63 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %62, i64 %idxprom56
  store i8 %conv55, ptr %arrayidx57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %col, align 4
  %inc58 = add i32 %64, 1
  store i32 %inc58, ptr %col, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cmyk_ycck_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr0 = alloca ptr, align 8
  %outptr1 = alloca ptr, align 8
  %outptr2 = alloca ptr, align 8
  %outptr3 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 56
  %1 = load ptr, ptr %cconvert1, align 8
  store ptr %1, ptr %cconvert, align 8
  %2 = load ptr, ptr %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rgb_ycc_tab, align 8
  store ptr %3, ptr %ctab, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %input_buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx2, align 8
  store ptr %12, ptr %outptr0, align 8
  %13 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx3, align 8
  %15 = load i32, ptr %output_row.addr, align 4
  %idxprom4 = zext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %14, i64 %idxprom4
  %16 = load ptr, ptr %arrayidx5, align 8
  store ptr %16, ptr %outptr1, align 8
  %17 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx6, align 8
  %19 = load i32, ptr %output_row.addr, align 4
  %idxprom7 = zext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  store ptr %20, ptr %outptr2, align 8
  %21 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %21, i64 3
  %22 = load ptr, ptr %arrayidx9, align 8
  %23 = load i32, ptr %output_row.addr, align 4
  %idxprom10 = zext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %22, i64 %idxprom10
  %24 = load ptr, ptr %arrayidx11, align 8
  store ptr %24, ptr %outptr3, align 8
  %25 = load i32, ptr %output_row.addr, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %output_row.addr, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %26 = load i32, ptr %col, align 4
  %27 = load i32, ptr %num_cols, align 4
  %cmp12 = icmp ult i32 %26, %27
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %inptr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx13, align 1
  %conv = zext i8 %29 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, ptr %r, align 4
  %30 = load ptr, ptr %inptr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %31 to i32
  %sub16 = sub nsw i32 255, %conv15
  store i32 %sub16, ptr %g, align 4
  %32 = load ptr, ptr %inptr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %33 to i32
  %sub19 = sub nsw i32 255, %conv18
  store i32 %sub19, ptr %b, align 4
  %34 = load ptr, ptr %inptr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %34, i64 3
  %35 = load i8, ptr %arrayidx20, align 1
  %36 = load ptr, ptr %outptr3, align 8
  %37 = load i32, ptr %col, align 4
  %idxprom21 = zext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %36, i64 %idxprom21
  store i8 %35, ptr %arrayidx22, align 1
  %38 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 4
  store ptr %add.ptr, ptr %inptr, align 8
  %39 = load ptr, ptr %ctab, align 8
  %40 = load i32, ptr %r, align 4
  %add = add nsw i32 %40, 0
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %39, i64 %idxprom23
  %41 = load i64, ptr %arrayidx24, align 8
  %42 = load ptr, ptr %ctab, align 8
  %43 = load i32, ptr %g, align 4
  %add25 = add nsw i32 %43, 256
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %42, i64 %idxprom26
  %44 = load i64, ptr %arrayidx27, align 8
  %add28 = add nsw i64 %41, %44
  %45 = load ptr, ptr %ctab, align 8
  %46 = load i32, ptr %b, align 4
  %add29 = add nsw i32 %46, 512
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr %45, i64 %idxprom30
  %47 = load i64, ptr %arrayidx31, align 8
  %add32 = add nsw i64 %add28, %47
  %shr = ashr i64 %add32, 16
  %conv33 = trunc i64 %shr to i8
  %48 = load ptr, ptr %outptr0, align 8
  %49 = load i32, ptr %col, align 4
  %idxprom34 = zext i32 %49 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %48, i64 %idxprom34
  store i8 %conv33, ptr %arrayidx35, align 1
  %50 = load ptr, ptr %ctab, align 8
  %51 = load i32, ptr %r, align 4
  %add36 = add nsw i32 %51, 768
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %50, i64 %idxprom37
  %52 = load i64, ptr %arrayidx38, align 8
  %53 = load ptr, ptr %ctab, align 8
  %54 = load i32, ptr %g, align 4
  %add39 = add nsw i32 %54, 1024
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i64, ptr %53, i64 %idxprom40
  %55 = load i64, ptr %arrayidx41, align 8
  %add42 = add nsw i64 %52, %55
  %56 = load ptr, ptr %ctab, align 8
  %57 = load i32, ptr %b, align 4
  %add43 = add nsw i32 %57, 1280
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %56, i64 %idxprom44
  %58 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %add42, %58
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i8
  %59 = load ptr, ptr %outptr1, align 8
  %60 = load i32, ptr %col, align 4
  %idxprom49 = zext i32 %60 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %59, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %61 = load ptr, ptr %ctab, align 8
  %62 = load i32, ptr %r, align 4
  %add51 = add nsw i32 %62, 1280
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds i64, ptr %61, i64 %idxprom52
  %63 = load i64, ptr %arrayidx53, align 8
  %64 = load ptr, ptr %ctab, align 8
  %65 = load i32, ptr %g, align 4
  %add54 = add nsw i32 %65, 1536
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i64, ptr %64, i64 %idxprom55
  %66 = load i64, ptr %arrayidx56, align 8
  %add57 = add nsw i64 %63, %66
  %67 = load ptr, ptr %ctab, align 8
  %68 = load i32, ptr %b, align 4
  %add58 = add nsw i32 %68, 1792
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i64, ptr %67, i64 %idxprom59
  %69 = load i64, ptr %arrayidx60, align 8
  %add61 = add nsw i64 %add57, %69
  %shr62 = ashr i64 %add61, 16
  %conv63 = trunc i64 %shr62 to i8
  %70 = load ptr, ptr %outptr2, align 8
  %71 = load i32, ptr %col, align 4
  %idxprom64 = zext i32 %71 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %70, i64 %idxprom64
  store i8 %conv63, ptr %arrayidx65, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, ptr %col, align 4
  %inc66 = add i32 %72, 1
  store i32 %inc66, ptr %col, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
