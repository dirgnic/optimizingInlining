; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/crc.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/crc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@crc_table = internal constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_crc_calculate(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %crc = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i64 4294967295, ptr %crc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp uge i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %crc, align 8
  %2 = load ptr, ptr %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %data.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i64
  %xor = xor i64 %1, %conv
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and
  %4 = load i64, ptr %arrayidx, align 8
  %5 = load i64, ptr %crc, align 8
  %shr = lshr i64 %5, 8
  %xor1 = xor i64 %4, %shr
  store i64 %xor1, ptr %crc, align 8
  %6 = load i64, ptr %crc, align 8
  %7 = load ptr, ptr %data.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr2, ptr %data.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv3 = zext i8 %8 to i64
  %xor4 = xor i64 %6, %conv3
  %and5 = and i64 %xor4, 255
  %arrayidx6 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and5
  %9 = load i64, ptr %arrayidx6, align 8
  %10 = load i64, ptr %crc, align 8
  %shr7 = lshr i64 %10, 8
  %xor8 = xor i64 %9, %shr7
  store i64 %xor8, ptr %crc, align 8
  %11 = load i64, ptr %crc, align 8
  %12 = load ptr, ptr %data.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr9, ptr %data.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv10 = zext i8 %13 to i64
  %xor11 = xor i64 %11, %conv10
  %and12 = and i64 %xor11, 255
  %arrayidx13 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and12
  %14 = load i64, ptr %arrayidx13, align 8
  %15 = load i64, ptr %crc, align 8
  %shr14 = lshr i64 %15, 8
  %xor15 = xor i64 %14, %shr14
  store i64 %xor15, ptr %crc, align 8
  %16 = load i64, ptr %crc, align 8
  %17 = load ptr, ptr %data.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr16, ptr %data.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv17 = zext i8 %18 to i64
  %xor18 = xor i64 %16, %conv17
  %and19 = and i64 %xor18, 255
  %arrayidx20 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and19
  %19 = load i64, ptr %arrayidx20, align 8
  %20 = load i64, ptr %crc, align 8
  %shr21 = lshr i64 %20, 8
  %xor22 = xor i64 %19, %shr21
  store i64 %xor22, ptr %crc, align 8
  %21 = load i64, ptr %crc, align 8
  %22 = load ptr, ptr %data.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr23, ptr %data.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv24 = zext i8 %23 to i64
  %xor25 = xor i64 %21, %conv24
  %and26 = and i64 %xor25, 255
  %arrayidx27 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and26
  %24 = load i64, ptr %arrayidx27, align 8
  %25 = load i64, ptr %crc, align 8
  %shr28 = lshr i64 %25, 8
  %xor29 = xor i64 %24, %shr28
  store i64 %xor29, ptr %crc, align 8
  %26 = load i64, ptr %crc, align 8
  %27 = load ptr, ptr %data.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr30, ptr %data.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv31 = zext i8 %28 to i64
  %xor32 = xor i64 %26, %conv31
  %and33 = and i64 %xor32, 255
  %arrayidx34 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and33
  %29 = load i64, ptr %arrayidx34, align 8
  %30 = load i64, ptr %crc, align 8
  %shr35 = lshr i64 %30, 8
  %xor36 = xor i64 %29, %shr35
  store i64 %xor36, ptr %crc, align 8
  %31 = load i64, ptr %crc, align 8
  %32 = load ptr, ptr %data.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr37, ptr %data.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv38 = zext i8 %33 to i64
  %xor39 = xor i64 %31, %conv38
  %and40 = and i64 %xor39, 255
  %arrayidx41 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and40
  %34 = load i64, ptr %arrayidx41, align 8
  %35 = load i64, ptr %crc, align 8
  %shr42 = lshr i64 %35, 8
  %xor43 = xor i64 %34, %shr42
  store i64 %xor43, ptr %crc, align 8
  %36 = load i64, ptr %crc, align 8
  %37 = load ptr, ptr %data.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr44, ptr %data.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv45 = zext i8 %38 to i64
  %xor46 = xor i64 %36, %conv45
  %and47 = and i64 %xor46, 255
  %arrayidx48 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and47
  %39 = load i64, ptr %arrayidx48, align 8
  %40 = load i64, ptr %crc, align 8
  %shr49 = lshr i64 %40, 8
  %xor50 = xor i64 %39, %shr49
  store i64 %xor50, ptr %crc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, ptr %length.addr, align 8
  %sub = sub i64 %41, 8
  store i64 %sub, ptr %length.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load i64, ptr %length.addr, align 8
  switch i64 %42, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb58
    i64 5, label %sw.bb66
    i64 4, label %sw.bb74
    i64 3, label %sw.bb82
    i64 2, label %sw.bb90
    i64 1, label %sw.bb98
    i64 0, label %sw.bb106
  ]

sw.bb:                                            ; preds = %for.end
  %43 = load i64, ptr %crc, align 8
  %44 = load ptr, ptr %data.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr51, ptr %data.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv52 = zext i8 %45 to i64
  %xor53 = xor i64 %43, %conv52
  %and54 = and i64 %xor53, 255
  %arrayidx55 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and54
  %46 = load i64, ptr %arrayidx55, align 8
  %47 = load i64, ptr %crc, align 8
  %shr56 = lshr i64 %47, 8
  %xor57 = xor i64 %46, %shr56
  store i64 %xor57, ptr %crc, align 8
  br label %sw.bb58

sw.bb58:                                          ; preds = %for.end, %sw.bb
  %48 = load i64, ptr %crc, align 8
  %49 = load ptr, ptr %data.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr59, ptr %data.addr, align 8
  %50 = load i8, ptr %49, align 1
  %conv60 = zext i8 %50 to i64
  %xor61 = xor i64 %48, %conv60
  %and62 = and i64 %xor61, 255
  %arrayidx63 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and62
  %51 = load i64, ptr %arrayidx63, align 8
  %52 = load i64, ptr %crc, align 8
  %shr64 = lshr i64 %52, 8
  %xor65 = xor i64 %51, %shr64
  store i64 %xor65, ptr %crc, align 8
  br label %sw.bb66

sw.bb66:                                          ; preds = %for.end, %sw.bb58
  %53 = load i64, ptr %crc, align 8
  %54 = load ptr, ptr %data.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr67, ptr %data.addr, align 8
  %55 = load i8, ptr %54, align 1
  %conv68 = zext i8 %55 to i64
  %xor69 = xor i64 %53, %conv68
  %and70 = and i64 %xor69, 255
  %arrayidx71 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and70
  %56 = load i64, ptr %arrayidx71, align 8
  %57 = load i64, ptr %crc, align 8
  %shr72 = lshr i64 %57, 8
  %xor73 = xor i64 %56, %shr72
  store i64 %xor73, ptr %crc, align 8
  br label %sw.bb74

sw.bb74:                                          ; preds = %for.end, %sw.bb66
  %58 = load i64, ptr %crc, align 8
  %59 = load ptr, ptr %data.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr75, ptr %data.addr, align 8
  %60 = load i8, ptr %59, align 1
  %conv76 = zext i8 %60 to i64
  %xor77 = xor i64 %58, %conv76
  %and78 = and i64 %xor77, 255
  %arrayidx79 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and78
  %61 = load i64, ptr %arrayidx79, align 8
  %62 = load i64, ptr %crc, align 8
  %shr80 = lshr i64 %62, 8
  %xor81 = xor i64 %61, %shr80
  store i64 %xor81, ptr %crc, align 8
  br label %sw.bb82

sw.bb82:                                          ; preds = %for.end, %sw.bb74
  %63 = load i64, ptr %crc, align 8
  %64 = load ptr, ptr %data.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr83, ptr %data.addr, align 8
  %65 = load i8, ptr %64, align 1
  %conv84 = zext i8 %65 to i64
  %xor85 = xor i64 %63, %conv84
  %and86 = and i64 %xor85, 255
  %arrayidx87 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and86
  %66 = load i64, ptr %arrayidx87, align 8
  %67 = load i64, ptr %crc, align 8
  %shr88 = lshr i64 %67, 8
  %xor89 = xor i64 %66, %shr88
  store i64 %xor89, ptr %crc, align 8
  br label %sw.bb90

sw.bb90:                                          ; preds = %for.end, %sw.bb82
  %68 = load i64, ptr %crc, align 8
  %69 = load ptr, ptr %data.addr, align 8
  %incdec.ptr91 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr91, ptr %data.addr, align 8
  %70 = load i8, ptr %69, align 1
  %conv92 = zext i8 %70 to i64
  %xor93 = xor i64 %68, %conv92
  %and94 = and i64 %xor93, 255
  %arrayidx95 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and94
  %71 = load i64, ptr %arrayidx95, align 8
  %72 = load i64, ptr %crc, align 8
  %shr96 = lshr i64 %72, 8
  %xor97 = xor i64 %71, %shr96
  store i64 %xor97, ptr %crc, align 8
  br label %sw.bb98

sw.bb98:                                          ; preds = %for.end, %sw.bb90
  %73 = load i64, ptr %crc, align 8
  %74 = load ptr, ptr %data.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr99, ptr %data.addr, align 8
  %75 = load i8, ptr %74, align 1
  %conv100 = zext i8 %75 to i64
  %xor101 = xor i64 %73, %conv100
  %and102 = and i64 %xor101, 255
  %arrayidx103 = getelementptr inbounds [256 x i64], ptr @crc_table, i64 0, i64 %and102
  %76 = load i64, ptr %arrayidx103, align 8
  %77 = load i64, ptr %crc, align 8
  %shr104 = lshr i64 %77, 8
  %xor105 = xor i64 %76, %shr104
  store i64 %xor105, ptr %crc, align 8
  br label %sw.bb106

sw.bb106:                                         ; preds = %for.end, %sw.bb98
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb106
  %78 = load i64, ptr %crc, align 8
  %xor107 = xor i64 %78, 4294967295
  ret i64 %xor107
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
