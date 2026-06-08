; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_aux.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_aux.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFVGetFieldDefaulted(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %varet = alloca ptr, align 8
  %varet2 = alloca ptr, align 8
  %varet4 = alloca ptr, align 8
  %varet6 = alloca ptr, align 8
  %varet8 = alloca ptr, align 8
  %varet10 = alloca ptr, align 8
  %varet12 = alloca ptr, align 8
  %varet14 = alloca ptr, align 8
  %varet16 = alloca ptr, align 8
  %varet18 = alloca ptr, align 8
  %varet20 = alloca ptr, align 8
  %varet22 = alloca ptr, align 8
  %varet25 = alloca ptr, align 8
  %varet27 = alloca ptr, align 8
  %varet29 = alloca ptr, align 8
  %varet31 = alloca ptr, align 8
  %varet32 = alloca ptr, align 8
  %varet42 = alloca ptr, align 8
  %varet44 = alloca ptr, align 8
  %varet49 = alloca ptr, align 8
  %varet51 = alloca ptr, align 8
  %varet65 = alloca ptr, align 8
  %varet68 = alloca ptr, align 8
  %varet71 = alloca ptr, align 8
  %varet73 = alloca ptr, align 8
  %varet81 = alloca ptr, align 8
  %varet92 = alloca ptr, align 8
  %varet95 = alloca ptr, align 8
  %varet102 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load i64, ptr %tag.addr, align 8
  %3 = load ptr, ptr %ap.addr, align 8
  %call = call i32 @TIFFVGetField(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tag.addr, align 8
  switch i64 %4, label %sw.epilog [
    i64 254, label %sw.bb
    i64 258, label %sw.bb1
    i64 263, label %sw.bb3
    i64 266, label %sw.bb5
    i64 274, label %sw.bb7
    i64 277, label %sw.bb9
    i64 278, label %sw.bb11
    i64 280, label %sw.bb13
    i64 281, label %sw.bb15
    i64 284, label %sw.bb17
    i64 296, label %sw.bb19
    i64 336, label %sw.bb21
    i64 332, label %sw.bb26
    i64 334, label %sw.bb28
    i64 338, label %sw.bb30
    i64 32995, label %sw.bb33
    i64 32998, label %sw.bb43
    i64 32996, label %sw.bb45
    i64 32997, label %sw.bb50
    i64 529, label %sw.bb52
    i64 530, label %sw.bb66
    i64 531, label %sw.bb72
    i64 301, label %sw.bb74
    i64 532, label %sw.bb97
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 7
  %6 = load i64, ptr %td_subfiletype, align 8
  %7 = va_arg ptr %ap.addr, ptr
  store ptr %7, ptr %varet, align 8
  %8 = load ptr, ptr %varet, align 8
  store i64 %6, ptr %8, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  %9 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 8
  %10 = load i16, ptr %td_bitspersample, align 8
  %11 = va_arg ptr %ap.addr, ptr
  store ptr %11, ptr %varet2, align 8
  %12 = load ptr, ptr %varet2, align 8
  store i16 %10, ptr %12, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %13 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 12
  %14 = load i16, ptr %td_threshholding, align 8
  %15 = va_arg ptr %ap.addr, ptr
  store ptr %15, ptr %varet4, align 8
  %16 = load ptr, ptr %varet4, align 8
  store i16 %14, ptr %16, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %if.end
  %17 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 13
  %18 = load i16, ptr %td_fillorder, align 2
  %19 = va_arg ptr %ap.addr, ptr
  store ptr %19, ptr %varet6, align 8
  %20 = load ptr, ptr %varet6, align 8
  store i16 %18, ptr %20, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %21 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 14
  %22 = load i16, ptr %td_orientation, align 4
  %23 = va_arg ptr %ap.addr, ptr
  store ptr %23, ptr %varet8, align 8
  %24 = load ptr, ptr %varet8, align 8
  store i16 %22, ptr %24, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %25 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 15
  %26 = load i16, ptr %td_samplesperpixel, align 2
  %27 = va_arg ptr %ap.addr, ptr
  store ptr %27, ptr %varet10, align 8
  %28 = load ptr, ptr %varet10, align 8
  store i16 %26, ptr %28, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %if.end
  %29 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 16
  %30 = load i64, ptr %td_rowsperstrip, align 8
  %31 = va_arg ptr %ap.addr, ptr
  store ptr %31, ptr %varet12, align 8
  %32 = load ptr, ptr %varet12, align 8
  store i64 %30, ptr %32, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %if.end
  %33 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 17
  %34 = load i16, ptr %td_minsamplevalue, align 8
  %35 = va_arg ptr %ap.addr, ptr
  store ptr %35, ptr %varet14, align 8
  %36 = load ptr, ptr %varet14, align 8
  store i16 %34, ptr %36, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %37 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i32 0, i32 18
  %38 = load i16, ptr %td_maxsamplevalue, align 2
  %39 = va_arg ptr %ap.addr, ptr
  store ptr %39, ptr %varet16, align 8
  %40 = load ptr, ptr %varet16, align 8
  store i16 %38, ptr %40, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end
  %41 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %41, i32 0, i32 24
  %42 = load i16, ptr %td_planarconfig, align 2
  %43 = va_arg ptr %ap.addr, ptr
  store ptr %43, ptr %varet18, align 8
  %44 = load ptr, ptr %varet18, align 8
  store i16 %42, ptr %44, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %if.end
  %45 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 23
  %46 = load i16, ptr %td_resolutionunit, align 8
  %47 = va_arg ptr %ap.addr, ptr
  store ptr %47, ptr %varet20, align 8
  %48 = load ptr, ptr %varet20, align 8
  store i16 %46, ptr %48, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end
  %49 = va_arg ptr %ap.addr, ptr
  store ptr %49, ptr %varet22, align 8
  %50 = load ptr, ptr %varet22, align 8
  store i16 0, ptr %50, align 2
  %51 = load ptr, ptr %td, align 8
  %td_bitspersample23 = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 8
  %52 = load i16, ptr %td_bitspersample23, align 8
  %conv = zext i16 %52 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %conv24 = trunc i32 %sub to i16
  %53 = va_arg ptr %ap.addr, ptr
  store ptr %53, ptr %varet25, align 8
  %54 = load ptr, ptr %varet25, align 8
  store i16 %conv24, ptr %54, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb26:                                          ; preds = %if.end
  %55 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 55
  %56 = load i16, ptr %td_inkset, align 8
  %57 = va_arg ptr %ap.addr, ptr
  store ptr %57, ptr %varet27, align 8
  %58 = load ptr, ptr %varet27, align 8
  store i16 %56, ptr %58, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb28:                                          ; preds = %if.end
  %59 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 56
  %60 = load i16, ptr %td_ninks, align 2
  %61 = va_arg ptr %ap.addr, ptr
  store ptr %61, ptr %varet29, align 8
  %62 = load ptr, ptr %varet29, align 8
  store i16 %60, ptr %62, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %if.end
  %63 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 30
  %64 = load i16, ptr %td_extrasamples, align 4
  %65 = va_arg ptr %ap.addr, ptr
  store ptr %65, ptr %varet31, align 8
  %66 = load ptr, ptr %varet31, align 8
  store i16 %64, ptr %66, align 2
  %67 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i32 0, i32 31
  %68 = load ptr, ptr %td_sampleinfo, align 8
  %69 = va_arg ptr %ap.addr, ptr
  store ptr %69, ptr %varet32, align 8
  %70 = load ptr, ptr %varet32, align 8
  store ptr %68, ptr %70, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %71 = load ptr, ptr %td, align 8
  %td_extrasamples34 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i32 0, i32 30
  %72 = load i16, ptr %td_extrasamples34, align 4
  %conv35 = zext i16 %72 to i32
  %cmp = icmp eq i32 %conv35, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb33
  %73 = load ptr, ptr %td, align 8
  %td_sampleinfo37 = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i32 0, i32 31
  %74 = load ptr, ptr %td_sampleinfo37, align 8
  %arrayidx = getelementptr inbounds i16, ptr %74, i64 0
  %75 = load i16, ptr %arrayidx, align 2
  %conv38 = zext i16 %75 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb33
  %76 = phi i1 [ false, %sw.bb33 ], [ %cmp39, %land.rhs ]
  %land.ext = zext i1 %76 to i32
  %conv41 = trunc i32 %land.ext to i16
  %77 = va_arg ptr %ap.addr, ptr
  store ptr %77, ptr %varet42, align 8
  %78 = load ptr, ptr %varet42, align 8
  store i16 %conv41, ptr %78, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end
  %79 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i32 0, i32 6
  %80 = load i64, ptr %td_tiledepth, align 8
  %81 = va_arg ptr %ap.addr, ptr
  store ptr %81, ptr %varet44, align 8
  %82 = load ptr, ptr %varet44, align 8
  store i64 %80, ptr %82, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end
  %83 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %83, i32 0, i32 9
  %84 = load i16, ptr %td_sampleformat, align 2
  %conv46 = zext i16 %84 to i32
  %sub47 = sub nsw i32 %conv46, 1
  %conv48 = trunc i32 %sub47 to i16
  %85 = va_arg ptr %ap.addr, ptr
  store ptr %85, ptr %varet49, align 8
  %86 = load ptr, ptr %varet49, align 8
  store i16 %conv48, ptr %86, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %if.end
  %87 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i32 0, i32 3
  %88 = load i64, ptr %td_imagedepth, align 8
  %89 = va_arg ptr %ap.addr, ptr
  store ptr %89, ptr %varet51, align 8
  %90 = load ptr, ptr %varet51, align 8
  store i64 %88, ptr %90, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb52:                                          ; preds = %if.end
  %91 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %91, i32 0, i32 48
  %92 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %tobool53 = icmp ne ptr %92, null
  br i1 %tobool53, label %if.end63, label %if.then54

if.then54:                                        ; preds = %sw.bb52
  %call55 = call ptr @_TIFFmalloc(i64 noundef 12)
  %93 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs56 = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i32 0, i32 48
  store ptr %call55, ptr %td_ycbcrcoeffs56, align 8
  %94 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs57 = getelementptr inbounds %struct.TIFFDirectory, ptr %94, i32 0, i32 48
  %95 = load ptr, ptr %td_ycbcrcoeffs57, align 8
  %arrayidx58 = getelementptr inbounds float, ptr %95, i64 0
  store float 0x3FD322D0E0000000, ptr %arrayidx58, align 4
  %96 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs59 = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i32 0, i32 48
  %97 = load ptr, ptr %td_ycbcrcoeffs59, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %97, i64 1
  store float 0x3FE2C8B440000000, ptr %arrayidx60, align 4
  %98 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs61 = getelementptr inbounds %struct.TIFFDirectory, ptr %98, i32 0, i32 48
  %99 = load ptr, ptr %td_ycbcrcoeffs61, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %99, i64 2
  store float 0x3FBD2F1AA0000000, ptr %arrayidx62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %sw.bb52
  %100 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs64 = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i32 0, i32 48
  %101 = load ptr, ptr %td_ycbcrcoeffs64, align 8
  %102 = va_arg ptr %ap.addr, ptr
  store ptr %102, ptr %varet65, align 8
  %103 = load ptr, ptr %varet65, align 8
  store ptr %101, ptr %103, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.end
  %104 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %104, i32 0, i32 49
  %arrayidx67 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %105 = load i16, ptr %arrayidx67, align 8
  %106 = va_arg ptr %ap.addr, ptr
  store ptr %106, ptr %varet68, align 8
  %107 = load ptr, ptr %varet68, align 8
  store i16 %105, ptr %107, align 2
  %108 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling69 = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i32 0, i32 49
  %arrayidx70 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling69, i64 0, i64 1
  %109 = load i16, ptr %arrayidx70, align 2
  %110 = va_arg ptr %ap.addr, ptr
  store ptr %110, ptr %varet71, align 8
  %111 = load ptr, ptr %varet71, align 8
  store i16 %109, ptr %111, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb72:                                          ; preds = %if.end
  %112 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %112, i32 0, i32 50
  %113 = load i16, ptr %td_ycbcrpositioning, align 4
  %114 = va_arg ptr %ap.addr, ptr
  store ptr %114, ptr %varet73, align 8
  %115 = load ptr, ptr %varet73, align 8
  store i16 %113, ptr %115, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb74:                                          ; preds = %if.end
  %116 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %116, i32 0, i32 54
  %arrayidx75 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  %117 = load ptr, ptr %arrayidx75, align 8
  %tobool76 = icmp ne ptr %117, null
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %sw.bb74
  %118 = load ptr, ptr %td, align 8
  call void @TIFFDefaultTransferFunction(ptr noundef %118)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %sw.bb74
  %119 = load ptr, ptr %td, align 8
  %td_transferfunction79 = getelementptr inbounds %struct.TIFFDirectory, ptr %119, i32 0, i32 54
  %arrayidx80 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction79, i64 0, i64 0
  %120 = load ptr, ptr %arrayidx80, align 8
  %121 = va_arg ptr %ap.addr, ptr
  store ptr %121, ptr %varet81, align 8
  %122 = load ptr, ptr %varet81, align 8
  store ptr %120, ptr %122, align 8
  %123 = load ptr, ptr %td, align 8
  %td_samplesperpixel82 = getelementptr inbounds %struct.TIFFDirectory, ptr %123, i32 0, i32 15
  %124 = load i16, ptr %td_samplesperpixel82, align 2
  %conv83 = zext i16 %124 to i32
  %125 = load ptr, ptr %td, align 8
  %td_extrasamples84 = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i32 0, i32 30
  %126 = load i16, ptr %td_extrasamples84, align 4
  %conv85 = zext i16 %126 to i32
  %sub86 = sub nsw i32 %conv83, %conv85
  %cmp87 = icmp sgt i32 %sub86, 1
  br i1 %cmp87, label %if.then89, label %if.end96

if.then89:                                        ; preds = %if.end78
  %127 = load ptr, ptr %td, align 8
  %td_transferfunction90 = getelementptr inbounds %struct.TIFFDirectory, ptr %127, i32 0, i32 54
  %arrayidx91 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction90, i64 0, i64 1
  %128 = load ptr, ptr %arrayidx91, align 8
  %129 = va_arg ptr %ap.addr, ptr
  store ptr %129, ptr %varet92, align 8
  %130 = load ptr, ptr %varet92, align 8
  store ptr %128, ptr %130, align 8
  %131 = load ptr, ptr %td, align 8
  %td_transferfunction93 = getelementptr inbounds %struct.TIFFDirectory, ptr %131, i32 0, i32 54
  %arrayidx94 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction93, i64 0, i64 2
  %132 = load ptr, ptr %arrayidx94, align 8
  %133 = va_arg ptr %ap.addr, ptr
  store ptr %133, ptr %varet95, align 8
  %134 = load ptr, ptr %varet95, align 8
  store ptr %132, ptr %134, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end78
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb97:                                          ; preds = %if.end
  %135 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %135, i32 0, i32 53
  %136 = load ptr, ptr %td_refblackwhite, align 8
  %tobool98 = icmp ne ptr %136, null
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %sw.bb97
  %137 = load ptr, ptr %td, align 8
  call void @TIFFDefaultRefBlackWhite(ptr noundef %137)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %sw.bb97
  %138 = load ptr, ptr %td, align 8
  %td_refblackwhite101 = getelementptr inbounds %struct.TIFFDirectory, ptr %138, i32 0, i32 53
  %139 = load ptr, ptr %td_refblackwhite101, align 8
  %140 = va_arg ptr %ap.addr, ptr
  store ptr %140, ptr %varet102, align 8
  %141 = load ptr, ptr %varet102, align 8
  store ptr %139, ptr %141, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end100, %if.end96, %sw.bb72, %sw.bb66, %if.end63, %sw.bb50, %sw.bb45, %sw.bb43, %land.end, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %if.then
  %142 = load i32, ptr %retval, align 4
  ret i32 %142
}

declare i32 @TIFFVGetField(ptr noundef, i64 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @TIFFDefaultTransferFunction(ptr noundef %td) #0 {
entry:
  %td.addr = alloca ptr, align 8
  %tf = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %t = alloca double, align 8
  store ptr %td, ptr %td.addr, align 8
  %0 = load ptr, ptr %td.addr, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i32 0, i32 54
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  store ptr %arraydecay, ptr %tf, align 8
  %1 = load ptr, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %2 to i32
  %shl = shl i32 1, %conv
  %conv1 = sext i32 %shl to i64
  store i64 %conv1, ptr %n, align 8
  %3 = load i64, ptr %n, align 8
  %mul = mul i64 %3, 2
  %call = call ptr @_TIFFmalloc(i64 noundef %mul)
  %4 = load ptr, ptr %tf, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  store ptr %call, ptr %arrayidx, align 8
  %5 = load ptr, ptr %tf, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %6, i64 0
  store i16 0, ptr %arrayidx3, align 2
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %n, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %i, align 8
  %conv5 = sitofp i64 %9 to double
  %10 = load i64, ptr %n, align 8
  %conv6 = sitofp i64 %10 to double
  %sub = fsub double %conv6, 1.000000e+00
  %div = fdiv double %conv5, %sub
  store double %div, ptr %t, align 8
  %11 = load double, ptr %t, align 8
  %12 = call double @llvm.pow.f64(double %11, double 2.200000e+00)
  %13 = call double @llvm.fmuladd.f64(double 6.553500e+04, double %12, double 5.000000e-01)
  %14 = call double @llvm.floor.f64(double %13)
  %conv8 = fptoui double %14 to i16
  %15 = load ptr, ptr %tf, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx9, align 8
  %17 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %16, i64 %17
  store i16 %conv8, ptr %arrayidx10, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %i, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 15
  %20 = load i16, ptr %td_samplesperpixel, align 2
  %conv11 = zext i16 %20 to i32
  %21 = load ptr, ptr %td.addr, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 30
  %22 = load i16, ptr %td_extrasamples, align 4
  %conv12 = zext i16 %22 to i32
  %sub13 = sub nsw i32 %conv11, %conv12
  %cmp14 = icmp sgt i32 %sub13, 1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %23 = load i64, ptr %n, align 8
  %mul16 = mul i64 %23, 2
  %call17 = call ptr @_TIFFmalloc(i64 noundef %mul16)
  %24 = load ptr, ptr %tf, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %call17, ptr %arrayidx18, align 8
  %25 = load ptr, ptr %tf, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %25, i64 1
  %26 = load ptr, ptr %arrayidx19, align 8
  %27 = load ptr, ptr %tf, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %27, i64 0
  %28 = load ptr, ptr %arrayidx20, align 8
  %29 = load i64, ptr %n, align 8
  %mul21 = mul i64 %29, 2
  call void @_TIFFmemcpy(ptr noundef %26, ptr noundef %28, i64 noundef %mul21)
  %30 = load i64, ptr %n, align 8
  %mul22 = mul i64 %30, 2
  %call23 = call ptr @_TIFFmalloc(i64 noundef %mul22)
  %31 = load ptr, ptr %tf, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %31, i64 2
  store ptr %call23, ptr %arrayidx24, align 8
  %32 = load ptr, ptr %tf, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %32, i64 2
  %33 = load ptr, ptr %arrayidx25, align 8
  %34 = load ptr, ptr %tf, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %34, i64 0
  %35 = load ptr, ptr %arrayidx26, align 8
  %36 = load i64, ptr %n, align 8
  %mul27 = mul i64 %36, 2
  call void @_TIFFmemcpy(ptr noundef %33, ptr noundef %35, i64 noundef %mul27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @TIFFDefaultRefBlackWhite(ptr noundef %td) #0 {
entry:
  %td.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %td, ptr %td.addr, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef 24)
  %0 = load ptr, ptr %td.addr, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i32 0, i32 53
  store ptr %call, ptr %td_refblackwhite, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %td.addr, align 8
  %td_refblackwhite1 = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 53
  %3 = load ptr, ptr %td_refblackwhite1, align 8
  %4 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, ptr %3, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %5 = load ptr, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 8
  %6 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %6 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %conv2 = sitofp i64 %sub to float
  %7 = load ptr, ptr %td.addr, align 8
  %td_refblackwhite3 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 53
  %8 = load ptr, ptr %td_refblackwhite3, align 8
  %9 = load i32, ptr %i, align 4
  %mul4 = mul nsw i32 2, %9
  %add5 = add nsw i32 %mul4, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %8, i64 %idxprom6
  store float %conv2, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFGetFieldDefaulted(ptr noundef %tif, i64 noundef %tag, ...) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ok = alloca i32, align 4
  %ap = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  store i32 %call, ptr %ok, align 4
  call void @llvm.va_end(ptr %ap)
  %3 = load i32, ptr %ok, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
