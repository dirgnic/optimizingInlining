; ModuleID = './source_snapshot/public_repos/zlib/crc32.c'
source_filename = "./source_snapshot/public_repos/zlib/crc32.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@crc_table = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 4
@x2n_table = internal constant [32 x i32] [i32 1073741824, i32 536870912, i32 134217728, i32 8388608, i32 32768, i32 -306674912, i32 -1310281582, i32 -1603656425, i32 -312312402, i32 -1999551385, i32 -675545494, i32 -331055343, i32 -1904303760, i32 1680310286, i32 1296546528, i32 167662735, i32 -2088424177, i32 808857370, i32 2069535939, i32 838779241, i32 -1611922902, i32 1821240772, i32 366380877, i32 1608415822, i32 -1160180169, i32 776888047, i32 1319870996, i32 -1465617728, i32 1117427358, i32 344797226, i32 -1005869360, i32 -991810500], align 4

; Function Attrs: nounwind ssp uwtable
define ptr @get_crc_table() #0 {
entry:
  ret ptr @crc_table
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_z(i64 noundef %crc, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %crc.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %crc1 = alloca i64, align 8
  %crc2 = alloca i64, align 8
  %word = alloca ptr, align 8
  %val0 = alloca i64, align 8
  %val1 = alloca i64, align 8
  %val2 = alloca i64, align 8
  %last = alloca i64, align 8
  %last2 = alloca i64, align 8
  %i = alloca i64, align 8
  %num = alloca i64, align 8
  store i64 %crc, ptr %crc.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %crc.addr, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %neg, 4294967295
  store i64 %and, ptr %crc.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, ptr %len.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = ptrtoint ptr %3 to i64
  %and1 = and i64 %4, 7
  %cmp2 = icmp ne i64 %and1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %len.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %len.addr, align 8
  %7 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i64
  store i64 %conv, ptr %val, align 8
  %9 = load i64, ptr %crc.addr, align 8
  %10 = load i64, ptr %val, align 8
  %11 = call i64 asm sideeffect "crc32b ${0:w}, ${0:w}, ${1:w}", "=r,r,0"(i64 %10, i64 %9) #1, !srcloc !6
  store i64 %11, ptr %crc.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %buf.addr, align 8
  store ptr %12, ptr %word, align 8
  %13 = load i64, ptr %len.addr, align 8
  %shr = lshr i64 %13, 3
  store i64 %shr, ptr %num, align 8
  %14 = load i64, ptr %len.addr, align 8
  %and3 = and i64 %14, 7
  store i64 %and3, ptr %len.addr, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %for.end, %while.end
  %15 = load i64, ptr %num, align 8
  %cmp5 = icmp uge i64 %15, 11970
  br i1 %cmp5, label %while.body7, label %while.end15

while.body7:                                      ; preds = %while.cond4
  store i64 0, ptr %crc1, align 8
  store i64 0, ptr %crc2, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body7
  %16 = load i64, ptr %i, align 8
  %cmp8 = icmp ult i64 %16, 3990
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %word, align 8
  %18 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx, align 8
  store i64 %19, ptr %val0, align 8
  %20 = load ptr, ptr %word, align 8
  %21 = load i64, ptr %i, align 8
  %add = add i64 %21, 3990
  %arrayidx10 = getelementptr inbounds i64, ptr %20, i64 %add
  %22 = load i64, ptr %arrayidx10, align 8
  store i64 %22, ptr %val1, align 8
  %23 = load ptr, ptr %word, align 8
  %24 = load i64, ptr %i, align 8
  %add11 = add i64 %24, 7980
  %arrayidx12 = getelementptr inbounds i64, ptr %23, i64 %add11
  %25 = load i64, ptr %arrayidx12, align 8
  store i64 %25, ptr %val2, align 8
  %26 = load i64, ptr %crc.addr, align 8
  %27 = load i64, ptr %val0, align 8
  %28 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %27, i64 %26) #1, !srcloc !9
  store i64 %28, ptr %crc.addr, align 8
  %29 = load i64, ptr %crc1, align 8
  %30 = load i64, ptr %val1, align 8
  %31 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %30, i64 %29) #1, !srcloc !10
  store i64 %31, ptr %crc1, align 8
  %32 = load i64, ptr %crc2, align 8
  %33 = load i64, ptr %val2, align 8
  %34 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %33, i64 %32) #1, !srcloc !11
  store i64 %34, ptr %crc2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, ptr %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %word, align 8
  %add.ptr = getelementptr inbounds i64, ptr %36, i64 11970
  store ptr %add.ptr, ptr %word, align 8
  %37 = load i64, ptr %num, align 8
  %sub = sub i64 %37, 11970
  store i64 %sub, ptr %num, align 8
  %38 = load i64, ptr %crc.addr, align 8
  %call = call i64 @multmodp(i64 noundef 2701999372, i64 noundef %38)
  %39 = load i64, ptr %crc1, align 8
  %xor = xor i64 %call, %39
  store i64 %xor, ptr %crc.addr, align 8
  %40 = load i64, ptr %crc.addr, align 8
  %call13 = call i64 @multmodp(i64 noundef 2701999372, i64 noundef %40)
  %41 = load i64, ptr %crc2, align 8
  %xor14 = xor i64 %call13, %41
  store i64 %xor14, ptr %crc.addr, align 8
  br label %while.cond4, !llvm.loop !13

while.end15:                                      ; preds = %while.cond4
  %42 = load i64, ptr %num, align 8
  %div = udiv i64 %42, 3
  store i64 %div, ptr %last, align 8
  %43 = load i64, ptr %last, align 8
  %cmp16 = icmp uge i64 %43, 800
  br i1 %cmp16, label %if.then18, label %if.end41

if.then18:                                        ; preds = %while.end15
  %44 = load i64, ptr %last, align 8
  %shl = shl i64 %44, 1
  store i64 %shl, ptr %last2, align 8
  store i64 0, ptr %crc1, align 8
  store i64 0, ptr %crc2, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc28, %if.then18
  %45 = load i64, ptr %i, align 8
  %46 = load i64, ptr %last, align 8
  %cmp20 = icmp ult i64 %45, %46
  br i1 %cmp20, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond19
  %47 = load ptr, ptr %word, align 8
  %48 = load i64, ptr %i, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %47, i64 %48
  %49 = load i64, ptr %arrayidx23, align 8
  store i64 %49, ptr %val0, align 8
  %50 = load ptr, ptr %word, align 8
  %51 = load i64, ptr %i, align 8
  %52 = load i64, ptr %last, align 8
  %add24 = add i64 %51, %52
  %arrayidx25 = getelementptr inbounds i64, ptr %50, i64 %add24
  %53 = load i64, ptr %arrayidx25, align 8
  store i64 %53, ptr %val1, align 8
  %54 = load ptr, ptr %word, align 8
  %55 = load i64, ptr %i, align 8
  %56 = load i64, ptr %last2, align 8
  %add26 = add i64 %55, %56
  %arrayidx27 = getelementptr inbounds i64, ptr %54, i64 %add26
  %57 = load i64, ptr %arrayidx27, align 8
  store i64 %57, ptr %val2, align 8
  %58 = load i64, ptr %crc.addr, align 8
  %59 = load i64, ptr %val0, align 8
  %60 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %59, i64 %58) #1, !srcloc !14
  store i64 %60, ptr %crc.addr, align 8
  %61 = load i64, ptr %crc1, align 8
  %62 = load i64, ptr %val1, align 8
  %63 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %62, i64 %61) #1, !srcloc !15
  store i64 %63, ptr %crc1, align 8
  %64 = load i64, ptr %crc2, align 8
  %65 = load i64, ptr %val2, align 8
  %66 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %65, i64 %64) #1, !srcloc !16
  store i64 %66, ptr %crc2, align 8
  br label %for.inc28

for.inc28:                                        ; preds = %for.body22
  %67 = load i64, ptr %i, align 8
  %inc29 = add i64 %67, 1
  store i64 %inc29, ptr %i, align 8
  br label %for.cond19, !llvm.loop !17

for.end30:                                        ; preds = %for.cond19
  %68 = load i64, ptr %last, align 8
  %mul = mul i64 3, %68
  %69 = load ptr, ptr %word, align 8
  %add.ptr31 = getelementptr inbounds i64, ptr %69, i64 %mul
  store ptr %add.ptr31, ptr %word, align 8
  %70 = load i64, ptr %last, align 8
  %mul32 = mul i64 3, %70
  %71 = load i64, ptr %num, align 8
  %sub33 = sub i64 %71, %mul32
  store i64 %sub33, ptr %num, align 8
  %72 = load i64, ptr %last, align 8
  %conv34 = trunc i64 %72 to i32
  %conv35 = sext i32 %conv34 to i64
  %call36 = call i64 @x2nmodp(i64 noundef %conv35, i32 noundef 6)
  store i64 %call36, ptr %val, align 8
  %73 = load i64, ptr %val, align 8
  %74 = load i64, ptr %crc.addr, align 8
  %call37 = call i64 @multmodp(i64 noundef %73, i64 noundef %74)
  %75 = load i64, ptr %crc1, align 8
  %xor38 = xor i64 %call37, %75
  store i64 %xor38, ptr %crc.addr, align 8
  %76 = load i64, ptr %val, align 8
  %77 = load i64, ptr %crc.addr, align 8
  %call39 = call i64 @multmodp(i64 noundef %76, i64 noundef %77)
  %78 = load i64, ptr %crc2, align 8
  %xor40 = xor i64 %call39, %78
  store i64 %xor40, ptr %crc.addr, align 8
  br label %if.end41

if.end41:                                         ; preds = %for.end30, %while.end15
  store i64 0, ptr %i, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc47, %if.end41
  %79 = load i64, ptr %i, align 8
  %80 = load i64, ptr %num, align 8
  %cmp43 = icmp ult i64 %79, %80
  br i1 %cmp43, label %for.body45, label %for.end49

for.body45:                                       ; preds = %for.cond42
  %81 = load ptr, ptr %word, align 8
  %82 = load i64, ptr %i, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %81, i64 %82
  %83 = load i64, ptr %arrayidx46, align 8
  store i64 %83, ptr %val0, align 8
  %84 = load i64, ptr %crc.addr, align 8
  %85 = load i64, ptr %val0, align 8
  %86 = call i64 asm sideeffect "crc32x ${0:w}, ${0:w}, ${1:x}", "=r,r,0"(i64 %85, i64 %84) #1, !srcloc !18
  store i64 %86, ptr %crc.addr, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body45
  %87 = load i64, ptr %i, align 8
  %inc48 = add i64 %87, 1
  store i64 %inc48, ptr %i, align 8
  br label %for.cond42, !llvm.loop !19

for.end49:                                        ; preds = %for.cond42
  %88 = load i64, ptr %num, align 8
  %89 = load ptr, ptr %word, align 8
  %add.ptr50 = getelementptr inbounds i64, ptr %89, i64 %88
  store ptr %add.ptr50, ptr %word, align 8
  %90 = load ptr, ptr %word, align 8
  store ptr %90, ptr %buf.addr, align 8
  br label %while.cond51

while.cond51:                                     ; preds = %while.body53, %for.end49
  %91 = load i64, ptr %len.addr, align 8
  %tobool52 = icmp ne i64 %91, 0
  br i1 %tobool52, label %while.body53, label %while.end57

while.body53:                                     ; preds = %while.cond51
  %92 = load i64, ptr %len.addr, align 8
  %dec54 = add i64 %92, -1
  store i64 %dec54, ptr %len.addr, align 8
  %93 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr55, ptr %buf.addr, align 8
  %94 = load i8, ptr %93, align 1
  %conv56 = zext i8 %94 to i64
  store i64 %conv56, ptr %val, align 8
  %95 = load i64, ptr %crc.addr, align 8
  %96 = load i64, ptr %val, align 8
  %97 = call i64 asm sideeffect "crc32b ${0:w}, ${0:w}, ${1:w}", "=r,r,0"(i64 %96, i64 %95) #1, !srcloc !20
  store i64 %97, ptr %crc.addr, align 8
  br label %while.cond51, !llvm.loop !21

while.end57:                                      ; preds = %while.cond51
  %98 = load i64, ptr %crc.addr, align 8
  %xor58 = xor i64 %98, 4294967295
  store i64 %xor58, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end57, %if.then
  %99 = load i64, ptr %retval, align 8
  ret i64 %99
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @multmodp(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m = alloca i64, align 8
  %p = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  store i64 2147483648, ptr %m, align 8
  store i64 0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %0 = load i64, ptr %a.addr, align 8
  %1 = load i64, ptr %m, align 8
  %and = and i64 %0, %1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %for.cond
  %2 = load i64, ptr %b.addr, align 8
  %3 = load i64, ptr %p, align 8
  %xor = xor i64 %3, %2
  store i64 %xor, ptr %p, align 8
  %4 = load i64, ptr %a.addr, align 8
  %5 = load i64, ptr %m, align 8
  %sub = sub i64 %5, 1
  %and1 = and i64 %4, %sub
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %for.cond
  %6 = load i64, ptr %m, align 8
  %shr = lshr i64 %6, 1
  store i64 %shr, ptr %m, align 8
  %7 = load i64, ptr %b.addr, align 8
  %and4 = and i64 %7, 1
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %8 = load i64, ptr %b.addr, align 8
  %shr6 = lshr i64 %8, 1
  %xor7 = xor i64 %shr6, 3988292384
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %9 = load i64, ptr %b.addr, align 8
  %shr8 = lshr i64 %9, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor7, %cond.true ], [ %shr8, %cond.false ]
  store i64 %cond, ptr %b.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then2
  %10 = load i64, ptr %p, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @x2nmodp(i64 noundef %n, i32 noundef %k) #0 {
entry:
  %n.addr = alloca i64, align 8
  %k.addr = alloca i32, align 4
  %p = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  store i64 2147483648, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %n.addr, align 8
  %and = and i64 %1, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %k.addr, align 4
  %and2 = and i32 %2, 31
  %idxprom = zext i32 %and2 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr @x2n_table, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %3 to i64
  %4 = load i64, ptr %p, align 8
  %call = call i64 @multmodp(i64 noundef %conv, i64 noundef %4)
  store i64 %call, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i64, ptr %n.addr, align 8
  %shr = ashr i64 %5, 1
  store i64 %shr, ptr %n.addr, align 8
  %6 = load i32, ptr %k.addr, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %k.addr, align 4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %p, align 8
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32(i64 noundef %crc, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %crc.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store i64 %crc, ptr %crc.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i64, ptr %crc.addr, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i32, ptr %len.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i64 @crc32_z(i64 noundef %0, ptr noundef %1, i64 noundef %conv)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_combine_gen64(i64 noundef %len2) #0 {
entry:
  %retval = alloca i64, align 8
  %len2.addr = alloca i64, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %0 = load i64, ptr %len2.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %len2.addr, align 8
  %call = call i64 @x2nmodp(i64 noundef %1, i32 noundef 3)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8
  ret i64 %2
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_combine_gen(i64 noundef %len2) #0 {
entry:
  %len2.addr = alloca i64, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %0 = load i64, ptr %len2.addr, align 8
  %call = call i64 @crc32_combine_gen64(i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_combine_op(i64 noundef %crc1, i64 noundef %crc2, i64 noundef %op) #0 {
entry:
  %retval = alloca i64, align 8
  %crc1.addr = alloca i64, align 8
  %crc2.addr = alloca i64, align 8
  %op.addr = alloca i64, align 8
  store i64 %crc1, ptr %crc1.addr, align 8
  store i64 %crc2, ptr %crc2.addr, align 8
  store i64 %op, ptr %op.addr, align 8
  %0 = load i64, ptr %op.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %op.addr, align 8
  %2 = load i64, ptr %crc1.addr, align 8
  %and = and i64 %2, 4294967295
  %call = call i64 @multmodp(i64 noundef %1, i64 noundef %and)
  %3 = load i64, ptr %crc2.addr, align 8
  %and1 = and i64 %3, 4294967295
  %xor = xor i64 %call, %and1
  store i64 %xor, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_combine64(i64 noundef %crc1, i64 noundef %crc2, i64 noundef %len2) #0 {
entry:
  %crc1.addr = alloca i64, align 8
  %crc2.addr = alloca i64, align 8
  %len2.addr = alloca i64, align 8
  store i64 %crc1, ptr %crc1.addr, align 8
  store i64 %crc2, ptr %crc2.addr, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %0 = load i64, ptr %crc1.addr, align 8
  %1 = load i64, ptr %crc2.addr, align 8
  %2 = load i64, ptr %len2.addr, align 8
  %call = call i64 @crc32_combine_gen64(i64 noundef %2)
  %call1 = call i64 @pc_inline_source_snapshot_public_repos_zlib_crc32_0(i64 noundef %0, i64 noundef %1, i64 noundef %call)
  ret i64 %call1
}

; Function Attrs: nounwind ssp uwtable
define i64 @crc32_combine(i64 noundef %crc1, i64 noundef %crc2, i64 noundef %len2) #0 {
entry:
  %crc1.addr = alloca i64, align 8
  %crc2.addr = alloca i64, align 8
  %len2.addr = alloca i64, align 8
  store i64 %crc1, ptr %crc1.addr, align 8
  store i64 %crc2, ptr %crc2.addr, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %0 = load i64, ptr %crc1.addr, align 8
  %1 = load i64, ptr %crc2.addr, align 8
  %2 = load i64, ptr %len2.addr, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_zlib_crc32_1(i64 noundef %0, i64 noundef %1, i64 noundef %2)
  ret i64 %call
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i64 @pc_inline_source_snapshot_public_repos_zlib_crc32_0(i64 noundef %crc1, i64 noundef %crc2, i64 noundef %op)  alwaysinline#0 {
entry:
  %retval = alloca i64, align 8
  %crc1.addr = alloca i64, align 8
  %crc2.addr = alloca i64, align 8
  %op.addr = alloca i64, align 8
  store i64 %crc1, ptr %crc1.addr, align 8
  store i64 %crc2, ptr %crc2.addr, align 8
  store i64 %op, ptr %op.addr, align 8
  %0 = load i64, ptr %op.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %op.addr, align 8
  %2 = load i64, ptr %crc1.addr, align 8
  %and = and i64 %2, 4294967295
  %call = call i64 @multmodp(i64 noundef %1, i64 noundef %and)
  %3 = load i64, ptr %crc2.addr, align 8
  %and1 = and i64 %3, 4294967295
  %xor = xor i64 %call, %and1
  store i64 %xor, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

define i64 @pc_inline_source_snapshot_public_repos_zlib_crc32_1(i64 noundef %crc1, i64 noundef %crc2, i64 noundef %len2)  alwaysinline#0 {
entry:
  %crc1.addr = alloca i64, align 8
  %crc2.addr = alloca i64, align 8
  %len2.addr = alloca i64, align 8
  store i64 %crc1, ptr %crc1.addr, align 8
  store i64 %crc2, ptr %crc2.addr, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %0 = load i64, ptr %crc1.addr, align 8
  %1 = load i64, ptr %crc2.addr, align 8
  %2 = load i64, ptr %len2.addr, align 8
  %call = call i64 @crc32_combine_gen64(i64 noundef %2)
  %call1 = call i64 @crc32_combine_op(i64 noundef %0, i64 noundef %1, i64 noundef %call)
  ret i64 %call1
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = !{i64 17019}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i64 17690}
!10 = !{i64 17768}
!11 = !{i64 17847}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = !{i64 18477}
!15 = !{i64 18555}
!16 = !{i64 18634}
!17 = distinct !{!17, !8}
!18 = !{i64 19002}
!19 = distinct !{!19, !8}
!20 = !{i64 19249}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
