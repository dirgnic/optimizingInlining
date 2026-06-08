; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2median/tif_compress.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2median/tif_compress.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFCodec = type { ptr, i16, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct._codec = type { ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"scanline\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Compression algorithm does not support random access\00", align 1
@registeredCODECS = internal global ptr null, align 8
@_TIFFBuiltinCODECS = external global [0 x %struct.TIFFCodec], align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"TIFFRegisterCODEC\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"No space to register compression scheme %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TIFFUnRegisterCODEC\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Cannot remove compression scheme %s; not registered\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s %s encoding is no longer implemented due to Unisys patent enforcement\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s %s encoding is not implemented\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Compression scheme %u %s encoding is not implemented\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s %s decoding is not implemented\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Compression scheme %u %s decoding is not implemented\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoRowEncode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoEncode(ptr noundef %3, ptr noundef @.str)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFNoEncode(ptr noundef %tif, ptr noundef %method) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %method, ptr %method.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 10
  %1 = load i16, ptr %td_compression, align 8
  %call = call ptr @TIFFFindCODEC(i16 noundef zeroext %1)
  store ptr %call, ptr %c, align 8
  %2 = load ptr, ptr %c, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name, align 8
  %call1 = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.8, i64 noundef 3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load ptr, ptr %c, align 8
  %name4 = getelementptr inbounds %struct.TIFFCodec, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name4, align 8
  %9 = load ptr, ptr %method.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.9, ptr noundef %8, ptr noundef %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_name5 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %tif_name5, align 8
  %12 = load ptr, ptr %c, align 8
  %name6 = getelementptr inbounds %struct.TIFFCodec, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %name6, align 8
  %14 = load ptr, ptr %method.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %11, ptr noundef @.str.10, ptr noundef %13, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end11

if.else7:                                         ; preds = %entry
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_name8 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %tif_name8, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_dir9 = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 6
  %td_compression10 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir9, i32 0, i32 10
  %18 = load i16, ptr %td_compression10, align 8
  %conv = zext i16 %18 to i32
  %19 = load ptr, ptr %method.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef @.str.11, i32 noundef %conv, ptr noundef %19)
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.end
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoStripEncode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoEncode(ptr noundef %3, ptr noundef @.str.1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoTileEncode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoEncode(ptr noundef %3, ptr noundef @.str.2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoRowDecode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoDecode(ptr noundef %3, ptr noundef @.str)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFNoDecode(ptr noundef %tif, ptr noundef %method) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %method, ptr %method.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 10
  %1 = load i16, ptr %td_compression, align 8
  %call = call ptr @TIFFFindCODEC(i16 noundef zeroext %1)
  store ptr %call, ptr %c, align 8
  %2 = load ptr, ptr %c, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tif_name, align 8
  %5 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %name, align 8
  %7 = load ptr, ptr %method.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef @.str.12, ptr noundef %6, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_name1 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tif_name1, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_dir2 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 6
  %td_compression3 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir2, i32 0, i32 10
  %11 = load i16, ptr %td_compression3, align 8
  %conv = zext i16 %11 to i32
  %12 = load ptr, ptr %method.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef @.str.13, i32 noundef %conv, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoStripDecode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoDecode(ptr noundef %3, ptr noundef @.str.1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoTileDecode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNoDecode(ptr noundef %3, ptr noundef @.str.2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoSeek(ptr noundef %tif, i32 noundef %off) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %off, ptr %off.addr, align 4
  %0 = load i32, ptr %off.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef @.str.3)
  ret i32 0
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_TIFFNoPreCode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i16, ptr %s.addr, align 2
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_TIFFSetDefaultCompressionState(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 21
  store ptr @_TIFFtrue, ptr %tif_setupdecode, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 22
  store ptr @_TIFFNoPreCode, ptr %tif_predecode, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 26
  store ptr @_TIFFNoRowDecode, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 28
  store ptr @_TIFFNoStripDecode, ptr %tif_decodestrip, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 30
  store ptr @_TIFFNoTileDecode, ptr %tif_decodetile, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 23
  store ptr @_TIFFtrue, ptr %tif_setupencode, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %tif_preencode, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 25
  store ptr @_TIFFtrue, ptr %tif_postencode, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %tif_encoderow, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %tif_encodestrip, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %tif_encodetile, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 32
  store ptr @_TIFFvoid, ptr %tif_close, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 33
  store ptr @_TIFFNoSeek, ptr %tif_seek, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 34
  store ptr @_TIFFvoid, ptr %tif_cleanup, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_defstripsize = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 35
  store ptr @_TIFFDefaultStripSize, ptr %tif_defstripsize, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_deftilesize = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 36
  store ptr @_TIFFDefaultTileSize, ptr %tif_deftilesize, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %tif_flags, align 8
  %and = and i32 %17, -257
  store i32 %and, ptr %tif_flags, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_TIFFtrue(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_TIFFvoid(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  ret void
}

declare i32 @_TIFFDefaultStripSize(ptr noundef, i32 noundef) #1

declare void @_TIFFDefaultTileSize(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFSetCompressionScheme(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  %c = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %conv = trunc i32 %0 to i16
  %call = call ptr @TIFFFindCODEC(i16 noundef zeroext %conv)
  store ptr %call, ptr %c, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFSetDefaultCompressionState(ptr noundef %1)
  %2 = load ptr, ptr %c, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %c, align 8
  %init = getelementptr inbounds %struct.TIFFCodec, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %init, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i32, ptr %scheme.addr, align 4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @TIFFFindCODEC(i16 noundef zeroext %scheme) #0 {
entry:
  %retval = alloca ptr, align 8
  %scheme.addr = alloca i16, align 2
  %c = alloca ptr, align 8
  %cd = alloca ptr, align 8
  store i16 %scheme, ptr %scheme.addr, align 2
  %0 = load ptr, ptr @registeredCODECS, align 8
  store ptr %0, ptr %cd, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %cd, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cd, align 8
  %info = getelementptr inbounds %struct._codec, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %info, align 8
  %scheme1 = getelementptr inbounds %struct.TIFFCodec, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %scheme1, align 8
  %conv = zext i16 %4 to i32
  %5 = load i16, ptr %scheme.addr, align 2
  %conv2 = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %cd, align 8
  %info4 = getelementptr inbounds %struct._codec, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %info4, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %cd, align 8
  %next = getelementptr inbounds %struct._codec, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %cd, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr @_TIFFBuiltinCODECS, ptr %c, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %10 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %name, align 8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %12 = load ptr, ptr %c, align 8
  %scheme8 = getelementptr inbounds %struct.TIFFCodec, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %scheme8, align 8
  %conv9 = zext i16 %13 to i32
  %14 = load i16, ptr %scheme.addr, align 2
  %conv10 = zext i16 %14 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body7
  %15 = load ptr, ptr %c, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %for.body7
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %16 = load ptr, ptr %c, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFCodec, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %c, align 8
  br label %for.cond5, !llvm.loop !8

for.end16:                                        ; preds = %for.cond5
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end16, %if.then13, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @TIFFRegisterCODEC(i16 noundef zeroext %scheme, ptr noundef %name, ptr noundef %init) #0 {
entry:
  %scheme.addr = alloca i16, align 2
  %name.addr = alloca ptr, align 8
  %init.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  store i16 %scheme, ptr %scheme.addr, align 2
  store ptr %name, ptr %name.addr, align 8
  store ptr %init, ptr %init.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %add = add i64 40, %call
  %add1 = add i64 %add, 1
  %conv = trunc i64 %add1 to i32
  %call2 = call ptr @_TIFFmalloc(i32 noundef %conv)
  store ptr %call2, ptr %cd, align 8
  %1 = load ptr, ptr %cd, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cd, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 16
  %3 = load ptr, ptr %cd, align 8
  %info = getelementptr inbounds %struct._codec, ptr %3, i32 0, i32 1
  store ptr %add.ptr, ptr %info, align 8
  %4 = load ptr, ptr %cd, align 8
  %info4 = getelementptr inbounds %struct._codec, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %info4, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %5, i64 24
  %6 = load ptr, ptr %cd, align 8
  %info6 = getelementptr inbounds %struct._codec, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %info6, align 8
  %name7 = getelementptr inbounds %struct.TIFFCodec, ptr %7, i32 0, i32 0
  store ptr %add.ptr5, ptr %name7, align 8
  %8 = load ptr, ptr %cd, align 8
  %info8 = getelementptr inbounds %struct._codec, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %info8, align 8
  %name9 = getelementptr inbounds %struct.TIFFCodec, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %name9, align 8
  %11 = load ptr, ptr %name.addr, align 8
  %12 = load ptr, ptr %cd, align 8
  %info10 = getelementptr inbounds %struct._codec, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %info10, align 8
  %name11 = getelementptr inbounds %struct.TIFFCodec, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %name11, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call12 = call ptr @__strcpy_chk(ptr noundef %10, ptr noundef %11, i64 noundef %15) #4
  %16 = load i16, ptr %scheme.addr, align 2
  %17 = load ptr, ptr %cd, align 8
  %info13 = getelementptr inbounds %struct._codec, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %info13, align 8
  %scheme14 = getelementptr inbounds %struct.TIFFCodec, ptr %18, i32 0, i32 1
  store i16 %16, ptr %scheme14, align 8
  %19 = load ptr, ptr %init.addr, align 8
  %20 = load ptr, ptr %cd, align 8
  %info15 = getelementptr inbounds %struct._codec, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %info15, align 8
  %init16 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i32 0, i32 2
  store ptr %19, ptr %init16, align 8
  %22 = load ptr, ptr @registeredCODECS, align 8
  %23 = load ptr, ptr %cd, align 8
  %next = getelementptr inbounds %struct._codec, ptr %23, i32 0, i32 0
  store ptr %22, ptr %next, align 8
  %24 = load ptr, ptr %cd, align 8
  store ptr %24, ptr @registeredCODECS, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load ptr, ptr %cd, align 8
  %info17 = getelementptr inbounds %struct._codec, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %info17, align 8
  ret ptr %27
}

declare ptr @_TIFFmalloc(i32 noundef) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @TIFFUnRegisterCODEC(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %pcd = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr @registeredCODECS, ptr %pcd, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %pcd, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %cd, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cd, align 8
  %info = getelementptr inbounds %struct._codec, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %info, align 8
  %4 = load ptr, ptr %c.addr, align 8
  %cmp = icmp eq ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %cd, align 8
  %next = getelementptr inbounds %struct._codec, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  %7 = load ptr, ptr %pcd, align 8
  store ptr %6, ptr %7, align 8
  %8 = load ptr, ptr %cd, align 8
  call void @_TIFFfree(ptr noundef %8)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %cd, align 8
  %next1 = getelementptr inbounds %struct._codec, ptr %9, i32 0, i32 0
  store ptr %next1, ptr %pcd, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %c.addr, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %11)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
