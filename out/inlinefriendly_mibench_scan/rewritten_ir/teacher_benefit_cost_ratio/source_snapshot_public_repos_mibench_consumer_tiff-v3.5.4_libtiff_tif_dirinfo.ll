; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_dirinfo.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dirinfo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@tiffFieldInfo = internal constant [92 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 254, i16 1, i16 1, i32 4, i16 5, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i64 254, i16 1, i16 1, i32 3, i16 5, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i64 255, i16 1, i16 1, i32 3, i16 5, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i64 256, i16 1, i16 1, i32 4, i16 1, i8 0, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i64 256, i16 1, i16 1, i32 3, i16 1, i8 0, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i64 257, i16 1, i16 1, i32 4, i16 1, i8 1, i8 0, ptr @.str.11 }, %struct.TIFFFieldInfo { i64 257, i16 1, i16 1, i32 3, i16 1, i8 1, i8 0, ptr @.str.11 }, %struct.TIFFFieldInfo { i64 258, i16 -1, i16 -1, i32 3, i16 6, i8 0, i8 0, ptr @.str.12 }, %struct.TIFFFieldInfo { i64 259, i16 -1, i16 1, i32 3, i16 7, i8 0, i8 0, ptr @.str.13 }, %struct.TIFFFieldInfo { i64 262, i16 1, i16 1, i32 3, i16 8, i8 0, i8 0, ptr @.str.14 }, %struct.TIFFFieldInfo { i64 263, i16 1, i16 1, i32 3, i16 9, i8 1, i8 0, ptr @.str.15 }, %struct.TIFFFieldInfo { i64 264, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.16 }, %struct.TIFFFieldInfo { i64 265, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.17 }, %struct.TIFFFieldInfo { i64 266, i16 1, i16 1, i32 3, i16 10, i8 0, i8 0, ptr @.str.18 }, %struct.TIFFFieldInfo { i64 269, i16 -1, i16 -1, i32 2, i16 11, i8 1, i8 0, ptr @.str.19 }, %struct.TIFFFieldInfo { i64 270, i16 -1, i16 -1, i32 2, i16 12, i8 1, i8 0, ptr @.str.20 }, %struct.TIFFFieldInfo { i64 271, i16 -1, i16 -1, i32 2, i16 13, i8 1, i8 0, ptr @.str.21 }, %struct.TIFFFieldInfo { i64 272, i16 -1, i16 -1, i32 2, i16 14, i8 1, i8 0, ptr @.str.22 }, %struct.TIFFFieldInfo { i64 273, i16 -1, i16 -1, i32 4, i16 25, i8 0, i8 0, ptr @.str.23 }, %struct.TIFFFieldInfo { i64 273, i16 -1, i16 -1, i32 3, i16 25, i8 0, i8 0, ptr @.str.23 }, %struct.TIFFFieldInfo { i64 274, i16 1, i16 1, i32 3, i16 15, i8 0, i8 0, ptr @.str.24 }, %struct.TIFFFieldInfo { i64 277, i16 1, i16 1, i32 3, i16 16, i8 0, i8 0, ptr @.str.25 }, %struct.TIFFFieldInfo { i64 278, i16 1, i16 1, i32 4, i16 17, i8 0, i8 0, ptr @.str.26 }, %struct.TIFFFieldInfo { i64 278, i16 1, i16 1, i32 3, i16 17, i8 0, i8 0, ptr @.str.26 }, %struct.TIFFFieldInfo { i64 279, i16 -1, i16 -1, i32 4, i16 24, i8 0, i8 0, ptr @.str.27 }, %struct.TIFFFieldInfo { i64 279, i16 -1, i16 -1, i32 3, i16 24, i8 0, i8 0, ptr @.str.27 }, %struct.TIFFFieldInfo { i64 280, i16 -2, i16 -1, i32 3, i16 18, i8 1, i8 0, ptr @.str.28 }, %struct.TIFFFieldInfo { i64 281, i16 -2, i16 -1, i32 3, i16 19, i8 1, i8 0, ptr @.str.29 }, %struct.TIFFFieldInfo { i64 282, i16 1, i16 1, i32 5, i16 3, i8 0, i8 0, ptr @.str.30 }, %struct.TIFFFieldInfo { i64 283, i16 1, i16 1, i32 5, i16 3, i8 0, i8 0, ptr @.str.31 }, %struct.TIFFFieldInfo { i64 284, i16 1, i16 1, i32 3, i16 20, i8 0, i8 0, ptr @.str.32 }, %struct.TIFFFieldInfo { i64 285, i16 -1, i16 -1, i32 2, i16 21, i8 1, i8 0, ptr @.str.33 }, %struct.TIFFFieldInfo { i64 286, i16 1, i16 1, i32 5, i16 4, i8 1, i8 0, ptr @.str.34 }, %struct.TIFFFieldInfo { i64 287, i16 1, i16 1, i32 5, i16 4, i8 1, i8 0, ptr @.str.35 }, %struct.TIFFFieldInfo { i64 288, i16 -1, i16 -1, i32 4, i16 0, i8 0, i8 0, ptr @.str.36 }, %struct.TIFFFieldInfo { i64 289, i16 -1, i16 -1, i32 4, i16 0, i8 0, i8 0, ptr @.str.37 }, %struct.TIFFFieldInfo { i64 290, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.38 }, %struct.TIFFFieldInfo { i64 291, i16 -1, i16 -1, i32 3, i16 0, i8 1, i8 0, ptr @.str.39 }, %struct.TIFFFieldInfo { i64 296, i16 1, i16 1, i32 3, i16 22, i8 0, i8 0, ptr @.str.40 }, %struct.TIFFFieldInfo { i64 297, i16 2, i16 2, i32 3, i16 23, i8 1, i8 0, ptr @.str.41 }, %struct.TIFFFieldInfo { i64 300, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.42 }, %struct.TIFFFieldInfo { i64 301, i16 -1, i16 -1, i32 3, i16 44, i8 1, i8 0, ptr @.str.43 }, %struct.TIFFFieldInfo { i64 305, i16 -1, i16 -1, i32 2, i16 30, i8 1, i8 0, ptr @.str.44 }, %struct.TIFFFieldInfo { i64 306, i16 20, i16 20, i32 2, i16 28, i8 1, i8 0, ptr @.str.45 }, %struct.TIFFFieldInfo { i64 315, i16 -1, i16 -1, i32 2, i16 27, i8 1, i8 0, ptr @.str.46 }, %struct.TIFFFieldInfo { i64 316, i16 -1, i16 -1, i32 2, i16 29, i8 1, i8 0, ptr @.str.47 }, %struct.TIFFFieldInfo { i64 318, i16 2, i16 2, i32 5, i16 42, i8 1, i8 0, ptr @.str.48 }, %struct.TIFFFieldInfo { i64 319, i16 6, i16 6, i32 5, i16 43, i8 1, i8 0, ptr @.str.49 }, %struct.TIFFFieldInfo { i64 320, i16 -1, i16 -1, i32 3, i16 26, i8 1, i8 0, ptr @.str.50 }, %struct.TIFFFieldInfo { i64 321, i16 2, i16 2, i32 3, i16 37, i8 1, i8 0, ptr @.str.51 }, %struct.TIFFFieldInfo { i64 322, i16 1, i16 1, i32 4, i16 2, i8 0, i8 0, ptr @.str.52 }, %struct.TIFFFieldInfo { i64 322, i16 1, i16 1, i32 3, i16 2, i8 0, i8 0, ptr @.str.52 }, %struct.TIFFFieldInfo { i64 323, i16 1, i16 1, i32 4, i16 2, i8 0, i8 0, ptr @.str.53 }, %struct.TIFFFieldInfo { i64 323, i16 1, i16 1, i32 3, i16 2, i8 0, i8 0, ptr @.str.53 }, %struct.TIFFFieldInfo { i64 324, i16 -1, i16 1, i32 4, i16 25, i8 0, i8 0, ptr @.str.54 }, %struct.TIFFFieldInfo { i64 325, i16 -1, i16 1, i32 4, i16 24, i8 0, i8 0, ptr @.str.55 }, %struct.TIFFFieldInfo { i64 325, i16 -1, i16 1, i32 3, i16 24, i8 0, i8 0, ptr @.str.55 }, %struct.TIFFFieldInfo { i64 330, i16 -1, i16 -1, i32 4, i16 49, i8 1, i8 1, ptr @.str.56 }, %struct.TIFFFieldInfo { i64 332, i16 1, i16 1, i32 3, i16 45, i8 0, i8 0, ptr @.str.57 }, %struct.TIFFFieldInfo { i64 333, i16 -1, i16 -1, i32 2, i16 46, i8 1, i8 1, ptr @.str.58 }, %struct.TIFFFieldInfo { i64 334, i16 1, i16 1, i32 3, i16 50, i8 1, i8 0, ptr @.str.59 }, %struct.TIFFFieldInfo { i64 336, i16 2, i16 2, i32 3, i16 47, i8 0, i8 0, ptr @.str.60 }, %struct.TIFFFieldInfo { i64 336, i16 2, i16 2, i32 1, i16 47, i8 0, i8 0, ptr @.str.60 }, %struct.TIFFFieldInfo { i64 337, i16 -1, i16 -1, i32 2, i16 48, i8 1, i8 0, ptr @.str.61 }, %struct.TIFFFieldInfo { i64 338, i16 -1, i16 -1, i32 3, i16 31, i8 0, i8 0, ptr @.str.62 }, %struct.TIFFFieldInfo { i64 338, i16 -1, i16 -1, i32 1, i16 31, i8 0, i8 0, ptr @.str.62 }, %struct.TIFFFieldInfo { i64 339, i16 -1, i16 -1, i32 3, i16 32, i8 0, i8 0, ptr @.str.63 }, %struct.TIFFFieldInfo { i64 340, i16 -2, i16 -1, i32 0, i16 33, i8 1, i8 0, ptr @.str.64 }, %struct.TIFFFieldInfo { i64 341, i16 -2, i16 -1, i32 0, i16 34, i8 1, i8 0, ptr @.str.65 }, %struct.TIFFFieldInfo { i64 529, i16 3, i16 3, i32 5, i16 38, i8 0, i8 0, ptr @.str.66 }, %struct.TIFFFieldInfo { i64 530, i16 2, i16 2, i32 3, i16 39, i8 0, i8 0, ptr @.str.67 }, %struct.TIFFFieldInfo { i64 531, i16 1, i16 1, i32 3, i16 40, i8 0, i8 0, ptr @.str.68 }, %struct.TIFFFieldInfo { i64 532, i16 6, i16 6, i32 5, i16 41, i8 1, i8 0, ptr @.str.69 }, %struct.TIFFFieldInfo { i64 532, i16 6, i16 6, i32 4, i16 41, i8 1, i8 0, ptr @.str.69 }, %struct.TIFFFieldInfo { i64 32995, i16 1, i16 1, i32 3, i16 31, i8 0, i8 0, ptr @.str.70 }, %struct.TIFFFieldInfo { i64 32996, i16 -2, i16 -1, i32 3, i16 32, i8 0, i8 0, ptr @.str.71 }, %struct.TIFFFieldInfo { i64 32997, i16 1, i16 1, i32 4, i16 35, i8 0, i8 0, ptr @.str.72 }, %struct.TIFFFieldInfo { i64 32997, i16 1, i16 1, i32 3, i16 35, i8 0, i8 0, ptr @.str.72 }, %struct.TIFFFieldInfo { i64 32998, i16 1, i16 1, i32 4, i16 36, i8 0, i8 0, ptr @.str.73 }, %struct.TIFFFieldInfo { i64 32998, i16 1, i16 1, i32 3, i16 36, i8 0, i8 0, ptr @.str.73 }, %struct.TIFFFieldInfo { i64 33723, i16 -1, i16 -1, i32 4, i16 53, i8 0, i8 1, ptr @.str.74 }, %struct.TIFFFieldInfo { i64 34377, i16 -1, i16 -3, i32 7, i16 52, i8 0, i8 1, ptr @.str.75 }, %struct.TIFFFieldInfo { i64 34377, i16 -1, i16 -1, i32 1, i16 52, i8 0, i8 1, ptr @.str.75 }, %struct.TIFFFieldInfo { i64 34675, i16 -1, i16 -3, i32 7, i16 51, i8 0, i8 1, ptr @.str.76 }, %struct.TIFFFieldInfo { i64 37439, i16 1, i16 1, i32 12, i16 54, i8 0, i8 0, ptr @.str.77 }, %struct.TIFFFieldInfo { i64 33300, i16 1, i16 1, i32 4, i16 55, i8 1, i8 0, ptr @.str.78 }, %struct.TIFFFieldInfo { i64 33301, i16 1, i16 1, i32 4, i16 56, i8 1, i8 0, ptr @.str.79 }, %struct.TIFFFieldInfo { i64 33302, i16 -1, i16 -1, i32 2, i16 57, i8 1, i8 0, ptr @.str.80 }, %struct.TIFFFieldInfo { i64 33303, i16 -1, i16 -1, i32 2, i16 58, i8 1, i8 0, ptr @.str.81 }, %struct.TIFFFieldInfo { i64 33304, i16 1, i16 1, i32 11, i16 59, i8 1, i8 0, ptr @.str.82 }, %struct.TIFFFieldInfo { i64 33305, i16 16, i16 16, i32 11, i16 60, i8 1, i8 0, ptr @.str.83 }, %struct.TIFFFieldInfo { i64 33306, i16 16, i16 16, i32 11, i16 61, i8 1, i8 0, ptr @.str.84 }], align 8
@.str = private unnamed_addr constant [6 x i8] c"%s: \0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"field[%2d] %5lu, %2d, %2d, %d, %2d, %5s, %5s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@tiffDataWidth = constant [13 x i32] [i32 1, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 4
@_TIFFFindFieldInfo.last = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"TIFFFieldWithTag\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Internal error, unknown tag 0x%x\00", align 1
@__func__._TIFFFieldWithTag = private unnamed_addr constant [18 x i8] c"_TIFFFieldWithTag\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tif_dirinfo.c\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"fip != NULL\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SubfileType\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"OldSubfileType\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ImageWidth\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"PhotometricInterpretation\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Threshholding\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"CellWidth\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"CellLength\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"FillOrder\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DocumentName\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"SamplesPerPixel\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"RowsPerStrip\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"MinSampleValue\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"MaxSampleValue\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"XResolution\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"YResolution\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"PlanarConfiguration\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"PageName\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"XPosition\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"YPosition\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"FreeOffsets\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"FreeByteCounts\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"GrayResponseUnit\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"GrayResponseCurve\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"ResolutionUnit\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"PageNumber\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"ColorResponseUnit\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"HostComputer\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"PrimaryChromaticities\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ColorMap\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"HalftoneHints\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"TileWidth\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"TileLength\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"TileOffsets\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"TileByteCounts\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"SubIFD\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"InkNames\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"NumberOfInks\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"DotRange\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"TargetPrinter\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ExtraSamples\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"SampleFormat\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"SMinSampleValue\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"SMaxSampleValue\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"YCbCrCoefficients\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"YCbCrSubsampling\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"YCbCrPositioning\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"ReferenceBlackWhite\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Matteing\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DataType\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"ImageDepth\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"TileDepth\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"RichTIFFIPTC\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"Photoshop\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"ICC Profile\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"StoNits\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ImageFullWidth\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"ImageFullLength\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"TextureFormat\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"TextureWrapModes\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"FieldOfViewCotan\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"MatrixWorldToScreen\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"MatrixWorldToCamera\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSetupFieldInfo(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 55
  %0 = load ptr, ptr %tif_fieldinfo, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo1 = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 55
  %2 = load ptr, ptr %tif_fieldinfo1, align 8
  call void @_TIFFfree(ptr noundef %2) #3
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 56
  store i32 0, ptr %tif_nfields, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %3, ptr noundef nonnull @tiffFieldInfo, i32 noundef 92)
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFMergeFieldInfo(ptr noundef %tif, ptr noundef %info, i32 noundef %n) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %tp = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 56
  %0 = load i32, ptr %tif_nfields, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 55
  %2 = load ptr, ptr %tif_fieldinfo, align 8
  %tif_nfields1 = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 56
  %3 = load i32, ptr %tif_nfields1, align 8
  %4 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %3, %4
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = call ptr @_TIFFrealloc(ptr noundef %2, i64 noundef %mul) #3
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo2 = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 55
  store ptr %call, ptr %tif_fieldinfo2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %n.addr, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = shl nsw i64 %conv3, 3
  %call5 = call ptr @_TIFFmalloc(i64 noundef %mul4) #3
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo6 = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 55
  store ptr %call5, ptr %tif_fieldinfo6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo7 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 55
  %9 = load ptr, ptr %tif_fieldinfo7, align 8
  %tif_nfields8 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 56
  %10 = load i32, ptr %tif_nfields8, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %tp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %11 = load i32, ptr %n.addr, align 4
  %cmp9 = icmp slt i32 %storemerge, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %info.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %12, i64 %idxprom11
  %14 = load ptr, ptr %tp, align 8
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %14, i64 %idxprom13
  store ptr %arrayidx12, ptr %arrayidx14, align 8
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_nfields15 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 56
  %17 = load i32, ptr %tif_nfields15, align 8
  %cmp16 = icmp sgt i32 %17, 0
  br i1 %cmp16, label %if.then18, label %if.else23

if.then18:                                        ; preds = %for.end
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo19 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 55
  %19 = load ptr, ptr %tif_fieldinfo19, align 8
  %20 = load i32, ptr %n.addr, align 4
  %tif_nfields20 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 56
  %21 = load i32, ptr %tif_nfields20, align 8
  %add21 = add nsw i32 %21, %20
  store i32 %add21, ptr %tif_nfields20, align 8
  %conv22 = sext i32 %add21 to i64
  call void @qsort(ptr noundef %19, i64 noundef %conv22, i64 noundef 8, ptr noundef nonnull @tagCompare) #3
  br label %if.end26

if.else23:                                        ; preds = %for.end
  %22 = load i32, ptr %n.addr, align 4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_nfields24 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 56
  %24 = load i32, ptr %tif_nfields24, align 8
  %add25 = add nsw i32 %24, %22
  store i32 %add25, ptr %tif_nfields24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then18
  ret void
}

declare ptr @_TIFFrealloc(ptr noundef, i64 noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @tagCompare(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %ta = alloca ptr, align 8
  %tb = alloca ptr, align 8
  %0 = load ptr, ptr %a, align 8
  store ptr %0, ptr %ta, align 8
  %1 = load ptr, ptr %b, align 8
  store ptr %1, ptr %tb, align 8
  %2 = load i64, ptr %0, align 8
  %3 = load i64, ptr %1, align 8
  %cmp.not = icmp eq i64 %2, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ta, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %tb, align 8
  %7 = load i64, ptr %6, align 8
  %cmp4 = icmp ult i64 %5, %7
  %cond = select i1 %cmp4, i32 -1, i32 1
  br label %return

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %tb, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %field_type, align 4
  %10 = load ptr, ptr %ta, align 8
  %field_type5 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %field_type5, align 4
  %cmp6 = icmp ult i32 %9, %11
  %cond7 = select i1 %cmp6, i32 -1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %cond7, %if.else ], [ %cond, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFPrintFieldInfo(ptr noundef %tif, ptr noundef %fd) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  %0 = load ptr, ptr %tif, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str, ptr noundef %0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 56
  %2 = load i32, ptr %tif_nfields, align 8
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 55
  %4 = load ptr, ptr %tif_fieldinfo, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %fip, align 8
  %7 = load ptr, ptr %fd.addr, align 8
  %8 = load i64, ptr %6, align 8
  %field_readcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %field_readcount, align 8
  %conv = sext i16 %9 to i32
  %field_writecount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %field_writecount, align 2
  %conv1 = sext i16 %10 to i32
  %11 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %field_type, align 4
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %field_bit, align 8
  %conv2 = zext i16 %13 to i32
  %field_oktochange = getelementptr inbounds %struct.TIFFFieldInfo, ptr %11, i64 0, i32 5
  %14 = load i8, ptr %field_oktochange, align 2
  %tobool.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.2
  %15 = load ptr, ptr %fip, align 8
  %field_passcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i64 0, i32 6
  %16 = load i8, ptr %field_passcount, align 1
  %tobool5.not = icmp eq i8 %16, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.3, ptr @.str.2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %field_name, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %5, i64 noundef %8, i32 noundef %conv, i32 noundef %conv1, i32 noundef %12, i32 noundef %conv2, ptr noundef nonnull %cond, ptr noundef nonnull %cond6, ptr noundef %17) #3
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @_TIFFSampleToTagType(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bps = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %0 to i32
  %add = add nuw nsw i32 %conv, 7
  %div1 = lshr i32 %add, 3
  store i32 %div1, ptr %bps, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %td_sampleformat = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6, i32 9
  %2 = load i16, ptr %td_sampleformat, align 2
  switch i16 %2, label %sw.epilog [
    i16 3, label %sw.bb
    i16 2, label %sw.bb5
    i16 1, label %sw.bb12
    i16 4, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %bps, align 4
  %cmp = icmp eq i32 %3, 4
  %cond = select i1 %cmp, i32 11, i32 12
  store i32 %cond, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %4 = load i32, ptr %bps, align 4
  %cmp6 = icmp slt i32 %4, 2
  %5 = load i32, ptr %bps, align 4
  %cmp8 = icmp slt i32 %5, 3
  %cond10 = select i1 %cmp8, i32 8, i32 9
  %cond11 = select i1 %cmp6, i32 6, i32 %cond10
  store i32 %cond11, ptr %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %entry
  %6 = load i32, ptr %bps, align 4
  %cmp13 = icmp slt i32 %6, 2
  %7 = load i32, ptr %bps, align 4
  %cmp17 = icmp slt i32 %7, 3
  %cond19 = select i1 %cmp17, i32 3, i32 4
  %cond21 = select i1 %cmp13, i32 1, i32 %cond19
  store i32 %cond21, ptr %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb22, %sw.bb12, %sw.bb5, %sw.bb
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @_TIFFFindFieldInfo(ptr noundef %tif, i64 noundef %tag, i32 noundef %dt) #0 {
entry:
  %retval = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store i32 %dt, ptr %dt.addr, align 4
  %0 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8
  %2 = load i64, ptr %1, align 8
  %3 = load i64, ptr %tag.addr, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %dt.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1
  %5 = load i32, ptr %dt.addr, align 4
  %6 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %field_type, align 4
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true1
  %8 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 56
  %10 = load i32, ptr %tif_nfields, align 8
  store i32 %10, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %n, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 55
  %14 = load ptr, ptr %tif_fieldinfo, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  store ptr %16, ptr %fip, align 8
  %17 = load i64, ptr %16, align 8
  %18 = load i64, ptr %tag.addr, align 8
  %cmp6 = icmp eq i64 %17, %18
  br i1 %cmp6, label %land.lhs.true7, label %for.inc

land.lhs.true7:                                   ; preds = %for.body
  %19 = load i32, ptr %dt.addr, align 4
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true7
  %20 = load ptr, ptr %fip, align 8
  %field_type10 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %20, i64 0, i32 3
  %21 = load i32, ptr %field_type10, align 4
  %22 = load i32, ptr %dt.addr, align 4
  %cmp11 = icmp eq i32 %21, %22
  br i1 %cmp11, label %if.then12, label %for.inc

if.then12:                                        ; preds = %lor.lhs.false9, %land.lhs.true7
  %23 = load ptr, ptr %fip, align 8
  store ptr %23, ptr @_TIFFFindFieldInfo.last, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body, %lor.lhs.false9
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @_TIFFFieldWithTag(ptr noundef %tif, i64 noundef %tag) #0 {
entry:
  %tag.addr = alloca i64, align 8
  %fip = alloca ptr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  %call = call ptr @_TIFFFindFieldInfo(ptr noundef %tif, i64 noundef %tag, i32 noundef 0)
  store ptr %call, ptr %fip, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv) #3
  %1 = load ptr, ptr %fip, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.true, label %if.end

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFFieldWithTag, ptr noundef nonnull @.str.6, i32 noundef 398, ptr noundef nonnull @.str.7) #4
  unreachable

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fip, align 8
  ret ptr %2
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { cold noreturn nounwind }

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
