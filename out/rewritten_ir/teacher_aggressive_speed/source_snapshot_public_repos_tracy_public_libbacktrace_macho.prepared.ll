; ModuleID = './source_snapshot/public_repos/tracy/public/libbacktrace/macho.cpp'
source_filename = "./source_snapshot/public_repos/tracy/public/libbacktrace/macho.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.tracy::libbacktrace_base_address" = type { i64 }
%"struct.tracy::backtrace_state" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%"struct.tracy::backtrace_view" = type { ptr, ptr, i64 }
%"struct.tracy::macho_header_32" = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.tracy::dwarf_sections" = type { [9 x ptr], [9 x i64] }
%"struct.tracy::macho_header_fat" = type { i32, i32 }
%"struct.tracy::macho_load_command" = type { i32, i32 }
%"struct.tracy::macho_segment_command" = type { i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%"struct.tracy::macho_segment_64_command" = type { i32, i32, [16 x i8], i64, i64, i64, i64, i32, i32, i32, i32 }
%"struct.tracy::macho_symtab_command" = type { i32, i32, i32, i32, i32, i32 }
%"struct.tracy::macho_uuid_command" = type { i32, i32, [16 x i8] }
%"struct.tracy::macho_syminfo_data" = type { ptr, ptr, i64 }
%"struct.tracy::macho_symbol" = type { ptr, i64 }
%"struct.tracy::macho_fat_arch_64" = type { i32, i32, i64, i64, i32, i32 }
%"struct.tracy::macho_fat_arch" = type { i32, i32, i32, i32, i32 }
%"struct.tracy::macho_section" = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"struct.tracy::macho_section_64" = type { [16 x i8], [16 x i8], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%"struct.tracy::macho_nlist_64" = type { i32, i8, i8, i16, i64 }
%"struct.tracy::macho_nlist" = type { i32, i8, i8, i16, i32 }

@.str = private unnamed_addr constant [35 x i8] c"no debug info in Mach-O executable\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"executable file is not in Mach-O format\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"executable file is not an executable\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"__DWARF\00\00\00\00\00\00\00\00\00\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"could not find executable in fat file\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"section overflow withing segment\00", align 1
@_ZN5tracyL19dwarf_section_namesE = internal constant [9 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"__debug_info\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"__debug_line\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"__debug_abbrev\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"__debug_ranges\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"__debug_str\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"__debug_addr\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"__debug_str_offs\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"__debug_line_str\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"__debug_rnglists\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"symbol string index out of range\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c".dSYM/Contents/Resources/DWARF/\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"no symbol table in Mach-O executable\00", align 1

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy20backtrace_initializeEPNS_15backtrace_stateEPKciPFvPvS3_iES4_PPFiS1_mPFiS4_mmS3_iS3_ES6_S4_E(ptr noundef %state, ptr noundef %filename, i32 noundef %descriptor, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fileline_fn.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %closed_descriptor = alloca i32, align 4
  %found_sym = alloca i32, align 4
  %macho_fileline_fn = alloca ptr, align 8
  %base_address = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %name = alloca ptr, align 8
  %d = alloca i32, align 4
  %mff = alloca ptr, align 8
  %mfs = alloca i32, align 4
  %does_not_exist = alloca i32, align 4
  %agg.tmp = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %.atomictmp = alloca ptr, align 8
  %atomic-temp = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %fileline_fn, ptr %fileline_fn.addr, align 8
  store i32 0, ptr %closed_descriptor, align 4
  store i32 0, ptr %found_sym, align 4
  store ptr @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_, ptr %macho_fileline_fn, align 8
  %call = call i32 @_dyld_image_count()
  store i32 %call, ptr %c, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %c, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %call1 = call ptr @_dyld_get_image_name(i32 noundef %2)
  store ptr %call1, ptr %name, align 8
  %3 = load ptr, ptr %name, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %name, align 8
  %5 = load ptr, ptr %filename.addr, align 8
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef %5)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %closed_descriptor, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %descriptor.addr, align 4
  store i32 %7, ptr %d, align 4
  store i32 1, ptr %closed_descriptor, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %name, align 8
  %9 = load ptr, ptr %error_callback.addr, align 8
  %10 = load ptr, ptr %data.addr, align 8
  %call6 = call noundef i32 @_ZN5tracy14backtrace_openEPKcPFvPvS1_iES2_Pi(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %does_not_exist)
  store i32 %call6, ptr %d, align 4
  %11 = load i32, ptr %d, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  br label %for.inc

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then5
  %12 = load i32, ptr %i, align 4
  %call11 = call i64 @_dyld_get_image_vmaddr_slide(i32 noundef %12)
  %m = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  store i64 %call11, ptr %m, align 8
  store ptr @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_, ptr %mff, align 8
  %13 = load ptr, ptr %state.addr, align 8
  %14 = load ptr, ptr %name, align 8
  %15 = load i32, ptr %d, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %base_address, i64 8, i1 false)
  %16 = load ptr, ptr %error_callback.addr, align 8
  %17 = load ptr, ptr %data.addr, align 8
  %coerce.dive = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp, i32 0, i32 0
  %18 = load i64, ptr %coerce.dive, align 8
  %call12 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %13, ptr noundef %14, i32 noundef %15, i64 noundef 0, ptr noundef null, i64 %18, i32 noundef 0, ptr noundef %16, ptr noundef %17, ptr noundef %mff, ptr noundef %mfs)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  br label %for.inc

if.end15:                                         ; preds = %if.end10
  %19 = load ptr, ptr %mff, align 8
  %cmp16 = icmp ne ptr %19, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %20 = load ptr, ptr %mff, align 8
  store ptr %20, ptr %macho_fileline_fn, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %21 = load i32, ptr %mfs, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  store i32 1, ptr %found_sym, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then14, %if.then8, %if.then
  %22 = load i32, ptr %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %closed_descriptor, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %for.end
  %24 = load i32, ptr %descriptor.addr, align 4
  %25 = load ptr, ptr %error_callback.addr, align 8
  %26 = load ptr, ptr %data.addr, align 8
  %call24 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %24, ptr noundef %25, ptr noundef %26)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end
  %27 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %27, i32 0, i32 1
  %28 = load i32, ptr %threaded, align 8
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.else37, label %if.then27

if.then27:                                        ; preds = %if.end25
  %29 = load i32, ptr %found_sym, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then27
  %30 = load ptr, ptr %state.addr, align 8
  %syminfo_fn = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %30, i32 0, i32 5
  store ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn, align 8
  br label %if.end36

if.else30:                                        ; preds = %if.then27
  %31 = load ptr, ptr %state.addr, align 8
  %syminfo_fn31 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %syminfo_fn31, align 8
  %cmp32 = icmp eq ptr %32, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else30
  %33 = load ptr, ptr %state.addr, align 8
  %syminfo_fn34 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %33, i32 0, i32 5
  store ptr @_ZN5tracyL12macho_nosymsEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.else30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then29
  br label %if.end43

if.else37:                                        ; preds = %if.end25
  %34 = load i32, ptr %found_sym, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else37
  %35 = load ptr, ptr %state.addr, align 8
  %syminfo_fn40 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %35, i32 0, i32 5
  store ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %.atomictmp, align 8
  %36 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %36, ptr %syminfo_fn40 release, align 8
  br label %if.end42

if.else41:                                        ; preds = %if.else37
  call void @abort() #7
  unreachable

if.end42:                                         ; preds = %if.then39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end36
  %37 = load ptr, ptr %state.addr, align 8
  %threaded44 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %37, i32 0, i32 1
  %38 = load i32, ptr %threaded44, align 8
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.else48, label %if.then46

if.then46:                                        ; preds = %if.end43
  %39 = load ptr, ptr %state.addr, align 8
  %fileline_fn47 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %fileline_fn47, align 8
  %41 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %40, ptr %41, align 8
  br label %if.end50

if.else48:                                        ; preds = %if.end43
  %42 = load ptr, ptr %state.addr, align 8
  %fileline_fn49 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %42, i32 0, i32 3
  %43 = load atomic i64, ptr %fileline_fn49 acquire, align 8
  store i64 %43, ptr %atomic-temp, align 8
  %44 = load ptr, ptr %atomic-temp, align 8
  %45 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %44, ptr %45, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  %46 = load ptr, ptr %fileline_fn.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %cmp51 = icmp eq ptr %47, null
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end50
  %48 = load ptr, ptr %fileline_fn.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %cmp52 = icmp eq ptr %49, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end50
  %50 = load ptr, ptr %macho_fileline_fn, align 8
  %51 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %50, ptr %51, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %lor.lhs.false
  ret i32 1
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_(ptr noundef %state, i64 noundef %pc, ptr noundef %callback, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %pc.addr = alloca i64, align 8
  %callback.addr = alloca ptr, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %pc, ptr %pc.addr, align 8
  store ptr %callback, ptr %callback.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %error_callback.addr, align 8
  %1 = load ptr, ptr %data.addr, align 8
  call void %0(ptr noundef %1, ptr noundef @.str, i32 noundef -1)
  ret i32 0
}

declare i32 @_dyld_image_count() #1

declare ptr @_dyld_get_image_name(i32 noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare noundef i32 @_ZN5tracy14backtrace_openEPKcPFvPvS1_iES2_Pi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @_dyld_get_image_vmaddr_slide(i32 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %state, ptr noundef %filename, i32 noundef %descriptor, i64 noundef %offset, ptr noundef %match_uuid, i64 %base_address.coerce, i32 noundef %skip_symtab, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn, ptr noundef %found_sym) #0 {
entry:
  %retval = alloca i32, align 4
  %base_address = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %match_uuid.addr = alloca ptr, align 8
  %skip_symtab.addr = alloca i32, align 4
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fileline_fn.addr = alloca ptr, align 8
  %found_sym.addr = alloca ptr, align 8
  %header_view = alloca %"struct.tracy::backtrace_view", align 8
  %header = alloca %"struct.tracy::macho_header_32", align 4
  %hdroffset = alloca i64, align 8
  %is_64 = alloca i32, align 4
  %cmds_view = alloca %"struct.tracy::backtrace_view", align 8
  %cmds_view_valid = alloca i32, align 4
  %dwarf_sections = alloca %"struct.tracy::dwarf_sections", align 8
  %have_dwarf = alloca i32, align 4
  %uuid = alloca [16 x i8], align 1
  %have_uuid = alloca i32, align 4
  %cmdoffset = alloca i64, align 8
  %i = alloca i32, align 4
  %fat_header = alloca %"struct.tracy::macho_header_fat", align 4
  %agg.tmp = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %fat_header10 = alloca %"struct.tracy::macho_header_fat", align 4
  %nfat_arch11 = alloca i32, align 4
  %agg.tmp14 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %pcmd = alloca ptr, align 8
  %load_command = alloca %"struct.tracy::macho_load_command", align 4
  %segcmd = alloca %"struct.tracy::macho_segment_command", align 4
  %segcmd49 = alloca %"struct.tracy::macho_segment_64_command", align 8
  %symcmd = alloca %"struct.tracy::macho_symtab_command", align 4
  %agg.tmp69 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %uuidcmd = alloca %"struct.tracy::macho_uuid_command", align 4
  %is_big_endian = alloca i32, align 4
  %agg.tmp103 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %agg.tmp113 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %coerce.dive = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  store i64 %base_address.coerce, ptr %coerce.dive, align 8
  store ptr %state, ptr %state.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  store ptr %match_uuid, ptr %match_uuid.addr, align 8
  store i32 %skip_symtab, ptr %skip_symtab.addr, align 4
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %fileline_fn, ptr %fileline_fn.addr, align 8
  store ptr %found_sym, ptr %found_sym.addr, align 8
  %0 = load ptr, ptr %found_sym.addr, align 8
  store i32 0, ptr %0, align 4
  store i32 0, ptr %cmds_view_valid, align 4
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load i32, ptr %descriptor.addr, align 4
  %3 = load i64, ptr %offset.addr, align 8
  %4 = load ptr, ptr %error_callback.addr, align 8
  %5 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef 28, ptr noundef %4, ptr noundef %5, ptr noundef %header_view)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %header_view, i32 0, i32 0
  %6 = load ptr, ptr %data1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %header, ptr align 1 %6, i64 28, i1 false)
  %7 = load ptr, ptr %state.addr, align 8
  %8 = load ptr, ptr %error_callback.addr, align 8
  %9 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %7, ptr noundef %header_view, ptr noundef %8, ptr noundef %9)
  %magic = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 0
  %10 = load i32, ptr %magic, align 4
  switch i32 %10, label %sw.default [
    i32 -17958194, label %sw.bb
    i32 -17958193, label %sw.bb2
    i32 -889275714, label %sw.bb4
    i32 -889275713, label %sw.bb4
    i32 -1095041334, label %sw.bb9
    i32 -1078264118, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %is_64, align 4
  %11 = load i64, ptr %offset.addr, align 8
  %add = add i64 %11, 28
  store i64 %add, ptr %hdroffset, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i32 1, ptr %is_64, align 4
  %12 = load i64, ptr %offset.addr, align 8
  %add3 = add i64 %12, 32
  store i64 %add3, ptr %hdroffset, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  %13 = load i64, ptr %offset.addr, align 8
  %add5 = add i64 %13, 8
  store i64 %add5, ptr %hdroffset, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fat_header, ptr align 4 %header, i64 8, i1 false)
  %14 = load ptr, ptr %state.addr, align 8
  %15 = load ptr, ptr %filename.addr, align 8
  %16 = load i32, ptr %descriptor.addr, align 4
  %17 = load i64, ptr %hdroffset, align 8
  %18 = load ptr, ptr %match_uuid.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %base_address, i64 8, i1 false)
  %19 = load i32, ptr %skip_symtab.addr, align 4
  %nfat_arch = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header, i32 0, i32 1
  %20 = load i32, ptr %nfat_arch, align 4
  %magic6 = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 0
  %21 = load i32, ptr %magic6, align 4
  %cmp = icmp eq i32 %21, -889275713
  %conv = zext i1 %cmp to i32
  %22 = load ptr, ptr %error_callback.addr, align 8
  %23 = load ptr, ptr %data.addr, align 8
  %24 = load ptr, ptr %fileline_fn.addr, align 8
  %25 = load ptr, ptr %found_sym.addr, align 8
  %coerce.dive7 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp, i32 0, i32 0
  %26 = load i64, ptr %coerce.dive7, align 8
  %call8 = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef 0, i64 noundef %17, ptr noundef %18, i64 %26, i32 noundef %19, i32 noundef %20, i32 noundef %conv, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store i32 %call8, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end, %if.end
  %27 = load i64, ptr %offset.addr, align 8
  %add12 = add i64 %27, 8
  store i64 %add12, ptr %hdroffset, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fat_header10, ptr align 4 %header, i64 8, i1 false)
  %nfat_arch13 = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header10, i32 0, i32 1
  %28 = load i32, ptr %nfat_arch13, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  store i32 %29, ptr %nfat_arch11, align 4
  %30 = load ptr, ptr %state.addr, align 8
  %31 = load ptr, ptr %filename.addr, align 8
  %32 = load i32, ptr %descriptor.addr, align 4
  %33 = load i64, ptr %hdroffset, align 8
  %34 = load ptr, ptr %match_uuid.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp14, ptr align 8 %base_address, i64 8, i1 false)
  %35 = load i32, ptr %skip_symtab.addr, align 4
  %36 = load i32, ptr %nfat_arch11, align 4
  %magic15 = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 0
  %37 = load i32, ptr %magic15, align 4
  %cmp16 = icmp eq i32 %37, -1078264118
  %conv17 = zext i1 %cmp16 to i32
  %38 = load ptr, ptr %error_callback.addr, align 8
  %39 = load ptr, ptr %data.addr, align 8
  %40 = load ptr, ptr %fileline_fn.addr, align 8
  %41 = load ptr, ptr %found_sym.addr, align 8
  %coerce.dive18 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp14, i32 0, i32 0
  %42 = load i64, ptr %coerce.dive18, align 8
  %call19 = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef 1, i64 noundef %33, ptr noundef %34, i64 %42, i32 noundef %35, i32 noundef %36, i32 noundef %conv17, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store i32 %call19, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  %43 = load ptr, ptr %error_callback.addr, align 8
  %44 = load ptr, ptr %data.addr, align 8
  call void %43(ptr noundef %44, ptr noundef @.str.1, i32 noundef 0)
  br label %fail

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %filetype = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 3
  %45 = load i32, ptr %filetype, align 4
  switch i32 %45, label %sw.default21 [
    i32 2, label %sw.bb20
    i32 6, label %sw.bb20
    i32 10, label %sw.bb20
  ]

sw.bb20:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog22

sw.default21:                                     ; preds = %sw.epilog
  %46 = load ptr, ptr %error_callback.addr, align 8
  %47 = load ptr, ptr %data.addr, align 8
  call void %46(ptr noundef %47, ptr noundef @.str.2, i32 noundef 0)
  br label %fail

sw.epilog22:                                      ; preds = %sw.bb20
  %48 = load ptr, ptr %state.addr, align 8
  %49 = load i32, ptr %descriptor.addr, align 4
  %50 = load i64, ptr %hdroffset, align 8
  %sizeofcmds = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 5
  %51 = load i32, ptr %sizeofcmds, align 4
  %conv23 = zext i32 %51 to i64
  %52 = load ptr, ptr %error_callback.addr, align 8
  %53 = load ptr, ptr %data.addr, align 8
  %call24 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %48, i32 noundef %49, i64 noundef %50, i64 noundef %conv23, ptr noundef %52, ptr noundef %53, ptr noundef %cmds_view)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.epilog22
  br label %fail

if.end27:                                         ; preds = %sw.epilog22
  store i32 1, ptr %cmds_view_valid, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %dwarf_sections, i8 0, i64 144, i1 false)
  store i32 0, ptr %have_dwarf, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %uuid, i8 0, i64 16, i1 false)
  store i32 0, ptr %have_uuid, align 4
  store i64 0, ptr %cmdoffset, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %54 = load i32, ptr %i, align 4
  %ncmds = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 4
  %55 = load i32, ptr %ncmds, align 4
  %cmp28 = icmp ult i32 %54, %55
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i64, ptr %cmdoffset, align 8
  %add29 = add i64 %56, 8
  %sizeofcmds30 = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i32 0, i32 5
  %57 = load i32, ptr %sizeofcmds30, align 4
  %conv31 = zext i32 %57 to i64
  %cmp32 = icmp ugt i64 %add29, %conv31
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body
  br label %for.end

if.end34:                                         ; preds = %for.body
  %data35 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %cmds_view, i32 0, i32 0
  %58 = load ptr, ptr %data35, align 8
  %59 = load i64, ptr %cmdoffset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 %59
  store ptr %add.ptr, ptr %pcmd, align 8
  %60 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %load_command, ptr align 1 %60, i64 8, i1 false)
  %cmd = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 0
  %61 = load i32, ptr %cmd, align 4
  switch i32 %61, label %sw.default83 [
    i32 1, label %sw.bb36
    i32 25, label %sw.bb48
    i32 2, label %sw.bb66
    i32 27, label %sw.bb80
  ]

sw.bb36:                                          ; preds = %if.end34
  %62 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %segcmd, ptr align 1 %62, i64 56, i1 false)
  %segname = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x i8], ptr %segname, i64 0, i64 0
  %call37 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str.3, i64 noundef 16)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end47

if.then39:                                        ; preds = %sw.bb36
  %63 = load ptr, ptr %state.addr, align 8
  %64 = load i32, ptr %descriptor.addr, align 4
  %65 = load i64, ptr %offset.addr, align 8
  %cmd40 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 0
  %66 = load i32, ptr %cmd40, align 4
  %67 = load ptr, ptr %pcmd, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %67, i64 56
  %cmdsize = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 1
  %68 = load i32, ptr %cmdsize, align 4
  %conv42 = zext i32 %68 to i64
  %sub = sub i64 %conv42, 56
  %nsects = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd, i32 0, i32 9
  %69 = load i32, ptr %nsects, align 4
  %70 = load ptr, ptr %error_callback.addr, align 8
  %71 = load ptr, ptr %data.addr, align 8
  %call43 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %63, i32 noundef %64, i64 noundef %65, i32 noundef %66, ptr noundef %add.ptr41, i64 noundef %sub, i32 noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %dwarf_sections)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then39
  br label %fail

if.end46:                                         ; preds = %if.then39
  store i32 1, ptr %have_dwarf, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %sw.bb36
  br label %sw.epilog84

sw.bb48:                                          ; preds = %if.end34
  %72 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %segcmd49, ptr align 1 %72, i64 72, i1 false)
  %segname50 = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49, i32 0, i32 2
  %arraydecay51 = getelementptr inbounds [16 x i8], ptr %segname50, i64 0, i64 0
  %call52 = call i32 @memcmp(ptr noundef %arraydecay51, ptr noundef @.str.3, i64 noundef 16)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end65

if.then54:                                        ; preds = %sw.bb48
  %73 = load ptr, ptr %state.addr, align 8
  %74 = load i32, ptr %descriptor.addr, align 4
  %75 = load i64, ptr %offset.addr, align 8
  %cmd55 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 0
  %76 = load i32, ptr %cmd55, align 4
  %77 = load ptr, ptr %pcmd, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %77, i64 72
  %cmdsize57 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 1
  %78 = load i32, ptr %cmdsize57, align 4
  %conv58 = zext i32 %78 to i64
  %sub59 = sub i64 %conv58, 72
  %nsects60 = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49, i32 0, i32 9
  %79 = load i32, ptr %nsects60, align 8
  %80 = load ptr, ptr %error_callback.addr, align 8
  %81 = load ptr, ptr %data.addr, align 8
  %call61 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %73, i32 noundef %74, i64 noundef %75, i32 noundef %76, ptr noundef %add.ptr56, i64 noundef %sub59, i32 noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %dwarf_sections)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.then54
  br label %fail

if.end64:                                         ; preds = %if.then54
  store i32 1, ptr %have_dwarf, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %sw.bb48
  br label %sw.epilog84

sw.bb66:                                          ; preds = %if.end34
  %82 = load i32, ptr %skip_symtab.addr, align 4
  %tobool67 = icmp ne i32 %82, 0
  br i1 %tobool67, label %if.end79, label %if.then68

if.then68:                                        ; preds = %sw.bb66
  %83 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %symcmd, ptr align 1 %83, i64 24, i1 false)
  %84 = load ptr, ptr %state.addr, align 8
  %85 = load i32, ptr %descriptor.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp69, ptr align 8 %base_address, i64 8, i1 false)
  %86 = load i32, ptr %is_64, align 4
  %87 = load i64, ptr %offset.addr, align 8
  %symoff = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i32 0, i32 2
  %88 = load i32, ptr %symoff, align 4
  %conv70 = zext i32 %88 to i64
  %add71 = add nsw i64 %87, %conv70
  %nsyms = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i32 0, i32 3
  %89 = load i32, ptr %nsyms, align 4
  %90 = load i64, ptr %offset.addr, align 8
  %stroff = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i32 0, i32 4
  %91 = load i32, ptr %stroff, align 4
  %conv72 = zext i32 %91 to i64
  %add73 = add nsw i64 %90, %conv72
  %strsize = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i32 0, i32 5
  %92 = load i32, ptr %strsize, align 4
  %93 = load ptr, ptr %error_callback.addr, align 8
  %94 = load ptr, ptr %data.addr, align 8
  %coerce.dive74 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp69, i32 0, i32 0
  %95 = load i64, ptr %coerce.dive74, align 8
  %call75 = call noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %84, i32 noundef %85, i64 %95, i32 noundef %86, i64 noundef %add71, i32 noundef %89, i64 noundef %add73, i32 noundef %92, ptr noundef %93, ptr noundef %94)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.then68
  br label %fail

if.end78:                                         ; preds = %if.then68
  %96 = load ptr, ptr %found_sym.addr, align 8
  store i32 1, ptr %96, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %sw.bb66
  br label %sw.epilog84

sw.bb80:                                          ; preds = %if.end34
  %97 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uuidcmd, ptr align 1 %97, i64 24, i1 false)
  %arrayidx = getelementptr inbounds [16 x i8], ptr %uuid, i64 0, i64 0
  %uuid81 = getelementptr inbounds %"struct.tracy::macho_uuid_command", ptr %uuidcmd, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [16 x i8], ptr %uuid81, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 4 %arrayidx82, i64 16, i1 false)
  store i32 1, ptr %have_uuid, align 4
  br label %sw.epilog84

sw.default83:                                     ; preds = %if.end34
  br label %sw.epilog84

sw.epilog84:                                      ; preds = %sw.default83, %sw.bb80, %if.end79, %if.end65, %if.end47
  %cmdsize85 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i32 0, i32 1
  %98 = load i32, ptr %cmdsize85, align 4
  %conv86 = zext i32 %98 to i64
  %99 = load i64, ptr %cmdoffset, align 8
  %add87 = add i64 %99, %conv86
  store i64 %add87, ptr %cmdoffset, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog84
  %100 = load i32, ptr %i, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then33, %for.cond
  %101 = load i32, ptr %descriptor.addr, align 4
  %102 = load ptr, ptr %error_callback.addr, align 8
  %103 = load ptr, ptr %data.addr, align 8
  %call88 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %101, ptr noundef %102, ptr noundef %103)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %for.end
  br label %fail

if.end91:                                         ; preds = %for.end
  store i32 -1, ptr %descriptor.addr, align 4
  %104 = load ptr, ptr %state.addr, align 8
  %105 = load ptr, ptr %error_callback.addr, align 8
  %106 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %104, ptr noundef %cmds_view, ptr noundef %105, ptr noundef %106)
  store i32 0, ptr %cmds_view_valid, align 4
  %107 = load ptr, ptr %match_uuid.addr, align 8
  %cmp92 = icmp ne ptr %107, null
  br i1 %cmp92, label %if.then93, label %if.end100

if.then93:                                        ; preds = %if.end91
  %108 = load i32, ptr %have_uuid, align 4
  %tobool94 = icmp ne i32 %108, 0
  br i1 %tobool94, label %lor.lhs.false, label %if.then98

lor.lhs.false:                                    ; preds = %if.then93
  %109 = load ptr, ptr %match_uuid.addr, align 8
  %arrayidx95 = getelementptr inbounds [16 x i8], ptr %uuid, i64 0, i64 0
  %call96 = call i32 @memcmp(ptr noundef %109, ptr noundef %arrayidx95, i64 noundef 16)
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false, %if.then93
  store i32 1, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %lor.lhs.false
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end91
  %110 = load i32, ptr %have_dwarf, align 4
  %tobool101 = icmp ne i32 %110, 0
  br i1 %tobool101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.end100
  store i32 0, ptr %is_big_endian, align 4
  %111 = load ptr, ptr %state.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp103, ptr align 8 %base_address, i64 8, i1 false)
  %112 = load i32, ptr %is_big_endian, align 4
  %113 = load ptr, ptr %error_callback.addr, align 8
  %114 = load ptr, ptr %data.addr, align 8
  %115 = load ptr, ptr %fileline_fn.addr, align 8
  %coerce.dive104 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp103, i32 0, i32 0
  %116 = load i64, ptr %coerce.dive104, align 8
  %call105 = call noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef %111, i64 %116, ptr noundef %dwarf_sections, i32 noundef %112, ptr noundef null, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef null)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.then102
  br label %fail

if.end108:                                        ; preds = %if.then102
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end100
  %117 = load i32, ptr %have_dwarf, align 4
  %tobool110 = icmp ne i32 %117, 0
  br i1 %tobool110, label %if.end120, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end109
  %118 = load i32, ptr %have_uuid, align 4
  %tobool111 = icmp ne i32 %118, 0
  br i1 %tobool111, label %if.then112, label %if.end120

if.then112:                                       ; preds = %land.lhs.true
  %119 = load ptr, ptr %state.addr, align 8
  %120 = load ptr, ptr %filename.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp113, ptr align 8 %base_address, i64 8, i1 false)
  %arrayidx114 = getelementptr inbounds [16 x i8], ptr %uuid, i64 0, i64 0
  %121 = load ptr, ptr %error_callback.addr, align 8
  %122 = load ptr, ptr %data.addr, align 8
  %123 = load ptr, ptr %fileline_fn.addr, align 8
  %coerce.dive115 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp113, i32 0, i32 0
  %124 = load i64, ptr %coerce.dive115, align 8
  %call116 = call noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %119, ptr noundef %120, i64 %124, ptr noundef %arrayidx114, ptr noundef %121, ptr noundef %122, ptr noundef %123)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.then112
  br label %fail

if.end119:                                        ; preds = %if.then112
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %land.lhs.true, %if.end109
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then118, %if.then107, %if.then90, %if.then77, %if.then63, %if.then45, %if.then26, %sw.default21, %sw.default, %if.then
  %125 = load i32, ptr %cmds_view_valid, align 4
  %tobool121 = icmp ne i32 %125, 0
  br i1 %tobool121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %fail
  %126 = load ptr, ptr %state.addr, align 8
  %127 = load ptr, ptr %error_callback.addr, align 8
  %128 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %126, ptr noundef %cmds_view, ptr noundef %127, ptr noundef %128)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %fail
  %129 = load i32, ptr %descriptor.addr, align 4
  %cmp124 = icmp ne i32 %129, -1
  br i1 %cmp124, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end123
  %130 = load i32, ptr %descriptor.addr, align 4
  %131 = load ptr, ptr %error_callback.addr, align 8
  %132 = load ptr, ptr %data.addr, align 8
  %call126 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %130, ptr noundef %131, ptr noundef %132)
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end127, %if.end120, %if.then98, %sw.bb9, %sw.bb4
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_(ptr noundef %state, i64 noundef %addr, ptr noundef %callback, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %callback.addr = alloca ptr, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sdata = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %atomic-temp = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  store ptr %callback, ptr %callback.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr null, ptr %sym, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %0, i32 0, i32 1
  %1 = load i32, ptr %threaded, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %state.addr, align 8
  %syminfo_data = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %syminfo_data, align 8
  store ptr %3, ptr %sdata, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %sdata, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %sdata, align 8
  %symbols = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %symbols, align 8
  %7 = load ptr, ptr %sdata, align 8
  %count = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %7, i32 0, i32 2
  %8 = load i64, ptr %count, align 8
  %call = call ptr @bsearch(ptr noundef %addr.addr, ptr noundef %6, i64 noundef %8, i64 noundef 16, ptr noundef @_ZN5tracyL19macho_symbol_searchEPKvS1_)
  store ptr %call, ptr %sym, align 8
  %9 = load ptr, ptr %sym, align 8
  %cmp1 = icmp ne ptr %9, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %sdata, align 8
  %next = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next, align 8
  store ptr %11, ptr %sdata, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then2, %for.cond
  br label %if.end14

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %state.addr, align 8
  %syminfo_data3 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %12, i32 0, i32 6
  store ptr %syminfo_data3, ptr %pp, align 8
  br label %while.body

while.body:                                       ; preds = %if.else, %if.end12
  %13 = load ptr, ptr %pp, align 8
  %14 = load atomic i64, ptr %13 acquire, align 8
  store i64 %14, ptr %atomic-temp, align 8
  %15 = load ptr, ptr %atomic-temp, align 8
  store ptr %15, ptr %sdata, align 8
  %16 = load ptr, ptr %sdata, align 8
  %cmp4 = icmp eq ptr %16, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  br label %while.end

if.end6:                                          ; preds = %while.body
  %17 = load ptr, ptr %sdata, align 8
  %symbols7 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %symbols7, align 8
  %19 = load ptr, ptr %sdata, align 8
  %count8 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %19, i32 0, i32 2
  %20 = load i64, ptr %count8, align 8
  %call9 = call ptr @bsearch(ptr noundef %addr.addr, ptr noundef %18, i64 noundef %20, i64 noundef 16, ptr noundef @_ZN5tracyL19macho_symbol_searchEPKvS1_)
  store ptr %call9, ptr %sym, align 8
  %21 = load ptr, ptr %sym, align 8
  %cmp10 = icmp ne ptr %21, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  br label %while.end

if.end12:                                         ; preds = %if.end6
  %22 = load ptr, ptr %sdata, align 8
  %next13 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %22, i32 0, i32 0
  store ptr %next13, ptr %pp, align 8
  br label %while.body, !llvm.loop !10

while.end:                                        ; preds = %if.then11, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %while.end, %for.end
  %23 = load ptr, ptr %sym, align 8
  %cmp15 = icmp eq ptr %23, null
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  %24 = load ptr, ptr %callback.addr, align 8
  %25 = load ptr, ptr %data.addr, align 8
  %26 = load i64, ptr %addr.addr, align 8
  call void %24(ptr noundef %25, i64 noundef %26, ptr noundef null, i64 noundef 0, i64 noundef 0)
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  %27 = load ptr, ptr %callback.addr, align 8
  %28 = load ptr, ptr %data.addr, align 8
  %29 = load i64, ptr %addr.addr, align 8
  %30 = load ptr, ptr %sym, align 8
  %name = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %name, align 8
  %32 = load ptr, ptr %sym, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %32, i32 0, i32 1
  %33 = load i64, ptr %address, align 8
  call void %27(ptr noundef %28, i64 noundef %29, ptr noundef %31, i64 noundef %33, i64 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL12macho_nosymsEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_(ptr noundef %state, i64 noundef %addr, ptr noundef %callback, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %callback.addr = alloca ptr, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  store ptr %callback, ptr %callback.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %error_callback.addr, align 8
  %1 = load ptr, ptr %data.addr, align 8
  call void %0(ptr noundef %1, ptr noundef @.str.19, i32 noundef -1)
  ret void
}

; Function Attrs: cold noreturn
declare void @abort() #3

declare noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %state, ptr noundef %filename, i32 noundef %descriptor, i32 noundef %swapped, i64 noundef %offset, ptr noundef %match_uuid, i64 %base_address.coerce, i32 noundef %skip_symtab, i32 noundef %nfat_arch, i32 noundef %is_64, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn, ptr noundef %found_sym) #0 {
entry:
  %retval = alloca i32, align 4
  %base_address = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %swapped.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %match_uuid.addr = alloca ptr, align 8
  %skip_symtab.addr = alloca i32, align 4
  %nfat_arch.addr = alloca i32, align 4
  %is_64.addr = alloca i32, align 4
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fileline_fn.addr = alloca ptr, align 8
  %found_sym.addr = alloca ptr, align 8
  %arch_view_valid = alloca i32, align 4
  %cputype = alloca i32, align 4
  %arch_size = alloca i64, align 8
  %arch_view = alloca %"struct.tracy::backtrace_view", align 8
  %i = alloca i32, align 4
  %fcputype = alloca i32, align 4
  %foffset = alloca i64, align 8
  %fat_arch_64 = alloca %"struct.tracy::macho_fat_arch_64", align 8
  %fat_arch_32 = alloca %"struct.tracy::macho_fat_arch", align 4
  %agg.tmp = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %coerce.dive = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  store i64 %base_address.coerce, ptr %coerce.dive, align 8
  store ptr %state, ptr %state.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store i32 %swapped, ptr %swapped.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  store ptr %match_uuid, ptr %match_uuid.addr, align 8
  store i32 %skip_symtab, ptr %skip_symtab.addr, align 4
  store i32 %nfat_arch, ptr %nfat_arch.addr, align 4
  store i32 %is_64, ptr %is_64.addr, align 4
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %fileline_fn, ptr %fileline_fn.addr, align 8
  store ptr %found_sym, ptr %found_sym.addr, align 8
  store i32 0, ptr %arch_view_valid, align 4
  store i32 16777228, ptr %cputype, align 4
  %0 = load i32, ptr %is_64.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 32, ptr %arch_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 20, ptr %arch_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load i32, ptr %descriptor.addr, align 4
  %3 = load i64, ptr %offset.addr, align 8
  %4 = load i32, ptr %nfat_arch.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load i64, ptr %arch_size, align 8
  %mul = mul i64 %conv, %5
  %6 = load ptr, ptr %error_callback.addr, align 8
  %7 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %mul, ptr noundef %6, ptr noundef %7, ptr noundef %arch_view)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %fail

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %nfat_arch.addr, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %is_64.addr, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.else14

if.then5:                                         ; preds = %for.body
  %data6 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %arch_view, i32 0, i32 0
  %11 = load ptr, ptr %data6, align 8
  %12 = load i32, ptr %i, align 4
  %conv7 = zext i32 %12 to i64
  %13 = load i64, ptr %arch_size, align 8
  %mul8 = mul i64 %conv7, %13
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %mul8
  %14 = load i64, ptr %arch_size, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %fat_arch_64, ptr align 1 %add.ptr, i64 %14, i1 false)
  %cputype9 = getelementptr inbounds %"struct.tracy::macho_fat_arch_64", ptr %fat_arch_64, i32 0, i32 0
  %15 = load i32, ptr %cputype9, align 8
  store i32 %15, ptr %fcputype, align 4
  %offset10 = getelementptr inbounds %"struct.tracy::macho_fat_arch_64", ptr %fat_arch_64, i32 0, i32 2
  %16 = load i64, ptr %offset10, align 8
  store i64 %16, ptr %foffset, align 8
  %17 = load i32, ptr %swapped.addr, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then5
  %18 = load i32, ptr %fcputype, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  store i32 %19, ptr %fcputype, align 4
  %20 = load i64, ptr %foffset, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20)
  store i64 %21, ptr %foffset, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then5
  br label %if.end27

if.else14:                                        ; preds = %for.body
  %data15 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %arch_view, i32 0, i32 0
  %22 = load ptr, ptr %data15, align 8
  %23 = load i32, ptr %i, align 4
  %conv16 = zext i32 %23 to i64
  %24 = load i64, ptr %arch_size, align 8
  %mul17 = mul i64 %conv16, %24
  %add.ptr18 = getelementptr inbounds i8, ptr %22, i64 %mul17
  %25 = load i64, ptr %arch_size, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fat_arch_32, ptr align 1 %add.ptr18, i64 %25, i1 false)
  %cputype19 = getelementptr inbounds %"struct.tracy::macho_fat_arch", ptr %fat_arch_32, i32 0, i32 0
  %26 = load i32, ptr %cputype19, align 4
  store i32 %26, ptr %fcputype, align 4
  %offset20 = getelementptr inbounds %"struct.tracy::macho_fat_arch", ptr %fat_arch_32, i32 0, i32 2
  %27 = load i32, ptr %offset20, align 4
  %conv21 = zext i32 %27 to i64
  store i64 %conv21, ptr %foffset, align 8
  %28 = load i32, ptr %swapped.addr, align 4
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.else14
  %29 = load i32, ptr %fcputype, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  store i32 %30, ptr %fcputype, align 4
  %31 = load i64, ptr %foffset, align 8
  %conv24 = trunc i64 %31 to i32
  %32 = call i32 @llvm.bswap.i32(i32 %conv24)
  %conv25 = zext i32 %32 to i64
  store i64 %conv25, ptr %foffset, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.else14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end13
  %33 = load i32, ptr %fcputype, align 4
  %34 = load i32, ptr %cputype, align 4
  %cmp28 = icmp eq i32 %33, %34
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end27
  %35 = load ptr, ptr %state.addr, align 8
  %36 = load ptr, ptr %error_callback.addr, align 8
  %37 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %35, ptr noundef %arch_view, ptr noundef %36, ptr noundef %37)
  %38 = load ptr, ptr %state.addr, align 8
  %39 = load ptr, ptr %filename.addr, align 8
  %40 = load i32, ptr %descriptor.addr, align 4
  %41 = load i64, ptr %foffset, align 8
  %42 = load ptr, ptr %match_uuid.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %base_address, i64 8, i1 false)
  %43 = load i32, ptr %skip_symtab.addr, align 4
  %44 = load ptr, ptr %error_callback.addr, align 8
  %45 = load ptr, ptr %data.addr, align 8
  %46 = load ptr, ptr %fileline_fn.addr, align 8
  %47 = load ptr, ptr %found_sym.addr, align 8
  %coerce.dive30 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp, i32 0, i32 0
  %48 = load i64, ptr %coerce.dive30, align 8
  %call31 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %38, ptr noundef %39, i32 noundef %40, i64 noundef %41, ptr noundef %42, i64 %48, i32 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47)
  store i32 %call31, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %49 = load i32, ptr %i, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %error_callback.addr, align 8
  %51 = load ptr, ptr %data.addr, align 8
  call void %50(ptr noundef %51, ptr noundef @.str.4, i32 noundef 0)
  br label %fail

fail:                                             ; preds = %for.end, %if.then2
  %52 = load i32, ptr %arch_view_valid, align 4
  %tobool33 = icmp ne i32 %52, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %fail
  %53 = load ptr, ptr %state.addr, align 8
  %54 = load ptr, ptr %error_callback.addr, align 8
  %55 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %53, ptr noundef %arch_view, ptr noundef %54, ptr noundef %55)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %56 = load i32, ptr %descriptor.addr, align 4
  %cmp36 = icmp ne i32 %56, -1
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %57 = load i32, ptr %descriptor.addr, align 4
  %58 = load ptr, ptr %error_callback.addr, align 8
  %59 = load ptr, ptr %data.addr, align 8
  %call38 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %57, ptr noundef %58, ptr noundef %59)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then29
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %state, i32 noundef %descriptor, i64 noundef %offset, i32 noundef %cmd, ptr noundef %psecs, i64 noundef %sizesecs, i32 noundef %nsects, ptr noundef %error_callback, ptr noundef %data, ptr noundef %dwarf_sections) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %cmd.addr = alloca i32, align 4
  %psecs.addr = alloca ptr, align 8
  %sizesecs.addr = alloca i64, align 8
  %nsects.addr = alloca i32, align 4
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %dwarf_sections.addr = alloca ptr, align 8
  %sec_header_size = alloca i64, align 8
  %secoffset = alloca i64, align 8
  %i = alloca i32, align 4
  %section = alloca %"struct.tracy::macho_section", align 4
  %section9 = alloca %"struct.tracy::macho_section_64", align 8
  store ptr %state, ptr %state.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  store i32 %cmd, ptr %cmd.addr, align 4
  store ptr %psecs, ptr %psecs.addr, align 8
  store i64 %sizesecs, ptr %sizesecs.addr, align 8
  store i32 %nsects, ptr %nsects.addr, align 4
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %dwarf_sections, ptr %dwarf_sections.addr, align 8
  %0 = load i32, ptr %cmd.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 25, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i64 68, ptr %sec_header_size, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 80, ptr %sec_header_size, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  store i64 0, ptr %secoffset, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %nsects.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %secoffset, align 8
  %4 = load i64, ptr %sec_header_size, align 8
  %add = add i64 %3, %4
  %5 = load i64, ptr %sizesecs.addr, align 8
  %cmp2 = icmp ugt i64 %add, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %error_callback.addr, align 8
  %7 = load ptr, ptr %data.addr, align 8
  call void %6(ptr noundef %7, ptr noundef @.str.5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i32, ptr %cmd.addr, align 4
  switch i32 %8, label %sw.default19 [
    i32 1, label %sw.bb3
    i32 25, label %sw.bb8
  ]

sw.bb3:                                           ; preds = %if.end
  %9 = load ptr, ptr %psecs.addr, align 8
  %10 = load i64, ptr %secoffset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %section, ptr align 1 %add.ptr, i64 68, i1 false)
  %11 = load ptr, ptr %state.addr, align 8
  %12 = load i32, ptr %descriptor.addr, align 4
  %sectname = getelementptr inbounds %"struct.tracy::macho_section", ptr %section, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %sectname, i64 0, i64 0
  %13 = load i64, ptr %offset.addr, align 8
  %offset4 = getelementptr inbounds %"struct.tracy::macho_section", ptr %section, i32 0, i32 4
  %14 = load i32, ptr %offset4, align 4
  %conv = zext i32 %14 to i64
  %add5 = add nsw i64 %13, %conv
  %conv6 = trunc i64 %add5 to i32
  %size = getelementptr inbounds %"struct.tracy::macho_section", ptr %section, i32 0, i32 3
  %15 = load i32, ptr %size, align 4
  %conv7 = zext i32 %15 to i64
  %16 = load ptr, ptr %error_callback.addr, align 8
  %17 = load ptr, ptr %data.addr, align 8
  %18 = load ptr, ptr %dwarf_sections.addr, align 8
  %call = call noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %11, i32 noundef %12, ptr noundef %arraydecay, i32 noundef %conv6, i64 noundef %conv7, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  br label %sw.epilog20

sw.bb8:                                           ; preds = %if.end
  %19 = load ptr, ptr %psecs.addr, align 8
  %20 = load i64, ptr %secoffset, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %19, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %section9, ptr align 1 %add.ptr10, i64 80, i1 false)
  %21 = load ptr, ptr %state.addr, align 8
  %22 = load i32, ptr %descriptor.addr, align 4
  %sectname11 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %sectname11, i64 0, i64 0
  %23 = load i64, ptr %offset.addr, align 8
  %offset13 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i32 0, i32 4
  %24 = load i32, ptr %offset13, align 8
  %conv14 = zext i32 %24 to i64
  %add15 = add nsw i64 %23, %conv14
  %conv16 = trunc i64 %add15 to i32
  %size17 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i32 0, i32 3
  %25 = load i64, ptr %size17, align 8
  %26 = load ptr, ptr %error_callback.addr, align 8
  %27 = load ptr, ptr %data.addr, align 8
  %28 = load ptr, ptr %dwarf_sections.addr, align 8
  %call18 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %21, i32 noundef %22, ptr noundef %arraydecay12, i32 noundef %conv16, i64 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  br label %sw.epilog20

sw.default19:                                     ; preds = %if.end
  call void @abort() #7
  unreachable

sw.epilog20:                                      ; preds = %sw.bb8, %sw.bb3
  %29 = load i64, ptr %sec_header_size, align 8
  %30 = load i64, ptr %secoffset, align 8
  %add21 = add i64 %30, %29
  store i64 %add21, ptr %secoffset, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog20
  %31 = load i32, ptr %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %state, i32 noundef %descriptor, i64 %base_address.coerce, i32 noundef %is_64, i64 noundef %symoff, i32 noundef %nsyms, i64 noundef %stroff, i32 noundef %strsize, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %base_address = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %is_64.addr = alloca i32, align 4
  %symoff.addr = alloca i64, align 8
  %nsyms.addr = alloca i32, align 4
  %stroff.addr = alloca i64, align 8
  %strsize.addr = alloca i32, align 4
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %symsize = alloca i64, align 8
  %sym_view = alloca %"struct.tracy::backtrace_view", align 8
  %sym_view_valid = alloca i32, align 4
  %str_view = alloca %"struct.tracy::backtrace_view", align 8
  %str_view_valid = alloca i32, align 4
  %ndefs = alloca i64, align 8
  %symtaboff = alloca i64, align 8
  %i = alloca i32, align 4
  %macho_symbol_size = alloca i64, align 8
  %macho_symbols = alloca ptr, align 8
  %j = alloca i32, align 4
  %sdata = alloca ptr, align 8
  %nlist = alloca %"struct.tracy::macho_nlist_64", align 8
  %nlist17 = alloca %"struct.tracy::macho_nlist", align 4
  %strx = alloca i32, align 4
  %value = alloca i64, align 8
  %name = alloca ptr, align 8
  %nlist39 = alloca %"struct.tracy::macho_nlist_64", align 8
  %nlist48 = alloca %"struct.tracy::macho_nlist", align 4
  %pp = alloca ptr, align 8
  %pp99 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %atomic-temp = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  store i64 %base_address.coerce, ptr %coerce.dive, align 8
  store ptr %state, ptr %state.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store i32 %is_64, ptr %is_64.addr, align 4
  store i64 %symoff, ptr %symoff.addr, align 8
  store i32 %nsyms, ptr %nsyms.addr, align 4
  store i64 %stroff, ptr %stroff.addr, align 8
  store i32 %strsize, ptr %strsize.addr, align 4
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 0, ptr %sym_view_valid, align 4
  store i32 0, ptr %str_view_valid, align 4
  store i64 0, ptr %macho_symbol_size, align 8
  store ptr null, ptr %macho_symbols, align 8
  %0 = load i32, ptr %is_64.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 16, ptr %symsize, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 12, ptr %symsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load i32, ptr %descriptor.addr, align 4
  %3 = load i64, ptr %symoff.addr, align 8
  %4 = load i32, ptr %nsyms.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load i64, ptr %symsize, align 8
  %mul = mul i64 %conv, %5
  %6 = load ptr, ptr %error_callback.addr, align 8
  %7 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %mul, ptr noundef %6, ptr noundef %7, ptr noundef %sym_view)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %fail

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %sym_view_valid, align 4
  %8 = load ptr, ptr %state.addr, align 8
  %9 = load i32, ptr %descriptor.addr, align 4
  %10 = load i64, ptr %stroff.addr, align 8
  %11 = load i32, ptr %strsize.addr, align 4
  %conv4 = zext i32 %11 to i64
  %12 = load ptr, ptr %error_callback.addr, align 8
  %13 = load ptr, ptr %data.addr, align 8
  %call5 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %8, i32 noundef %9, i64 noundef %10, i64 noundef %conv4, ptr noundef %12, ptr noundef %13, ptr noundef %str_view)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end3
  store i32 1, ptr %str_view_valid, align 4
  store i64 0, ptr %ndefs, align 8
  store i64 0, ptr %symtaboff, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %nsyms.addr, align 4
  %cmp = icmp ult i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %is_64.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then10, label %if.else16

if.then10:                                        ; preds = %for.body
  %data11 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %sym_view, i32 0, i32 0
  %17 = load ptr, ptr %data11, align 8
  %18 = load i64, ptr %symtaboff, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %nlist, ptr align 1 %add.ptr, i64 16, i1 false)
  %n_type = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist, i32 0, i32 1
  %19 = load i8, ptr %n_type, align 4
  %call12 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  %20 = load i64, ptr %ndefs, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %ndefs, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then10
  br label %if.end26

if.else16:                                        ; preds = %for.body
  %data18 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %sym_view, i32 0, i32 0
  %21 = load ptr, ptr %data18, align 8
  %22 = load i64, ptr %symtaboff, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %21, i64 %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nlist17, ptr align 1 %add.ptr19, i64 12, i1 false)
  %n_type20 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist17, i32 0, i32 1
  %23 = load i8, ptr %n_type20, align 4
  %call21 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else16
  %24 = load i64, ptr %ndefs, align 8
  %inc24 = add i64 %24, 1
  store i64 %inc24, ptr %ndefs, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else16
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end15
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %25 = load i32, ptr %i, align 4
  %inc27 = add i32 %25, 1
  store i32 %inc27, ptr %i, align 4
  %26 = load i64, ptr %symsize, align 8
  %27 = load i64, ptr %symtaboff, align 8
  %add = add i64 %27, %26
  store i64 %add, ptr %symtaboff, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %28 = load i64, ptr %ndefs, align 8
  %add28 = add i64 %28, 1
  %mul29 = mul i64 %add28, 16
  store i64 %mul29, ptr %macho_symbol_size, align 8
  %29 = load ptr, ptr %state.addr, align 8
  %30 = load i64, ptr %macho_symbol_size, align 8
  %31 = load ptr, ptr %error_callback.addr, align 8
  %32 = load ptr, ptr %data.addr, align 8
  %call30 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %29, i64 noundef %30, ptr noundef %31, ptr noundef %32)
  store ptr %call30, ptr %macho_symbols, align 8
  %33 = load ptr, ptr %macho_symbols, align 8
  %cmp31 = icmp eq ptr %33, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  br label %fail

if.end33:                                         ; preds = %for.end
  store i32 0, ptr %j, align 4
  store i64 0, ptr %symtaboff, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc75, %if.end33
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nsyms.addr, align 4
  %cmp35 = icmp ult i32 %34, %35
  br i1 %cmp35, label %for.body36, label %for.end78

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %strx, align 4
  store i64 0, ptr %value, align 8
  %36 = load i32, ptr %is_64.addr, align 4
  %tobool37 = icmp ne i32 %36, 0
  br i1 %tobool37, label %if.then38, label %if.else47

if.then38:                                        ; preds = %for.body36
  %data40 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %sym_view, i32 0, i32 0
  %37 = load ptr, ptr %data40, align 8
  %38 = load i64, ptr %symtaboff, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %37, i64 %38
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %nlist39, ptr align 1 %add.ptr41, i64 16, i1 false)
  %n_type42 = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i32 0, i32 1
  %39 = load i8, ptr %n_type42, align 4
  %call43 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %39)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then38
  br label %for.inc75

if.end46:                                         ; preds = %if.then38
  %n_strx = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i32 0, i32 0
  %40 = load i32, ptr %n_strx, align 8
  store i32 %40, ptr %strx, align 4
  %n_value = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i32 0, i32 4
  %41 = load i64, ptr %n_value, align 8
  store i64 %41, ptr %value, align 8
  br label %if.end59

if.else47:                                        ; preds = %for.body36
  %data49 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %sym_view, i32 0, i32 0
  %42 = load ptr, ptr %data49, align 8
  %43 = load i64, ptr %symtaboff, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %42, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nlist48, ptr align 1 %add.ptr50, i64 12, i1 false)
  %n_type51 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i32 0, i32 1
  %44 = load i8, ptr %n_type51, align 4
  %call52 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %44)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.else47
  br label %for.inc75

if.end55:                                         ; preds = %if.else47
  %n_strx56 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i32 0, i32 0
  %45 = load i32, ptr %n_strx56, align 4
  store i32 %45, ptr %strx, align 4
  %n_value57 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i32 0, i32 4
  %46 = load i32, ptr %n_value57, align 4
  %conv58 = zext i32 %46 to i64
  store i64 %conv58, ptr %value, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end46
  %47 = load i32, ptr %strx, align 4
  %48 = load i32, ptr %strsize.addr, align 4
  %cmp60 = icmp uge i32 %47, %48
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  %49 = load ptr, ptr %error_callback.addr, align 8
  %50 = load ptr, ptr %data.addr, align 8
  call void %49(ptr noundef %50, ptr noundef @.str.15, i32 noundef 0)
  br label %fail

if.end62:                                         ; preds = %if.end59
  %data63 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %str_view, i32 0, i32 0
  %51 = load ptr, ptr %data63, align 8
  %52 = load i32, ptr %strx, align 4
  %idx.ext = zext i32 %52 to i64
  %add.ptr64 = getelementptr inbounds i8, ptr %51, i64 %idx.ext
  store ptr %add.ptr64, ptr %name, align 8
  %53 = load ptr, ptr %name, align 8
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx, align 1
  %conv65 = sext i8 %54 to i32
  %cmp66 = icmp eq i32 %conv65, 95
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end62
  %55 = load ptr, ptr %name, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %name, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end62
  %56 = load ptr, ptr %name, align 8
  %57 = load ptr, ptr %macho_symbols, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom = zext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %57, i64 %idxprom
  %name70 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %arrayidx69, i32 0, i32 0
  store ptr %56, ptr %name70, align 8
  %59 = load i64, ptr %value, align 8
  %m = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  %60 = load i64, ptr %m, align 8
  %add71 = add i64 %59, %60
  %61 = load ptr, ptr %macho_symbols, align 8
  %62 = load i32, ptr %j, align 4
  %idxprom72 = zext i32 %62 to i64
  %arrayidx73 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %61, i64 %idxprom72
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %arrayidx73, i32 0, i32 1
  store i64 %add71, ptr %address, align 8
  %63 = load i32, ptr %j, align 4
  %inc74 = add i32 %63, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %if.end68, %if.then54, %if.then45
  %64 = load i32, ptr %i, align 4
  %inc76 = add i32 %64, 1
  store i32 %inc76, ptr %i, align 4
  %65 = load i64, ptr %symsize, align 8
  %66 = load i64, ptr %symtaboff, align 8
  %add77 = add i64 %66, %65
  store i64 %add77, ptr %symtaboff, align 8
  br label %for.cond34, !llvm.loop !14

for.end78:                                        ; preds = %for.cond34
  %67 = load ptr, ptr %state.addr, align 8
  %68 = load ptr, ptr %error_callback.addr, align 8
  %69 = load ptr, ptr %data.addr, align 8
  %call79 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %67, i64 noundef 24, ptr noundef %68, ptr noundef %69)
  store ptr %call79, ptr %sdata, align 8
  %70 = load ptr, ptr %sdata, align 8
  %cmp80 = icmp eq ptr %70, null
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.end78
  br label %fail

if.end82:                                         ; preds = %for.end78
  %71 = load ptr, ptr %state.addr, align 8
  %72 = load ptr, ptr %error_callback.addr, align 8
  %73 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %71, ptr noundef %sym_view, ptr noundef %72, ptr noundef %73)
  store i32 0, ptr %sym_view_valid, align 4
  store i32 0, ptr %str_view_valid, align 4
  %74 = load ptr, ptr %macho_symbols, align 8
  %75 = load i32, ptr %j, align 4
  %idxprom83 = zext i32 %75 to i64
  %arrayidx84 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %74, i64 %idxprom83
  %name85 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %arrayidx84, i32 0, i32 0
  store ptr @.str.16, ptr %name85, align 8
  %76 = load ptr, ptr %macho_symbols, align 8
  %77 = load i32, ptr %j, align 4
  %idxprom86 = zext i32 %77 to i64
  %arrayidx87 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %76, i64 %idxprom86
  %address88 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %arrayidx87, i32 0, i32 1
  store i64 -1, ptr %address88, align 8
  %78 = load ptr, ptr %macho_symbols, align 8
  %79 = load i64, ptr %ndefs, align 8
  %add89 = add i64 %79, 1
  call void @_ZN5tracy15backtrace_qsortEPvmmPFiPKvS2_E(ptr noundef %78, i64 noundef %add89, i64 noundef 16, ptr noundef @_ZN5tracyL20macho_symbol_compareEPKvS1_)
  %80 = load ptr, ptr %sdata, align 8
  %next = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %80, i32 0, i32 0
  store ptr null, ptr %next, align 8
  %81 = load ptr, ptr %macho_symbols, align 8
  %82 = load ptr, ptr %sdata, align 8
  %symbols = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %82, i32 0, i32 1
  store ptr %81, ptr %symbols, align 8
  %83 = load i64, ptr %ndefs, align 8
  %84 = load ptr, ptr %sdata, align 8
  %count = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %84, i32 0, i32 2
  store i64 %83, ptr %count, align 8
  %85 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %85, i32 0, i32 1
  %86 = load i32, ptr %threaded, align 8
  %tobool90 = icmp ne i32 %86, 0
  br i1 %tobool90, label %if.else98, label %if.then91

if.then91:                                        ; preds = %if.end82
  %87 = load ptr, ptr %state.addr, align 8
  %syminfo_data = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %87, i32 0, i32 6
  store ptr %syminfo_data, ptr %pp, align 8
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc95, %if.then91
  %88 = load ptr, ptr %pp, align 8
  %89 = load ptr, ptr %88, align 8
  %cmp93 = icmp ne ptr %89, null
  br i1 %cmp93, label %for.body94, label %for.end97

for.body94:                                       ; preds = %for.cond92
  br label %for.inc95

for.inc95:                                        ; preds = %for.body94
  %90 = load ptr, ptr %pp, align 8
  %91 = load ptr, ptr %90, align 8
  %next96 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %91, i32 0, i32 0
  store ptr %next96, ptr %pp, align 8
  br label %for.cond92, !llvm.loop !15

for.end97:                                        ; preds = %for.cond92
  %92 = load ptr, ptr %sdata, align 8
  %93 = load ptr, ptr %pp, align 8
  store ptr %92, ptr %93, align 8
  br label %if.end110

if.else98:                                        ; preds = %if.end82
  br label %while.body

while.body:                                       ; preds = %if.else98, %if.end108
  %94 = load ptr, ptr %state.addr, align 8
  %syminfo_data100 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %94, i32 0, i32 6
  store ptr %syminfo_data100, ptr %pp99, align 8
  br label %while.body102

while.body102:                                    ; preds = %while.body, %if.end105
  %95 = load ptr, ptr %pp99, align 8
  %96 = load atomic i64, ptr %95 acquire, align 8
  store i64 %96, ptr %atomic-temp, align 8
  %97 = load ptr, ptr %atomic-temp, align 8
  store ptr %97, ptr %p, align 8
  %98 = load ptr, ptr %p, align 8
  %cmp103 = icmp eq ptr %98, null
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %while.body102
  br label %while.end

if.end105:                                        ; preds = %while.body102
  %99 = load ptr, ptr %p, align 8
  %next106 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %99, i32 0, i32 0
  store ptr %next106, ptr %pp99, align 8
  br label %while.body102, !llvm.loop !16

while.end:                                        ; preds = %if.then104
  call void @abort() #7
  unreachable

100:                                              ; No predecessors!
  br i1 true, label %if.then107, label %if.end108

if.then107:                                       ; preds = %100
  br label %while.end109

if.end108:                                        ; preds = %100
  br label %while.body, !llvm.loop !17

while.end109:                                     ; preds = %if.then107
  br label %if.end110

if.end110:                                        ; preds = %while.end109, %for.end97
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then81, %if.then61, %if.then32, %if.then2
  %101 = load ptr, ptr %macho_symbols, align 8
  %cmp111 = icmp ne ptr %101, null
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %fail
  %102 = load ptr, ptr %state.addr, align 8
  %103 = load ptr, ptr %macho_symbols, align 8
  %104 = load i64, ptr %macho_symbol_size, align 8
  %105 = load ptr, ptr %error_callback.addr, align 8
  %106 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %102, ptr noundef %103, i64 noundef %104, ptr noundef %105, ptr noundef %106)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %fail
  %107 = load i32, ptr %sym_view_valid, align 4
  %tobool114 = icmp ne i32 %107, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end113
  %108 = load ptr, ptr %state.addr, align 8
  %109 = load ptr, ptr %error_callback.addr, align 8
  %110 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %108, ptr noundef %sym_view, ptr noundef %109, ptr noundef %110)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113
  %111 = load i32, ptr %str_view_valid, align 4
  %tobool117 = icmp ne i32 %111, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end116
  %112 = load ptr, ptr %state.addr, align 8
  %113 = load ptr, ptr %error_callback.addr, align 8
  %114 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %112, ptr noundef %str_view, ptr noundef %113, ptr noundef %114)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end116
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end119, %if.end110, %if.then7
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

declare noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef, i64, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %state, ptr noundef %filename, i64 %base_address.coerce, ptr noundef %uuid, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn) #0 {
entry:
  %retval = alloca i32, align 4
  %base_address = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %uuid.addr = alloca ptr, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fileline_fn.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %dirname = alloca ptr, align 8
  %diralc = alloca ptr, align 8
  %dirnamelen = alloca i64, align 8
  %basename = alloca ptr, align 8
  %basenamelen = alloca i64, align 8
  %dsymsuffixdir = alloca ptr, align 8
  %dsymsuffixdirlen = alloca i64, align 8
  %dsymlen = alloca i64, align 8
  %dsym = alloca ptr, align 8
  %ps = alloca ptr, align 8
  %d = alloca i32, align 4
  %does_not_exist = alloca i32, align 4
  %dummy_found_sym = alloca i32, align 4
  %agg.tmp = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %coerce.dive = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %base_address, i32 0, i32 0
  store i64 %base_address.coerce, ptr %coerce.dive, align 8
  store ptr %state, ptr %state.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %uuid, ptr %uuid.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %fileline_fn, ptr %fileline_fn.addr, align 8
  store ptr null, ptr %diralc, align 8
  store i64 0, ptr %dirnamelen, align 8
  store ptr null, ptr %dsym, align 8
  store i64 0, ptr %dsymlen, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0(ptr noundef %0, i32 noundef 47)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @.str.17, ptr %dirname, align 8
  store i64 1, ptr %dirnamelen, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  store ptr %2, ptr %basename, align 8
  %3 = load ptr, ptr %basename, align 8
  %call1 = call i64 @strlen(ptr noundef %3)
  store i64 %call1, ptr %basenamelen, align 8
  store ptr null, ptr %diralc, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %filename.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %dirnamelen, align 8
  %6 = load ptr, ptr %state.addr, align 8
  %7 = load i64, ptr %dirnamelen, align 8
  %add = add i64 %7, 1
  %8 = load ptr, ptr %error_callback.addr, align 8
  %9 = load ptr, ptr %data.addr, align 8
  %call2 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %6, i64 noundef %add, ptr noundef %8, ptr noundef %9)
  store ptr %call2, ptr %diralc, align 8
  %10 = load ptr, ptr %diralc, align 8
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  br label %fail

if.end:                                           ; preds = %if.else
  %11 = load ptr, ptr %diralc, align 8
  %12 = load ptr, ptr %filename.addr, align 8
  %13 = load i64, ptr %dirnamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %13, i1 false)
  %14 = load ptr, ptr %diralc, align 8
  %15 = load i64, ptr %dirnamelen, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 0, ptr %arrayidx, align 1
  %16 = load ptr, ptr %diralc, align 8
  store ptr %16, ptr %dirname, align 8
  %17 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %add.ptr, ptr %basename, align 8
  %18 = load ptr, ptr %basename, align 8
  %call5 = call i64 @strlen(ptr noundef %18)
  store i64 %call5, ptr %basenamelen, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store ptr @.str.18, ptr %dsymsuffixdir, align 8
  %19 = load ptr, ptr %dsymsuffixdir, align 8
  %call7 = call i64 @strlen(ptr noundef %19)
  store i64 %call7, ptr %dsymsuffixdirlen, align 8
  %20 = load i64, ptr %dirnamelen, align 8
  %add8 = add i64 %20, 1
  %21 = load i64, ptr %basenamelen, align 8
  %add9 = add i64 %add8, %21
  %22 = load i64, ptr %dsymsuffixdirlen, align 8
  %add10 = add i64 %add9, %22
  %23 = load i64, ptr %basenamelen, align 8
  %add11 = add i64 %add10, %23
  %add12 = add i64 %add11, 1
  store i64 %add12, ptr %dsymlen, align 8
  %24 = load ptr, ptr %state.addr, align 8
  %25 = load i64, ptr %dsymlen, align 8
  %26 = load ptr, ptr %error_callback.addr, align 8
  %27 = load ptr, ptr %data.addr, align 8
  %call13 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %24, i64 noundef %25, ptr noundef %26, ptr noundef %27)
  store ptr %call13, ptr %dsym, align 8
  %28 = load ptr, ptr %dsym, align 8
  %cmp14 = icmp eq ptr %28, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end6
  br label %fail

if.end16:                                         ; preds = %if.end6
  %29 = load ptr, ptr %dsym, align 8
  store ptr %29, ptr %ps, align 8
  %30 = load ptr, ptr %ps, align 8
  %31 = load ptr, ptr %dirname, align 8
  %32 = load i64, ptr %dirnamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %31, i64 %32, i1 false)
  %33 = load i64, ptr %dirnamelen, align 8
  %34 = load ptr, ptr %ps, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %34, i64 %33
  store ptr %add.ptr17, ptr %ps, align 8
  %35 = load ptr, ptr %ps, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %ps, align 8
  store i8 47, ptr %35, align 1
  %36 = load ptr, ptr %ps, align 8
  %37 = load ptr, ptr %basename, align 8
  %38 = load i64, ptr %basenamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %37, i64 %38, i1 false)
  %39 = load i64, ptr %basenamelen, align 8
  %40 = load ptr, ptr %ps, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %add.ptr18, ptr %ps, align 8
  %41 = load ptr, ptr %ps, align 8
  %42 = load ptr, ptr %dsymsuffixdir, align 8
  %43 = load i64, ptr %dsymsuffixdirlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %42, i64 %43, i1 false)
  %44 = load i64, ptr %dsymsuffixdirlen, align 8
  %45 = load ptr, ptr %ps, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %45, i64 %44
  store ptr %add.ptr19, ptr %ps, align 8
  %46 = load ptr, ptr %ps, align 8
  %47 = load ptr, ptr %basename, align 8
  %48 = load i64, ptr %basenamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %48, i1 false)
  %49 = load i64, ptr %basenamelen, align 8
  %50 = load ptr, ptr %ps, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %50, i64 %49
  store ptr %add.ptr20, ptr %ps, align 8
  %51 = load ptr, ptr %ps, align 8
  store i8 0, ptr %51, align 1
  %52 = load ptr, ptr %diralc, align 8
  %cmp21 = icmp ne ptr %52, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %53 = load ptr, ptr %state.addr, align 8
  %54 = load ptr, ptr %diralc, align 8
  %55 = load i64, ptr %dirnamelen, align 8
  %add23 = add i64 %55, 1
  %56 = load ptr, ptr %error_callback.addr, align 8
  %57 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %53, ptr noundef %54, i64 noundef %add23, ptr noundef %56, ptr noundef %57)
  store ptr null, ptr %diralc, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %58 = load ptr, ptr %dsym, align 8
  %59 = load ptr, ptr %error_callback.addr, align 8
  %60 = load ptr, ptr %data.addr, align 8
  %call25 = call noundef i32 @_ZN5tracy14backtrace_openEPKcPFvPvS1_iES2_Pi(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %does_not_exist)
  store i32 %call25, ptr %d, align 4
  %61 = load i32, ptr %d, align 4
  %cmp26 = icmp slt i32 %61, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %62 = load ptr, ptr %state.addr, align 8
  %63 = load ptr, ptr %dsym, align 8
  %64 = load i64, ptr %dsymlen, align 8
  %65 = load ptr, ptr %error_callback.addr, align 8
  %66 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %62, ptr noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66)
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %67 = load ptr, ptr %state.addr, align 8
  %68 = load ptr, ptr %dsym, align 8
  %69 = load i32, ptr %d, align 4
  %70 = load ptr, ptr %uuid.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %base_address, i64 8, i1 false)
  %71 = load ptr, ptr %error_callback.addr, align 8
  %72 = load ptr, ptr %data.addr, align 8
  %73 = load ptr, ptr %fileline_fn.addr, align 8
  %coerce.dive29 = getelementptr inbounds %"struct.tracy::libbacktrace_base_address", ptr %agg.tmp, i32 0, i32 0
  %74 = load i64, ptr %coerce.dive29, align 8
  %call30 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %67, ptr noundef %68, i32 noundef %69, i64 noundef 0, ptr noundef %70, i64 %74, i32 noundef 1, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %dummy_found_sym)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  br label %fail

if.end32:                                         ; preds = %if.end28
  %75 = load ptr, ptr %state.addr, align 8
  %76 = load ptr, ptr %dsym, align 8
  %77 = load i64, ptr %dsymlen, align 8
  %78 = load ptr, ptr %error_callback.addr, align 8
  %79 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %75, ptr noundef %76, i64 noundef %77, ptr noundef %78, ptr noundef %79)
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then31, %if.then15, %if.then4
  %80 = load ptr, ptr %dsym, align 8
  %cmp33 = icmp ne ptr %80, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %fail
  %81 = load ptr, ptr %state.addr, align 8
  %82 = load ptr, ptr %dsym, align 8
  %83 = load i64, ptr %dsymlen, align 8
  %84 = load ptr, ptr %error_callback.addr, align 8
  %85 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %81, ptr noundef %82, i64 noundef %83, ptr noundef %84, ptr noundef %85)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %86 = load ptr, ptr %diralc, align 8
  %cmp36 = icmp ne ptr %86, null
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  %87 = load ptr, ptr %state.addr, align 8
  %88 = load ptr, ptr %diralc, align 8
  %89 = load i64, ptr %dirnamelen, align 8
  %90 = load ptr, ptr %error_callback.addr, align 8
  %91 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90, ptr noundef %91)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.end32, %if.then27
  %92 = load i32, ptr %retval, align 4
  ret i32 %92
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %state, i32 noundef %descriptor, ptr noundef %sectname, i32 noundef %offset, i64 noundef %size, ptr noundef %error_callback, ptr noundef %data, ptr noundef %dwarf_sections) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %descriptor.addr = alloca i32, align 4
  %sectname.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %dwarf_sections.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %section_view = alloca %"struct.tracy::backtrace_view", align 8
  store ptr %state, ptr %state.addr, align 8
  store i32 %descriptor, ptr %descriptor.addr, align 4
  store ptr %sectname, ptr %sectname.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i64 %size, ptr %size.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %dwarf_sections, ptr %dwarf_sections.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %sectname.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom3
  %6 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef %6, i64 noundef 16)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %state.addr, align 8
  %8 = load i32, ptr %descriptor.addr, align 4
  %9 = load i32, ptr %offset.addr, align 4
  %conv6 = zext i32 %9 to i64
  %10 = load i64, ptr %size.addr, align 8
  %11 = load ptr, ptr %error_callback.addr, align 8
  %12 = load ptr, ptr %data.addr, align 8
  %call7 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %7, i32 noundef %8, i64 noundef %conv6, i64 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %section_view)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %data9 = getelementptr inbounds %"struct.tracy::backtrace_view", ptr %section_view, i32 0, i32 0
  %13 = load ptr, ptr %data9, align 8
  %14 = load ptr, ptr %dwarf_sections.addr, align 8
  %data10 = getelementptr inbounds %"struct.tracy::dwarf_sections", ptr %14, i32 0, i32 0
  %15 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [9 x ptr], ptr %data10, i64 0, i64 %idxprom11
  store ptr %13, ptr %arrayidx12, align 8
  %16 = load i64, ptr %size.addr, align 8
  %17 = load ptr, ptr %dwarf_sections.addr, align 8
  %size13 = getelementptr inbounds %"struct.tracy::dwarf_sections", ptr %17, i32 0, i32 1
  %18 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [9 x i64], ptr %size13, i64 0, i64 %idxprom14
  store i64 %16, ptr %arrayidx15, align 8
  br label %for.end

if.end16:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.end, %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %type) #6 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  store i8 %type, ptr %type.addr, align 1
  %0 = load i8, ptr %type.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 224
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %type.addr, align 1
  %conv1 = zext i8 %1 to i32
  %and2 = and i32 %conv1, 14
  switch i32 %and2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 14, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

declare noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare void @_ZN5tracy15backtrace_qsortEPvmmPFiPKvS2_E(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZN5tracyL20macho_symbol_compareEPKvS1_(ptr noundef %v1, ptr noundef %v2) #6 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %m1 = alloca ptr, align 8
  %m2 = alloca ptr, align 8
  store ptr %v1, ptr %v1.addr, align 8
  store ptr %v2, ptr %v2.addr, align 8
  %0 = load ptr, ptr %v1.addr, align 8
  store ptr %0, ptr %m1, align 8
  %1 = load ptr, ptr %v2.addr, align 8
  store ptr %1, ptr %m2, align 8
  %2 = load ptr, ptr %m1, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %2, i32 0, i32 1
  %3 = load i64, ptr %address, align 8
  %4 = load ptr, ptr %m2, align 8
  %address1 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %4, i32 0, i32 1
  %5 = load i64, ptr %address1, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %m1, align 8
  %address2 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %6, i32 0, i32 1
  %7 = load i64, ptr %address2, align 8
  %8 = load ptr, ptr %m2, align 8
  %address3 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %8, i32 0, i32 1
  %9 = load i64, ptr %address3, align 8
  %cmp4 = icmp ugt i64 %7, %9
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_Z7strrchrB6v15007Ua9enable_ifILb1EEPKci(ptr noundef %__s, i32 noundef %__c) #0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__c.addr = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i32, ptr %__c.addr, align 4
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_1(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_Z16__libcpp_strrchrB6v15007PKci(ptr noundef %__s, i32 noundef %__c) #0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__c.addr = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i32, ptr %__c.addr, align 4
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

declare ptr @strrchr(ptr noundef, i32 noundef) #1

declare ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZN5tracyL19macho_symbol_searchEPKvS1_(ptr noundef %vkey, ptr noundef %ventry) #6 {
entry:
  %retval = alloca i32, align 4
  %vkey.addr = alloca ptr, align 8
  %ventry.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %addr = alloca i64, align 8
  store ptr %vkey, ptr %vkey.addr, align 8
  store ptr %ventry, ptr %ventry.addr, align 8
  %0 = load ptr, ptr %vkey.addr, align 8
  store ptr %0, ptr %key, align 8
  %1 = load ptr, ptr %ventry.addr, align 8
  store ptr %1, ptr %entry1, align 8
  %2 = load ptr, ptr %key, align 8
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %addr, align 8
  %4 = load i64, ptr %addr, align 8
  %5 = load ptr, ptr %entry1, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %5, i32 0, i32 1
  %6 = load i64, ptr %address, align 8
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %entry1, align 8
  %name = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %10 = load ptr, ptr %entry1, align 8
  %address3 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %10, i32 0, i32 1
  %11 = load i64, ptr %address3, align 8
  %cmp4 = icmp eq i64 %11, -1
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %12 = load ptr, ptr %entry1, align 8
  %add.ptr = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %12, i64 1
  %name7 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %add.ptr, i32 0, i32 0
  %13 = load ptr, ptr %name7, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.else16

land.lhs.true11:                                  ; preds = %if.else6
  %15 = load ptr, ptr %entry1, align 8
  %add.ptr12 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %15, i64 1
  %address13 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %add.ptr12, i32 0, i32 1
  %16 = load i64, ptr %address13, align 8
  %cmp14 = icmp eq i64 %16, -1
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true11
  store i32 -1, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %land.lhs.true11, %if.else6
  %17 = load i64, ptr %addr, align 8
  %18 = load ptr, ptr %entry1, align 8
  %add.ptr17 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %18, i64 1
  %address18 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %add.ptr17, i32 0, i32 1
  %19 = load i64, ptr %address18, align 8
  %cmp19 = icmp uge i64 %17, %19
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else16
  store i32 1, ptr %retval, align 4
  br label %return

if.else21:                                        ; preds = %if.else16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else21, %if.then20, %if.then15, %if.then5, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define linkonce_odr hidden noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0(ptr noundef %__s, i32 noundef %__c)  alwaysinline#0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__c.addr = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i32, ptr %__c.addr, align 4
  %call = call noundef ptr @_Z16__libcpp_strrchrB6v15007PKci(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

define linkonce_odr hidden noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_1(ptr noundef %__s, i32 noundef %__c)  alwaysinline#0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__c.addr = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i32, ptr %__c.addr, align 4
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

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
