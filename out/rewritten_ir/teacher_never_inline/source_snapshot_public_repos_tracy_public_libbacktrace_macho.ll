; ModuleID = './out/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_tracy_public_libbacktrace_macho.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/public/libbacktrace/macho.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.tracy::backtrace_state" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%"struct.tracy::libbacktrace_base_address" = type { i64 }
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
  %name = alloca ptr, align 8
  %d = alloca i32, align 4
  %mff = alloca ptr, align 8
  %mfs = alloca i32, align 4
  %does_not_exist = alloca i32, align 4
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %c, align 4
  %cmp = icmp ult i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call1 = call ptr @_dyld_get_image_name(i32 noundef %1)
  store ptr %call1, ptr %name, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %2 = load ptr, ptr %name, align 8
  %3 = load ptr, ptr %filename.addr, align 8
  %call3 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3)
  %cmp4 = icmp eq i32 %call3, 0
  %4 = load i32, ptr %closed_descriptor, align 4
  %tobool.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp4, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %descriptor.addr, align 4
  store i32 %5, ptr %d, align 4
  store i32 1, ptr %closed_descriptor, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %name, align 8
  %7 = load ptr, ptr %error_callback.addr, align 8
  %8 = load ptr, ptr %data.addr, align 8
  %call6 = call noundef i32 @_ZN5tracy14backtrace_openEPKcPFvPvS1_iES2_Pi(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %does_not_exist)
  store i32 %call6, ptr %d, align 4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.inc, label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %9 = load i32, ptr %i, align 4
  %call11 = call i64 @_dyld_get_image_vmaddr_slide(i32 noundef %9)
  store ptr @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_, ptr %mff, align 8
  %10 = load ptr, ptr %state.addr, align 8
  %11 = load ptr, ptr %name, align 8
  %12 = load i32, ptr %d, align 4
  %13 = load ptr, ptr %error_callback.addr, align 8
  %14 = load ptr, ptr %data.addr, align 8
  %call12 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %10, ptr noundef %11, i32 noundef %12, i64 noundef 0, ptr noundef null, i64 %call11, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %mff, ptr noundef nonnull %mfs)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.end15

if.end15:                                         ; preds = %if.end10
  %15 = load ptr, ptr %mff, align 8
  %cmp16.not = icmp eq ptr %15, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %16 = load ptr, ptr %mff, align 8
  store ptr %16, ptr %macho_fileline_fn, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %17 = load i32, ptr %mfs, align 4
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %if.end18
  store i32 1, ptr %found_sym, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.then20, %if.end10, %if.else, %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %closed_descriptor, align 4
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end
  %20 = load i32, ptr %descriptor.addr, align 4
  %21 = load ptr, ptr %error_callback.addr, align 8
  %22 = load ptr, ptr %data.addr, align 8
  %call24 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %20, ptr noundef %21, ptr noundef %22)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end
  %23 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %23, i64 0, i32 1
  %24 = load i32, ptr %threaded, align 8
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.end25
  %25 = load i32, ptr %found_sym, align 4
  %tobool28.not = icmp eq i32 %25, 0
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.then27
  %26 = load ptr, ptr %state.addr, align 8
  %syminfo_fn = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %26, i64 0, i32 5
  store ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn, align 8
  br label %if.end43

if.else30:                                        ; preds = %if.then27
  %27 = load ptr, ptr %state.addr, align 8
  %syminfo_fn31 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %27, i64 0, i32 5
  %28 = load ptr, ptr %syminfo_fn31, align 8
  %cmp32 = icmp eq ptr %28, null
  br i1 %cmp32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.else30
  %29 = load ptr, ptr %state.addr, align 8
  %syminfo_fn34 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %29, i64 0, i32 5
  store ptr @_ZN5tracyL12macho_nosymsEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn34, align 8
  br label %if.end43

if.else37:                                        ; preds = %if.end25
  %30 = load i32, ptr %found_sym, align 4
  %tobool38.not = icmp eq i32 %30, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else37
  %31 = load ptr, ptr %state.addr, align 8
  %syminfo_fn40 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %31, i64 0, i32 5
  store atomic i64 ptrtoint (ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_ to i64), ptr %syminfo_fn40 release, align 8
  br label %if.end43

if.else41:                                        ; preds = %if.else37
  call void @abort() #7
  unreachable

if.end43:                                         ; preds = %if.then29, %if.then33, %if.else30, %if.then39
  %32 = load ptr, ptr %state.addr, align 8
  %threaded44 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %32, i64 0, i32 1
  %33 = load i32, ptr %threaded44, align 8
  %tobool45.not = icmp eq i32 %33, 0
  br i1 %tobool45.not, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end43
  %34 = load ptr, ptr %state.addr, align 8
  %fileline_fn47 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %34, i64 0, i32 3
  %35 = load ptr, ptr %fileline_fn47, align 8
  %36 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %35, ptr %36, align 8
  br label %if.end50

if.else48:                                        ; preds = %if.end43
  %37 = load ptr, ptr %state.addr, align 8
  %fileline_fn49 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %37, i64 0, i32 3
  %38 = load atomic i64, ptr %fileline_fn49 acquire, align 8
  %.cast = inttoptr i64 %38 to ptr
  %39 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %.cast, ptr %39, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  %40 = load ptr, ptr %fileline_fn.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %cmp51 = icmp eq ptr %41, null
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end50
  %42 = load ptr, ptr %fileline_fn.addr, align 8
  %43 = load ptr, ptr %42, align 8
  %cmp52 = icmp eq ptr %43, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end50
  %44 = load ptr, ptr %macho_fileline_fn, align 8
  %45 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %44, ptr %45, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %lor.lhs.false
  ret i32 1
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_(ptr noundef %state, i64 noundef %pc, ptr noundef %callback, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  call void %error_callback(ptr noundef %data, ptr noundef nonnull @.str, i32 noundef -1)
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
  %header = alloca %"struct.tracy::macho_header_32", align 8
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
  %fat_header = alloca %"struct.tracy::macho_header_fat", align 8
  %agg.tmp = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %fat_header10 = alloca %"struct.tracy::macho_header_fat", align 8
  %nfat_arch11 = alloca i32, align 4
  %agg.tmp14 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %pcmd = alloca ptr, align 8
  %load_command = alloca %"struct.tracy::macho_load_command", align 8
  %segcmd = alloca %"struct.tracy::macho_segment_command", align 4
  %segcmd49 = alloca %"struct.tracy::macho_segment_64_command", align 8
  %symcmd = alloca %"struct.tracy::macho_symtab_command", align 4
  %agg.tmp69 = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %uuidcmd = alloca %"struct.tracy::macho_uuid_command", align 4
  store i64 %base_address.coerce, ptr %base_address, align 8
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
  store i32 0, ptr %found_sym, align 4
  store i32 0, ptr %cmds_view_valid, align 4
  %0 = load ptr, ptr %state.addr, align 8
  %1 = load i32, ptr %descriptor.addr, align 4
  %2 = load i64, ptr %offset.addr, align 8
  %3 = load ptr, ptr %error_callback.addr, align 8
  %4 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef 28, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %header_view)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %header_view, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %header, ptr noundef nonnull align 1 dereferenceable(28) %5, i64 28, i1 false)
  %6 = load ptr, ptr %state.addr, align 8
  %7 = load ptr, ptr %error_callback.addr, align 8
  %8 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %6, ptr noundef nonnull %header_view, ptr noundef %7, ptr noundef %8)
  %9 = load i32, ptr %header, align 8
  switch i32 %9, label %sw.default [
    i32 -17958194, label %sw.bb
    i32 -17958193, label %sw.bb2
    i32 -889275714, label %sw.bb4
    i32 -889275713, label %sw.bb4
    i32 -1095041334, label %sw.bb9
    i32 -1078264118, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %is_64, align 4
  %10 = load i64, ptr %offset.addr, align 8
  %add = add i64 %10, 28
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i32 1, ptr %is_64, align 4
  %11 = load i64, ptr %offset.addr, align 8
  %add3 = add i64 %11, 32
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  %12 = load i64, ptr %offset.addr, align 8
  %add5 = add i64 %12, 8
  store i64 %add5, ptr %hdroffset, align 8
  %13 = load i64, ptr %header, align 8
  store i64 %13, ptr %fat_header, align 8
  %14 = load ptr, ptr %state.addr, align 8
  %15 = load ptr, ptr %filename.addr, align 8
  %16 = load i32, ptr %descriptor.addr, align 4
  %17 = load ptr, ptr %match_uuid.addr, align 8
  %18 = load i64, ptr %base_address, align 8
  store i64 %18, ptr %agg.tmp, align 8
  %19 = load i32, ptr %skip_symtab.addr, align 4
  %nfat_arch = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header, i64 0, i32 1
  %20 = load i32, ptr %nfat_arch, align 4
  %21 = load i32, ptr %header, align 8
  %cmp = icmp eq i32 %21, -889275713
  %conv = zext i1 %cmp to i32
  %22 = load ptr, ptr %error_callback.addr, align 8
  %23 = load ptr, ptr %data.addr, align 8
  %24 = load ptr, ptr %fileline_fn.addr, align 8
  %25 = load ptr, ptr %found_sym.addr, align 8
  %26 = load i64, ptr %agg.tmp, align 8
  %call8 = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef 0, i64 noundef %add5, ptr noundef %17, i64 %26, i32 noundef %19, i32 noundef %20, i32 noundef %conv, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store i32 %call8, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end, %if.end
  %27 = load i64, ptr %offset.addr, align 8
  %add12 = add i64 %27, 8
  store i64 %add12, ptr %hdroffset, align 8
  %28 = load i64, ptr %header, align 8
  store i64 %28, ptr %fat_header10, align 8
  %nfat_arch13 = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header10, i64 0, i32 1
  %29 = load i32, ptr %nfat_arch13, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  store i32 %30, ptr %nfat_arch11, align 4
  %31 = load ptr, ptr %state.addr, align 8
  %32 = load ptr, ptr %filename.addr, align 8
  %33 = load i32, ptr %descriptor.addr, align 4
  %34 = load i64, ptr %hdroffset, align 8
  %35 = load ptr, ptr %match_uuid.addr, align 8
  %36 = load i64, ptr %base_address, align 8
  store i64 %36, ptr %agg.tmp14, align 8
  %37 = load i32, ptr %skip_symtab.addr, align 4
  %38 = load i32, ptr %nfat_arch11, align 4
  %39 = load i32, ptr %header, align 8
  %cmp16 = icmp eq i32 %39, -1078264118
  %conv17 = zext i1 %cmp16 to i32
  %40 = load ptr, ptr %error_callback.addr, align 8
  %41 = load ptr, ptr %data.addr, align 8
  %42 = load ptr, ptr %fileline_fn.addr, align 8
  %43 = load ptr, ptr %found_sym.addr, align 8
  %44 = load i64, ptr %agg.tmp14, align 8
  %call19 = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef 1, i64 noundef %34, ptr noundef %35, i64 %44, i32 noundef %37, i32 noundef %38, i32 noundef %conv17, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  store i32 %call19, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  %45 = load ptr, ptr %error_callback.addr, align 8
  %46 = load ptr, ptr %data.addr, align 8
  call void %45(ptr noundef %46, ptr noundef nonnull @.str.1, i32 noundef 0)
  br label %fail

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %storemerge = phi i64 [ %add3, %sw.bb2 ], [ %add, %sw.bb ]
  store i64 %storemerge, ptr %hdroffset, align 8
  %filetype = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i64 0, i32 3
  %47 = load i32, ptr %filetype, align 4
  switch i32 %47, label %sw.default21 [
    i32 2, label %sw.epilog22
    i32 6, label %sw.epilog22
    i32 10, label %sw.epilog22
  ]

sw.default21:                                     ; preds = %sw.epilog
  %48 = load ptr, ptr %error_callback.addr, align 8
  %49 = load ptr, ptr %data.addr, align 8
  call void %48(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef 0)
  br label %fail

sw.epilog22:                                      ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %50 = load ptr, ptr %state.addr, align 8
  %51 = load i32, ptr %descriptor.addr, align 4
  %52 = load i64, ptr %hdroffset, align 8
  %sizeofcmds = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i64 0, i32 5
  %53 = load i32, ptr %sizeofcmds, align 4
  %conv23 = zext i32 %53 to i64
  %54 = load ptr, ptr %error_callback.addr, align 8
  %55 = load ptr, ptr %data.addr, align 8
  %call24 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %50, i32 noundef %51, i64 noundef %52, i64 noundef %conv23, ptr noundef %54, ptr noundef %55, ptr noundef nonnull %cmds_view)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %fail, label %if.end27

if.end27:                                         ; preds = %sw.epilog22
  store i32 1, ptr %cmds_view_valid, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %dwarf_sections, i8 0, i64 144, i1 false)
  store i32 0, ptr %have_dwarf, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid, i8 0, i64 16, i1 false)
  store i32 0, ptr %have_uuid, align 4
  store i64 0, ptr %cmdoffset, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog84, %if.end27
  %storemerge1 = phi i32 [ 0, %if.end27 ], [ %inc, %sw.epilog84 ]
  store i32 %storemerge1, ptr %i, align 4
  %ncmds = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i64 0, i32 4
  %56 = load i32, ptr %ncmds, align 8
  %cmp28 = icmp ult i32 %storemerge1, %56
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i64, ptr %cmdoffset, align 8
  %add29 = add i64 %57, 8
  %sizeofcmds30 = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header, i64 0, i32 5
  %58 = load i32, ptr %sizeofcmds30, align 4
  %conv31 = zext i32 %58 to i64
  %cmp32 = icmp ugt i64 %add29, %conv31
  br i1 %cmp32, label %for.end, label %if.end34

if.end34:                                         ; preds = %for.body
  %59 = load ptr, ptr %cmds_view, align 8
  %60 = load i64, ptr %cmdoffset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %add.ptr, ptr %pcmd, align 8
  %61 = load i64, ptr %add.ptr, align 1
  store i64 %61, ptr %load_command, align 8
  %62 = load i32, ptr %load_command, align 8
  switch i32 %62, label %sw.epilog84 [
    i32 1, label %sw.bb36
    i32 25, label %sw.bb48
    i32 2, label %sw.bb66
    i32 27, label %sw.bb80
  ]

sw.bb36:                                          ; preds = %if.end34
  %63 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %segcmd, ptr noundef nonnull align 1 dereferenceable(56) %63, i64 56, i1 false)
  %segname = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd, i64 0, i32 2
  %call37 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %sw.epilog84

if.then39:                                        ; preds = %sw.bb36
  %64 = load ptr, ptr %state.addr, align 8
  %65 = load i32, ptr %descriptor.addr, align 4
  %66 = load i64, ptr %offset.addr, align 8
  %67 = load i32, ptr %load_command, align 8
  %68 = load ptr, ptr %pcmd, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %68, i64 56
  %cmdsize = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i64 0, i32 1
  %69 = load i32, ptr %cmdsize, align 4
  %conv42 = zext i32 %69 to i64
  %sub = add nsw i64 %conv42, -56
  %nsects = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd, i64 0, i32 9
  %70 = load i32, ptr %nsects, align 4
  %71 = load ptr, ptr %error_callback.addr, align 8
  %72 = load ptr, ptr %data.addr, align 8
  %call43 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %64, i32 noundef %65, i64 noundef %66, i32 noundef %67, ptr noundef nonnull %add.ptr41, i64 noundef %sub, i32 noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef nonnull %dwarf_sections)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %fail, label %if.end46

if.end46:                                         ; preds = %if.then39
  store i32 1, ptr %have_dwarf, align 4
  br label %sw.epilog84

sw.bb48:                                          ; preds = %if.end34
  %73 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %segcmd49, ptr noundef nonnull align 1 dereferenceable(72) %73, i64 72, i1 false)
  %segname50 = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49, i64 0, i32 2
  %call52 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname50, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %sw.epilog84

if.then54:                                        ; preds = %sw.bb48
  %74 = load ptr, ptr %state.addr, align 8
  %75 = load i32, ptr %descriptor.addr, align 4
  %76 = load i64, ptr %offset.addr, align 8
  %77 = load i32, ptr %load_command, align 8
  %78 = load ptr, ptr %pcmd, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %78, i64 72
  %cmdsize57 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i64 0, i32 1
  %79 = load i32, ptr %cmdsize57, align 4
  %conv58 = zext i32 %79 to i64
  %sub59 = add nsw i64 %conv58, -72
  %nsects60 = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49, i64 0, i32 9
  %80 = load i32, ptr %nsects60, align 8
  %81 = load ptr, ptr %error_callback.addr, align 8
  %82 = load ptr, ptr %data.addr, align 8
  %call61 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %74, i32 noundef %75, i64 noundef %76, i32 noundef %77, ptr noundef nonnull %add.ptr56, i64 noundef %sub59, i32 noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef nonnull %dwarf_sections)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %fail, label %if.end64

if.end64:                                         ; preds = %if.then54
  store i32 1, ptr %have_dwarf, align 4
  br label %sw.epilog84

sw.bb66:                                          ; preds = %if.end34
  %83 = load i32, ptr %skip_symtab.addr, align 4
  %tobool67.not = icmp eq i32 %83, 0
  br i1 %tobool67.not, label %if.then68, label %sw.epilog84

if.then68:                                        ; preds = %sw.bb66
  %84 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %symcmd, ptr noundef nonnull align 1 dereferenceable(24) %84, i64 24, i1 false)
  %85 = load ptr, ptr %state.addr, align 8
  %86 = load i32, ptr %descriptor.addr, align 4
  %87 = load i64, ptr %base_address, align 8
  store i64 %87, ptr %agg.tmp69, align 8
  %88 = load i32, ptr %is_64, align 4
  %89 = load i64, ptr %offset.addr, align 8
  %symoff = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i64 0, i32 2
  %90 = load i32, ptr %symoff, align 4
  %conv70 = zext i32 %90 to i64
  %add71 = add nsw i64 %89, %conv70
  %nsyms = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i64 0, i32 3
  %91 = load i32, ptr %nsyms, align 4
  %92 = load i64, ptr %offset.addr, align 8
  %stroff = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i64 0, i32 4
  %93 = load i32, ptr %stroff, align 4
  %conv72 = zext i32 %93 to i64
  %add73 = add nsw i64 %92, %conv72
  %strsize = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd, i64 0, i32 5
  %94 = load i32, ptr %strsize, align 4
  %95 = load ptr, ptr %error_callback.addr, align 8
  %96 = load ptr, ptr %data.addr, align 8
  %97 = load i64, ptr %agg.tmp69, align 8
  %call75 = call noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %85, i32 noundef %86, i64 %97, i32 noundef %88, i64 noundef %add71, i32 noundef %91, i64 noundef %add73, i32 noundef %94, ptr noundef %95, ptr noundef %96)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %fail, label %if.end78

if.end78:                                         ; preds = %if.then68
  %98 = load ptr, ptr %found_sym.addr, align 8
  store i32 1, ptr %98, align 4
  br label %sw.epilog84

sw.bb80:                                          ; preds = %if.end34
  %99 = load ptr, ptr %pcmd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %uuidcmd, ptr noundef nonnull align 1 dereferenceable(24) %99, i64 24, i1 false)
  %uuid81 = getelementptr inbounds %"struct.tracy::macho_uuid_command", ptr %uuidcmd, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid, ptr noundef nonnull align 4 dereferenceable(16) %uuid81, i64 16, i1 false)
  store i32 1, ptr %have_uuid, align 4
  br label %sw.epilog84

sw.epilog84:                                      ; preds = %if.end34, %sw.bb66, %if.end78, %sw.bb48, %if.end64, %sw.bb36, %if.end46, %sw.bb80
  %cmdsize85 = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command, i64 0, i32 1
  %100 = load i32, ptr %cmdsize85, align 4
  %conv86 = zext i32 %100 to i64
  %101 = load i64, ptr %cmdoffset, align 8
  %add87 = add i64 %101, %conv86
  store i64 %add87, ptr %cmdoffset, align 8
  %102 = load i32, ptr %i, align 4
  %inc = add i32 %102, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.body, %for.cond
  %103 = load i32, ptr %descriptor.addr, align 4
  %104 = load ptr, ptr %error_callback.addr, align 8
  %105 = load ptr, ptr %data.addr, align 8
  %call88 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %103, ptr noundef %104, ptr noundef %105)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %fail, label %if.end91

if.end91:                                         ; preds = %for.end
  store i32 -1, ptr %descriptor.addr, align 4
  %106 = load ptr, ptr %state.addr, align 8
  %107 = load ptr, ptr %error_callback.addr, align 8
  %108 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %106, ptr noundef nonnull %cmds_view, ptr noundef %107, ptr noundef %108)
  store i32 0, ptr %cmds_view_valid, align 4
  %109 = load ptr, ptr %match_uuid.addr, align 8
  %cmp92.not = icmp eq ptr %109, null
  br i1 %cmp92.not, label %if.end100, label %if.then93

if.then93:                                        ; preds = %if.end91
  %110 = load i32, ptr %have_uuid, align 4
  %tobool94.not = icmp eq i32 %110, 0
  br i1 %tobool94.not, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then93
  %111 = load ptr, ptr %match_uuid.addr, align 8
  %call96 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %111, ptr noundef nonnull dereferenceable(16) %uuid, i64 noundef 16)
  %cmp97.not = icmp eq i32 %call96, 0
  br i1 %cmp97.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %lor.lhs.false, %if.then93
  store i32 1, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %lor.lhs.false, %if.end91
  %112 = load i32, ptr %have_dwarf, align 4
  %tobool101.not = icmp eq i32 %112, 0
  br i1 %tobool101.not, label %if.end109, label %if.then102

if.then102:                                       ; preds = %if.end100
  %113 = load ptr, ptr %state.addr, align 8
  %114 = load i64, ptr %base_address, align 8
  %115 = load ptr, ptr %error_callback.addr, align 8
  %116 = load ptr, ptr %data.addr, align 8
  %117 = load ptr, ptr %fileline_fn.addr, align 8
  %call105 = call noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef %113, i64 %114, ptr noundef nonnull %dwarf_sections, i32 noundef 0, ptr noundef null, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef null)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %fail, label %if.end109

if.end109:                                        ; preds = %if.then102, %if.end100
  %118 = load i32, ptr %have_dwarf, align 4
  %tobool110.not = icmp ne i32 %118, 0
  %119 = load i32, ptr %have_uuid, align 4
  %tobool111.not = icmp eq i32 %119, 0
  %or.cond = select i1 %tobool110.not, i1 true, i1 %tobool111.not
  br i1 %or.cond, label %if.end120, label %if.then112

if.then112:                                       ; preds = %if.end109
  %120 = load ptr, ptr %state.addr, align 8
  %121 = load ptr, ptr %filename.addr, align 8
  %122 = load i64, ptr %base_address, align 8
  %123 = load ptr, ptr %error_callback.addr, align 8
  %124 = load ptr, ptr %data.addr, align 8
  %125 = load ptr, ptr %fileline_fn.addr, align 8
  %call116 = call noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %120, ptr noundef %121, i64 %122, ptr noundef nonnull %uuid, ptr noundef %123, ptr noundef %124, ptr noundef %125)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %fail, label %if.end120

if.end120:                                        ; preds = %if.then112, %if.end109
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then112, %if.then102, %for.end, %if.then68, %if.then54, %if.then39, %sw.epilog22, %entry, %sw.default21, %sw.default
  %126 = load i32, ptr %cmds_view_valid, align 4
  %tobool121.not = icmp eq i32 %126, 0
  br i1 %tobool121.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %fail
  %127 = load ptr, ptr %state.addr, align 8
  %128 = load ptr, ptr %error_callback.addr, align 8
  %129 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %127, ptr noundef nonnull %cmds_view, ptr noundef %128, ptr noundef %129)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %fail
  %130 = load i32, ptr %descriptor.addr, align 4
  %cmp124.not = icmp eq i32 %130, -1
  br i1 %cmp124.not, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end123
  %131 = load i32, ptr %descriptor.addr, align 4
  %132 = load ptr, ptr %error_callback.addr, align 8
  %133 = load ptr, ptr %data.addr, align 8
  %call126 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %131, ptr noundef %132, ptr noundef %133)
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end127, %if.end120, %if.then98, %sw.bb9, %sw.bb4
  %134 = load i32, ptr %retval, align 4
  ret i32 %134
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
  %data.addr = alloca ptr, align 8
  %sdata = alloca ptr, align 8
  %sym = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  store ptr %callback, ptr %callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr null, ptr %sym, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %state, i64 0, i32 1
  %0 = load i32, ptr %threaded, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8
  %syminfo_data = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %1, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %storemerge.in = phi ptr [ %syminfo_data, %if.then ], [ %5, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %sdata, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  br i1 %cmp.not, label %if.end14, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sdata, align 8
  %symbols = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %symbols, align 8
  %count = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %2, i64 0, i32 2
  %4 = load i64, ptr %count, align 8
  %call = call ptr @bsearch(ptr noundef nonnull %addr.addr, ptr noundef %3, i64 noundef %4, i64 noundef 16, ptr noundef nonnull @_ZN5tracyL19macho_symbol_searchEPKvS1_)
  store ptr %call, ptr %sym, align 8
  %cmp1.not = icmp eq ptr %call, null
  br i1 %cmp1.not, label %for.inc, label %if.end14

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %sdata, align 8
  br label %for.cond, !llvm.loop !9

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %state.addr, align 8
  %syminfo_data3 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %6, i64 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end12, %if.else
  %storemerge1 = phi ptr [ %syminfo_data3, %if.else ], [ %11, %if.end12 ]
  %7 = load atomic i64, ptr %storemerge1 acquire, align 8
  %.cast = inttoptr i64 %7 to ptr
  store ptr %.cast, ptr %sdata, align 8
  %cmp4 = icmp eq i64 %7, 0
  br i1 %cmp4, label %if.end14, label %if.end6

if.end6:                                          ; preds = %while.body
  %8 = load ptr, ptr %sdata, align 8
  %symbols7 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %symbols7, align 8
  %count8 = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %8, i64 0, i32 2
  %10 = load i64, ptr %count8, align 8
  %call9 = call ptr @bsearch(ptr noundef nonnull %addr.addr, ptr noundef %9, i64 noundef %10, i64 noundef 16, ptr noundef nonnull @_ZN5tracyL19macho_symbol_searchEPKvS1_)
  store ptr %call9, ptr %sym, align 8
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %if.end12, label %if.end14

if.end12:                                         ; preds = %if.end6
  %11 = load ptr, ptr %sdata, align 8
  br label %while.body, !llvm.loop !10

if.end14:                                         ; preds = %while.body, %if.end6, %for.cond, %for.body
  %12 = load ptr, ptr %sym, align 8
  %cmp15 = icmp eq ptr %12, null
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  %13 = load ptr, ptr %callback.addr, align 8
  %14 = load ptr, ptr %data.addr, align 8
  %15 = load i64, ptr %addr.addr, align 8
  call void %13(ptr noundef %14, i64 noundef %15, ptr noundef null, i64 noundef 0, i64 noundef 0)
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  %16 = load ptr, ptr %callback.addr, align 8
  %17 = load ptr, ptr %data.addr, align 8
  %18 = load i64, ptr %addr.addr, align 8
  %19 = load ptr, ptr %sym, align 8
  %20 = load ptr, ptr %19, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %address, align 8
  call void %16(ptr noundef %17, i64 noundef %18, ptr noundef %20, i64 noundef %21, i64 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL12macho_nosymsEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_(ptr noundef %state, i64 noundef %addr, ptr noundef %callback, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  call void %error_callback(ptr noundef %data, ptr noundef nonnull @.str.19, i32 noundef -1)
  ret void
}

; Function Attrs: cold noreturn
declare void @abort() #3

declare noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %state, ptr noundef %filename, i32 noundef %descriptor, i32 noundef %swapped, i64 noundef %offset, ptr noundef %match_uuid, i64 %base_address.coerce, i32 noundef %skip_symtab, i32 noundef %nfat_arch, i32 noundef %is_64, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn, ptr noundef %found_sym) #0 {
entry:
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
  store i64 %base_address.coerce, ptr %base_address, align 8
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
  %tobool.not = icmp eq i32 %0, 0
  %. = select i1 %tobool.not, i64 20, i64 32
  store i64 %., ptr %arch_size, align 8
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load i32, ptr %descriptor.addr, align 4
  %3 = load i64, ptr %offset.addr, align 8
  %4 = load i32, ptr %nfat_arch.addr, align 4
  %conv = zext i32 %4 to i64
  %mul = mul nuw nsw i64 %., %conv
  %5 = load ptr, ptr %error_callback.addr, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %mul, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %arch_view)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %fail, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge2 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  store i32 %storemerge2, ptr %i, align 4
  %7 = load i32, ptr %nfat_arch.addr, align 4
  %cmp = icmp ult i32 %storemerge2, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %is_64.addr, align 4
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.else14, label %if.then5

if.then5:                                         ; preds = %for.body
  %9 = load ptr, ptr %arch_view, align 8
  %10 = load i32, ptr %i, align 4
  %conv7 = zext i32 %10 to i64
  %11 = load i64, ptr %arch_size, align 8
  %mul8 = mul i64 %11, %conv7
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %mul8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %fat_arch_64, ptr align 1 %add.ptr, i64 %11, i1 false)
  %12 = load i32, ptr %fat_arch_64, align 8
  store i32 %12, ptr %fcputype, align 4
  %offset10 = getelementptr inbounds %"struct.tracy::macho_fat_arch_64", ptr %fat_arch_64, i64 0, i32 2
  %13 = load i64, ptr %offset10, align 8
  store i64 %13, ptr %foffset, align 8
  %14 = load i32, ptr %swapped.addr, align 4
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end27, label %if.then12

if.then12:                                        ; preds = %if.then5
  %15 = load i32, ptr %fcputype, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  store i32 %16, ptr %fcputype, align 4
  %17 = load i64, ptr %foffset, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  store i64 %18, ptr %foffset, align 8
  br label %if.end27

if.else14:                                        ; preds = %for.body
  %19 = load ptr, ptr %arch_view, align 8
  %20 = load i32, ptr %i, align 4
  %conv16 = zext i32 %20 to i64
  %21 = load i64, ptr %arch_size, align 8
  %mul17 = mul i64 %21, %conv16
  %add.ptr18 = getelementptr inbounds i8, ptr %19, i64 %mul17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %fat_arch_32, ptr align 1 %add.ptr18, i64 %21, i1 false)
  %22 = load i32, ptr %fat_arch_32, align 4
  store i32 %22, ptr %fcputype, align 4
  %offset20 = getelementptr inbounds %"struct.tracy::macho_fat_arch", ptr %fat_arch_32, i64 0, i32 2
  %23 = load i32, ptr %offset20, align 4
  %conv21 = zext i32 %23 to i64
  store i64 %conv21, ptr %foffset, align 8
  %24 = load i32, ptr %swapped.addr, align 4
  %tobool22.not = icmp eq i32 %24, 0
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.else14
  %25 = load i32, ptr %fcputype, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr %fcputype, align 4
  %27 = load i64, ptr %foffset, align 8
  %conv24 = trunc i64 %27 to i32
  %28 = call i32 @llvm.bswap.i32(i32 %conv24)
  %conv25 = zext i32 %28 to i64
  store i64 %conv25, ptr %foffset, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else14, %if.then23, %if.then5, %if.then12
  %29 = load i32, ptr %fcputype, align 4
  %30 = load i32, ptr %cputype, align 4
  %cmp28 = icmp eq i32 %29, %30
  br i1 %cmp28, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end27
  %31 = load ptr, ptr %state.addr, align 8
  %32 = load ptr, ptr %error_callback.addr, align 8
  %33 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %31, ptr noundef nonnull %arch_view, ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %filename.addr, align 8
  %35 = load i32, ptr %descriptor.addr, align 4
  %36 = load i64, ptr %foffset, align 8
  %37 = load ptr, ptr %match_uuid.addr, align 8
  %38 = load i64, ptr %base_address, align 8
  %39 = load i32, ptr %skip_symtab.addr, align 4
  %40 = load ptr, ptr %error_callback.addr, align 8
  %41 = load ptr, ptr %data.addr, align 8
  %42 = load ptr, ptr %fileline_fn.addr, align 8
  %43 = load ptr, ptr %found_sym.addr, align 8
  %call31 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %31, ptr noundef %34, i32 noundef %35, i64 noundef %36, ptr noundef %37, i64 %38, i32 noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  br label %return

for.inc:                                          ; preds = %if.end27
  %44 = load i32, ptr %i, align 4
  %inc = add i32 %44, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %error_callback.addr, align 8
  %46 = load ptr, ptr %data.addr, align 8
  call void %45(ptr noundef %46, ptr noundef nonnull @.str.4, i32 noundef 0)
  br label %fail

fail:                                             ; preds = %entry, %for.end
  %47 = load i32, ptr %arch_view_valid, align 4
  %tobool33.not = icmp eq i32 %47, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %fail
  %48 = load ptr, ptr %state.addr, align 8
  %49 = load ptr, ptr %error_callback.addr, align 8
  %50 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %48, ptr noundef nonnull %arch_view, ptr noundef %49, ptr noundef %50)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %51 = load i32, ptr %descriptor.addr, align 4
  %cmp36.not = icmp eq i32 %51, -1
  br i1 %cmp36.not, label %return, label %if.then37

if.then37:                                        ; preds = %if.end35
  %52 = load i32, ptr %descriptor.addr, align 4
  %53 = load ptr, ptr %error_callback.addr, align 8
  %54 = load ptr, ptr %data.addr, align 8
  %call38 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %52, ptr noundef %53, ptr noundef %54)
  br label %return

return:                                           ; preds = %if.end35, %if.then37, %if.then29
  %storemerge1 = phi i32 [ %call31, %if.then29 ], [ 0, %if.then37 ], [ 0, %if.end35 ]
  ret i32 %storemerge1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %state, i32 noundef %descriptor, i64 noundef %offset, i32 noundef %cmd, ptr noundef %psecs, i64 noundef %sizesecs, i32 noundef %nsects, ptr noundef %error_callback, ptr noundef %data, ptr noundef %dwarf_sections) #0 {
entry:
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
    i32 1, label %sw.epilog
    i32 25, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #7
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb1
  %storemerge = phi i64 [ 80, %sw.bb1 ], [ 68, %entry ]
  store i64 %storemerge, ptr %sec_header_size, align 8
  store i64 0, ptr %secoffset, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog20, %sw.epilog
  %storemerge1 = phi i32 [ 0, %sw.epilog ], [ %inc, %sw.epilog20 ]
  store i32 %storemerge1, ptr %i, align 4
  %1 = load i32, ptr %nsects.addr, align 4
  %cmp = icmp ult i32 %storemerge1, %1
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %secoffset, align 8
  %3 = load i64, ptr %sec_header_size, align 8
  %add = add i64 %2, %3
  %4 = load i64, ptr %sizesecs.addr, align 8
  %cmp2 = icmp ugt i64 %add, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %error_callback.addr, align 8
  %6 = load ptr, ptr %data.addr, align 8
  call void %5(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 0)
  br label %return

if.end:                                           ; preds = %for.body
  %7 = load i32, ptr %cmd.addr, align 4
  switch i32 %7, label %sw.default19 [
    i32 1, label %sw.bb3
    i32 25, label %sw.bb8
  ]

sw.bb3:                                           ; preds = %if.end
  %8 = load ptr, ptr %psecs.addr, align 8
  %9 = load i64, ptr %secoffset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %section, ptr noundef nonnull align 1 dereferenceable(68) %add.ptr, i64 68, i1 false)
  %10 = load ptr, ptr %state.addr, align 8
  %11 = load i32, ptr %descriptor.addr, align 4
  %12 = load i64, ptr %offset.addr, align 8
  %offset4 = getelementptr inbounds %"struct.tracy::macho_section", ptr %section, i64 0, i32 4
  %13 = load i32, ptr %offset4, align 4
  %14 = trunc i64 %12 to i32
  %conv6 = add i32 %13, %14
  %size = getelementptr inbounds %"struct.tracy::macho_section", ptr %section, i64 0, i32 3
  %15 = load i32, ptr %size, align 4
  %conv7 = zext i32 %15 to i64
  %16 = load ptr, ptr %error_callback.addr, align 8
  %17 = load ptr, ptr %data.addr, align 8
  %18 = load ptr, ptr %dwarf_sections.addr, align 8
  %call = call noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %section, i32 noundef %conv6, i64 noundef %conv7, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  br label %sw.epilog20

sw.bb8:                                           ; preds = %if.end
  %19 = load ptr, ptr %psecs.addr, align 8
  %20 = load i64, ptr %secoffset, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %19, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %section9, ptr noundef nonnull align 1 dereferenceable(80) %add.ptr10, i64 80, i1 false)
  %21 = load ptr, ptr %state.addr, align 8
  %22 = load i32, ptr %descriptor.addr, align 4
  %23 = load i64, ptr %offset.addr, align 8
  %offset13 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i64 0, i32 4
  %24 = load i32, ptr %offset13, align 8
  %25 = trunc i64 %23 to i32
  %conv16 = add i32 %24, %25
  %size17 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i64 0, i32 3
  %26 = load i64, ptr %size17, align 8
  %27 = load ptr, ptr %error_callback.addr, align 8
  %28 = load ptr, ptr %data.addr, align 8
  %29 = load ptr, ptr %dwarf_sections.addr, align 8
  %call18 = call noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %21, i32 noundef %22, ptr noundef nonnull %section9, i32 noundef %conv16, i64 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  br label %sw.epilog20

sw.default19:                                     ; preds = %if.end
  call void @abort() #7
  unreachable

sw.epilog20:                                      ; preds = %sw.bb8, %sw.bb3
  %30 = load i64, ptr %sec_header_size, align 8
  %31 = load i64, ptr %secoffset, align 8
  %add21 = add i64 %31, %30
  store i64 %add21, ptr %secoffset, align 8
  %32 = load i32, ptr %i, align 4
  %inc = add i32 %32, 1
  br label %for.cond, !llvm.loop !12

return:                                           ; preds = %for.cond, %if.then
  %storemerge2 = phi i32 [ 0, %if.then ], [ 1, %for.cond ]
  ret i32 %storemerge2
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
  %p = alloca ptr, align 8
  store i64 %base_address.coerce, ptr %base_address, align 8
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
  %tobool.not = icmp eq i32 %0, 0
  %. = select i1 %tobool.not, i64 12, i64 16
  store i64 %., ptr %symsize, align 8
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load i32, ptr %descriptor.addr, align 4
  %3 = load i64, ptr %symoff.addr, align 8
  %4 = load i32, ptr %nsyms.addr, align 4
  %conv = zext i32 %4 to i64
  %mul = mul nuw nsw i64 %., %conv
  %5 = load ptr, ptr %error_callback.addr, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %call = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %mul, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %sym_view)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %fail, label %if.end3

if.end3:                                          ; preds = %entry
  store i32 1, ptr %sym_view_valid, align 4
  %7 = load ptr, ptr %state.addr, align 8
  %8 = load i32, ptr %descriptor.addr, align 4
  %9 = load i64, ptr %stroff.addr, align 8
  %10 = load i32, ptr %strsize.addr, align 4
  %conv4 = zext i32 %10 to i64
  %11 = load ptr, ptr %error_callback.addr, align 8
  %12 = load ptr, ptr %data.addr, align 8
  %call5 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %conv4, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %str_view)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

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
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %nsyms.addr, align 4
  %cmp = icmp ult i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %is_64.addr, align 4
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.else16, label %if.then10

if.then10:                                        ; preds = %for.body
  %16 = load ptr, ptr %sym_view, align 8
  %17 = load i64, ptr %symtaboff, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %nlist, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr, i64 16, i1 false)
  %n_type = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist, i64 0, i32 1
  %18 = load i8, ptr %n_type, align 4
  %call12 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %18)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %if.then10
  %19 = load i64, ptr %ndefs, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %ndefs, align 8
  br label %for.inc

if.else16:                                        ; preds = %for.body
  %20 = load ptr, ptr %sym_view, align 8
  %21 = load i64, ptr %symtaboff, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %20, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %nlist17, ptr noundef nonnull align 1 dereferenceable(12) %add.ptr19, i64 12, i1 false)
  %n_type20 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist17, i64 0, i32 1
  %22 = load i8, ptr %n_type20, align 4
  %call21 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %22)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.else16
  %23 = load i64, ptr %ndefs, align 8
  %inc24 = add i64 %23, 1
  store i64 %inc24, ptr %ndefs, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.then10, %if.then23, %if.else16
  %24 = load i32, ptr %i, align 4
  %inc27 = add i32 %24, 1
  store i32 %inc27, ptr %i, align 4
  %25 = load i64, ptr %symsize, align 8
  %26 = load i64, ptr %symtaboff, align 8
  %add = add i64 %26, %25
  store i64 %add, ptr %symtaboff, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %27 = load i64, ptr %ndefs, align 8
  %add28 = shl i64 %27, 4
  %mul29 = add i64 %add28, 16
  store i64 %mul29, ptr %macho_symbol_size, align 8
  %28 = load ptr, ptr %state.addr, align 8
  %29 = load ptr, ptr %error_callback.addr, align 8
  %30 = load ptr, ptr %data.addr, align 8
  %call30 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %28, i64 noundef %mul29, ptr noundef %29, ptr noundef %30)
  store ptr %call30, ptr %macho_symbols, align 8
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %fail, label %if.end33

if.end33:                                         ; preds = %for.end
  store i32 0, ptr %j, align 4
  store i64 0, ptr %symtaboff, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc75, %if.end33
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %nsyms.addr, align 4
  %cmp35 = icmp ult i32 %31, %32
  br i1 %cmp35, label %for.body36, label %for.end78

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %strx, align 4
  store i64 0, ptr %value, align 8
  %33 = load i32, ptr %is_64.addr, align 4
  %tobool37.not = icmp eq i32 %33, 0
  br i1 %tobool37.not, label %if.else47, label %if.then38

if.then38:                                        ; preds = %for.body36
  %34 = load ptr, ptr %sym_view, align 8
  %35 = load i64, ptr %symtaboff, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %34, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %nlist39, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr41, i64 16, i1 false)
  %n_type42 = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i64 0, i32 1
  %36 = load i8, ptr %n_type42, align 4
  %call43 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %36)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.inc75, label %if.end46

if.end46:                                         ; preds = %if.then38
  %37 = load i32, ptr %nlist39, align 8
  store i32 %37, ptr %strx, align 4
  %n_value = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i64 0, i32 4
  %38 = load i64, ptr %n_value, align 8
  br label %if.end59

if.else47:                                        ; preds = %for.body36
  %39 = load ptr, ptr %sym_view, align 8
  %40 = load i64, ptr %symtaboff, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %39, i64 %40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %nlist48, ptr noundef nonnull align 1 dereferenceable(12) %add.ptr50, i64 12, i1 false)
  %n_type51 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i64 0, i32 1
  %41 = load i8, ptr %n_type51, align 4
  %call52 = call noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %41)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.inc75, label %if.end55

if.end55:                                         ; preds = %if.else47
  %42 = load i32, ptr %nlist48, align 4
  store i32 %42, ptr %strx, align 4
  %n_value57 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i64 0, i32 4
  %43 = load i32, ptr %n_value57, align 4
  %conv58 = zext i32 %43 to i64
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end46
  %storemerge3 = phi i64 [ %conv58, %if.end55 ], [ %38, %if.end46 ]
  store i64 %storemerge3, ptr %value, align 8
  %44 = load i32, ptr %strx, align 4
  %45 = load i32, ptr %strsize.addr, align 4
  %cmp60.not = icmp ult i32 %44, %45
  br i1 %cmp60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end59
  %46 = load ptr, ptr %error_callback.addr, align 8
  %47 = load ptr, ptr %data.addr, align 8
  call void %46(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef 0)
  br label %fail

if.end62:                                         ; preds = %if.end59
  %48 = load ptr, ptr %str_view, align 8
  %49 = load i32, ptr %strx, align 4
  %idx.ext = zext i32 %49 to i64
  %add.ptr64 = getelementptr inbounds i8, ptr %48, i64 %idx.ext
  store ptr %add.ptr64, ptr %name, align 8
  %50 = load i8, ptr %add.ptr64, align 1
  %cmp66 = icmp eq i8 %50, 95
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end62
  %51 = load ptr, ptr %name, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr, ptr %name, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end62
  %52 = load ptr, ptr %name, align 8
  %53 = load ptr, ptr %macho_symbols, align 8
  %54 = load i32, ptr %j, align 4
  %idxprom = zext i32 %54 to i64
  %arrayidx69 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %53, i64 %idxprom
  store ptr %52, ptr %arrayidx69, align 8
  %55 = load i64, ptr %value, align 8
  %56 = load i64, ptr %base_address, align 8
  %add71 = add i64 %55, %56
  %57 = load ptr, ptr %macho_symbols, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom72 = zext i32 %58 to i64
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %57, i64 %idxprom72, i32 1
  store i64 %add71, ptr %address, align 8
  %inc74 = add i32 %58, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %if.else47, %if.then38, %if.end68
  %59 = load i32, ptr %i, align 4
  %inc76 = add i32 %59, 1
  store i32 %inc76, ptr %i, align 4
  %60 = load i64, ptr %symsize, align 8
  %61 = load i64, ptr %symtaboff, align 8
  %add77 = add i64 %61, %60
  store i64 %add77, ptr %symtaboff, align 8
  br label %for.cond34, !llvm.loop !14

for.end78:                                        ; preds = %for.cond34
  %62 = load ptr, ptr %state.addr, align 8
  %63 = load ptr, ptr %error_callback.addr, align 8
  %64 = load ptr, ptr %data.addr, align 8
  %call79 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %62, i64 noundef 24, ptr noundef %63, ptr noundef %64)
  store ptr %call79, ptr %sdata, align 8
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %fail, label %if.end82

if.end82:                                         ; preds = %for.end78
  %65 = load ptr, ptr %state.addr, align 8
  %66 = load ptr, ptr %error_callback.addr, align 8
  %67 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %65, ptr noundef nonnull %sym_view, ptr noundef %66, ptr noundef %67)
  store i32 0, ptr %sym_view_valid, align 4
  store i32 0, ptr %str_view_valid, align 4
  %68 = load ptr, ptr %macho_symbols, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom83 = zext i32 %69 to i64
  %arrayidx84 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %68, i64 %idxprom83
  store ptr @.str.16, ptr %arrayidx84, align 8
  %idxprom86 = zext i32 %69 to i64
  %address88 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %68, i64 %idxprom86, i32 1
  store i64 -1, ptr %address88, align 8
  %70 = load ptr, ptr %macho_symbols, align 8
  %71 = load i64, ptr %ndefs, align 8
  %add89 = add i64 %71, 1
  call void @_ZN5tracy15backtrace_qsortEPvmmPFiPKvS2_E(ptr noundef %70, i64 noundef %add89, i64 noundef 16, ptr noundef nonnull @_ZN5tracyL20macho_symbol_compareEPKvS1_)
  %72 = load ptr, ptr %sdata, align 8
  store ptr null, ptr %72, align 8
  %symbols = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %72, i64 0, i32 1
  store ptr %70, ptr %symbols, align 8
  %73 = load i64, ptr %ndefs, align 8
  %count = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %72, i64 0, i32 2
  store i64 %73, ptr %count, align 8
  %74 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %74, i64 0, i32 1
  %75 = load i32, ptr %threaded, align 8
  %tobool90.not = icmp eq i32 %75, 0
  br i1 %tobool90.not, label %if.then91, label %while.body

if.then91:                                        ; preds = %if.end82
  %76 = load ptr, ptr %state.addr, align 8
  %syminfo_data = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %76, i64 0, i32 6
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc95, %if.then91
  %storemerge1 = phi ptr [ %syminfo_data, %if.then91 ], [ %79, %for.inc95 ]
  store ptr %storemerge1, ptr %pp, align 8
  %77 = load ptr, ptr %storemerge1, align 8
  %cmp93.not = icmp eq ptr %77, null
  br i1 %cmp93.not, label %for.end97, label %for.inc95

for.inc95:                                        ; preds = %for.cond92
  %78 = load ptr, ptr %pp, align 8
  %79 = load ptr, ptr %78, align 8
  br label %for.cond92, !llvm.loop !15

for.end97:                                        ; preds = %for.cond92
  %80 = load ptr, ptr %sdata, align 8
  %81 = load ptr, ptr %pp, align 8
  store ptr %80, ptr %81, align 8
  store i32 1, ptr %retval, align 4
  br label %return

while.body:                                       ; preds = %if.end82
  %82 = load ptr, ptr %state.addr, align 8
  %syminfo_data100 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %82, i64 0, i32 6
  br label %while.body102

while.body102:                                    ; preds = %if.end105, %while.body
  %storemerge2 = phi ptr [ %syminfo_data100, %while.body ], [ %84, %if.end105 ]
  %83 = load atomic i64, ptr %storemerge2 acquire, align 8
  %.cast = inttoptr i64 %83 to ptr
  store ptr %.cast, ptr %p, align 8
  %cmp103 = icmp eq i64 %83, 0
  br i1 %cmp103, label %while.end, label %if.end105

if.end105:                                        ; preds = %while.body102
  %84 = load ptr, ptr %p, align 8
  br label %while.body102, !llvm.loop !16

while.end:                                        ; preds = %while.body102
  call void @abort() #7
  unreachable

fail:                                             ; preds = %for.end78, %for.end, %entry, %if.then61
  %85 = load ptr, ptr %macho_symbols, align 8
  %cmp111.not = icmp eq ptr %85, null
  br i1 %cmp111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %fail
  %86 = load ptr, ptr %state.addr, align 8
  %87 = load ptr, ptr %macho_symbols, align 8
  %88 = load i64, ptr %macho_symbol_size, align 8
  %89 = load ptr, ptr %error_callback.addr, align 8
  %90 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %86, ptr noundef %87, i64 noundef %88, ptr noundef %89, ptr noundef %90)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %fail
  %91 = load i32, ptr %sym_view_valid, align 4
  %tobool114.not = icmp eq i32 %91, 0
  br i1 %tobool114.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end113
  %92 = load ptr, ptr %state.addr, align 8
  %93 = load ptr, ptr %error_callback.addr, align 8
  %94 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %92, ptr noundef nonnull %sym_view, ptr noundef %93, ptr noundef %94)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113
  %95 = load i32, ptr %str_view_valid, align 4
  %tobool117.not = icmp eq i32 %95, 0
  br i1 %tobool117.not, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end116
  %96 = load ptr, ptr %state.addr, align 8
  %97 = load ptr, ptr %error_callback.addr, align 8
  %98 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %96, ptr noundef nonnull %str_view, ptr noundef %97, ptr noundef %98)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end116
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end119, %for.end97, %if.then7
  %99 = load i32, ptr %retval, align 4
  ret i32 %99
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
  %d = alloca i32, align 4
  %does_not_exist = alloca i32, align 4
  %dummy_found_sym = alloca i32, align 4
  store i64 %base_address.coerce, ptr %base_address, align 8
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
  %call = call noundef ptr @_Z7strrchrB6v15007Ua9enable_ifILb1EEPKci(ptr noundef %0, i32 noundef 47)
  store ptr %call, ptr %p, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @.str.17, ptr %dirname, align 8
  store i64 1, ptr %dirnamelen, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  store ptr %1, ptr %basename, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  store i64 %call1, ptr %basenamelen, align 8
  store ptr null, ptr %diralc, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %3 = load ptr, ptr %filename.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %dirnamelen, align 8
  %4 = load ptr, ptr %state.addr, align 8
  %add = add i64 %sub.ptr.sub, 1
  %5 = load ptr, ptr %error_callback.addr, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %call2 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %4, i64 noundef %add, ptr noundef %5, ptr noundef %6)
  store ptr %call2, ptr %diralc, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %fail, label %if.end

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %diralc, align 8
  %8 = load ptr, ptr %filename.addr, align 8
  %9 = load i64, ptr %dirnamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %9, i1 false)
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %9
  store i8 0, ptr %arrayidx, align 1
  store ptr %7, ptr %dirname, align 8
  %10 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %add.ptr, ptr %basename, align 8
  %call5 = call i64 @strlen(ptr noundef nonnull %add.ptr)
  store i64 %call5, ptr %basenamelen, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store ptr @.str.18, ptr %dsymsuffixdir, align 8
  store i64 31, ptr %dsymsuffixdirlen, align 8
  %11 = load i64, ptr %dirnamelen, align 8
  %add8 = add i64 %11, 1
  %12 = load i64, ptr %basenamelen, align 8
  %add9 = add i64 %add8, %12
  %add10 = add i64 %add9, 31
  %add11 = add i64 %add10, %12
  %add12 = add i64 %add11, 1
  store i64 %add12, ptr %dsymlen, align 8
  %13 = load ptr, ptr %state.addr, align 8
  %14 = load ptr, ptr %error_callback.addr, align 8
  %15 = load ptr, ptr %data.addr, align 8
  %call13 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %13, i64 noundef %add12, ptr noundef %14, ptr noundef %15)
  store ptr %call13, ptr %dsym, align 8
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %fail, label %if.end16

if.end16:                                         ; preds = %if.end6
  %16 = load ptr, ptr %dsym, align 8
  %17 = load ptr, ptr %dirname, align 8
  %18 = load i64, ptr %dirnamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %18, i1 false)
  %add.ptr17 = getelementptr inbounds i8, ptr %16, i64 %18
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr17, i64 1
  store i8 47, ptr %add.ptr17, align 1
  %19 = load ptr, ptr %basename, align 8
  %20 = load i64, ptr %basenamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %incdec.ptr, ptr align 1 %19, i64 %20, i1 false)
  %add.ptr18 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %20
  %21 = load ptr, ptr %dsymsuffixdir, align 8
  %22 = load i64, ptr %dsymsuffixdirlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr18, ptr align 1 %21, i64 %22, i1 false)
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr18, i64 %22
  %23 = load ptr, ptr %basename, align 8
  %24 = load i64, ptr %basenamelen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr19, ptr align 1 %23, i64 %24, i1 false)
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr19, i64 %24
  store i8 0, ptr %add.ptr20, align 1
  %25 = load ptr, ptr %diralc, align 8
  %cmp21.not = icmp eq ptr %25, null
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end16
  %26 = load ptr, ptr %state.addr, align 8
  %27 = load ptr, ptr %diralc, align 8
  %28 = load i64, ptr %dirnamelen, align 8
  %add23 = add i64 %28, 1
  %29 = load ptr, ptr %error_callback.addr, align 8
  %30 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %26, ptr noundef %27, i64 noundef %add23, ptr noundef %29, ptr noundef %30)
  store ptr null, ptr %diralc, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %31 = load ptr, ptr %dsym, align 8
  %32 = load ptr, ptr %error_callback.addr, align 8
  %33 = load ptr, ptr %data.addr, align 8
  %call25 = call noundef i32 @_ZN5tracy14backtrace_openEPKcPFvPvS1_iES2_Pi(ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %does_not_exist)
  store i32 %call25, ptr %d, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %34 = load ptr, ptr %state.addr, align 8
  %35 = load ptr, ptr %dsym, align 8
  %36 = load i64, ptr %dsymlen, align 8
  %37 = load ptr, ptr %error_callback.addr, align 8
  %38 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %34, ptr noundef %35, i64 noundef %36, ptr noundef %37, ptr noundef %38)
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %39 = load ptr, ptr %state.addr, align 8
  %40 = load ptr, ptr %dsym, align 8
  %41 = load i32, ptr %d, align 4
  %42 = load ptr, ptr %uuid.addr, align 8
  %43 = load i64, ptr %base_address, align 8
  %44 = load ptr, ptr %error_callback.addr, align 8
  %45 = load ptr, ptr %data.addr, align 8
  %46 = load ptr, ptr %fileline_fn.addr, align 8
  %call30 = call noundef i32 @_ZN5tracyL9macho_addEPNS_15backtrace_stateEPKcixPKhNS_25libbacktrace_base_addressEiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %39, ptr noundef %40, i32 noundef %41, i64 noundef 0, ptr noundef %42, i64 %43, i32 noundef 1, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef nonnull %dummy_found_sym)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %fail, label %if.end32

if.end32:                                         ; preds = %if.end28
  %47 = load ptr, ptr %state.addr, align 8
  %48 = load ptr, ptr %dsym, align 8
  %49 = load i64, ptr %dsymlen, align 8
  %50 = load ptr, ptr %error_callback.addr, align 8
  %51 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %47, ptr noundef %48, i64 noundef %49, ptr noundef %50, ptr noundef %51)
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.end28, %if.end6, %if.else
  %52 = load ptr, ptr %dsym, align 8
  %cmp33.not = icmp eq ptr %52, null
  br i1 %cmp33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %fail
  %53 = load ptr, ptr %state.addr, align 8
  %54 = load ptr, ptr %dsym, align 8
  %55 = load i64, ptr %dsymlen, align 8
  %56 = load ptr, ptr %error_callback.addr, align 8
  %57 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %53, ptr noundef %54, i64 noundef %55, ptr noundef %56, ptr noundef %57)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %58 = load ptr, ptr %diralc, align 8
  %cmp36.not = icmp eq ptr %58, null
  br i1 %cmp36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  %59 = load ptr, ptr %state.addr, align 8
  %60 = load ptr, ptr %diralc, align 8
  %61 = load i64, ptr %dirnamelen, align 8
  %62 = load ptr, ptr %error_callback.addr, align 8
  %63 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62, ptr noundef %63)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.end32, %if.then27
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL23macho_add_dwarf_sectionEPNS_15backtrace_stateEiPKcjyPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %state, i32 noundef %descriptor, ptr noundef %sectname, i32 noundef %offset, i64 noundef %size, ptr noundef %error_callback, ptr noundef %data, ptr noundef %dwarf_sections) #0 {
entry:
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 9
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %3 = load ptr, ptr %sectname.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom3
  %5 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %5, i64 noundef 16)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %state.addr, align 8
  %7 = load i32, ptr %descriptor.addr, align 4
  %8 = load i32, ptr %offset.addr, align 4
  %conv6 = zext i32 %8 to i64
  %9 = load i64, ptr %size.addr, align 8
  %10 = load ptr, ptr %error_callback.addr, align 8
  %11 = load ptr, ptr %data.addr, align 8
  %call7 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %6, i32 noundef %7, i64 noundef %conv6, i64 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %section_view)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %section_view, align 8
  %13 = load ptr, ptr %dwarf_sections.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [9 x ptr], ptr %13, i64 0, i64 %idxprom11
  store ptr %12, ptr %arrayidx12, align 8
  %15 = load i64, ptr %size.addr, align 8
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds %"struct.tracy::dwarf_sections", ptr %13, i64 0, i32 1, i64 %idxprom14
  store i64 %15, ptr %arrayidx15, align 8
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !17

return:                                           ; preds = %for.cond, %if.end, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %for.cond ]
  ret i32 %storemerge1
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZN5tracyL20macho_defined_symbolEh(i8 noundef zeroext %type) #6 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  store i8 %type, ptr %type.addr, align 1
  %cmp.not = icmp ult i8 %type, 32
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %type.addr, align 1
  %1 = and i8 %0, 14
  %and2 = zext i8 %1 to i32
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
  %m1 = alloca ptr, align 8
  %m2 = alloca ptr, align 8
  store ptr %v1, ptr %m1, align 8
  store ptr %v2, ptr %m2, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %v1, i64 0, i32 1
  %0 = load i64, ptr %address, align 8
  %address1 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %v2, i64 0, i32 1
  %1 = load i64, ptr %address1, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %m1, align 8
  %address2 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %2, i64 0, i32 1
  %3 = load i64, ptr %address2, align 8
  %4 = load ptr, ptr %m2, align 8
  %address3 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %4, i64 0, i32 1
  %5 = load i64, ptr %address3, align 8
  %cmp4 = icmp ugt i64 %3, %5
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_Z7strrchrB6v15007Ua9enable_ifILb1EEPKci(ptr noundef %__s, i32 noundef %__c) #0 {
entry:
  %call = call noundef ptr @_Z16__libcpp_strrchrB6v15007PKci(ptr noundef %__s, i32 noundef %__c)
  ret ptr %call
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_Z16__libcpp_strrchrB6v15007PKci(ptr noundef %__s, i32 noundef %__c) #0 {
entry:
  %call = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %__s, i32 noundef %__c)
  ret ptr %call
}

declare ptr @strrchr(ptr noundef, i32 noundef) #1

declare ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZN5tracyL19macho_symbol_searchEPKvS1_(ptr noundef %vkey, ptr noundef %ventry) #6 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %addr = alloca i64, align 8
  store ptr %ventry, ptr %entry1, align 8
  %0 = load i64, ptr %vkey, align 8
  store i64 %0, ptr %addr, align 8
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %ventry, i64 0, i32 1
  %1 = load i64, ptr %address, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %entry1, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1
  %cmp2 = icmp eq i8 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %5 = load ptr, ptr %entry1, align 8
  %address3 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %5, i64 0, i32 1
  %6 = load i64, ptr %address3, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %7 = load ptr, ptr %entry1, align 8
  %add.ptr = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %7, i64 1
  %8 = load ptr, ptr %add.ptr, align 8
  %9 = load i8, ptr %8, align 1
  %cmp10 = icmp eq i8 %9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.else16

land.lhs.true11:                                  ; preds = %if.else6
  %10 = load ptr, ptr %entry1, align 8
  %address13 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %10, i64 1, i32 1
  %11 = load i64, ptr %address13, align 8
  %cmp14 = icmp eq i64 %11, -1
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true11
  store i32 -1, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %land.lhs.true11, %if.else6
  %12 = load i64, ptr %addr, align 8
  %13 = load ptr, ptr %entry1, align 8
  %address18 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %13, i64 1, i32 1
  %14 = load i64, ptr %address18, align 8
  %cmp19.not = icmp ult i64 %12, %14
  br i1 %cmp19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.else16
  store i32 1, ptr %retval, align 4
  br label %return

if.else21:                                        ; preds = %if.else16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else21, %if.then20, %if.then15, %if.then5, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
