; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_tracy_public_libbacktrace_macho.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/public/libbacktrace/macho.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

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
%"struct.tracy::backtrace_state" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
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
  %retval.i = alloca i32, align 4
  %base_address.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr.i = alloca ptr, align 8
  %filename.addr.i = alloca ptr, align 8
  %descriptor.addr.i = alloca i32, align 4
  %offset.addr.i = alloca i64, align 8
  %match_uuid.addr.i = alloca ptr, align 8
  %skip_symtab.addr.i = alloca i32, align 4
  %error_callback.addr.i = alloca ptr, align 8
  %data.addr.i = alloca ptr, align 8
  %fileline_fn.addr.i = alloca ptr, align 8
  %found_sym.addr.i = alloca ptr, align 8
  %header_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %header.i = alloca %"struct.tracy::macho_header_32", align 8
  %hdroffset.i = alloca i64, align 8
  %is_64.i = alloca i32, align 4
  %cmds_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %cmds_view_valid.i = alloca i32, align 4
  %dwarf_sections.i = alloca %"struct.tracy::dwarf_sections", align 8
  %have_dwarf.i = alloca i32, align 4
  %uuid.i = alloca [16 x i8], align 1
  %have_uuid.i = alloca i32, align 4
  %cmdoffset.i = alloca i64, align 8
  %i.i = alloca i32, align 4
  %fat_header.i = alloca %"struct.tracy::macho_header_fat", align 8
  %agg.tmp.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %fat_header10.i = alloca %"struct.tracy::macho_header_fat", align 8
  %nfat_arch11.i = alloca i32, align 4
  %agg.tmp14.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %pcmd.i = alloca ptr, align 8
  %load_command.i = alloca %"struct.tracy::macho_load_command", align 8
  %segcmd.i = alloca %"struct.tracy::macho_segment_command", align 4
  %segcmd49.i = alloca %"struct.tracy::macho_segment_64_command", align 8
  %symcmd.i = alloca %"struct.tracy::macho_symtab_command", align 4
  %agg.tmp69.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %uuidcmd.i = alloca %"struct.tracy::macho_uuid_command", align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uuidcmd.i)
  store i64 %call11, ptr %base_address.i, align 8
  store ptr %10, ptr %state.addr.i, align 8
  store ptr %11, ptr %filename.addr.i, align 8
  store i32 %12, ptr %descriptor.addr.i, align 4
  store i64 0, ptr %offset.addr.i, align 8
  store ptr null, ptr %match_uuid.addr.i, align 8
  store i32 0, ptr %skip_symtab.addr.i, align 4
  store ptr %13, ptr %error_callback.addr.i, align 8
  store ptr %14, ptr %data.addr.i, align 8
  store ptr %mff, ptr %fileline_fn.addr.i, align 8
  store ptr %mfs, ptr %found_sym.addr.i, align 8
  store i32 0, ptr %mfs, align 4
  store i32 0, ptr %cmds_view_valid.i, align 4
  %15 = load ptr, ptr %state.addr.i, align 8
  %16 = load i32, ptr %descriptor.addr.i, align 4
  %17 = load i64, ptr %offset.addr.i, align 8
  %18 = load ptr, ptr %error_callback.addr.i, align 8
  %19 = load ptr, ptr %data.addr.i, align 8
  %call.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %15, i32 noundef %16, i64 noundef %17, i64 noundef 28, ptr noundef %18, ptr noundef %19, ptr noundef nonnull %header_view.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %fail.i, label %if.end.i

if.end.i:                                         ; preds = %if.end10
  %20 = load ptr, ptr %header_view.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %header.i, ptr noundef nonnull align 1 dereferenceable(28) %20, i64 28, i1 false)
  %21 = load ptr, ptr %state.addr.i, align 8
  %22 = load ptr, ptr %error_callback.addr.i, align 8
  %23 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %21, ptr noundef nonnull %header_view.i, ptr noundef %22, ptr noundef %23)
  %24 = load i32, ptr %header.i, align 8
  switch i32 %24, label %sw.default.i [
    i32 -17958194, label %sw.bb.i
    i32 -17958193, label %sw.bb2.i
    i32 -889275714, label %sw.bb4.i
    i32 -889275713, label %sw.bb4.i
    i32 -1095041334, label %sw.bb9.i
    i32 -1078264118, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  store i32 0, ptr %is_64.i, align 4
  %25 = load i64, ptr %offset.addr.i, align 8
  %add.i = add i64 %25, 28
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  store i32 1, ptr %is_64.i, align 4
  %26 = load i64, ptr %offset.addr.i, align 8
  %add3.i = add i64 %26, 32
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i, %if.end.i
  %27 = load i64, ptr %offset.addr.i, align 8
  %add5.i = add i64 %27, 8
  store i64 %add5.i, ptr %hdroffset.i, align 8
  %28 = load i64, ptr %header.i, align 8
  store i64 %28, ptr %fat_header.i, align 8
  %29 = load ptr, ptr %state.addr.i, align 8
  %30 = load ptr, ptr %filename.addr.i, align 8
  %31 = load i32, ptr %descriptor.addr.i, align 4
  %32 = load ptr, ptr %match_uuid.addr.i, align 8
  %33 = load i64, ptr %base_address.i, align 8
  store i64 %33, ptr %agg.tmp.i, align 8
  %34 = load i32, ptr %skip_symtab.addr.i, align 4
  %nfat_arch.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header.i, i64 0, i32 1
  %35 = load i32, ptr %nfat_arch.i, align 4
  %36 = load i32, ptr %header.i, align 8
  %cmp.i = icmp eq i32 %36, -889275713
  %conv.i = zext i1 %cmp.i to i32
  %37 = load ptr, ptr %error_callback.addr.i, align 8
  %38 = load ptr, ptr %data.addr.i, align 8
  %39 = load ptr, ptr %fileline_fn.addr.i, align 8
  %40 = load ptr, ptr %found_sym.addr.i, align 8
  %41 = load i64, ptr %agg.tmp.i, align 8
  %call8.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef 0, i64 noundef %add5.i, ptr noundef %32, i64 %41, i32 noundef %34, i32 noundef %35, i32 noundef %conv.i, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40)
  store i32 %call8.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit

sw.bb9.i:                                         ; preds = %if.end.i, %if.end.i
  %42 = load i64, ptr %offset.addr.i, align 8
  %add12.i = add i64 %42, 8
  store i64 %add12.i, ptr %hdroffset.i, align 8
  %43 = load i64, ptr %header.i, align 8
  store i64 %43, ptr %fat_header10.i, align 8
  %nfat_arch13.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header10.i, i64 0, i32 1
  %44 = load i32, ptr %nfat_arch13.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  store i32 %45, ptr %nfat_arch11.i, align 4
  %46 = load ptr, ptr %state.addr.i, align 8
  %47 = load ptr, ptr %filename.addr.i, align 8
  %48 = load i32, ptr %descriptor.addr.i, align 4
  %49 = load i64, ptr %hdroffset.i, align 8
  %50 = load ptr, ptr %match_uuid.addr.i, align 8
  %51 = load i64, ptr %base_address.i, align 8
  store i64 %51, ptr %agg.tmp14.i, align 8
  %52 = load i32, ptr %skip_symtab.addr.i, align 4
  %53 = load i32, ptr %nfat_arch11.i, align 4
  %54 = load i32, ptr %header.i, align 8
  %cmp16.i = icmp eq i32 %54, -1078264118
  %conv17.i = zext i1 %cmp16.i to i32
  %55 = load ptr, ptr %error_callback.addr.i, align 8
  %56 = load ptr, ptr %data.addr.i, align 8
  %57 = load ptr, ptr %fileline_fn.addr.i, align 8
  %58 = load ptr, ptr %found_sym.addr.i, align 8
  %59 = load i64, ptr %agg.tmp14.i, align 8
  %call19.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef 1, i64 noundef %49, ptr noundef %50, i64 %59, i32 noundef %52, i32 noundef %53, i32 noundef %conv17.i, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58)
  store i32 %call19.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit

sw.default.i:                                     ; preds = %if.end.i
  %60 = load ptr, ptr %error_callback.addr.i, align 8
  %61 = load ptr, ptr %data.addr.i, align 8
  call void %60(ptr noundef %61, ptr noundef nonnull @.str.1, i32 noundef 0)
  br label %fail.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %storemerge1 = phi i64 [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  store i64 %storemerge1, ptr %hdroffset.i, align 8
  %filetype.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 3
  %62 = load i32, ptr %filetype.i, align 4
  switch i32 %62, label %sw.default21.i [
    i32 2, label %sw.bb20.i
    i32 6, label %sw.bb20.i
    i32 10, label %sw.bb20.i
  ]

sw.bb20.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i, %sw.epilog.i
  %63 = load ptr, ptr %state.addr.i, align 8
  %64 = load i32, ptr %descriptor.addr.i, align 4
  %65 = load i64, ptr %hdroffset.i, align 8
  %sizeofcmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %66 = load i32, ptr %sizeofcmds.i, align 4
  %conv23.i = zext i32 %66 to i64
  %67 = load ptr, ptr %error_callback.addr.i, align 8
  %68 = load ptr, ptr %data.addr.i, align 8
  %call24.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %63, i32 noundef %64, i64 noundef %65, i64 noundef %conv23.i, ptr noundef %67, ptr noundef %68, ptr noundef nonnull %cmds_view.i)
  %tobool25.i.not = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i.not, label %fail.i, label %if.end27.i

sw.default21.i:                                   ; preds = %sw.epilog.i
  %69 = load ptr, ptr %error_callback.addr.i, align 8
  %70 = load ptr, ptr %data.addr.i, align 8
  call void %69(ptr noundef %70, ptr noundef nonnull @.str.2, i32 noundef 0)
  br label %fail.i

if.end27.i:                                       ; preds = %sw.bb20.i
  store i32 1, ptr %cmds_view_valid.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %dwarf_sections.i, i8 0, i64 144, i1 false)
  store i32 0, ptr %have_dwarf.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %have_uuid.i, align 4
  store i64 0, ptr %cmdoffset.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog84.i, %if.end27.i
  %storemerge2 = phi i32 [ 0, %if.end27.i ], [ %inc.i, %sw.epilog84.i ]
  store i32 %storemerge2, ptr %i.i, align 4
  %ncmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 4
  %71 = load i32, ptr %ncmds.i, align 8
  %cmp28.i = icmp ult i32 %storemerge2, %71
  br i1 %cmp28.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %72 = load i64, ptr %cmdoffset.i, align 8
  %add29.i = add i64 %72, 8
  %sizeofcmds30.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %73 = load i32, ptr %sizeofcmds30.i, align 4
  %conv31.i = zext i32 %73 to i64
  %cmp32.i = icmp ugt i64 %add29.i, %conv31.i
  br i1 %cmp32.i, label %for.end.i, label %if.end34.i

if.end34.i:                                       ; preds = %for.body.i
  %74 = load ptr, ptr %cmds_view.i, align 8
  %75 = load i64, ptr %cmdoffset.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %74, i64 %75
  store ptr %add.ptr.i, ptr %pcmd.i, align 8
  %76 = load i64, ptr %add.ptr.i, align 1
  store i64 %76, ptr %load_command.i, align 8
  %77 = load i32, ptr %load_command.i, align 8
  switch i32 %77, label %sw.epilog84.i [
    i32 1, label %sw.bb36.i
    i32 25, label %sw.bb48.i
    i32 2, label %sw.bb66.i
    i32 27, label %sw.bb80.i
  ]

sw.bb36.i:                                        ; preds = %if.end34.i
  %78 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %segcmd.i, ptr noundef nonnull align 1 dereferenceable(56) %78, i64 56, i1 false)
  %segname.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 2
  %call37.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then39.i, label %sw.epilog84.i

if.then39.i:                                      ; preds = %sw.bb36.i
  %79 = load ptr, ptr %state.addr.i, align 8
  %80 = load i32, ptr %descriptor.addr.i, align 4
  %81 = load i64, ptr %offset.addr.i, align 8
  %82 = load i32, ptr %load_command.i, align 8
  %83 = load ptr, ptr %pcmd.i, align 8
  %add.ptr41.i = getelementptr inbounds i8, ptr %83, i64 56
  %cmdsize.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %84 = load i32, ptr %cmdsize.i, align 4
  %conv42.i = zext i32 %84 to i64
  %sub.i = add nsw i64 %conv42.i, -56
  %nsects.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 9
  %85 = load i32, ptr %nsects.i, align 4
  %86 = load ptr, ptr %error_callback.addr.i, align 8
  %87 = load ptr, ptr %data.addr.i, align 8
  %call43.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %79, i32 noundef %80, i64 noundef %81, i32 noundef %82, ptr noundef nonnull %add.ptr41.i, i64 noundef %sub.i, i32 noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef nonnull %dwarf_sections.i)
  %tobool44.i.not = icmp eq i32 %call43.i, 0
  br i1 %tobool44.i.not, label %fail.i, label %if.end46.i

if.end46.i:                                       ; preds = %if.then39.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb48.i:                                        ; preds = %if.end34.i
  %88 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %segcmd49.i, ptr noundef nonnull align 1 dereferenceable(72) %88, i64 72, i1 false)
  %segname50.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 2
  %call52.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname50.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp53.i = icmp eq i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then54.i, label %sw.epilog84.i

if.then54.i:                                      ; preds = %sw.bb48.i
  %89 = load ptr, ptr %state.addr.i, align 8
  %90 = load i32, ptr %descriptor.addr.i, align 4
  %91 = load i64, ptr %offset.addr.i, align 8
  %92 = load i32, ptr %load_command.i, align 8
  %93 = load ptr, ptr %pcmd.i, align 8
  %add.ptr56.i = getelementptr inbounds i8, ptr %93, i64 72
  %cmdsize57.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %94 = load i32, ptr %cmdsize57.i, align 4
  %conv58.i = zext i32 %94 to i64
  %sub59.i = add nsw i64 %conv58.i, -72
  %nsects60.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 9
  %95 = load i32, ptr %nsects60.i, align 8
  %96 = load ptr, ptr %error_callback.addr.i, align 8
  %97 = load ptr, ptr %data.addr.i, align 8
  %call61.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %89, i32 noundef %90, i64 noundef %91, i32 noundef %92, ptr noundef nonnull %add.ptr56.i, i64 noundef %sub59.i, i32 noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef nonnull %dwarf_sections.i)
  %tobool62.i.not = icmp eq i32 %call61.i, 0
  br i1 %tobool62.i.not, label %fail.i, label %if.end64.i

if.end64.i:                                       ; preds = %if.then54.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb66.i:                                        ; preds = %if.end34.i
  %98 = load i32, ptr %skip_symtab.addr.i, align 4
  %tobool67.i.not = icmp eq i32 %98, 0
  br i1 %tobool67.i.not, label %if.then68.i, label %sw.epilog84.i

if.then68.i:                                      ; preds = %sw.bb66.i
  %99 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %symcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %99, i64 24, i1 false)
  %100 = load ptr, ptr %state.addr.i, align 8
  %101 = load i32, ptr %descriptor.addr.i, align 4
  %102 = load i64, ptr %base_address.i, align 8
  store i64 %102, ptr %agg.tmp69.i, align 8
  %103 = load i32, ptr %is_64.i, align 4
  %104 = load i64, ptr %offset.addr.i, align 8
  %symoff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 2
  %105 = load i32, ptr %symoff.i, align 4
  %conv70.i = zext i32 %105 to i64
  %add71.i = add nsw i64 %104, %conv70.i
  %nsyms.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 3
  %106 = load i32, ptr %nsyms.i, align 4
  %107 = load i64, ptr %offset.addr.i, align 8
  %stroff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 4
  %108 = load i32, ptr %stroff.i, align 4
  %conv72.i = zext i32 %108 to i64
  %add73.i = add nsw i64 %107, %conv72.i
  %strsize.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 5
  %109 = load i32, ptr %strsize.i, align 4
  %110 = load ptr, ptr %error_callback.addr.i, align 8
  %111 = load ptr, ptr %data.addr.i, align 8
  %112 = load i64, ptr %agg.tmp69.i, align 8
  %call75.i = call noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %100, i32 noundef %101, i64 %112, i32 noundef %103, i64 noundef %add71.i, i32 noundef %106, i64 noundef %add73.i, i32 noundef %109, ptr noundef %110, ptr noundef %111)
  %tobool76.i.not = icmp eq i32 %call75.i, 0
  br i1 %tobool76.i.not, label %fail.i, label %if.end78.i

if.end78.i:                                       ; preds = %if.then68.i
  %113 = load ptr, ptr %found_sym.addr.i, align 8
  store i32 1, ptr %113, align 4
  br label %sw.epilog84.i

sw.bb80.i:                                        ; preds = %if.end34.i
  %114 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %uuidcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %114, i64 24, i1 false)
  %uuid81.i = getelementptr inbounds %"struct.tracy::macho_uuid_command", ptr %uuidcmd.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, ptr noundef nonnull align 4 dereferenceable(16) %uuid81.i, i64 16, i1 false)
  store i32 1, ptr %have_uuid.i, align 4
  br label %sw.epilog84.i

sw.epilog84.i:                                    ; preds = %if.end34.i, %sw.bb66.i, %if.end78.i, %sw.bb48.i, %if.end64.i, %sw.bb36.i, %if.end46.i, %sw.bb80.i
  %cmdsize85.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %115 = load i32, ptr %cmdsize85.i, align 4
  %conv86.i = zext i32 %115 to i64
  %116 = load i64, ptr %cmdoffset.i, align 8
  %add87.i = add i64 %116, %conv86.i
  store i64 %add87.i, ptr %cmdoffset.i, align 8
  %117 = load i32, ptr %i.i, align 4
  %inc.i = add i32 %117, 1
  br label %for.cond.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %118 = load i32, ptr %descriptor.addr.i, align 4
  %119 = load ptr, ptr %error_callback.addr.i, align 8
  %120 = load ptr, ptr %data.addr.i, align 8
  %call88.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %118, ptr noundef %119, ptr noundef %120)
  %tobool89.i.not = icmp eq i32 %call88.i, 0
  br i1 %tobool89.i.not, label %fail.i, label %if.end91.i

if.end91.i:                                       ; preds = %for.end.i
  store i32 -1, ptr %descriptor.addr.i, align 4
  %121 = load ptr, ptr %state.addr.i, align 8
  %122 = load ptr, ptr %error_callback.addr.i, align 8
  %123 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %121, ptr noundef nonnull %cmds_view.i, ptr noundef %122, ptr noundef %123)
  store i32 0, ptr %cmds_view_valid.i, align 4
  %124 = load ptr, ptr %match_uuid.addr.i, align 8
  %cmp92.i.not = icmp eq ptr %124, null
  br i1 %cmp92.i.not, label %if.end100.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end91.i
  %125 = load i32, ptr %have_uuid.i, align 4
  %tobool94.i.not = icmp eq i32 %125, 0
  br i1 %tobool94.i.not, label %if.then98.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then93.i
  %126 = load ptr, ptr %match_uuid.addr.i, align 8
  %call96.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %126, ptr noundef nonnull dereferenceable(16) %uuid.i, i64 noundef 16)
  %cmp97.i.not = icmp eq i32 %call96.i, 0
  br i1 %cmp97.i.not, label %if.end100.i, label %if.then98.i

if.then98.i:                                      ; preds = %lor.lhs.false.i, %if.then93.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit

if.end100.i:                                      ; preds = %lor.lhs.false.i, %if.end91.i
  %127 = load i32, ptr %have_dwarf.i, align 4
  %tobool101.i.not = icmp eq i32 %127, 0
  br i1 %tobool101.i.not, label %if.end109.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.end100.i
  %128 = load ptr, ptr %state.addr.i, align 8
  %129 = load i64, ptr %base_address.i, align 8
  %130 = load ptr, ptr %error_callback.addr.i, align 8
  %131 = load ptr, ptr %data.addr.i, align 8
  %132 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call105.i = call noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef %128, i64 %129, ptr noundef nonnull %dwarf_sections.i, i32 noundef 0, ptr noundef null, ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef null)
  %tobool106.i.not = icmp eq i32 %call105.i, 0
  br i1 %tobool106.i.not, label %fail.i, label %if.end109.i

if.end109.i:                                      ; preds = %if.then102.i, %if.end100.i
  %133 = load i32, ptr %have_dwarf.i, align 4
  %tobool110.i.not = icmp ne i32 %133, 0
  %134 = load i32, ptr %have_uuid.i, align 4
  %tobool111.i.not = icmp eq i32 %134, 0
  %or.cond3 = select i1 %tobool110.i.not, i1 true, i1 %tobool111.i.not
  br i1 %or.cond3, label %if.end120.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end109.i
  %135 = load ptr, ptr %state.addr.i, align 8
  %136 = load ptr, ptr %filename.addr.i, align 8
  %137 = load i64, ptr %base_address.i, align 8
  %138 = load ptr, ptr %error_callback.addr.i, align 8
  %139 = load ptr, ptr %data.addr.i, align 8
  %140 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call116.i = call noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %135, ptr noundef %136, i64 %137, ptr noundef nonnull %uuid.i, ptr noundef %138, ptr noundef %139, ptr noundef %140)
  %tobool117.i.not = icmp eq i32 %call116.i, 0
  br i1 %tobool117.i.not, label %fail.i, label %if.end120.i

if.end120.i:                                      ; preds = %if.then112.i, %if.end109.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit

fail.i:                                           ; preds = %if.then112.i, %if.then102.i, %for.end.i, %if.then68.i, %if.then54.i, %if.then39.i, %sw.bb20.i, %if.end10, %sw.default21.i, %sw.default.i
  %141 = load i32, ptr %cmds_view_valid.i, align 4
  %tobool121.i.not = icmp eq i32 %141, 0
  br i1 %tobool121.i.not, label %if.end123.i, label %if.then122.i

if.then122.i:                                     ; preds = %fail.i
  %142 = load ptr, ptr %state.addr.i, align 8
  %143 = load ptr, ptr %error_callback.addr.i, align 8
  %144 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %142, ptr noundef nonnull %cmds_view.i, ptr noundef %143, ptr noundef %144)
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %fail.i
  %145 = load i32, ptr %descriptor.addr.i, align 4
  %cmp124.i.not = icmp eq i32 %145, -1
  br i1 %cmp124.i.not, label %if.end127.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end123.i
  %146 = load i32, ptr %descriptor.addr.i, align 4
  %147 = load ptr, ptr %error_callback.addr.i, align 8
  %148 = load ptr, ptr %data.addr.i, align 8
  %call126.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %146, ptr noundef %147, ptr noundef %148)
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %if.end123.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit: ; preds = %sw.bb4.i, %sw.bb9.i, %if.then98.i, %if.end120.i, %if.end127.i
  %149 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uuidcmd.i)
  %tobool13.not = icmp eq i32 %149, 0
  br i1 %tobool13.not, label %for.inc, label %if.end15

if.end15:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit
  %150 = load ptr, ptr %mff, align 8
  %cmp16.not = icmp eq ptr %150, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %151 = load ptr, ptr %mff, align 8
  store ptr %151, ptr %macho_fileline_fn, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %152 = load i32, ptr %mfs, align 4
  %tobool19.not = icmp eq i32 %152, 0
  br i1 %tobool19.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %if.end18
  store i32 1, ptr %found_sym, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.then20, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_0.exit, %if.else, %for.body
  %153 = load i32, ptr %i, align 4
  %inc = add i32 %153, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %154 = load i32, ptr %closed_descriptor, align 4
  %tobool22.not = icmp eq i32 %154, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end
  %155 = load i32, ptr %descriptor.addr, align 4
  %156 = load ptr, ptr %error_callback.addr, align 8
  %157 = load ptr, ptr %data.addr, align 8
  %call24 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %155, ptr noundef %156, ptr noundef %157)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end
  %158 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %158, i64 0, i32 1
  %159 = load i32, ptr %threaded, align 8
  %tobool26.not = icmp eq i32 %159, 0
  br i1 %tobool26.not, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.end25
  %160 = load i32, ptr %found_sym, align 4
  %tobool28.not = icmp eq i32 %160, 0
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.then27
  %161 = load ptr, ptr %state.addr, align 8
  %syminfo_fn = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %161, i64 0, i32 5
  store ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn, align 8
  br label %if.end43

if.else30:                                        ; preds = %if.then27
  %162 = load ptr, ptr %state.addr, align 8
  %syminfo_fn31 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %162, i64 0, i32 5
  %163 = load ptr, ptr %syminfo_fn31, align 8
  %cmp32 = icmp eq ptr %163, null
  br i1 %cmp32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.else30
  %164 = load ptr, ptr %state.addr, align 8
  %syminfo_fn34 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %164, i64 0, i32 5
  store ptr @_ZN5tracyL12macho_nosymsEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_, ptr %syminfo_fn34, align 8
  br label %if.end43

if.else37:                                        ; preds = %if.end25
  %165 = load i32, ptr %found_sym, align 4
  %tobool38.not = icmp eq i32 %165, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else37
  %166 = load ptr, ptr %state.addr, align 8
  %syminfo_fn40 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %166, i64 0, i32 5
  store atomic i64 ptrtoint (ptr @_ZN5tracyL13macho_syminfoEPNS_15backtrace_stateEmPFvPvmPKcmmEPFvS2_S4_iES2_ to i64), ptr %syminfo_fn40 release, align 8
  br label %if.end43

if.else41:                                        ; preds = %if.else37
  call void @abort() #8
  unreachable

if.end43:                                         ; preds = %if.then29, %if.then33, %if.else30, %if.then39
  %167 = load ptr, ptr %state.addr, align 8
  %threaded44 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %167, i64 0, i32 1
  %168 = load i32, ptr %threaded44, align 8
  %tobool45.not = icmp eq i32 %168, 0
  br i1 %tobool45.not, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end43
  %169 = load ptr, ptr %state.addr, align 8
  %fileline_fn47 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %169, i64 0, i32 3
  %170 = load ptr, ptr %fileline_fn47, align 8
  %171 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %170, ptr %171, align 8
  br label %if.end50

if.else48:                                        ; preds = %if.end43
  %172 = load ptr, ptr %state.addr, align 8
  %fileline_fn49 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %172, i64 0, i32 3
  %173 = load atomic i64, ptr %fileline_fn49 acquire, align 8
  %.cast = inttoptr i64 %173 to ptr
  %174 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %.cast, ptr %174, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  %175 = load ptr, ptr %fileline_fn.addr, align 8
  %176 = load ptr, ptr %175, align 8
  %cmp51 = icmp eq ptr %176, null
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end50
  %177 = load ptr, ptr %fileline_fn.addr, align 8
  %178 = load ptr, ptr %177, align 8
  %cmp52 = icmp eq ptr %178, @_ZN5tracyL13macho_nodebugEPNS_15backtrace_stateEmPFiPvmmPKciS4_EPFvS2_S4_iES2_
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end50
  %179 = load ptr, ptr %macho_fileline_fn, align 8
  %180 = load ptr, ptr %fileline_fn.addr, align 8
  store ptr %179, ptr %180, align 8
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
  %retval.i = alloca i32, align 4
  %base_address.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr.i = alloca ptr, align 8
  %filename.addr.i = alloca ptr, align 8
  %descriptor.addr.i = alloca i32, align 4
  %offset.addr.i = alloca i64, align 8
  %match_uuid.addr.i = alloca ptr, align 8
  %skip_symtab.addr.i = alloca i32, align 4
  %error_callback.addr.i = alloca ptr, align 8
  %data.addr.i = alloca ptr, align 8
  %fileline_fn.addr.i = alloca ptr, align 8
  %found_sym.addr.i = alloca ptr, align 8
  %header_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %header.i = alloca %"struct.tracy::macho_header_32", align 8
  %hdroffset.i = alloca i64, align 8
  %is_64.i = alloca i32, align 4
  %cmds_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %cmds_view_valid.i = alloca i32, align 4
  %dwarf_sections.i = alloca %"struct.tracy::dwarf_sections", align 8
  %have_dwarf.i = alloca i32, align 4
  %uuid.i = alloca [16 x i8], align 1
  %have_uuid.i = alloca i32, align 4
  %cmdoffset.i = alloca i64, align 8
  %i.i = alloca i32, align 4
  %fat_header.i = alloca %"struct.tracy::macho_header_fat", align 8
  %agg.tmp.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %fat_header10.i = alloca %"struct.tracy::macho_header_fat", align 8
  %nfat_arch11.i = alloca i32, align 4
  %agg.tmp14.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %pcmd.i = alloca ptr, align 8
  %load_command.i = alloca %"struct.tracy::macho_load_command", align 8
  %segcmd.i = alloca %"struct.tracy::macho_segment_command", align 4
  %segcmd49.i = alloca %"struct.tracy::macho_segment_64_command", align 8
  %symcmd.i = alloca %"struct.tracy::macho_symtab_command", align 4
  %agg.tmp69.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %uuidcmd.i = alloca %"struct.tracy::macho_uuid_command", align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uuidcmd.i)
  store i64 %38, ptr %base_address.i, align 8
  store ptr %31, ptr %state.addr.i, align 8
  store ptr %34, ptr %filename.addr.i, align 8
  store i32 %35, ptr %descriptor.addr.i, align 4
  store i64 %36, ptr %offset.addr.i, align 8
  store ptr %37, ptr %match_uuid.addr.i, align 8
  store i32 %39, ptr %skip_symtab.addr.i, align 4
  store ptr %40, ptr %error_callback.addr.i, align 8
  store ptr %41, ptr %data.addr.i, align 8
  store ptr %42, ptr %fileline_fn.addr.i, align 8
  store ptr %43, ptr %found_sym.addr.i, align 8
  store i32 0, ptr %43, align 4
  store i32 0, ptr %cmds_view_valid.i, align 4
  %44 = load ptr, ptr %state.addr.i, align 8
  %45 = load i32, ptr %descriptor.addr.i, align 4
  %46 = load i64, ptr %offset.addr.i, align 8
  %47 = load ptr, ptr %error_callback.addr.i, align 8
  %48 = load ptr, ptr %data.addr.i, align 8
  %call.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %44, i32 noundef %45, i64 noundef %46, i64 noundef 28, ptr noundef %47, ptr noundef %48, ptr noundef nonnull %header_view.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %fail.i, label %if.end.i

if.end.i:                                         ; preds = %if.then29
  %49 = load ptr, ptr %header_view.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %header.i, ptr noundef nonnull align 1 dereferenceable(28) %49, i64 28, i1 false)
  %50 = load ptr, ptr %state.addr.i, align 8
  %51 = load ptr, ptr %error_callback.addr.i, align 8
  %52 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %50, ptr noundef nonnull %header_view.i, ptr noundef %51, ptr noundef %52)
  %53 = load i32, ptr %header.i, align 8
  switch i32 %53, label %sw.default.i [
    i32 -17958194, label %sw.bb.i
    i32 -17958193, label %sw.bb2.i
    i32 -889275714, label %sw.bb4.i
    i32 -889275713, label %sw.bb4.i
    i32 -1095041334, label %sw.bb9.i
    i32 -1078264118, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  store i32 0, ptr %is_64.i, align 4
  %54 = load i64, ptr %offset.addr.i, align 8
  %add.i = add i64 %54, 28
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  store i32 1, ptr %is_64.i, align 4
  %55 = load i64, ptr %offset.addr.i, align 8
  %add3.i = add i64 %55, 32
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i, %if.end.i
  %56 = load i64, ptr %offset.addr.i, align 8
  %add5.i = add i64 %56, 8
  store i64 %add5.i, ptr %hdroffset.i, align 8
  %57 = load i64, ptr %header.i, align 8
  store i64 %57, ptr %fat_header.i, align 8
  %58 = load ptr, ptr %state.addr.i, align 8
  %59 = load ptr, ptr %filename.addr.i, align 8
  %60 = load i32, ptr %descriptor.addr.i, align 4
  %61 = load ptr, ptr %match_uuid.addr.i, align 8
  %62 = load i64, ptr %base_address.i, align 8
  store i64 %62, ptr %agg.tmp.i, align 8
  %63 = load i32, ptr %skip_symtab.addr.i, align 4
  %nfat_arch.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header.i, i64 0, i32 1
  %64 = load i32, ptr %nfat_arch.i, align 4
  %65 = load i32, ptr %header.i, align 8
  %cmp.i = icmp eq i32 %65, -889275713
  %conv.i = zext i1 %cmp.i to i32
  %66 = load ptr, ptr %error_callback.addr.i, align 8
  %67 = load ptr, ptr %data.addr.i, align 8
  %68 = load ptr, ptr %fileline_fn.addr.i, align 8
  %69 = load ptr, ptr %found_sym.addr.i, align 8
  %70 = load i64, ptr %agg.tmp.i, align 8
  %call8.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef 0, i64 noundef %add5.i, ptr noundef %61, i64 %70, i32 noundef %63, i32 noundef %64, i32 noundef %conv.i, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69)
  store i32 %call8.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit

sw.bb9.i:                                         ; preds = %if.end.i, %if.end.i
  %71 = load i64, ptr %offset.addr.i, align 8
  %add12.i = add i64 %71, 8
  store i64 %add12.i, ptr %hdroffset.i, align 8
  %72 = load i64, ptr %header.i, align 8
  store i64 %72, ptr %fat_header10.i, align 8
  %nfat_arch13.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header10.i, i64 0, i32 1
  %73 = load i32, ptr %nfat_arch13.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  store i32 %74, ptr %nfat_arch11.i, align 4
  %75 = load ptr, ptr %state.addr.i, align 8
  %76 = load ptr, ptr %filename.addr.i, align 8
  %77 = load i32, ptr %descriptor.addr.i, align 4
  %78 = load i64, ptr %hdroffset.i, align 8
  %79 = load ptr, ptr %match_uuid.addr.i, align 8
  %80 = load i64, ptr %base_address.i, align 8
  store i64 %80, ptr %agg.tmp14.i, align 8
  %81 = load i32, ptr %skip_symtab.addr.i, align 4
  %82 = load i32, ptr %nfat_arch11.i, align 4
  %83 = load i32, ptr %header.i, align 8
  %cmp16.i = icmp eq i32 %83, -1078264118
  %conv17.i = zext i1 %cmp16.i to i32
  %84 = load ptr, ptr %error_callback.addr.i, align 8
  %85 = load ptr, ptr %data.addr.i, align 8
  %86 = load ptr, ptr %fileline_fn.addr.i, align 8
  %87 = load ptr, ptr %found_sym.addr.i, align 8
  %88 = load i64, ptr %agg.tmp14.i, align 8
  %call19.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef 1, i64 noundef %78, ptr noundef %79, i64 %88, i32 noundef %81, i32 noundef %82, i32 noundef %conv17.i, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87)
  store i32 %call19.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit

sw.default.i:                                     ; preds = %if.end.i
  %89 = load ptr, ptr %error_callback.addr.i, align 8
  %90 = load ptr, ptr %data.addr.i, align 8
  call void %89(ptr noundef %90, ptr noundef nonnull @.str.1, i32 noundef 0)
  br label %fail.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %storemerge3 = phi i64 [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  store i64 %storemerge3, ptr %hdroffset.i, align 8
  %filetype.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 3
  %91 = load i32, ptr %filetype.i, align 4
  switch i32 %91, label %sw.default21.i [
    i32 2, label %sw.bb20.i
    i32 6, label %sw.bb20.i
    i32 10, label %sw.bb20.i
  ]

sw.bb20.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i, %sw.epilog.i
  %92 = load ptr, ptr %state.addr.i, align 8
  %93 = load i32, ptr %descriptor.addr.i, align 4
  %94 = load i64, ptr %hdroffset.i, align 8
  %sizeofcmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %95 = load i32, ptr %sizeofcmds.i, align 4
  %conv23.i = zext i32 %95 to i64
  %96 = load ptr, ptr %error_callback.addr.i, align 8
  %97 = load ptr, ptr %data.addr.i, align 8
  %call24.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %92, i32 noundef %93, i64 noundef %94, i64 noundef %conv23.i, ptr noundef %96, ptr noundef %97, ptr noundef nonnull %cmds_view.i)
  %tobool25.i.not = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i.not, label %fail.i, label %if.end27.i

sw.default21.i:                                   ; preds = %sw.epilog.i
  %98 = load ptr, ptr %error_callback.addr.i, align 8
  %99 = load ptr, ptr %data.addr.i, align 8
  call void %98(ptr noundef %99, ptr noundef nonnull @.str.2, i32 noundef 0)
  br label %fail.i

if.end27.i:                                       ; preds = %sw.bb20.i
  store i32 1, ptr %cmds_view_valid.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %dwarf_sections.i, i8 0, i64 144, i1 false)
  store i32 0, ptr %have_dwarf.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %have_uuid.i, align 4
  store i64 0, ptr %cmdoffset.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog84.i, %if.end27.i
  %storemerge4 = phi i32 [ 0, %if.end27.i ], [ %inc.i, %sw.epilog84.i ]
  store i32 %storemerge4, ptr %i.i, align 4
  %ncmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 4
  %100 = load i32, ptr %ncmds.i, align 8
  %cmp28.i = icmp ult i32 %storemerge4, %100
  br i1 %cmp28.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %101 = load i64, ptr %cmdoffset.i, align 8
  %add29.i = add i64 %101, 8
  %sizeofcmds30.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %102 = load i32, ptr %sizeofcmds30.i, align 4
  %conv31.i = zext i32 %102 to i64
  %cmp32.i = icmp ugt i64 %add29.i, %conv31.i
  br i1 %cmp32.i, label %for.end.i, label %if.end34.i

if.end34.i:                                       ; preds = %for.body.i
  %103 = load ptr, ptr %cmds_view.i, align 8
  %104 = load i64, ptr %cmdoffset.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %103, i64 %104
  store ptr %add.ptr.i, ptr %pcmd.i, align 8
  %105 = load i64, ptr %add.ptr.i, align 1
  store i64 %105, ptr %load_command.i, align 8
  %106 = load i32, ptr %load_command.i, align 8
  switch i32 %106, label %sw.epilog84.i [
    i32 1, label %sw.bb36.i
    i32 25, label %sw.bb48.i
    i32 2, label %sw.bb66.i
    i32 27, label %sw.bb80.i
  ]

sw.bb36.i:                                        ; preds = %if.end34.i
  %107 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %segcmd.i, ptr noundef nonnull align 1 dereferenceable(56) %107, i64 56, i1 false)
  %segname.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 2
  %call37.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then39.i, label %sw.epilog84.i

if.then39.i:                                      ; preds = %sw.bb36.i
  %108 = load ptr, ptr %state.addr.i, align 8
  %109 = load i32, ptr %descriptor.addr.i, align 4
  %110 = load i64, ptr %offset.addr.i, align 8
  %111 = load i32, ptr %load_command.i, align 8
  %112 = load ptr, ptr %pcmd.i, align 8
  %add.ptr41.i = getelementptr inbounds i8, ptr %112, i64 56
  %cmdsize.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %113 = load i32, ptr %cmdsize.i, align 4
  %conv42.i = zext i32 %113 to i64
  %sub.i = add nsw i64 %conv42.i, -56
  %nsects.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 9
  %114 = load i32, ptr %nsects.i, align 4
  %115 = load ptr, ptr %error_callback.addr.i, align 8
  %116 = load ptr, ptr %data.addr.i, align 8
  %call43.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %108, i32 noundef %109, i64 noundef %110, i32 noundef %111, ptr noundef nonnull %add.ptr41.i, i64 noundef %sub.i, i32 noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef nonnull %dwarf_sections.i)
  %tobool44.i.not = icmp eq i32 %call43.i, 0
  br i1 %tobool44.i.not, label %fail.i, label %if.end46.i

if.end46.i:                                       ; preds = %if.then39.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb48.i:                                        ; preds = %if.end34.i
  %117 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %segcmd49.i, ptr noundef nonnull align 1 dereferenceable(72) %117, i64 72, i1 false)
  %segname50.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 2
  %call52.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname50.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp53.i = icmp eq i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then54.i, label %sw.epilog84.i

if.then54.i:                                      ; preds = %sw.bb48.i
  %118 = load ptr, ptr %state.addr.i, align 8
  %119 = load i32, ptr %descriptor.addr.i, align 4
  %120 = load i64, ptr %offset.addr.i, align 8
  %121 = load i32, ptr %load_command.i, align 8
  %122 = load ptr, ptr %pcmd.i, align 8
  %add.ptr56.i = getelementptr inbounds i8, ptr %122, i64 72
  %cmdsize57.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %123 = load i32, ptr %cmdsize57.i, align 4
  %conv58.i = zext i32 %123 to i64
  %sub59.i = add nsw i64 %conv58.i, -72
  %nsects60.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 9
  %124 = load i32, ptr %nsects60.i, align 8
  %125 = load ptr, ptr %error_callback.addr.i, align 8
  %126 = load ptr, ptr %data.addr.i, align 8
  %call61.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %118, i32 noundef %119, i64 noundef %120, i32 noundef %121, ptr noundef nonnull %add.ptr56.i, i64 noundef %sub59.i, i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef nonnull %dwarf_sections.i)
  %tobool62.i.not = icmp eq i32 %call61.i, 0
  br i1 %tobool62.i.not, label %fail.i, label %if.end64.i

if.end64.i:                                       ; preds = %if.then54.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb66.i:                                        ; preds = %if.end34.i
  %127 = load i32, ptr %skip_symtab.addr.i, align 4
  %tobool67.i.not = icmp eq i32 %127, 0
  br i1 %tobool67.i.not, label %if.then68.i, label %sw.epilog84.i

if.then68.i:                                      ; preds = %sw.bb66.i
  %128 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %symcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %128, i64 24, i1 false)
  %129 = load ptr, ptr %state.addr.i, align 8
  %130 = load i32, ptr %descriptor.addr.i, align 4
  %131 = load i64, ptr %base_address.i, align 8
  store i64 %131, ptr %agg.tmp69.i, align 8
  %132 = load i32, ptr %is_64.i, align 4
  %133 = load i64, ptr %offset.addr.i, align 8
  %symoff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 2
  %134 = load i32, ptr %symoff.i, align 4
  %conv70.i = zext i32 %134 to i64
  %add71.i = add nsw i64 %133, %conv70.i
  %nsyms.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 3
  %135 = load i32, ptr %nsyms.i, align 4
  %136 = load i64, ptr %offset.addr.i, align 8
  %stroff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 4
  %137 = load i32, ptr %stroff.i, align 4
  %conv72.i = zext i32 %137 to i64
  %add73.i = add nsw i64 %136, %conv72.i
  %strsize.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 5
  %138 = load i32, ptr %strsize.i, align 4
  %139 = load ptr, ptr %error_callback.addr.i, align 8
  %140 = load ptr, ptr %data.addr.i, align 8
  %141 = load i64, ptr %agg.tmp69.i, align 8
  %call75.i = call noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %129, i32 noundef %130, i64 %141, i32 noundef %132, i64 noundef %add71.i, i32 noundef %135, i64 noundef %add73.i, i32 noundef %138, ptr noundef %139, ptr noundef %140)
  %tobool76.i.not = icmp eq i32 %call75.i, 0
  br i1 %tobool76.i.not, label %fail.i, label %if.end78.i

if.end78.i:                                       ; preds = %if.then68.i
  %142 = load ptr, ptr %found_sym.addr.i, align 8
  store i32 1, ptr %142, align 4
  br label %sw.epilog84.i

sw.bb80.i:                                        ; preds = %if.end34.i
  %143 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %uuidcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %143, i64 24, i1 false)
  %uuid81.i = getelementptr inbounds %"struct.tracy::macho_uuid_command", ptr %uuidcmd.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, ptr noundef nonnull align 4 dereferenceable(16) %uuid81.i, i64 16, i1 false)
  store i32 1, ptr %have_uuid.i, align 4
  br label %sw.epilog84.i

sw.epilog84.i:                                    ; preds = %if.end34.i, %sw.bb66.i, %if.end78.i, %sw.bb48.i, %if.end64.i, %sw.bb36.i, %if.end46.i, %sw.bb80.i
  %cmdsize85.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %144 = load i32, ptr %cmdsize85.i, align 4
  %conv86.i = zext i32 %144 to i64
  %145 = load i64, ptr %cmdoffset.i, align 8
  %add87.i = add i64 %145, %conv86.i
  store i64 %add87.i, ptr %cmdoffset.i, align 8
  %146 = load i32, ptr %i.i, align 4
  %inc.i = add i32 %146, 1
  br label %for.cond.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %147 = load i32, ptr %descriptor.addr.i, align 4
  %148 = load ptr, ptr %error_callback.addr.i, align 8
  %149 = load ptr, ptr %data.addr.i, align 8
  %call88.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %147, ptr noundef %148, ptr noundef %149)
  %tobool89.i.not = icmp eq i32 %call88.i, 0
  br i1 %tobool89.i.not, label %fail.i, label %if.end91.i

if.end91.i:                                       ; preds = %for.end.i
  store i32 -1, ptr %descriptor.addr.i, align 4
  %150 = load ptr, ptr %state.addr.i, align 8
  %151 = load ptr, ptr %error_callback.addr.i, align 8
  %152 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %150, ptr noundef nonnull %cmds_view.i, ptr noundef %151, ptr noundef %152)
  store i32 0, ptr %cmds_view_valid.i, align 4
  %153 = load ptr, ptr %match_uuid.addr.i, align 8
  %cmp92.i.not = icmp eq ptr %153, null
  br i1 %cmp92.i.not, label %if.end100.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end91.i
  %154 = load i32, ptr %have_uuid.i, align 4
  %tobool94.i.not = icmp eq i32 %154, 0
  br i1 %tobool94.i.not, label %if.then98.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then93.i
  %155 = load ptr, ptr %match_uuid.addr.i, align 8
  %call96.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %155, ptr noundef nonnull dereferenceable(16) %uuid.i, i64 noundef 16)
  %cmp97.i.not = icmp eq i32 %call96.i, 0
  br i1 %cmp97.i.not, label %if.end100.i, label %if.then98.i

if.then98.i:                                      ; preds = %lor.lhs.false.i, %if.then93.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit

if.end100.i:                                      ; preds = %lor.lhs.false.i, %if.end91.i
  %156 = load i32, ptr %have_dwarf.i, align 4
  %tobool101.i.not = icmp eq i32 %156, 0
  br i1 %tobool101.i.not, label %if.end109.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.end100.i
  %157 = load ptr, ptr %state.addr.i, align 8
  %158 = load i64, ptr %base_address.i, align 8
  %159 = load ptr, ptr %error_callback.addr.i, align 8
  %160 = load ptr, ptr %data.addr.i, align 8
  %161 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call105.i = call noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef %157, i64 %158, ptr noundef nonnull %dwarf_sections.i, i32 noundef 0, ptr noundef null, ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef null)
  %tobool106.i.not = icmp eq i32 %call105.i, 0
  br i1 %tobool106.i.not, label %fail.i, label %if.end109.i

if.end109.i:                                      ; preds = %if.then102.i, %if.end100.i
  %162 = load i32, ptr %have_dwarf.i, align 4
  %tobool110.i.not = icmp ne i32 %162, 0
  %163 = load i32, ptr %have_uuid.i, align 4
  %tobool111.i.not = icmp eq i32 %163, 0
  %or.cond = select i1 %tobool110.i.not, i1 true, i1 %tobool111.i.not
  br i1 %or.cond, label %if.end120.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end109.i
  %164 = load ptr, ptr %state.addr.i, align 8
  %165 = load ptr, ptr %filename.addr.i, align 8
  %166 = load i64, ptr %base_address.i, align 8
  %167 = load ptr, ptr %error_callback.addr.i, align 8
  %168 = load ptr, ptr %data.addr.i, align 8
  %169 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call116.i = call noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %164, ptr noundef %165, i64 %166, ptr noundef nonnull %uuid.i, ptr noundef %167, ptr noundef %168, ptr noundef %169)
  %tobool117.i.not = icmp eq i32 %call116.i, 0
  br i1 %tobool117.i.not, label %fail.i, label %if.end120.i

if.end120.i:                                      ; preds = %if.then112.i, %if.end109.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit

fail.i:                                           ; preds = %if.then112.i, %if.then102.i, %for.end.i, %if.then68.i, %if.then54.i, %if.then39.i, %sw.bb20.i, %if.then29, %sw.default21.i, %sw.default.i
  %170 = load i32, ptr %cmds_view_valid.i, align 4
  %tobool121.i.not = icmp eq i32 %170, 0
  br i1 %tobool121.i.not, label %if.end123.i, label %if.then122.i

if.then122.i:                                     ; preds = %fail.i
  %171 = load ptr, ptr %state.addr.i, align 8
  %172 = load ptr, ptr %error_callback.addr.i, align 8
  %173 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %171, ptr noundef nonnull %cmds_view.i, ptr noundef %172, ptr noundef %173)
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %fail.i
  %174 = load i32, ptr %descriptor.addr.i, align 4
  %cmp124.i.not = icmp eq i32 %174, -1
  br i1 %cmp124.i.not, label %if.end127.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end123.i
  %175 = load i32, ptr %descriptor.addr.i, align 4
  %176 = load ptr, ptr %error_callback.addr.i, align 8
  %177 = load ptr, ptr %data.addr.i, align 8
  %call126.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %175, ptr noundef %176, ptr noundef %177)
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %if.end123.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit: ; preds = %sw.bb4.i, %sw.bb9.i, %if.then98.i, %if.end120.i, %if.end127.i
  %178 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uuidcmd.i)
  br label %return

for.inc:                                          ; preds = %if.end27
  %179 = load i32, ptr %i, align 4
  %inc = add i32 %179, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %180 = load ptr, ptr %error_callback.addr, align 8
  %181 = load ptr, ptr %data.addr, align 8
  call void %180(ptr noundef %181, ptr noundef nonnull @.str.4, i32 noundef 0)
  br label %fail

fail:                                             ; preds = %entry, %for.end
  %182 = load i32, ptr %arch_view_valid, align 4
  %tobool33.not = icmp eq i32 %182, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %fail
  %183 = load ptr, ptr %state.addr, align 8
  %184 = load ptr, ptr %error_callback.addr, align 8
  %185 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %183, ptr noundef nonnull %arch_view, ptr noundef %184, ptr noundef %185)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %186 = load i32, ptr %descriptor.addr, align 4
  %cmp36.not = icmp eq i32 %186, -1
  br i1 %cmp36.not, label %return, label %if.then37

if.then37:                                        ; preds = %if.end35
  %187 = load i32, ptr %descriptor.addr, align 4
  %188 = load ptr, ptr %error_callback.addr, align 8
  %189 = load ptr, ptr %data.addr, align 8
  %call38 = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %187, ptr noundef %188, ptr noundef %189)
  br label %return

return:                                           ; preds = %if.end35, %if.then37, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit
  %storemerge1 = phi i32 [ %178, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_7.exit ], [ 0, %if.then37 ], [ 0, %if.end35 ]
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
  %state.addr.i2 = alloca ptr, align 8
  %descriptor.addr.i3 = alloca i32, align 4
  %sectname.addr.i4 = alloca ptr, align 8
  %offset.addr.i5 = alloca i32, align 4
  %size.addr.i6 = alloca i64, align 8
  %error_callback.addr.i7 = alloca ptr, align 8
  %data.addr.i8 = alloca ptr, align 8
  %dwarf_sections.addr.i9 = alloca ptr, align 8
  %i.i10 = alloca i32, align 4
  %section_view.i11 = alloca %"struct.tracy::backtrace_view", align 8
  %state.addr.i = alloca ptr, align 8
  %descriptor.addr.i = alloca i32, align 4
  %sectname.addr.i = alloca ptr, align 8
  %offset.addr.i = alloca i32, align 4
  %size.addr.i = alloca i64, align 8
  %error_callback.addr.i = alloca ptr, align 8
  %data.addr.i = alloca ptr, align 8
  %dwarf_sections.addr.i = alloca ptr, align 8
  %i.i = alloca i32, align 4
  %section_view.i = alloca %"struct.tracy::backtrace_view", align 8
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
  call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb1
  %storemerge = phi i64 [ 80, %sw.bb1 ], [ 68, %entry ]
  store i64 %storemerge, ptr %sec_header_size, align 8
  store i64 0, ptr %secoffset, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog20, %sw.epilog
  %storemerge38 = phi i32 [ 0, %sw.epilog ], [ %inc, %sw.epilog20 ]
  store i32 %storemerge38, ptr %i, align 4
  %1 = load i32, ptr %nsects.addr, align 4
  %cmp = icmp ult i32 %storemerge38, %1
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sectname.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dwarf_sections.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %section_view.i)
  store ptr %10, ptr %state.addr.i, align 8
  store i32 %11, ptr %descriptor.addr.i, align 4
  store ptr %section, ptr %sectname.addr.i, align 8
  store i32 %conv6, ptr %offset.addr.i, align 4
  store i64 %conv7, ptr %size.addr.i, align 8
  store ptr %16, ptr %error_callback.addr.i, align 8
  store ptr %17, ptr %data.addr.i, align 8
  store ptr %18, ptr %dwarf_sections.addr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end16.i, %sw.bb3
  %storemerge41 = phi i32 [ 0, %sw.bb3 ], [ %inc.i, %if.end16.i ]
  store i32 %storemerge41, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge41, 9
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %19 = load i32, ptr %i.i, align 4
  %idxprom.i = sext i32 %19 to i64
  %arrayidx.i = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom.i
  %20 = load ptr, ptr %arrayidx.i, align 8
  %21 = load i8, ptr %20, align 1
  %cmp2.i.not = icmp eq i8 %21, 0
  br i1 %cmp2.i.not, label %if.end16.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %22 = load ptr, ptr %sectname.addr.i, align 8
  %23 = load i32, ptr %i.i, align 4
  %idxprom3.i = sext i32 %23 to i64
  %arrayidx4.i = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom3.i
  %24 = load ptr, ptr %arrayidx4.i, align 8
  %call.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24, i64 noundef 16)
  %cmp5.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %25 = load ptr, ptr %state.addr.i, align 8
  %26 = load i32, ptr %descriptor.addr.i, align 4
  %27 = load i32, ptr %offset.addr.i, align 4
  %conv6.i = zext i32 %27 to i64
  %28 = load i64, ptr %size.addr.i, align 8
  %29 = load ptr, ptr %error_callback.addr.i, align 8
  %30 = load ptr, ptr %data.addr.i, align 8
  %call7.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %25, i32 noundef %26, i64 noundef %conv6.i, i64 noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef nonnull %section_view.i)
  %tobool.i.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_8.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  %31 = load ptr, ptr %section_view.i, align 8
  %32 = load ptr, ptr %dwarf_sections.addr.i, align 8
  %33 = load i32, ptr %i.i, align 4
  %idxprom11.i = sext i32 %33 to i64
  %arrayidx12.i = getelementptr inbounds [9 x ptr], ptr %32, i64 0, i64 %idxprom11.i
  store ptr %31, ptr %arrayidx12.i, align 8
  %34 = load i64, ptr %size.addr.i, align 8
  %idxprom14.i = sext i32 %33 to i64
  %arrayidx15.i = getelementptr inbounds %"struct.tracy::dwarf_sections", ptr %32, i64 0, i32 1, i64 %idxprom14.i
  store i64 %34, ptr %arrayidx15.i, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_8.exit

if.end16.i:                                       ; preds = %land.lhs.true.i, %for.body.i
  %35 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %35, 1
  br label %for.cond.i, !llvm.loop !12

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_8.exit: ; preds = %for.cond.i, %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sectname.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dwarf_sections.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %section_view.i)
  br label %sw.epilog20

sw.bb8:                                           ; preds = %if.end
  %36 = load ptr, ptr %psecs.addr, align 8
  %37 = load i64, ptr %secoffset, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %36, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %section9, ptr noundef nonnull align 1 dereferenceable(80) %add.ptr10, i64 80, i1 false)
  %38 = load ptr, ptr %state.addr, align 8
  %39 = load i32, ptr %descriptor.addr, align 4
  %40 = load i64, ptr %offset.addr, align 8
  %offset13 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i64 0, i32 4
  %41 = load i32, ptr %offset13, align 8
  %42 = trunc i64 %40 to i32
  %conv16 = add i32 %41, %42
  %size17 = getelementptr inbounds %"struct.tracy::macho_section_64", ptr %section9, i64 0, i32 3
  %43 = load i64, ptr %size17, align 8
  %44 = load ptr, ptr %error_callback.addr, align 8
  %45 = load ptr, ptr %data.addr, align 8
  %46 = load ptr, ptr %dwarf_sections.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descriptor.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sectname.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size.addr.i6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %error_callback.addr.i7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.addr.i8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dwarf_sections.addr.i9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i10)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %section_view.i11)
  store ptr %38, ptr %state.addr.i2, align 8
  store i32 %39, ptr %descriptor.addr.i3, align 4
  store ptr %section9, ptr %sectname.addr.i4, align 8
  store i32 %conv16, ptr %offset.addr.i5, align 4
  store i64 %43, ptr %size.addr.i6, align 8
  store ptr %44, ptr %error_callback.addr.i7, align 8
  store ptr %45, ptr %data.addr.i8, align 8
  store ptr %46, ptr %dwarf_sections.addr.i9, align 8
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %if.end16.i35, %sw.bb8
  %storemerge40 = phi i32 [ 0, %sw.bb8 ], [ %inc.i36, %if.end16.i35 ]
  store i32 %storemerge40, ptr %i.i10, align 4
  %cmp.i12 = icmp slt i32 %storemerge40, 9
  br i1 %cmp.i12, label %for.body.i18, label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_9.exit

for.body.i18:                                     ; preds = %for.cond.i13
  %47 = load i32, ptr %i.i10, align 4
  %idxprom.i14 = sext i32 %47 to i64
  %arrayidx.i15 = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom.i14
  %48 = load ptr, ptr %arrayidx.i15, align 8
  %49 = load i8, ptr %48, align 1
  %cmp2.i17.not = icmp eq i8 %49, 0
  br i1 %cmp2.i17.not, label %if.end16.i35, label %land.lhs.true.i23

land.lhs.true.i23:                                ; preds = %for.body.i18
  %50 = load ptr, ptr %sectname.addr.i4, align 8
  %51 = load i32, ptr %i.i10, align 4
  %idxprom3.i19 = sext i32 %51 to i64
  %arrayidx4.i20 = getelementptr inbounds [9 x ptr], ptr @_ZN5tracyL19dwarf_section_namesE, i64 0, i64 %idxprom3.i19
  %52 = load ptr, ptr %arrayidx4.i20, align 8
  %call.i21 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %52, i64 noundef 16)
  %cmp5.i22 = icmp eq i32 %call.i21, 0
  br i1 %cmp5.i22, label %if.then.i27, label %if.end16.i35

if.then.i27:                                      ; preds = %land.lhs.true.i23
  %53 = load ptr, ptr %state.addr.i2, align 8
  %54 = load i32, ptr %descriptor.addr.i3, align 4
  %55 = load i32, ptr %offset.addr.i5, align 4
  %conv6.i24 = zext i32 %55 to i64
  %56 = load i64, ptr %size.addr.i6, align 8
  %57 = load ptr, ptr %error_callback.addr.i7, align 8
  %58 = load ptr, ptr %data.addr.i8, align 8
  %call7.i25 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %53, i32 noundef %54, i64 noundef %conv6.i24, i64 noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef nonnull %section_view.i11)
  %tobool.i26.not = icmp eq i32 %call7.i25, 0
  br i1 %tobool.i26.not, label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_9.exit, label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i27
  %59 = load ptr, ptr %section_view.i11, align 8
  %60 = load ptr, ptr %dwarf_sections.addr.i9, align 8
  %61 = load i32, ptr %i.i10, align 4
  %idxprom11.i29 = sext i32 %61 to i64
  %arrayidx12.i30 = getelementptr inbounds [9 x ptr], ptr %60, i64 0, i64 %idxprom11.i29
  store ptr %59, ptr %arrayidx12.i30, align 8
  %62 = load i64, ptr %size.addr.i6, align 8
  %idxprom14.i32 = sext i32 %61 to i64
  %arrayidx15.i33 = getelementptr inbounds %"struct.tracy::dwarf_sections", ptr %60, i64 0, i32 1, i64 %idxprom14.i32
  store i64 %62, ptr %arrayidx15.i33, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_9.exit

if.end16.i35:                                     ; preds = %land.lhs.true.i23, %for.body.i18
  %63 = load i32, ptr %i.i10, align 4
  %inc.i36 = add nsw i32 %63, 1
  br label %for.cond.i13, !llvm.loop !12

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_9.exit: ; preds = %for.cond.i13, %if.end.i34, %if.then.i27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descriptor.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sectname.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.addr.i6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %error_callback.addr.i7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.addr.i8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dwarf_sections.addr.i9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i10)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %section_view.i11)
  br label %sw.epilog20

sw.default19:                                     ; preds = %if.end
  call void @abort() #8
  unreachable

sw.epilog20:                                      ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_9.exit, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_8.exit
  %64 = load i64, ptr %sec_header_size, align 8
  %65 = load i64, ptr %secoffset, align 8
  %add21 = add i64 %65, %64
  store i64 %add21, ptr %secoffset, align 8
  %66 = load i32, ptr %i, align 4
  %inc = add i32 %66, 1
  br label %for.cond, !llvm.loop !13

return:                                           ; preds = %for.cond, %if.then
  %storemerge39 = phi i32 [ 0, %if.then ], [ 1, %for.cond ]
  ret i32 %storemerge39
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %state, i32 noundef %descriptor, i64 %base_address.coerce, i32 noundef %is_64, i64 noundef %symoff, i32 noundef %nsyms, i64 noundef %stroff, i32 noundef %strsize, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %retval.i27 = alloca i32, align 4
  %type.addr.i28 = alloca i8, align 1
  %retval.i14 = alloca i32, align 4
  %type.addr.i15 = alloca i8, align 1
  %retval.i1 = alloca i32, align 4
  %type.addr.i2 = alloca i8, align 1
  %retval.i = alloca i32, align 4
  %type.addr.i = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i)
  store i8 %18, ptr %type.addr.i, align 1
  %cmp.i.not = icmp ult i8 %18, 32
  br i1 %cmp.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit

if.end.i:                                         ; preds = %if.then10
  %19 = load i8, ptr %type.addr.i, align 1
  %20 = and i8 %19, 14
  %and2.i = zext i8 %20 to i32
  switch i32 %and2.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 14, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit

sw.bb3.i:                                         ; preds = %if.end.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit

sw.bb4.i:                                         ; preds = %if.end.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit

sw.default.i:                                     ; preds = %if.end.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit: ; preds = %if.then.i, %sw.bb.i, %sw.bb3.i, %sw.bb4.i, %sw.default.i
  %21 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit
  %22 = load i64, ptr %ndefs, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %ndefs, align 8
  br label %for.inc

if.else16:                                        ; preds = %for.body
  %23 = load ptr, ptr %sym_view, align 8
  %24 = load i64, ptr %symtaboff, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %23, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %nlist17, ptr noundef nonnull align 1 dereferenceable(12) %add.ptr19, i64 12, i1 false)
  %n_type20 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist17, i64 0, i32 1
  %25 = load i8, ptr %n_type20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i2)
  store i8 %25, ptr %type.addr.i2, align 1
  %cmp.i5.not = icmp ult i8 %25, 32
  br i1 %cmp.i5.not, label %if.end.i9, label %if.then.i6

if.then.i6:                                       ; preds = %if.else16
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit

if.end.i9:                                        ; preds = %if.else16
  %26 = load i8, ptr %type.addr.i2, align 1
  %27 = and i8 %26, 14
  %and2.i8 = zext i8 %27 to i32
  switch i32 %and2.i8, label %sw.default.i13 [
    i32 0, label %sw.bb.i10
    i32 2, label %sw.bb3.i11
    i32 14, label %sw.bb4.i12
  ]

sw.bb.i10:                                        ; preds = %if.end.i9
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit

sw.bb3.i11:                                       ; preds = %if.end.i9
  store i32 1, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit

sw.bb4.i12:                                       ; preds = %if.end.i9
  store i32 1, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit

sw.default.i13:                                   ; preds = %if.end.i9
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit: ; preds = %if.then.i6, %sw.bb.i10, %sw.bb3.i11, %sw.bb4.i12, %sw.default.i13
  %28 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i2)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit
  %29 = load i64, ptr %ndefs, align 8
  %inc24 = add i64 %29, 1
  store i64 %inc24, ptr %ndefs, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_10.exit, %if.then23, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_11.exit
  %30 = load i32, ptr %i, align 4
  %inc27 = add i32 %30, 1
  store i32 %inc27, ptr %i, align 4
  %31 = load i64, ptr %symsize, align 8
  %32 = load i64, ptr %symtaboff, align 8
  %add = add i64 %32, %31
  store i64 %add, ptr %symtaboff, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %33 = load i64, ptr %ndefs, align 8
  %add28 = shl i64 %33, 4
  %mul29 = add i64 %add28, 16
  store i64 %mul29, ptr %macho_symbol_size, align 8
  %34 = load ptr, ptr %state.addr, align 8
  %35 = load ptr, ptr %error_callback.addr, align 8
  %36 = load ptr, ptr %data.addr, align 8
  %call30 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %34, i64 noundef %mul29, ptr noundef %35, ptr noundef %36)
  store ptr %call30, ptr %macho_symbols, align 8
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %fail, label %if.end33

if.end33:                                         ; preds = %for.end
  store i32 0, ptr %j, align 4
  store i64 0, ptr %symtaboff, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc75, %if.end33
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %nsyms.addr, align 4
  %cmp35 = icmp ult i32 %37, %38
  br i1 %cmp35, label %for.body36, label %for.end78

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %strx, align 4
  store i64 0, ptr %value, align 8
  %39 = load i32, ptr %is_64.addr, align 4
  %tobool37.not = icmp eq i32 %39, 0
  br i1 %tobool37.not, label %if.else47, label %if.then38

if.then38:                                        ; preds = %for.body36
  %40 = load ptr, ptr %sym_view, align 8
  %41 = load i64, ptr %symtaboff, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %40, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %nlist39, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr41, i64 16, i1 false)
  %n_type42 = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i64 0, i32 1
  %42 = load i8, ptr %n_type42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i14)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i15)
  store i8 %42, ptr %type.addr.i15, align 1
  %cmp.i18.not = icmp ult i8 %42, 32
  br i1 %cmp.i18.not, label %if.end.i22, label %if.then.i19

if.then.i19:                                      ; preds = %if.then38
  store i32 0, ptr %retval.i14, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit

if.end.i22:                                       ; preds = %if.then38
  %43 = load i8, ptr %type.addr.i15, align 1
  %44 = and i8 %43, 14
  %and2.i21 = zext i8 %44 to i32
  switch i32 %and2.i21, label %sw.default.i26 [
    i32 0, label %sw.bb.i23
    i32 2, label %sw.bb3.i24
    i32 14, label %sw.bb4.i25
  ]

sw.bb.i23:                                        ; preds = %if.end.i22
  store i32 0, ptr %retval.i14, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit

sw.bb3.i24:                                       ; preds = %if.end.i22
  store i32 1, ptr %retval.i14, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit

sw.bb4.i25:                                       ; preds = %if.end.i22
  store i32 1, ptr %retval.i14, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit

sw.default.i26:                                   ; preds = %if.end.i22
  store i32 0, ptr %retval.i14, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit: ; preds = %if.then.i19, %sw.bb.i23, %sw.bb3.i24, %sw.bb4.i25, %sw.default.i26
  %45 = load i32, ptr %retval.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i15)
  %tobool44.not = icmp eq i32 %45, 0
  br i1 %tobool44.not, label %for.inc75, label %if.end46

if.end46:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit
  %46 = load i32, ptr %nlist39, align 8
  store i32 %46, ptr %strx, align 4
  %n_value = getelementptr inbounds %"struct.tracy::macho_nlist_64", ptr %nlist39, i64 0, i32 4
  %47 = load i64, ptr %n_value, align 8
  br label %if.end59

if.else47:                                        ; preds = %for.body36
  %48 = load ptr, ptr %sym_view, align 8
  %49 = load i64, ptr %symtaboff, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %48, i64 %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %nlist48, ptr noundef nonnull align 1 dereferenceable(12) %add.ptr50, i64 12, i1 false)
  %n_type51 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i64 0, i32 1
  %50 = load i8, ptr %n_type51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i27)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i28)
  store i8 %50, ptr %type.addr.i28, align 1
  %cmp.i31.not = icmp ult i8 %50, 32
  br i1 %cmp.i31.not, label %if.end.i35, label %if.then.i32

if.then.i32:                                      ; preds = %if.else47
  store i32 0, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit

if.end.i35:                                       ; preds = %if.else47
  %51 = load i8, ptr %type.addr.i28, align 1
  %52 = and i8 %51, 14
  %and2.i34 = zext i8 %52 to i32
  switch i32 %and2.i34, label %sw.default.i39 [
    i32 0, label %sw.bb.i36
    i32 2, label %sw.bb3.i37
    i32 14, label %sw.bb4.i38
  ]

sw.bb.i36:                                        ; preds = %if.end.i35
  store i32 0, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit

sw.bb3.i37:                                       ; preds = %if.end.i35
  store i32 1, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit

sw.bb4.i38:                                       ; preds = %if.end.i35
  store i32 1, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit

sw.default.i39:                                   ; preds = %if.end.i35
  store i32 0, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit: ; preds = %if.then.i32, %sw.bb.i36, %sw.bb3.i37, %sw.bb4.i38, %sw.default.i39
  %53 = load i32, ptr %retval.i27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i27)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i28)
  %tobool53.not = icmp eq i32 %53, 0
  br i1 %tobool53.not, label %for.inc75, label %if.end55

if.end55:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit
  %54 = load i32, ptr %nlist48, align 4
  store i32 %54, ptr %strx, align 4
  %n_value57 = getelementptr inbounds %"struct.tracy::macho_nlist", ptr %nlist48, i64 0, i32 4
  %55 = load i32, ptr %n_value57, align 4
  %conv58 = zext i32 %55 to i64
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end46
  %storemerge42 = phi i64 [ %conv58, %if.end55 ], [ %47, %if.end46 ]
  store i64 %storemerge42, ptr %value, align 8
  %56 = load i32, ptr %strx, align 4
  %57 = load i32, ptr %strsize.addr, align 4
  %cmp60.not = icmp ult i32 %56, %57
  br i1 %cmp60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end59
  %58 = load ptr, ptr %error_callback.addr, align 8
  %59 = load ptr, ptr %data.addr, align 8
  call void %58(ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef 0)
  br label %fail

if.end62:                                         ; preds = %if.end59
  %60 = load ptr, ptr %str_view, align 8
  %61 = load i32, ptr %strx, align 4
  %idx.ext = zext i32 %61 to i64
  %add.ptr64 = getelementptr inbounds i8, ptr %60, i64 %idx.ext
  store ptr %add.ptr64, ptr %name, align 8
  %62 = load i8, ptr %add.ptr64, align 1
  %cmp66 = icmp eq i8 %62, 95
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end62
  %63 = load ptr, ptr %name, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr, ptr %name, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end62
  %64 = load ptr, ptr %name, align 8
  %65 = load ptr, ptr %macho_symbols, align 8
  %66 = load i32, ptr %j, align 4
  %idxprom = zext i32 %66 to i64
  %arrayidx69 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %65, i64 %idxprom
  store ptr %64, ptr %arrayidx69, align 8
  %67 = load i64, ptr %value, align 8
  %68 = load i64, ptr %base_address, align 8
  %add71 = add i64 %67, %68
  %69 = load ptr, ptr %macho_symbols, align 8
  %70 = load i32, ptr %j, align 4
  %idxprom72 = zext i32 %70 to i64
  %address = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %69, i64 %idxprom72, i32 1
  store i64 %add71, ptr %address, align 8
  %inc74 = add i32 %70, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_13.exit, %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_12.exit, %if.end68
  %71 = load i32, ptr %i, align 4
  %inc76 = add i32 %71, 1
  store i32 %inc76, ptr %i, align 4
  %72 = load i64, ptr %symsize, align 8
  %73 = load i64, ptr %symtaboff, align 8
  %add77 = add i64 %73, %72
  store i64 %add77, ptr %symtaboff, align 8
  br label %for.cond34, !llvm.loop !15

for.end78:                                        ; preds = %for.cond34
  %74 = load ptr, ptr %state.addr, align 8
  %75 = load ptr, ptr %error_callback.addr, align 8
  %76 = load ptr, ptr %data.addr, align 8
  %call79 = call noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %74, i64 noundef 24, ptr noundef %75, ptr noundef %76)
  store ptr %call79, ptr %sdata, align 8
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %fail, label %if.end82

if.end82:                                         ; preds = %for.end78
  %77 = load ptr, ptr %state.addr, align 8
  %78 = load ptr, ptr %error_callback.addr, align 8
  %79 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %77, ptr noundef nonnull %sym_view, ptr noundef %78, ptr noundef %79)
  store i32 0, ptr %sym_view_valid, align 4
  store i32 0, ptr %str_view_valid, align 4
  %80 = load ptr, ptr %macho_symbols, align 8
  %81 = load i32, ptr %j, align 4
  %idxprom83 = zext i32 %81 to i64
  %arrayidx84 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %80, i64 %idxprom83
  store ptr @.str.16, ptr %arrayidx84, align 8
  %idxprom86 = zext i32 %81 to i64
  %address88 = getelementptr inbounds %"struct.tracy::macho_symbol", ptr %80, i64 %idxprom86, i32 1
  store i64 -1, ptr %address88, align 8
  %82 = load ptr, ptr %macho_symbols, align 8
  %83 = load i64, ptr %ndefs, align 8
  %add89 = add i64 %83, 1
  call void @_ZN5tracy15backtrace_qsortEPvmmPFiPKvS2_E(ptr noundef %82, i64 noundef %add89, i64 noundef 16, ptr noundef nonnull @_ZN5tracyL20macho_symbol_compareEPKvS1_)
  %84 = load ptr, ptr %sdata, align 8
  store ptr null, ptr %84, align 8
  %symbols = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %84, i64 0, i32 1
  store ptr %82, ptr %symbols, align 8
  %85 = load i64, ptr %ndefs, align 8
  %count = getelementptr inbounds %"struct.tracy::macho_syminfo_data", ptr %84, i64 0, i32 2
  store i64 %85, ptr %count, align 8
  %86 = load ptr, ptr %state.addr, align 8
  %threaded = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %86, i64 0, i32 1
  %87 = load i32, ptr %threaded, align 8
  %tobool90.not = icmp eq i32 %87, 0
  br i1 %tobool90.not, label %if.then91, label %while.body

if.then91:                                        ; preds = %if.end82
  %88 = load ptr, ptr %state.addr, align 8
  %syminfo_data = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %88, i64 0, i32 6
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc95, %if.then91
  %storemerge40 = phi ptr [ %syminfo_data, %if.then91 ], [ %91, %for.inc95 ]
  store ptr %storemerge40, ptr %pp, align 8
  %89 = load ptr, ptr %storemerge40, align 8
  %cmp93.not = icmp eq ptr %89, null
  br i1 %cmp93.not, label %for.end97, label %for.inc95

for.inc95:                                        ; preds = %for.cond92
  %90 = load ptr, ptr %pp, align 8
  %91 = load ptr, ptr %90, align 8
  br label %for.cond92, !llvm.loop !16

for.end97:                                        ; preds = %for.cond92
  %92 = load ptr, ptr %sdata, align 8
  %93 = load ptr, ptr %pp, align 8
  store ptr %92, ptr %93, align 8
  store i32 1, ptr %retval, align 4
  br label %return

while.body:                                       ; preds = %if.end82
  %94 = load ptr, ptr %state.addr, align 8
  %syminfo_data100 = getelementptr inbounds %"struct.tracy::backtrace_state", ptr %94, i64 0, i32 6
  br label %while.body102

while.body102:                                    ; preds = %if.end105, %while.body
  %storemerge41 = phi ptr [ %syminfo_data100, %while.body ], [ %96, %if.end105 ]
  %95 = load atomic i64, ptr %storemerge41 acquire, align 8
  %.cast = inttoptr i64 %95 to ptr
  store ptr %.cast, ptr %p, align 8
  %cmp103 = icmp eq i64 %95, 0
  br i1 %cmp103, label %while.end, label %if.end105

if.end105:                                        ; preds = %while.body102
  %96 = load ptr, ptr %p, align 8
  br label %while.body102, !llvm.loop !17

while.end:                                        ; preds = %while.body102
  call void @abort() #8
  unreachable

fail:                                             ; preds = %for.end78, %for.end, %entry, %if.then61
  %97 = load ptr, ptr %macho_symbols, align 8
  %cmp111.not = icmp eq ptr %97, null
  br i1 %cmp111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %fail
  %98 = load ptr, ptr %state.addr, align 8
  %99 = load ptr, ptr %macho_symbols, align 8
  %100 = load i64, ptr %macho_symbol_size, align 8
  %101 = load ptr, ptr %error_callback.addr, align 8
  %102 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %98, ptr noundef %99, i64 noundef %100, ptr noundef %101, ptr noundef %102)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %fail
  %103 = load i32, ptr %sym_view_valid, align 4
  %tobool114.not = icmp eq i32 %103, 0
  br i1 %tobool114.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end113
  %104 = load ptr, ptr %state.addr, align 8
  %105 = load ptr, ptr %error_callback.addr, align 8
  %106 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %104, ptr noundef nonnull %sym_view, ptr noundef %105, ptr noundef %106)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113
  %107 = load i32, ptr %str_view_valid, align 4
  %tobool117.not = icmp eq i32 %107, 0
  br i1 %tobool117.not, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end116
  %108 = load ptr, ptr %state.addr, align 8
  %109 = load ptr, ptr %error_callback.addr, align 8
  %110 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %108, ptr noundef nonnull %str_view, ptr noundef %109, ptr noundef %110)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end116
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end119, %for.end97, %if.then7
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

declare noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef, i64, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %state, ptr noundef %filename, i64 %base_address.coerce, ptr noundef %uuid, ptr noundef %error_callback, ptr noundef %data, ptr noundef %fileline_fn) #0 {
entry:
  %retval.i = alloca i32, align 4
  %base_address.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %state.addr.i = alloca ptr, align 8
  %filename.addr.i = alloca ptr, align 8
  %descriptor.addr.i = alloca i32, align 4
  %offset.addr.i = alloca i64, align 8
  %match_uuid.addr.i = alloca ptr, align 8
  %skip_symtab.addr.i = alloca i32, align 4
  %error_callback.addr.i = alloca ptr, align 8
  %data.addr.i = alloca ptr, align 8
  %fileline_fn.addr.i = alloca ptr, align 8
  %found_sym.addr.i = alloca ptr, align 8
  %header_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %header.i = alloca %"struct.tracy::macho_header_32", align 8
  %hdroffset.i = alloca i64, align 8
  %is_64.i = alloca i32, align 4
  %cmds_view.i = alloca %"struct.tracy::backtrace_view", align 8
  %cmds_view_valid.i = alloca i32, align 4
  %dwarf_sections.i = alloca %"struct.tracy::dwarf_sections", align 8
  %have_dwarf.i = alloca i32, align 4
  %uuid.i = alloca [16 x i8], align 1
  %have_uuid.i = alloca i32, align 4
  %cmdoffset.i = alloca i64, align 8
  %i.i = alloca i32, align 4
  %fat_header.i = alloca %"struct.tracy::macho_header_fat", align 8
  %agg.tmp.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %fat_header10.i = alloca %"struct.tracy::macho_header_fat", align 8
  %nfat_arch11.i = alloca i32, align 4
  %agg.tmp14.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %pcmd.i = alloca ptr, align 8
  %load_command.i = alloca %"struct.tracy::macho_load_command", align 8
  %segcmd.i = alloca %"struct.tracy::macho_segment_command", align 4
  %segcmd49.i = alloca %"struct.tracy::macho_segment_64_command", align 8
  %symcmd.i = alloca %"struct.tracy::macho_symtab_command", align 4
  %agg.tmp69.i = alloca %"struct.tracy::libbacktrace_base_address", align 8
  %uuidcmd.i = alloca %"struct.tracy::macho_uuid_command", align 4
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
  %call.i = call noundef ptr @_Z16__libcpp_strrchrB6v15007PKci(ptr noundef %0, i32 noundef 47)
  store ptr %call.i, ptr %p, align 8
  %cmp = icmp eq ptr %call.i, null
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uuidcmd.i)
  store i64 %43, ptr %base_address.i, align 8
  store ptr %39, ptr %state.addr.i, align 8
  store ptr %40, ptr %filename.addr.i, align 8
  store i32 %41, ptr %descriptor.addr.i, align 4
  store i64 0, ptr %offset.addr.i, align 8
  store ptr %42, ptr %match_uuid.addr.i, align 8
  store i32 1, ptr %skip_symtab.addr.i, align 4
  store ptr %44, ptr %error_callback.addr.i, align 8
  store ptr %45, ptr %data.addr.i, align 8
  store ptr %46, ptr %fileline_fn.addr.i, align 8
  store ptr %dummy_found_sym, ptr %found_sym.addr.i, align 8
  store i32 0, ptr %dummy_found_sym, align 4
  store i32 0, ptr %cmds_view_valid.i, align 4
  %47 = load ptr, ptr %state.addr.i, align 8
  %48 = load i32, ptr %descriptor.addr.i, align 4
  %49 = load i64, ptr %offset.addr.i, align 8
  %50 = load ptr, ptr %error_callback.addr.i, align 8
  %51 = load ptr, ptr %data.addr.i, align 8
  %call.i1 = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %47, i32 noundef %48, i64 noundef %49, i64 noundef 28, ptr noundef %50, ptr noundef %51, ptr noundef nonnull %header_view.i)
  %tobool.i.not = icmp eq i32 %call.i1, 0
  br i1 %tobool.i.not, label %fail.i, label %if.end.i

if.end.i:                                         ; preds = %if.end28
  %52 = load ptr, ptr %header_view.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %header.i, ptr noundef nonnull align 1 dereferenceable(28) %52, i64 28, i1 false)
  %53 = load ptr, ptr %state.addr.i, align 8
  %54 = load ptr, ptr %error_callback.addr.i, align 8
  %55 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %53, ptr noundef nonnull %header_view.i, ptr noundef %54, ptr noundef %55)
  %56 = load i32, ptr %header.i, align 8
  switch i32 %56, label %sw.default.i [
    i32 -17958194, label %sw.bb.i
    i32 -17958193, label %sw.bb2.i
    i32 -889275714, label %sw.bb4.i
    i32 -889275713, label %sw.bb4.i
    i32 -1095041334, label %sw.bb9.i
    i32 -1078264118, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  store i32 0, ptr %is_64.i, align 4
  %57 = load i64, ptr %offset.addr.i, align 8
  %add.i = add i64 %57, 28
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  store i32 1, ptr %is_64.i, align 4
  %58 = load i64, ptr %offset.addr.i, align 8
  %add3.i = add i64 %58, 32
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i, %if.end.i
  %59 = load i64, ptr %offset.addr.i, align 8
  %add5.i = add i64 %59, 8
  store i64 %add5.i, ptr %hdroffset.i, align 8
  %60 = load i64, ptr %header.i, align 8
  store i64 %60, ptr %fat_header.i, align 8
  %61 = load ptr, ptr %state.addr.i, align 8
  %62 = load ptr, ptr %filename.addr.i, align 8
  %63 = load i32, ptr %descriptor.addr.i, align 4
  %64 = load ptr, ptr %match_uuid.addr.i, align 8
  %65 = load i64, ptr %base_address.i, align 8
  store i64 %65, ptr %agg.tmp.i, align 8
  %66 = load i32, ptr %skip_symtab.addr.i, align 4
  %nfat_arch.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header.i, i64 0, i32 1
  %67 = load i32, ptr %nfat_arch.i, align 4
  %68 = load i32, ptr %header.i, align 8
  %cmp.i = icmp eq i32 %68, -889275713
  %conv.i = zext i1 %cmp.i to i32
  %69 = load ptr, ptr %error_callback.addr.i, align 8
  %70 = load ptr, ptr %data.addr.i, align 8
  %71 = load ptr, ptr %fileline_fn.addr.i, align 8
  %72 = load ptr, ptr %found_sym.addr.i, align 8
  %73 = load i64, ptr %agg.tmp.i, align 8
  %call8.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef 0, i64 noundef %add5.i, ptr noundef %64, i64 %73, i32 noundef %66, i32 noundef %67, i32 noundef %conv.i, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72)
  store i32 %call8.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit

sw.bb9.i:                                         ; preds = %if.end.i, %if.end.i
  %74 = load i64, ptr %offset.addr.i, align 8
  %add12.i = add i64 %74, 8
  store i64 %add12.i, ptr %hdroffset.i, align 8
  %75 = load i64, ptr %header.i, align 8
  store i64 %75, ptr %fat_header10.i, align 8
  %nfat_arch13.i = getelementptr inbounds %"struct.tracy::macho_header_fat", ptr %fat_header10.i, i64 0, i32 1
  %76 = load i32, ptr %nfat_arch13.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  store i32 %77, ptr %nfat_arch11.i, align 4
  %78 = load ptr, ptr %state.addr.i, align 8
  %79 = load ptr, ptr %filename.addr.i, align 8
  %80 = load i32, ptr %descriptor.addr.i, align 4
  %81 = load i64, ptr %hdroffset.i, align 8
  %82 = load ptr, ptr %match_uuid.addr.i, align 8
  %83 = load i64, ptr %base_address.i, align 8
  store i64 %83, ptr %agg.tmp14.i, align 8
  %84 = load i32, ptr %skip_symtab.addr.i, align 4
  %85 = load i32, ptr %nfat_arch11.i, align 4
  %86 = load i32, ptr %header.i, align 8
  %cmp16.i = icmp eq i32 %86, -1078264118
  %conv17.i = zext i1 %cmp16.i to i32
  %87 = load ptr, ptr %error_callback.addr.i, align 8
  %88 = load ptr, ptr %data.addr.i, align 8
  %89 = load ptr, ptr %fileline_fn.addr.i, align 8
  %90 = load ptr, ptr %found_sym.addr.i, align 8
  %91 = load i64, ptr %agg.tmp14.i, align 8
  %call19.i = call noundef i32 @_ZN5tracyL13macho_add_fatEPNS_15backtrace_stateEPKciixPKhNS_25libbacktrace_base_addressEijiPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_EPi(ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef 1, i64 noundef %81, ptr noundef %82, i64 %91, i32 noundef %84, i32 noundef %85, i32 noundef %conv17.i, ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90)
  store i32 %call19.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit

sw.default.i:                                     ; preds = %if.end.i
  %92 = load ptr, ptr %error_callback.addr.i, align 8
  %93 = load ptr, ptr %data.addr.i, align 8
  call void %92(ptr noundef %93, ptr noundef nonnull @.str.1, i32 noundef 0)
  br label %fail.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %storemerge = phi i64 [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  store i64 %storemerge, ptr %hdroffset.i, align 8
  %filetype.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 3
  %94 = load i32, ptr %filetype.i, align 4
  switch i32 %94, label %sw.default21.i [
    i32 2, label %sw.bb20.i
    i32 6, label %sw.bb20.i
    i32 10, label %sw.bb20.i
  ]

sw.bb20.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i, %sw.epilog.i
  %95 = load ptr, ptr %state.addr.i, align 8
  %96 = load i32, ptr %descriptor.addr.i, align 4
  %97 = load i64, ptr %hdroffset.i, align 8
  %sizeofcmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %98 = load i32, ptr %sizeofcmds.i, align 4
  %conv23.i = zext i32 %98 to i64
  %99 = load ptr, ptr %error_callback.addr.i, align 8
  %100 = load ptr, ptr %data.addr.i, align 8
  %call24.i = call noundef i32 @_ZN5tracy18backtrace_get_viewEPNS_15backtrace_stateEixyPFvPvPKciES2_PNS_14backtrace_viewE(ptr noundef %95, i32 noundef %96, i64 noundef %97, i64 noundef %conv23.i, ptr noundef %99, ptr noundef %100, ptr noundef nonnull %cmds_view.i)
  %tobool25.i.not = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i.not, label %fail.i, label %if.end27.i

sw.default21.i:                                   ; preds = %sw.epilog.i
  %101 = load ptr, ptr %error_callback.addr.i, align 8
  %102 = load ptr, ptr %data.addr.i, align 8
  call void %101(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef 0)
  br label %fail.i

if.end27.i:                                       ; preds = %sw.bb20.i
  store i32 1, ptr %cmds_view_valid.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %dwarf_sections.i, i8 0, i64 144, i1 false)
  store i32 0, ptr %have_dwarf.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %have_uuid.i, align 4
  store i64 0, ptr %cmdoffset.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog84.i, %if.end27.i
  %storemerge2 = phi i32 [ 0, %if.end27.i ], [ %inc.i, %sw.epilog84.i ]
  store i32 %storemerge2, ptr %i.i, align 4
  %ncmds.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 4
  %103 = load i32, ptr %ncmds.i, align 8
  %cmp28.i = icmp ult i32 %storemerge2, %103
  br i1 %cmp28.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %104 = load i64, ptr %cmdoffset.i, align 8
  %add29.i = add i64 %104, 8
  %sizeofcmds30.i = getelementptr inbounds %"struct.tracy::macho_header_32", ptr %header.i, i64 0, i32 5
  %105 = load i32, ptr %sizeofcmds30.i, align 4
  %conv31.i = zext i32 %105 to i64
  %cmp32.i = icmp ugt i64 %add29.i, %conv31.i
  br i1 %cmp32.i, label %for.end.i, label %if.end34.i

if.end34.i:                                       ; preds = %for.body.i
  %106 = load ptr, ptr %cmds_view.i, align 8
  %107 = load i64, ptr %cmdoffset.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %106, i64 %107
  store ptr %add.ptr.i, ptr %pcmd.i, align 8
  %108 = load i64, ptr %add.ptr.i, align 1
  store i64 %108, ptr %load_command.i, align 8
  %109 = load i32, ptr %load_command.i, align 8
  switch i32 %109, label %sw.epilog84.i [
    i32 1, label %sw.bb36.i
    i32 25, label %sw.bb48.i
    i32 2, label %sw.bb66.i
    i32 27, label %sw.bb80.i
  ]

sw.bb36.i:                                        ; preds = %if.end34.i
  %110 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %segcmd.i, ptr noundef nonnull align 1 dereferenceable(56) %110, i64 56, i1 false)
  %segname.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 2
  %call37.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then39.i, label %sw.epilog84.i

if.then39.i:                                      ; preds = %sw.bb36.i
  %111 = load ptr, ptr %state.addr.i, align 8
  %112 = load i32, ptr %descriptor.addr.i, align 4
  %113 = load i64, ptr %offset.addr.i, align 8
  %114 = load i32, ptr %load_command.i, align 8
  %115 = load ptr, ptr %pcmd.i, align 8
  %add.ptr41.i = getelementptr inbounds i8, ptr %115, i64 56
  %cmdsize.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %116 = load i32, ptr %cmdsize.i, align 4
  %conv42.i = zext i32 %116 to i64
  %sub.i = add nsw i64 %conv42.i, -56
  %nsects.i = getelementptr inbounds %"struct.tracy::macho_segment_command", ptr %segcmd.i, i64 0, i32 9
  %117 = load i32, ptr %nsects.i, align 4
  %118 = load ptr, ptr %error_callback.addr.i, align 8
  %119 = load ptr, ptr %data.addr.i, align 8
  %call43.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %111, i32 noundef %112, i64 noundef %113, i32 noundef %114, ptr noundef nonnull %add.ptr41.i, i64 noundef %sub.i, i32 noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef nonnull %dwarf_sections.i)
  %tobool44.i.not = icmp eq i32 %call43.i, 0
  br i1 %tobool44.i.not, label %fail.i, label %if.end46.i

if.end46.i:                                       ; preds = %if.then39.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb48.i:                                        ; preds = %if.end34.i
  %120 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %segcmd49.i, ptr noundef nonnull align 1 dereferenceable(72) %120, i64 72, i1 false)
  %segname50.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 2
  %call52.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %segname50.i, ptr noundef nonnull dereferenceable(16) @.str.3, i64 noundef 16)
  %cmp53.i = icmp eq i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then54.i, label %sw.epilog84.i

if.then54.i:                                      ; preds = %sw.bb48.i
  %121 = load ptr, ptr %state.addr.i, align 8
  %122 = load i32, ptr %descriptor.addr.i, align 4
  %123 = load i64, ptr %offset.addr.i, align 8
  %124 = load i32, ptr %load_command.i, align 8
  %125 = load ptr, ptr %pcmd.i, align 8
  %add.ptr56.i = getelementptr inbounds i8, ptr %125, i64 72
  %cmdsize57.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %126 = load i32, ptr %cmdsize57.i, align 4
  %conv58.i = zext i32 %126 to i64
  %sub59.i = add nsw i64 %conv58.i, -72
  %nsects60.i = getelementptr inbounds %"struct.tracy::macho_segment_64_command", ptr %segcmd49.i, i64 0, i32 9
  %127 = load i32, ptr %nsects60.i, align 8
  %128 = load ptr, ptr %error_callback.addr.i, align 8
  %129 = load ptr, ptr %data.addr.i, align 8
  %call61.i = call noundef i32 @_ZN5tracyL23macho_add_dwarf_segmentEPNS_15backtrace_stateEixjPKcmjPFvPvS3_iES4_PNS_14dwarf_sectionsE(ptr noundef %121, i32 noundef %122, i64 noundef %123, i32 noundef %124, ptr noundef nonnull %add.ptr56.i, i64 noundef %sub59.i, i32 noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef nonnull %dwarf_sections.i)
  %tobool62.i.not = icmp eq i32 %call61.i, 0
  br i1 %tobool62.i.not, label %fail.i, label %if.end64.i

if.end64.i:                                       ; preds = %if.then54.i
  store i32 1, ptr %have_dwarf.i, align 4
  br label %sw.epilog84.i

sw.bb66.i:                                        ; preds = %if.end34.i
  %130 = load i32, ptr %skip_symtab.addr.i, align 4
  %tobool67.i.not = icmp eq i32 %130, 0
  br i1 %tobool67.i.not, label %if.then68.i, label %sw.epilog84.i

if.then68.i:                                      ; preds = %sw.bb66.i
  %131 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %symcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %131, i64 24, i1 false)
  %132 = load ptr, ptr %state.addr.i, align 8
  %133 = load i32, ptr %descriptor.addr.i, align 4
  %134 = load i64, ptr %base_address.i, align 8
  store i64 %134, ptr %agg.tmp69.i, align 8
  %135 = load i32, ptr %is_64.i, align 4
  %136 = load i64, ptr %offset.addr.i, align 8
  %symoff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 2
  %137 = load i32, ptr %symoff.i, align 4
  %conv70.i = zext i32 %137 to i64
  %add71.i = add nsw i64 %136, %conv70.i
  %nsyms.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 3
  %138 = load i32, ptr %nsyms.i, align 4
  %139 = load i64, ptr %offset.addr.i, align 8
  %stroff.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 4
  %140 = load i32, ptr %stroff.i, align 4
  %conv72.i = zext i32 %140 to i64
  %add73.i = add nsw i64 %139, %conv72.i
  %strsize.i = getelementptr inbounds %"struct.tracy::macho_symtab_command", ptr %symcmd.i, i64 0, i32 5
  %141 = load i32, ptr %strsize.i, align 4
  %142 = load ptr, ptr %error_callback.addr.i, align 8
  %143 = load ptr, ptr %data.addr.i, align 8
  %144 = load i64, ptr %agg.tmp69.i, align 8
  %call75.i = call noundef i32 @_ZN5tracyL16macho_add_symtabEPNS_15backtrace_stateEiNS_25libbacktrace_base_addressEixjxjPFvPvPKciES3_(ptr noundef %132, i32 noundef %133, i64 %144, i32 noundef %135, i64 noundef %add71.i, i32 noundef %138, i64 noundef %add73.i, i32 noundef %141, ptr noundef %142, ptr noundef %143)
  %tobool76.i.not = icmp eq i32 %call75.i, 0
  br i1 %tobool76.i.not, label %fail.i, label %if.end78.i

if.end78.i:                                       ; preds = %if.then68.i
  %145 = load ptr, ptr %found_sym.addr.i, align 8
  store i32 1, ptr %145, align 4
  br label %sw.epilog84.i

sw.bb80.i:                                        ; preds = %if.end34.i
  %146 = load ptr, ptr %pcmd.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %uuidcmd.i, ptr noundef nonnull align 1 dereferenceable(24) %146, i64 24, i1 false)
  %uuid81.i = getelementptr inbounds %"struct.tracy::macho_uuid_command", ptr %uuidcmd.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %uuid.i, ptr noundef nonnull align 4 dereferenceable(16) %uuid81.i, i64 16, i1 false)
  store i32 1, ptr %have_uuid.i, align 4
  br label %sw.epilog84.i

sw.epilog84.i:                                    ; preds = %if.end34.i, %sw.bb66.i, %if.end78.i, %sw.bb48.i, %if.end64.i, %sw.bb36.i, %if.end46.i, %sw.bb80.i
  %cmdsize85.i = getelementptr inbounds %"struct.tracy::macho_load_command", ptr %load_command.i, i64 0, i32 1
  %147 = load i32, ptr %cmdsize85.i, align 4
  %conv86.i = zext i32 %147 to i64
  %148 = load i64, ptr %cmdoffset.i, align 8
  %add87.i = add i64 %148, %conv86.i
  store i64 %add87.i, ptr %cmdoffset.i, align 8
  %149 = load i32, ptr %i.i, align 4
  %inc.i = add i32 %149, 1
  br label %for.cond.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %150 = load i32, ptr %descriptor.addr.i, align 4
  %151 = load ptr, ptr %error_callback.addr.i, align 8
  %152 = load ptr, ptr %data.addr.i, align 8
  %call88.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %150, ptr noundef %151, ptr noundef %152)
  %tobool89.i.not = icmp eq i32 %call88.i, 0
  br i1 %tobool89.i.not, label %fail.i, label %if.end91.i

if.end91.i:                                       ; preds = %for.end.i
  store i32 -1, ptr %descriptor.addr.i, align 4
  %153 = load ptr, ptr %state.addr.i, align 8
  %154 = load ptr, ptr %error_callback.addr.i, align 8
  %155 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %153, ptr noundef nonnull %cmds_view.i, ptr noundef %154, ptr noundef %155)
  store i32 0, ptr %cmds_view_valid.i, align 4
  %156 = load ptr, ptr %match_uuid.addr.i, align 8
  %cmp92.i.not = icmp eq ptr %156, null
  br i1 %cmp92.i.not, label %if.end100.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end91.i
  %157 = load i32, ptr %have_uuid.i, align 4
  %tobool94.i.not = icmp eq i32 %157, 0
  br i1 %tobool94.i.not, label %if.then98.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then93.i
  %158 = load ptr, ptr %match_uuid.addr.i, align 8
  %call96.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %158, ptr noundef nonnull dereferenceable(16) %uuid.i, i64 noundef 16)
  %cmp97.i.not = icmp eq i32 %call96.i, 0
  br i1 %cmp97.i.not, label %if.end100.i, label %if.then98.i

if.then98.i:                                      ; preds = %lor.lhs.false.i, %if.then93.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit

if.end100.i:                                      ; preds = %lor.lhs.false.i, %if.end91.i
  %159 = load i32, ptr %have_dwarf.i, align 4
  %tobool101.i.not = icmp eq i32 %159, 0
  br i1 %tobool101.i.not, label %if.end109.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.end100.i
  %160 = load ptr, ptr %state.addr.i, align 8
  %161 = load i64, ptr %base_address.i, align 8
  %162 = load ptr, ptr %error_callback.addr.i, align 8
  %163 = load ptr, ptr %data.addr.i, align 8
  %164 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call105.i = call noundef i32 @_ZN5tracy19backtrace_dwarf_addEPNS_15backtrace_stateENS_25libbacktrace_base_addressEPKNS_14dwarf_sectionsEiPNS_10dwarf_dataEPFvPvPKciES8_PPFiS1_mPFiS8_mmSA_iSA_ESC_S8_EPS7_(ptr noundef %160, i64 %161, ptr noundef nonnull %dwarf_sections.i, i32 noundef 0, ptr noundef null, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef null)
  %tobool106.i.not = icmp eq i32 %call105.i, 0
  br i1 %tobool106.i.not, label %fail.i, label %if.end109.i

if.end109.i:                                      ; preds = %if.then102.i, %if.end100.i
  %165 = load i32, ptr %have_dwarf.i, align 4
  %tobool110.i.not = icmp ne i32 %165, 0
  %166 = load i32, ptr %have_uuid.i, align 4
  %tobool111.i.not = icmp eq i32 %166, 0
  %or.cond = select i1 %tobool110.i.not, i1 true, i1 %tobool111.i.not
  br i1 %or.cond, label %if.end120.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end109.i
  %167 = load ptr, ptr %state.addr.i, align 8
  %168 = load ptr, ptr %filename.addr.i, align 8
  %169 = load i64, ptr %base_address.i, align 8
  %170 = load ptr, ptr %error_callback.addr.i, align 8
  %171 = load ptr, ptr %data.addr.i, align 8
  %172 = load ptr, ptr %fileline_fn.addr.i, align 8
  %call116.i = call noundef i32 @_ZN5tracyL14macho_add_dsymEPNS_15backtrace_stateEPKcNS_25libbacktrace_base_addressEPKhPFvPvS3_iES7_PPFiS1_mPFiS7_mmS3_iS3_ES9_S7_E(ptr noundef %167, ptr noundef %168, i64 %169, ptr noundef nonnull %uuid.i, ptr noundef %170, ptr noundef %171, ptr noundef %172)
  %tobool117.i.not = icmp eq i32 %call116.i, 0
  br i1 %tobool117.i.not, label %fail.i, label %if.end120.i

if.end120.i:                                      ; preds = %if.then112.i, %if.end109.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit

fail.i:                                           ; preds = %if.then112.i, %if.then102.i, %for.end.i, %if.then68.i, %if.then54.i, %if.then39.i, %sw.bb20.i, %if.end28, %sw.default21.i, %sw.default.i
  %173 = load i32, ptr %cmds_view_valid.i, align 4
  %tobool121.i.not = icmp eq i32 %173, 0
  br i1 %tobool121.i.not, label %if.end123.i, label %if.then122.i

if.then122.i:                                     ; preds = %fail.i
  %174 = load ptr, ptr %state.addr.i, align 8
  %175 = load ptr, ptr %error_callback.addr.i, align 8
  %176 = load ptr, ptr %data.addr.i, align 8
  call void @_ZN5tracy22backtrace_release_viewEPNS_15backtrace_stateEPNS_14backtrace_viewEPFvPvPKciES4_(ptr noundef %174, ptr noundef nonnull %cmds_view.i, ptr noundef %175, ptr noundef %176)
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %fail.i
  %177 = load i32, ptr %descriptor.addr.i, align 4
  %cmp124.i.not = icmp eq i32 %177, -1
  br i1 %cmp124.i.not, label %if.end127.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end123.i
  %178 = load i32, ptr %descriptor.addr.i, align 4
  %179 = load ptr, ptr %error_callback.addr.i, align 8
  %180 = load ptr, ptr %data.addr.i, align 8
  %call126.i = call noundef i32 @_ZN5tracy15backtrace_closeEiPFvPvPKciES0_(i32 noundef %178, ptr noundef %179, ptr noundef %180)
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %if.end123.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit

pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit: ; preds = %sw.bb4.i, %sw.bb9.i, %if.then98.i, %if.end120.i, %if.end127.i
  %181 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base_address.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descriptor.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match_uuid.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_symtab.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %error_callback.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fileline_fn.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_sym.addr.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %header_view.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdroffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_64.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmds_view.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmds_view_valid.i)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dwarf_sections.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_dwarf.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have_uuid.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmdoffset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fat_header10.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nfat_arch11.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp14.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %load_command.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %segcmd.i)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %segcmd49.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %symcmd.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp69.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uuidcmd.i)
  %tobool.not = icmp eq i32 %181, 0
  br i1 %tobool.not, label %fail, label %if.end32

if.end32:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit
  %182 = load ptr, ptr %state.addr, align 8
  %183 = load ptr, ptr %dsym, align 8
  %184 = load i64, ptr %dsymlen, align 8
  %185 = load ptr, ptr %error_callback.addr, align 8
  %186 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %182, ptr noundef %183, i64 noundef %184, ptr noundef %185, ptr noundef %186)
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_libbacktrace_macho_15.exit, %if.end6, %if.else
  %187 = load ptr, ptr %dsym, align 8
  %cmp33.not = icmp eq ptr %187, null
  br i1 %cmp33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %fail
  %188 = load ptr, ptr %state.addr, align 8
  %189 = load ptr, ptr %dsym, align 8
  %190 = load i64, ptr %dsymlen, align 8
  %191 = load ptr, ptr %error_callback.addr, align 8
  %192 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %188, ptr noundef %189, i64 noundef %190, ptr noundef %191, ptr noundef %192)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %fail
  %193 = load ptr, ptr %diralc, align 8
  %cmp36.not = icmp eq ptr %193, null
  br i1 %cmp36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  %194 = load ptr, ptr %state.addr, align 8
  %195 = load ptr, ptr %diralc, align 8
  %196 = load i64, ptr %dirnamelen, align 8
  %197 = load ptr, ptr %error_callback.addr, align 8
  %198 = load ptr, ptr %data.addr, align 8
  call void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %194, ptr noundef %195, i64 noundef %196, ptr noundef %197, ptr noundef %198)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.end32, %if.then27
  %199 = load i32, ptr %retval, align 4
  ret i32 %199
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold noreturn }

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
