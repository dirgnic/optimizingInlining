; ModuleID = './out/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_tracy_update_src_OfflineSymbolResolverAddr2Line.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/update/src/OfflineSymbolResolverAddr2Line.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.SymbolResolver = type { %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"struct.std::__1::array" = type { [128 x i8] }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2", %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.2" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.3" = type { ptr }
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%struct.SymbolEntry = type <{ %"class.std::__1::basic_string", %"class.std::__1::basic_string", i32, [4 x i8] }>
%struct.FrameEntry = type { ptr, i64 }
%"class.std::__1::basic_istream" = type { ptr, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::fpos" = type { %union.__mbstate_t, i64 }
%union.__mbstate_t = type { i64, [120 x i8] }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"struct.std::__1::__less" = type { i8 }
%"class.std::__1::basic_istream<char>::sentry" = type { i8 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::ostreambuf_iterator" = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { ptr }
%"class.std::__1::vector.10" = type { ptr, ptr, %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { ptr }
%"struct.std::__1::__less.17" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.19" }
%"struct.std::__1::__compressed_pair_elem.19" = type { ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__allocation_result.20" = type { ptr, i64 }
%"class.std::__1::_AllocatorDestroyRangeReverse" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.22" = type { [8 x i8], %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver = internal global %class.SymbolResolver zeroinitializer, align 8
@_ZGVZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [16 x i8] c"which addr2line\00", align 1
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"'addr2line' was not found in the system, please installed it\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Using 'addr2line' found at: '\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, ptr @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, ptr @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant [10 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 2, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3)], align 8
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE, ptr @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 128 to ptr), ptr null, ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -128 to ptr), ptr inttoptr (i64 -128 to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr hidden constant [69 x i8] c"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00", align 1
@_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE }, align 8
@_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt3__18ios_baseE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposB6v15007ENS_4fposI11__mbstate_tEEj, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl, ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi] }, align 8
@_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr hidden constant [66 x i8] c"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00", align 1
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Resolving symbols [%zu-%zu]\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" -C -f -e \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" -a \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" 0x\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"[unknown] + \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"??:?\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.15 = private unnamed_addr constant [7 x i8] c"vector\00", align 1

; Function Attrs: mustprogress ssp uwtable
define void @_Z16ExecShellCommandPKc(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef %cmd) #0 personality ptr @__gxx_personality_v0 {
entry:
  %buffer = alloca %"struct.std::__1::array", align 1
  %result = alloca %"class.std::__1::basic_string", align 8
  %pipe = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca ptr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %result) #6
  %call1 = invoke ptr @"\01_popen"(ptr noundef %cmd, ptr noundef nonnull @.str)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr @pclose, ptr %ref.tmp, align 8
  %call2 = call noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1B6v15007ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(16) %pipe, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #6
  %call3 = call noundef zeroext i1 @_ZNKSt3__110unique_ptrI7__sFILEPFiPS1_EEcvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %pipe) #6
  br i1 %call3, label %while.cond, label %if.then

if.then:                                          ; preds = %invoke.cont
  %call6 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull @.str.1)
          to label %cleanup unwind label %lpad4

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad4:                                            ; preds = %while.body, %while.cond, %if.then
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call17 = call noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %pipe) #6
  br label %ehcleanup

while.cond:                                       ; preds = %while.body, %invoke.cont
  %call7 = call noundef ptr @_ZNSt3__15arrayIcLm128EE4dataB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(128) %buffer) #6
  %call8 = call noundef i64 @_ZNKSt3__15arrayIcLm128EE4sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(128) %buffer) #6
  %conv = trunc i64 %call8 to i32
  %call9 = call noundef ptr @_ZNKSt3__110unique_ptrI7__sFILEPFiPS1_EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %pipe) #6
  %call11 = invoke ptr @fgets(ptr noundef %call7, i32 noundef %conv, ptr noundef %call9)
          to label %invoke.cont10 unwind label %lpad4

invoke.cont10:                                    ; preds = %while.cond
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %invoke.cont10
  %call12 = call noundef ptr @_ZNSt3__15arrayIcLm128EE4dataB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(128) %buffer) #6
  %call14 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(24) %result, ptr noundef %call12)
          to label %while.cond unwind label %lpad4, !llvm.loop !6

while.end:                                        ; preds = %invoke.cont10
  %call15 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %result) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.end
  %call16 = call noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %pipe) #6
  %call19 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %result) #6
  ret void

ehcleanup:                                        ; preds = %lpad4, %lpad
  %call20 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %result) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val21 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val21
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %this
}

declare ptr @"\01_popen"(ptr noundef, ptr noundef) #2

declare i32 @__gxx_personality_v0(...)

declare i32 @pclose(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1B6v15007ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2B6v15007ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__d) #6
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__110unique_ptrI7__sFILEPFiPS1_EEcvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  %0 = load ptr, ptr %call, align 8
  %cmp = icmp ne ptr %0, null
  ret i1 %cmp
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s)
  ret ptr %this
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15arrayIcLm128EE4dataB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(128) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__15arrayIcLm128EE4sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(128) %this) #3 align 2 {
entry:
  ret i64 128
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrI7__sFILEPFiPS1_EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s) #0 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: ssp uwtable
define noundef zeroext i1 @_Z14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %imagePath, ptr noundef nonnull align 8 dereferenceable(24) %inputEntryList, ptr noundef nonnull align 8 dereferenceable(24) %resolvedEntries) #4 personality ptr @__gxx_personality_v0 {
entry:
  %imagePath.addr = alloca ptr, align 8
  %inputEntryList.addr = alloca ptr, align 8
  %resolvedEntries.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %imagePath, ptr %imagePath.addr, align 8
  store ptr %inputEntryList, ptr %inputEntryList.addr, align 8
  store ptr %resolvedEntries, ptr %resolvedEntries.addr, align 8
  %0 = load atomic i8, ptr @_ZGVZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver acquire, align 8
  %1 = and i8 %0, 1
  %guard.uninitialized = icmp eq i8 %1, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end, !prof !8

init.check:                                       ; preds = %entry
  %2 = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver) #6
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %init.end, label %init

init:                                             ; preds = %init.check
  %call.i1 = invoke noundef ptr @_ZN14SymbolResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %init
  %3 = call i32 @__cxa_atexit(ptr nonnull @_ZN14SymbolResolverD1Ev, ptr nonnull @_ZZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver, ptr nonnull @__dso_handle) #6
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver) #6
  br label %init.end

init.end:                                         ; preds = %invoke.cont, %init.check, %entry
  %4 = load ptr, ptr %imagePath.addr, align 8
  %5 = load ptr, ptr %inputEntryList.addr, align 8
  %6 = load ptr, ptr %resolvedEntries.addr, align 8
  %call1 = call noundef zeroext i1 @_ZN14SymbolResolver14ResolveSymbolsERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_6vectorI10FrameEntryNS4_ISA_EEEERNS9_I11SymbolEntryNS4_ISF_EEEE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  ret i1 %call1

lpad:                                             ; preds = %init
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ14ResolveSymbolsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_6vectorI10FrameEntryNS3_IS9_EEEERNS8_I11SymbolEntryNS3_ISE_EEEEE14symbolResolver) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: nounwind
declare i32 @__cxa_guard_acquire(ptr) #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN14SymbolResolverD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #6

; Function Attrs: nounwind
declare void @__cxa_guard_abort(ptr) #6

; Function Attrs: nounwind
declare void @__cxa_guard_release(ptr) #6

; Function Attrs: ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN14SymbolResolver14ResolveSymbolsERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_6vectorI10FrameEntryNS4_ISA_EEEERNS9_I11SymbolEntryNS4_ISF_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %imagePath, ptr noundef nonnull align 8 dereferenceable(24) %inputEntryList, ptr noundef nonnull align 8 dereferenceable(24) %resolvedEntries) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %imagePath.addr = alloca ptr, align 8
  %inputEntryList.addr = alloca ptr, align 8
  %resolvedEntries.addr = alloca ptr, align 8
  %escapedPath = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %entryIdx = alloca i64, align 8
  %startIdx = alloca i64, align 8
  %batchEndIdx = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp5 = alloca i64, align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 8
  %entry23 = alloca ptr, align 8
  %resultStr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp32 = alloca %"class.std::__1::basic_string", align 8
  %result = alloca %"class.std::__1::basic_stringstream", align 8
  %i = alloca i64, align 8
  %inputEntry = alloca ptr, align 8
  %newEntry = alloca %struct.SymbolEntry, align 8
  %addr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp56 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp57 = alloca %"class.std::__1::basic_string", align 8
  %fileLine = alloca %"class.std::__1::basic_string", align 8
  %pos = alloca i64, align 8
  %ref.tmp77 = alloca %"class.std::__1::basic_string", align 8
  %lineStr = alloca %"class.std::__1::basic_string", align 8
  %after = alloca ptr, align 8
  store ptr %imagePath, ptr %imagePath.addr, align 8
  store ptr %inputEntryList, ptr %inputEntryList.addr, align 8
  store ptr %resolvedEntries, ptr %resolvedEntries.addr, align 8
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %escapedPath) #6
  %0 = load ptr, ptr %imagePath.addr, align 8
  invoke void @_ZN14SymbolResolver16escapeShellParamERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %escapedPath)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  store i64 0, ptr %entryIdx, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end102, %invoke.cont
  %1 = load i64, ptr %entryIdx, align 8
  %2 = load ptr, ptr %inputEntryList.addr, align 8
  %call3 = call noundef i64 @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #6
  %cmp = icmp ult i64 %1, %call3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %entryIdx, align 8
  store i64 %3, ptr %startIdx, align 8
  %4 = load ptr, ptr %inputEntryList.addr, align 8
  %call4 = call noundef i64 @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #6
  store i64 %call4, ptr %ref.tmp, align 8
  %add = add i64 %3, 1024
  store i64 %add, ptr %ref.tmp5, align 8
  %call7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %while.body
  %5 = load i64, ptr %call7, align 8
  store i64 %5, ptr %batchEndIdx, align 8
  %6 = load i64, ptr %startIdx, align 8
  %call9 = invoke i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %6, i64 noundef %5)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %call11 = invoke noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(128) %ss)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  %add.ptr = getelementptr inbounds i8, ptr %ss, i64 16
  %call15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont10
  %call17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @.str.7)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  %call19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call17, ptr noundef nonnull align 8 dereferenceable(24) %escapedPath)
          to label %invoke.cont18 unwind label %lpad13

invoke.cont18:                                    ; preds = %invoke.cont16
  %call21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef nonnull @.str.8)
          to label %for.cond unwind label %lpad13

for.cond:                                         ; preds = %invoke.cont18, %for.inc
  %7 = load i64, ptr %entryIdx, align 8
  %8 = load i64, ptr %batchEndIdx, align 8
  %cmp22 = icmp ult i64 %7, %8
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %inputEntryList.addr, align 8
  %10 = load i64, ptr %entryIdx, align 8
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %10) #6
  store ptr %call24, ptr %entry23, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %ss, i64 16
  %call27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr25, ptr noundef nonnull @.str.9)
          to label %invoke.cont26 unwind label %lpad13

invoke.cont26:                                    ; preds = %for.body
  %call29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRNS_8ios_baseES5_E(ptr noundef nonnull align 8 dereferenceable(8) %call27, ptr noundef nonnull @_ZNSt3__13hexERNS_8ios_baseE)
          to label %invoke.cont28 unwind label %lpad13

invoke.cont28:                                    ; preds = %invoke.cont26
  %11 = load ptr, ptr %entry23, align 8
  %symbolOffset = getelementptr inbounds %struct.FrameEntry, ptr %11, i64 0, i32 1
  %12 = load i64, ptr %symbolOffset, align 8
  %call31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy(ptr noundef nonnull align 8 dereferenceable(8) %call29, i64 noundef %12)
          to label %for.inc unwind label %lpad13

for.inc:                                          ; preds = %invoke.cont28
  %13 = load i64, ptr %entryIdx, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %entryIdx, align 8
  br label %for.cond, !llvm.loop !9

lpad:                                             ; preds = %invoke.cont8, %invoke.cont6, %while.body, %if.end
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  store ptr %15, ptr %exn.slot, align 8
  %16 = extractvalue { ptr, i32 } %14, 1
  store i32 %16, ptr %ehselector.slot, align 4
  br label %ehcleanup113

lpad13:                                           ; preds = %for.end, %invoke.cont28, %invoke.cont26, %for.body, %invoke.cont18, %invoke.cont16, %invoke.cont14, %invoke.cont10
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  store ptr %18, ptr %exn.slot, align 8
  %19 = extractvalue { ptr, i32 } %17, 1
  store i32 %19, ptr %ehselector.slot, align 4
  br label %ehcleanup110

for.end:                                          ; preds = %for.cond
  invoke void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB6v15007Ev(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp32, ptr noundef nonnull align 8 dereferenceable(128) %ss)
          to label %invoke.cont33 unwind label %lpad13

invoke.cont33:                                    ; preds = %for.end
  %call34 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp32) #6
  invoke void @_Z16ExecShellCommandPKc(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %resultStr, ptr noundef %call34)
          to label %invoke.cont36 unwind label %lpad35

invoke.cont36:                                    ; preds = %invoke.cont33
  %call37 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp32) #6
  %call41 = invoke noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull align 8 dereferenceable(128) %result, ptr noundef nonnull align 8 dereferenceable(24) %resultStr, i32 noundef 24)
          to label %invoke.cont40 unwind label %lpad39

invoke.cont40:                                    ; preds = %invoke.cont36
  %20 = load i64, ptr %startIdx, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %invoke.cont91, %invoke.cont40
  %storemerge = phi i64 [ %20, %invoke.cont40 ], [ %inc101, %invoke.cont91 ]
  store i64 %storemerge, ptr %i, align 8
  %21 = load i64, ptr %batchEndIdx, align 8
  %cmp43 = icmp ult i64 %storemerge, %21
  br i1 %cmp43, label %for.body44, label %for.end102

for.body44:                                       ; preds = %for.cond42
  %22 = load ptr, ptr %inputEntryList.addr, align 8
  %23 = load i64, ptr %i, align 8
  %call45 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %23) #6
  store ptr %call45, ptr %inputEntry, align 8
  %call.i = call noundef ptr @_ZN11SymbolEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(52) %newEntry) #6
  %call47 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %addr) #6
  %call50 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %result, ptr noundef nonnull align 8 dereferenceable(24) %addr)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %for.body44
  %call52 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %result, ptr noundef nonnull align 8 dereferenceable(24) %newEntry)
          to label %invoke.cont51 unwind label %lpad48

invoke.cont51:                                    ; preds = %invoke.cont49
  %call54 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %newEntry, ptr noundef nonnull @.str.10) #6
  br i1 %call54, label %if.then55, label %if.end67

if.then55:                                        ; preds = %invoke.cont51
  %24 = load ptr, ptr %inputEntry, align 8
  %symbolOffset58 = getelementptr inbounds %struct.FrameEntry, ptr %24, i64 0, i32 1
  %25 = load i64, ptr %symbolOffset58, align 8
  invoke void @_ZNSt3__19to_stringEy(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp57, i64 noundef %25)
          to label %invoke.cont59 unwind label %lpad48

invoke.cont59:                                    ; preds = %if.then55
  invoke void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp56, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp57)
          to label %invoke.cont61 unwind label %lpad60

invoke.cont61:                                    ; preds = %invoke.cont59
  %call63 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %newEntry, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56) #6
  %call64 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56) #6
  %call65 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp57) #6
  br label %if.end67

lpad35:                                           ; preds = %invoke.cont33
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  store ptr %27, ptr %exn.slot, align 8
  %28 = extractvalue { ptr, i32 } %26, 1
  store i32 %28, ptr %ehselector.slot, align 4
  %call38 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp32) #6
  br label %ehcleanup110

lpad39:                                           ; preds = %invoke.cont36
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %exn.slot, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %ehselector.slot, align 4
  br label %ehcleanup107

lpad48:                                           ; preds = %if.then55, %invoke.cont49, %for.body44
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  store ptr %33, ptr %exn.slot, align 8
  %34 = extractvalue { ptr, i32 } %32, 1
  store i32 %34, ptr %ehselector.slot, align 4
  br label %ehcleanup95

lpad60:                                           ; preds = %invoke.cont59
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = extractvalue { ptr, i32 } %35, 0
  store ptr %36, ptr %exn.slot, align 8
  %37 = extractvalue { ptr, i32 } %35, 1
  store i32 %37, ptr %ehselector.slot, align 4
  %call66 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp57) #6
  br label %ehcleanup95

if.end67:                                         ; preds = %invoke.cont61, %invoke.cont51
  %call68 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %fileLine) #6
  %call71 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %result, ptr noundef nonnull align 8 dereferenceable(24) %fileLine)
          to label %invoke.cont70 unwind label %lpad69

invoke.cont70:                                    ; preds = %if.end67
  %call72 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %fileLine, ptr noundef nonnull @.str.12) #6
  br i1 %call72, label %if.then73, label %if.end90

if.then73:                                        ; preds = %invoke.cont70
  %call74 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofB6v15007Ecm(ptr noundef nonnull align 8 dereferenceable(24) %fileLine, i8 noundef signext 58, i64 noundef -1) #6
  store i64 %call74, ptr %pos, align 8
  %cmp75.not = icmp eq i64 %call74, -1
  br i1 %cmp75.not, label %if.end90, label %if.then76

if.then76:                                        ; preds = %if.then73
  %38 = load i64, ptr %pos, align 8
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp77, ptr noundef nonnull align 8 dereferenceable(24) %fileLine, i64 noundef 0, i64 noundef %38)
          to label %invoke.cont78 unwind label %lpad69

invoke.cont78:                                    ; preds = %if.then76
  %file = getelementptr inbounds %struct.SymbolEntry, ptr %newEntry, i64 0, i32 1
  %call79 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %file, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp77) #6
  %call80 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp77) #6
  %39 = load i64, ptr %pos, align 8
  %add81 = add i64 %39, 1
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %lineStr, ptr noundef nonnull align 8 dereferenceable(24) %fileLine, i64 noundef %add81, i64 noundef -1)
          to label %invoke.cont82 unwind label %lpad69

invoke.cont82:                                    ; preds = %invoke.cont78
  store ptr null, ptr %after, align 8
  %call83 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %lineStr) #6
  %call86 = invoke i64 @strtol(ptr noundef %call83, ptr noundef nonnull %after, i32 noundef 10)
          to label %invoke.cont85 unwind label %lpad84

invoke.cont85:                                    ; preds = %invoke.cont82
  %conv = trunc i64 %call86 to i32
  %line = getelementptr inbounds %struct.SymbolEntry, ptr %newEntry, i64 0, i32 2
  store i32 %conv, ptr %line, align 8
  %call87 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %lineStr) #6
  br label %if.end90

lpad69:                                           ; preds = %if.end90, %invoke.cont78, %if.then76, %if.end67
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = extractvalue { ptr, i32 } %40, 0
  store ptr %41, ptr %exn.slot, align 8
  %42 = extractvalue { ptr, i32 } %40, 1
  store i32 %42, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad84:                                           ; preds = %invoke.cont82
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = extractvalue { ptr, i32 } %43, 0
  store ptr %44, ptr %exn.slot, align 8
  %45 = extractvalue { ptr, i32 } %43, 1
  store i32 %45, ptr %ehselector.slot, align 4
  %call88 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %lineStr) #6
  br label %ehcleanup

if.end90:                                         ; preds = %if.then73, %invoke.cont85, %invoke.cont70
  %46 = load ptr, ptr %resolvedEntries.addr, align 8
  invoke void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9push_backB6v15007EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(52) %newEntry)
          to label %invoke.cont91 unwind label %lpad69

invoke.cont91:                                    ; preds = %if.end90
  %call92 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %fileLine) #6
  %call94 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %addr) #6
  %call.i3 = call noundef ptr @_ZN11SymbolEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %newEntry) #6
  %47 = load i64, ptr %i, align 8
  %inc101 = add i64 %47, 1
  br label %for.cond42, !llvm.loop !10

ehcleanup:                                        ; preds = %lpad84, %lpad69
  %call93 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %fileLine) #6
  br label %ehcleanup95

ehcleanup95:                                      ; preds = %ehcleanup, %lpad60, %lpad48
  %call96 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %addr) #6
  %call.i6 = call noundef ptr @_ZN11SymbolEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %newEntry) #6
  %call105 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %result) #6
  br label %ehcleanup107

for.end102:                                       ; preds = %for.cond42
  %call103 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %result) #6
  %call106 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %resultStr) #6
  %call109 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ss) #6
  br label %while.cond, !llvm.loop !11

ehcleanup107:                                     ; preds = %ehcleanup95, %lpad39
  %call108 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %resultStr) #6
  br label %ehcleanup110

ehcleanup110:                                     ; preds = %ehcleanup107, %lpad35, %lpad13
  %call111 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %ss) #6
  br label %ehcleanup113

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1
  %call112 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %escapedPath) #6
  br label %return

ehcleanup113:                                     ; preds = %ehcleanup110, %lpad
  %call114 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %escapedPath) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val115 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val115

return:                                           ; preds = %while.end, %if.then
  %48 = load i1, ptr %retval, align 1
  ret i1 %48
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZN14SymbolResolverC2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %result = alloca %"class.std::__1::basic_stringstream", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %retval, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  invoke void @_Z16ExecShellCommandPKc(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp, ptr noundef nonnull @.str.2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull align 8 dereferenceable(128) %result, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, i32 noundef 24)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #6
  %call10 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %result, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont3
  %call12 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %tobool.not = icmp eq i64 %call12, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont9
  %call14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.3)
          to label %invoke.cont13 unwind label %lpad8

invoke.cont13:                                    ; preds = %if.then
  %call16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %if.end unwind label %lpad8

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #6
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont23, %invoke.cont21, %invoke.cont17, %if.else, %invoke.cont13, %if.then, %invoke.cont3
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call28 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %result) #6
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont9
  %call18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.4)
          to label %invoke.cont17 unwind label %lpad8

invoke.cont17:                                    ; preds = %if.else
  %call20 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call18, ptr noundef %call20)
          to label %invoke.cont21 unwind label %lpad8

invoke.cont21:                                    ; preds = %invoke.cont17
  %call24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call22, ptr noundef nonnull @.str.5)
          to label %invoke.cont23 unwind label %lpad8

invoke.cont23:                                    ; preds = %invoke.cont21
  %call26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %if.end unwind label %lpad8

if.end:                                           ; preds = %invoke.cont23, %invoke.cont13
  %call27 = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %result) #6
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9

ehcleanup:                                        ; preds = %lpad8, %lpad2, %lpad
  %call29 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val30 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val30
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull returned align 8 dereferenceable(128) %this, ptr noundef nonnull align 8 dereferenceable(24) %__s, i32 noundef %__wch) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__wch.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__wch, ptr %__wch.addr, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 128
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 128
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3), ptr %add.ptr, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3), ptr %add.ptr2, align 8
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1), ptr noundef nonnull %__sb_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %this, i64 128
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3), ptr %add.ptr4, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3), ptr %add.ptr5, align 8
  %__sb_6 = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__s.addr, align 8
  %2 = load i32, ptr %__wch.addr, align 4
  %call9 = invoke noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull align 8 dereferenceable(100) %__sb_6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont
  ret ptr %this

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #6
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad7, %lpad
  %9 = getelementptr inbounds i8, ptr %this, i64 128
  %call11 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %9) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %__is, ptr noundef nonnull align 8 dereferenceable(24) %__str) #0 {
entry:
  %vtable = load ptr, ptr %__is, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__is, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_(ptr noundef nonnull align 8 dereferenceable(16) %__is, ptr noundef nonnull align 8 dereferenceable(24) %__str, i8 noundef signext %call)
  ret ptr %call1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str) #0 {
entry:
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__str) #6
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #0 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8
  %vtable = load ptr, ptr %__os, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %0 = load ptr, ptr %__os.addr, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(128) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %this, ptr noundef nonnull @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE) #6
  %0 = getelementptr inbounds i8, ptr %this, i64 128
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #6
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(148) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %0, ptr noundef %__sb)
  %1 = getelementptr inbounds i8, ptr %this, i64 16
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %call3 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  %3 = load ptr, ptr %vtt, align 8
  store ptr %3, ptr %this, align 8
  %4 = getelementptr inbounds ptr, ptr %vtt, i64 5
  %5 = load ptr, ptr %4, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %3, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %5, ptr %add.ptr, align 8
  %6 = getelementptr inbounds ptr, ptr %vtt, i64 6
  %7 = load ptr, ptr %6, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr %7, ptr %add.ptr4, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull returned align 8 dereferenceable(100) %this, ptr noundef nonnull align 8 dereferenceable(24) %__s, i32 noundef %__wch) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull align 8 dereferenceable(100) %this, ptr noundef nonnull align 8 dereferenceable(24) %__s, i32 noundef %__wch)
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(148)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %this) #6
  call void @_ZdlPv(ptr noundef %this) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %this) unnamed_addr #1 align 2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 -16
  %call = tail call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #6
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef %this) unnamed_addr #1 align 2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 -16
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %this) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  %call = tail call noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #6
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef %this) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(136) %this) unnamed_addr #1 align 2 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__18ios_baseE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #4 align 2 {
entry:
  %__sb.addr = alloca ptr, align 8
  store ptr %__sb, ptr %__sb.addr, align 8
  %0 = load ptr, ptr %vtt, align 8
  store ptr %0, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %2 = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %0, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %__gc_ = getelementptr inbounds %"class.std::__1::basic_istream", ptr %this, i64 0, i32 1
  store i64 0, ptr %__gc_, align 8
  %vtable3 = load ptr, ptr %this, align 8
  %vbase.offset.ptr4 = getelementptr i8, ptr %vtable3, i64 -24
  %vbase.offset5 = load i64, ptr %vbase.offset.ptr4, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset5
  %3 = load ptr, ptr %__sb.addr, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %3)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %vtt) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %vtt, align 8
  store ptr %0, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %2 = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %0, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %this, ptr noundef %__sb) #0 align 2 {
entry:
  call void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136) %this, ptr noundef %__sb)
  %__tie_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 1
  store ptr null, ptr %__tie_, align 8
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  store i32 %call, ptr %__fill_, align 8
  ret void
}

declare void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #3 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ERKNS_12basic_stringIcS2_S4_EEj(ptr noundef nonnull returned align 8 dereferenceable(100) %this, ptr noundef nonnull align 8 dereferenceable(24) %__s, i32 noundef %__wch) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__wch.addr = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::allocator", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__s, ptr %__s.addr, align 8
  store i32 %__wch, ptr %__wch.addr, align 4
  %call = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__s) #6
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %__str_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #6
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr null, ptr %__hm_, align 8
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %__wch.addr, align 4
  store i32 %0, ptr %__mode_, align 8
  %1 = load ptr, ptr %__s.addr, align 8
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(100) %this, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_) #6
  %call4 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #6
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(100) %this, ptr noundef nonnull align 8 dereferenceable(24) %__s) #0 align 2 {
entry:
  %__sz = alloca i64, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %__str_, ptr noundef nonnull align 8 dereferenceable(24) %__s)
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr null, ptr %__hm_, align 8
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %__mode_, align 8
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__str_2 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_2) #6
  %__str_4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call5 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_4) #6
  %add.ptr = getelementptr inbounds i8, ptr %call3, i64 %call5
  %__hm_6 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__hm_6, align 8
  %__str_7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_7) #6
  %__str_9 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call10 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_9) #6
  %__hm_11 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__hm_11, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call8, ptr noundef %call10, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__mode_12 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %2 = load i32, ptr %__mode_12, align 8
  %and13 = and i32 %2, 16
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end40, label %if.then15

if.then15:                                        ; preds = %if.end
  %__str_16 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call17 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_16) #6
  store i64 %call17, ptr %__sz, align 8
  %__str_18 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call19 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_18) #6
  %add.ptr20 = getelementptr inbounds i8, ptr %call19, i64 %call17
  %__hm_21 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %add.ptr20, ptr %__hm_21, align 8
  %__str_22 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %__str_23 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call24 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_23) #6
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %__str_22, i64 noundef %call24)
  %__str_25 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_25) #6
  %__str_27 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call28 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_27) #6
  %__str_29 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call30 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_29) #6
  %add.ptr31 = getelementptr inbounds i8, ptr %call28, i64 %call30
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call26, ptr noundef %add.ptr31)
  %__mode_32 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %3 = load i32, ptr %__mode_32, align 8
  %and33 = and i32 %3, 3
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end40, label %while.cond

while.cond:                                       ; preds = %if.then15, %while.body
  %4 = load i64, ptr %__sz, align 8
  %cmp = icmp ugt i64 %4, 2147483647
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef 2147483647)
  %5 = load i64, ptr %__sz, align 8
  %sub = add i64 %5, -2147483647
  store i64 %sub, ptr %__sz, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %6 = load i64, ptr %__sz, align 8
  %cmp36.not = icmp eq i64 %6, 0
  br i1 %cmp36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %while.end
  %7 = load i64, ptr %__sz, align 8
  %conv = trunc i64 %7 to i32
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %conv)
  br label %if.end40

if.end40:                                         ; preds = %if.then15, %if.then37, %while.end, %if.end
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(100) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(100) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(100) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(100) %this) #6
  call void @_ZdlPv(ptr noundef %this) #15
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(ptr noalias sret(%"class.std::__1::fpos") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(100) %this, i64 noundef %__off, i32 noundef %__way, i32 noundef %__wch) unnamed_addr #0 align 2 {
entry:
  %__off.addr = alloca i64, align 8
  %__way.addr = alloca i32, align 4
  %__wch.addr = alloca i32, align 4
  %__hm = alloca i64, align 8
  %__noff = alloca i64, align 8
  store i64 %__off, ptr %__off.addr, align 8
  store i32 %__way, ptr %__way.addr, align 4
  store i32 %__wch, ptr %__wch.addr, align 4
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %__hm_, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %call2, ptr %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %__wch.addr, align 4
  %and = and i32 %1, 24
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

if.end7:                                          ; preds = %if.end
  %2 = load i32, ptr %__wch.addr, align 4
  %and8 = and i32 %2, 24
  %cmp9 = icmp eq i32 %and8, 24
  %3 = load i32, ptr %__way.addr, align 4
  %cmp10 = icmp eq i32 %3, 1
  %or.cond = select i1 %cmp9, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %call12 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

if.end13:                                         ; preds = %if.end7
  %__hm_14 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %4 = load ptr, ptr %__hm_14, align 8
  %cmp15 = icmp eq ptr %4, null
  br i1 %cmp15, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end13
  %__hm_16 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %5 = load ptr, ptr %__hm_16, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call17 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_) #6
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %if.end13, %cond.false
  %cond = phi i64 [ %sub.ptr.sub, %cond.false ], [ 0, %if.end13 ]
  store i64 %cond, ptr %__hm, align 8
  %6 = load i32, ptr %__way.addr, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb32
  ]

sw.bb:                                            ; preds = %cond.end
  store i64 0, ptr %__noff, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %cond.end
  %7 = load i32, ptr %__wch.addr, align 4
  %and19 = and i32 %7, 8
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %sw.bb18
  %call21 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call22 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast23 = ptrtoint ptr %call21 to i64
  %sub.ptr.rhs.cast24 = ptrtoint ptr %call22 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  br label %if.end31

if.else:                                          ; preds = %sw.bb18
  %call26 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call27 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast28 = ptrtoint ptr %call26 to i64
  %sub.ptr.rhs.cast29 = ptrtoint ptr %call27 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then20
  %storemerge = phi i64 [ %sub.ptr.sub30, %if.else ], [ %sub.ptr.sub25, %if.then20 ]
  store i64 %storemerge, ptr %__noff, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %cond.end
  %8 = load i64, ptr %__hm, align 8
  store i64 %8, ptr %__noff, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call33 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

sw.epilog:                                        ; preds = %sw.bb32, %if.end31, %sw.bb
  %9 = load i64, ptr %__off.addr, align 8
  %10 = load i64, ptr %__noff, align 8
  %add = add nsw i64 %10, %9
  store i64 %add, ptr %__noff, align 8
  %cmp34 = icmp slt i64 %add, 0
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %11 = load i64, ptr %__hm, align 8
  %12 = load i64, ptr %__noff, align 8
  %cmp35 = icmp slt i64 %11, %12
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %lor.lhs.false, %sw.epilog
  %call37 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

if.end38:                                         ; preds = %lor.lhs.false
  %13 = load i64, ptr %__noff, align 8
  %cmp39.not = icmp eq i64 %13, 0
  br i1 %cmp39.not, label %if.end57, label %if.then40

if.then40:                                        ; preds = %if.end38
  %14 = load i32, ptr %__wch.addr, align 4
  %and41 = and i32 %14, 8
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end48, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.then40
  %call44 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %land.lhs.true43
  %call47 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

if.end48:                                         ; preds = %land.lhs.true43, %if.then40
  %15 = load i32, ptr %__wch.addr, align 4
  %and49 = and i32 %15, 16
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end57, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end48
  %call52 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %land.lhs.true51
  %call55 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef -1)
  br label %return

if.end57:                                         ; preds = %if.end48, %land.lhs.true51, %if.end38
  %16 = load i32, ptr %__wch.addr, align 4
  %and58 = and i32 %16, 8
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end64, label %if.then60

if.then60:                                        ; preds = %if.end57
  %call61 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call62 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %17 = load i64, ptr %__noff, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call62, i64 %17
  %__hm_63 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %18 = load ptr, ptr %__hm_63, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call61, ptr noundef %add.ptr, ptr noundef %18)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end57
  %19 = load i32, ptr %__wch.addr, align 4
  %and65 = and i32 %19, 16
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.end64
  %call68 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call69 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call68, ptr noundef %call69)
  %20 = load i64, ptr %__noff, align 8
  %conv = trunc i64 %20 to i32
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %conv)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end64
  %21 = load i64, ptr %__noff, align 8
  %call71 = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %agg.result, i64 noundef %21)
  br label %return

return:                                           ; preds = %if.end70, %if.then54, %if.then46, %if.then36, %sw.default, %if.then11, %if.then5
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposB6v15007ENS_4fposI11__mbstate_tEEj(ptr noalias sret(%"class.std::__1::fpos") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(100) %this, ptr noundef %__sp, i32 noundef %__wch) unnamed_addr #0 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__14fposI11__mbstate_tEcvxB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %__sp)
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 4
  %0 = load ptr, ptr %vfn, align 8
  call void %0(ptr sret(%"class.std::__1::fpos") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(100) %this, i64 noundef %call, i32 noundef 0, i32 noundef %__wch)
  ret void
}

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(100) %this) unnamed_addr #0 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %__hm_, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %call2, ptr %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %1 = load i32, ptr %__mode_, align 8
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end20, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_6 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__hm_6, align 8
  %cmp7 = icmp ult ptr %call5, %2
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  %call9 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call10 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_11 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %3 = load ptr, ptr %__hm_11, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call9, ptr noundef %call10, ptr noundef %3)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %call13 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call14 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp15 = icmp ult ptr %call13, %call14
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end12
  %call17 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %4 = load i8, ptr %call17, align 1
  %call18 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %4) #6
  br label %return

if.end20:                                         ; preds = %if.end12, %if.end
  %call21 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  br label %return

return:                                           ; preds = %if.end20, %if.then16
  %storemerge = phi i32 [ %call21, %if.end20 ], [ %call18, %if.then16 ]
  ret i32 %storemerge
}

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(100) %this, i32 noundef %__c) unnamed_addr #3 align 2 {
entry:
  %retval = alloca i32, align 4
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %__hm_, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %call2, ptr %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp6 = icmp ult ptr %call4, %call5
  br i1 %cmp6, label %if.then7, label %if.end27

if.then7:                                         ; preds = %if.end
  %1 = load i32, ptr %__c.addr, align 4
  %call8 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %call9 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %1, i32 noundef %call8) #6
  br i1 %call9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %call11 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call12 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %add.ptr = getelementptr inbounds i8, ptr %call12, i64 -1
  %__hm_13 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__hm_13, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call11, ptr noundef nonnull %add.ptr, ptr noundef %2)
  %3 = load i32, ptr %__c.addr, align 4
  %call14 = call noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %3) #6
  store i32 %call14, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then7
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %4 = load i32, ptr %__mode_, align 8
  %and = and i32 %4, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %if.end15
  %5 = load i32, ptr %__c.addr, align 4
  %call16 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %5) #6
  %call17 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %arrayidx = getelementptr inbounds i8, ptr %call17, i64 -1
  %6 = load i8, ptr %arrayidx, align 1
  %call18 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 noundef signext %call16, i8 noundef signext %6) #6
  br i1 %call18, label %if.then19, label %if.end27

if.then19:                                        ; preds = %lor.lhs.false, %if.end15
  %call20 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call21 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %add.ptr22 = getelementptr inbounds i8, ptr %call21, i64 -1
  %__hm_23 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %7 = load ptr, ptr %__hm_23, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call20, ptr noundef nonnull %add.ptr22, ptr noundef %7)
  %8 = load i32, ptr %__c.addr, align 4
  %call24 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %8) #6
  %call25 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  store i8 %call24, ptr %call25, align 1
  store i32 %8, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false, %if.end
  %call28 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  store i32 %call28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then19, %if.then10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(100) %this, i32 noundef %__c) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %__c.addr = alloca i32, align 4
  %__ninp = alloca i64, align 8
  %__nout = alloca i64, align 8
  %__hm = alloca i64, align 8
  %exn.slot = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  store i32 %__c, ptr %__c.addr, align 4
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %call2 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c, i32 noundef %call) #6
  br i1 %call2, label %if.end50, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast = ptrtoint ptr %call3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %__ninp, align 8
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call6 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp eq ptr %call5, %call6
  br i1 %cmp, label %if.then7, label %if.end32

if.then7:                                         ; preds = %if.then
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %__mode_, align 8
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then7
  %call9 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  store i32 %call9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %call10 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call11 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast12 = ptrtoint ptr %call10 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %call11 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  store i64 %sub.ptr.sub14, ptr %__nout, align 8
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__hm_, align 8
  %call15 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast16 = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast17 = ptrtoint ptr %call15 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  store i64 %sub.ptr.sub18, ptr %__hm, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %__str_, i8 noundef signext 0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %__str_19 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %__str_20 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call21 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_20) #6
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %__str_19, i64 noundef %call21)
          to label %invoke.cont22 unwind label %lpad

invoke.cont22:                                    ; preds = %invoke.cont
  %__str_23 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call24 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_23) #6
  %__str_25 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call26 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_25) #6
  %add.ptr = getelementptr inbounds i8, ptr %call24, i64 %call26
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call24, ptr noundef %add.ptr)
  %2 = load i64, ptr %__nout, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB6v15007El(ptr noundef nonnull align 8 dereferenceable(64) %this, i64 noundef %2)
  %call28 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %3 = load i64, ptr %__hm, align 8
  %add.ptr29 = getelementptr inbounds i8, ptr %call28, i64 %3
  %__hm_30 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %add.ptr29, ptr %__hm_30, align 8
  br label %if.end32

lpad:                                             ; preds = %invoke.cont, %if.end
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %exn = load ptr, ptr %exn.slot, align 8
  %6 = call ptr @__cxa_begin_catch(ptr %exn) #6
  %call31 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  store i32 %call31, ptr %retval, align 4
  call void @__cxa_end_catch()
  br label %return

if.end32:                                         ; preds = %invoke.cont22, %if.then
  %call33 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %add.ptr34 = getelementptr inbounds i8, ptr %call33, i64 1
  store ptr %add.ptr34, ptr %ref.tmp, align 8
  %__hm_35 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007IPcEERKT_S4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__hm_35)
  %7 = load ptr, ptr %call36, align 8
  %__hm_37 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %7, ptr %__hm_37, align 8
  %__mode_38 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %8 = load i32, ptr %__mode_38, align 8
  %and39 = and i32 %8, 8
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end47, label %if.then41

if.then41:                                        ; preds = %if.end32
  %__str_43 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call44 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_43) #6
  %9 = load i64, ptr %__ninp, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %call44, i64 %9
  %__hm_46 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %10 = load ptr, ptr %__hm_46, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %call44, ptr noundef %add.ptr45, ptr noundef %10)
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end32
  %11 = load i32, ptr %__c.addr, align 4
  %call48 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %11) #6
  %call49 = call noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(64) %this, i8 noundef signext %call48)
  store i32 %call49, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %entry
  %12 = load i32, ptr %__c.addr, align 4
  %call51 = call noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %12) #6
  store i32 %call51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.end47, %lpad, %if.then8
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ERKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #7 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #6
  call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007IRKS2_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007IRKS2_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::basic_string<char>::__rep", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, i8 0, i64 24, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %call, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  ret ptr %this
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %call) #6
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__gbeg, ptr noundef %__gnext, ptr noundef %__gend) #3 align 2 {
entry:
  %__binp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 2
  store ptr %__gbeg, ptr %__binp_, align 8
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  store ptr %__gnext, ptr %__ninp_, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  store ptr %__gend, ptr %__einp_, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 align 2 {
entry:
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext 0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %phi.bo = add i64 %call2, -1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %phi.bo, %cond.true ], [ 22, %entry ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__pbeg, ptr noundef %__pend) #3 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  store ptr %__pbeg, ptr %__nout_, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 5
  store ptr %__pbeg, ptr %__bout_, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 7
  store ptr %__pend, ptr %__eout_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %__n) #3 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  %idx.ext = sext i32 %__n to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %__nout_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__is_long_, align 1
  %tobool = icmp slt i8 %bf.load, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %call) #6
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call, i64 0, i32 1
  %0 = load i64, ptr %__size_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__size_, align 1
  %bf.clear = and i8 %bf.load, 127
  %conv = zext i8 %bf.clear to i64
  ret i64 %conv
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef signext) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__cap_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call, i64 0, i32 2
  %bf.load = load i64, ptr %__cap_, align 8
  %bf.clear = and i64 %bf.load, 9223372036854775807
  ret i64 %bf.clear
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(100) %this) unnamed_addr #1 align 2 {
entry:
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_) #6
  %call2 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #6
  ret ptr %this
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  ret ptr %0
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__14fposI11__mbstate_tEC1B6v15007Ex(ptr noundef nonnull returned align 8 dereferenceable(136) %this, i64 noundef %__off) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14fposI11__mbstate_tEC2B6v15007Ex(ptr noundef nonnull align 8 dereferenceable(136) %this, i64 noundef %__off)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %__ninp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__binp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 2
  %0 = load ptr, ptr %__binp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %__bout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 7
  %0 = load ptr, ptr %__eout_, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__14fposI11__mbstate_tEC2B6v15007Ex(ptr noundef nonnull returned align 8 dereferenceable(136) %this, i64 noundef %__off) unnamed_addr #1 align 2 {
entry:
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %this, i8 0, i64 128, i1 false)
  %__off_ = getelementptr inbounds %"class.std::__1::fpos", ptr %this, i64 0, i32 1
  store i64 %__off, ptr %__off_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__14fposI11__mbstate_tEcvxB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__off_ = getelementptr inbounds %"class.std::__1::fpos", ptr %this, i64 0, i32 1
  %0 = load i64, ptr %__off_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #3 align 2 {
entry:
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  %0 = load ptr, ptr %__einp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %__c) #3 align 2 {
entry:
  %conv = zext i8 %__c to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c1, i32 noundef %__c2) #3 align 2 {
entry:
  %cmp = icmp eq i32 %__c1, %__c2
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %__c) #3 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %call1 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c, i32 noundef %call) #6
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %neg = xor i32 %call2, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load i32, ptr %__c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 noundef signext %__c1, i8 noundef signext %__c2) #3 align 2 {
entry:
  %cmp = icmp eq i8 %__c1, %__c2
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %__c) #3 align 2 {
entry:
  %conv = trunc i32 %__c to i8
  ret i8 %conv
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpB6v15007El(ptr noundef nonnull align 8 dereferenceable(64) %this, i64 noundef %__n) #3 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %__n
  store ptr %add.ptr, ptr %__nout_, align 8
  ret void
}

declare void @__cxa_end_catch()

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007IPcEERKT_S4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007IPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(64) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %__c.addr = alloca i8, align 1
  store i8 %__c, ptr %__c.addr, align 1
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 7
  %1 = load ptr, ptr %__eout_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %__c.addr, align 1
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %2) #6
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 13
  %3 = load ptr, ptr %vfn, align 8
  %call2 = call noundef i32 %3(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %call)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %__c.addr, align 1
  %__nout_3 = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %5 = load ptr, ptr %__nout_3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %__nout_3, align 8
  store i8 %4, ptr %5, align 1
  %call4 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %4) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call4, %if.end ], [ %call2, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007IPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #0 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessIPcS1_EclB6v15007ERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %cond-lvalue = select i1 %call, ptr %0, ptr %1
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessIPcS1_EclB6v15007ERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 align 2 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  %cmp = icmp ult ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_(ptr noundef nonnull align 8 dereferenceable(16) %__is, ptr noundef nonnull align 8 dereferenceable(24) %__str, i8 noundef signext %__dlm) #0 personality ptr @__gxx_personality_v0 {
entry:
  %__is.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  %__dlm.addr = alloca i8, align 1
  %__state = alloca i32, align 4
  %__sen = alloca %"class.std::__1::basic_istream<char>::sentry", align 1
  %__extr = alloca i64, align 8
  %__i = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__ch = alloca i8, align 1
  store ptr %__is, ptr %__is.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  store i8 %__dlm, ptr %__dlm.addr, align 1
  store i32 0, ptr %__state, align 4
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b(ptr noundef nonnull align 1 dereferenceable(1) %__sen, ptr noundef nonnull align 8 dereferenceable(16) %__is, i1 noundef zeroext true)
  %call1 = call noundef zeroext i1 @_ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__sen)
  br i1 %call1, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %__str.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  store i64 0, ptr %__extr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont12, %if.then
  %1 = load ptr, ptr %__is.addr, align 8
  %vtable = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call2 = invoke noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  %call4 = invoke noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  store i32 %call4, ptr %__i, align 4
  %call5 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %call6 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call4, i32 noundef %call5) #6
  br i1 %call6, label %if.then7, label %if.end

if.then7:                                         ; preds = %invoke.cont3
  %2 = load i32, ptr %__state, align 4
  %or = or i32 %2, 2
  store i32 %or, ptr %__state, align 4
  br label %while.end

lpad:                                             ; preds = %if.end11, %invoke.cont, %while.cond
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %exn = load ptr, ptr %exn.slot, align 8
  %6 = call ptr @__cxa_begin_catch(ptr %exn) #6
  %7 = load i32, ptr %__state, align 4
  %or22 = or i32 %7, 1
  store i32 %or22, ptr %__state, align 4
  %8 = load ptr, ptr %__is.addr, align 8
  %vtable23 = load ptr, ptr %8, align 8
  %vbase.offset.ptr24 = getelementptr i8, ptr %vtable23, i64 -24
  %vbase.offset25 = load i64, ptr %vbase.offset.ptr24, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %8, i64 %vbase.offset25
  call void @_ZNSt3__18ios_base18__setstate_nothrowB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr26, i32 noundef %or22)
  %9 = load ptr, ptr %__is.addr, align 8
  %vtable29 = load ptr, ptr %9, align 8
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %9, i64 %vbase.offset31
  %call34 = invoke noundef i32 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr32)
          to label %invoke.cont33 unwind label %lpad27

invoke.cont33:                                    ; preds = %lpad
  %and = and i32 %call34, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %invoke.cont33
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad27

if.end:                                           ; preds = %invoke.cont3
  %10 = load i64, ptr %__extr, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %__extr, align 8
  %11 = load i32, ptr %__i, align 4
  %call8 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %11) #6
  store i8 %call8, ptr %__ch, align 1
  %12 = load i8, ptr %__dlm.addr, align 1
  %call9 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 noundef signext %call8, i8 noundef signext %12) #6
  br i1 %call9, label %while.end, label %if.end11

if.end11:                                         ; preds = %if.end
  %13 = load ptr, ptr %__str.addr, align 8
  %14 = load i8, ptr %__ch, align 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef signext %14)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %if.end11
  %15 = load ptr, ptr %__str.addr, align 8
  %call13 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #6
  %call14 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #6
  %cmp = icmp eq i64 %call13, %call14
  br i1 %cmp, label %if.then15, label %while.cond, !llvm.loop !13

if.then15:                                        ; preds = %invoke.cont12
  %16 = load i32, ptr %__state, align 4
  %or16 = or i32 %16, 4
  store i32 %or16, ptr %__state, align 4
  br label %while.end

while.end:                                        ; preds = %if.end, %if.then15, %if.then7
  %17 = load i64, ptr %__extr, align 8
  %cmp18 = icmp eq i64 %17, 0
  br i1 %cmp18, label %if.then19, label %try.cont

if.then19:                                        ; preds = %while.end
  %18 = load i32, ptr %__state, align 4
  %or20 = or i32 %18, 4
  store i32 %or20, ptr %__state, align 4
  br label %try.cont

lpad27:                                           ; preds = %if.then35, %lpad
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = extractvalue { ptr, i32 } %19, 0
  store ptr %20, ptr %exn.slot, align 8
  %21 = extractvalue { ptr, i32 } %19, 1
  store i32 %21, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

if.end36:                                         ; preds = %invoke.cont33
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %while.end, %if.then19, %if.end36
  %22 = load ptr, ptr %__is.addr, align 8
  %vtable38 = load ptr, ptr %22, align 8
  %vbase.offset.ptr39 = getelementptr i8, ptr %vtable38, i64 -24
  %vbase.offset40 = load i64, ptr %vbase.offset.ptr39, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %22, i64 %vbase.offset40
  %23 = load i32, ptr %__state, align 4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr41, i32 noundef %23)
  br label %if.end42

if.end42:                                         ; preds = %try.cont, %entry
  %24 = load ptr, ptr %__is.addr, align 8
  ret ptr %24

eh.resume:                                        ; preds = %lpad27
  %exn43 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn43, 0
  %lpad.val44 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val44

terminate.lpad:                                   ; preds = %lpad27
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #7
  unreachable

unreachable:                                      ; preds = %if.then35
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext %__c) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i8 %__c, ptr %__c.addr, align 1
  call void @_ZNKSt3__18ios_base6getlocEv(ptr nonnull sret(%"class.std::__1::locale") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(136) %this)
  %call = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1
  %call3 = invoke noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(25) %call, i8 noundef signext %0)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #6
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b(ptr noundef nonnull returned align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %0 = load i8, ptr %this, align 1
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i8, align 1
  %ref.tmp4 = alloca i8, align 1
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store i8 0, ptr %ref.tmp, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #6
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store i8 0, ptr %ref.tmp4, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp4) #6
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #0 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #0 align 2 {
entry:
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %__ninp_, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  %1 = load ptr, ptr %__einp_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 10
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef i32 %2(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %return

if.end:                                           ; preds = %entry
  %__ninp_2 = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %3 = load ptr, ptr %__ninp_2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %__ninp_2, align 8
  %4 = load i8, ptr %3, align 1
  %call3 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %4) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call3, %if.end ], [ %call, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__m = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #6
  store i64 %call2, ptr %__m, align 8
  %call3 = call noundef i64 @_ZNSt3__114numeric_limitsImE3maxB6v15007Ev() #6
  %div1 = lshr i64 %call3, 1
  %cmp.not = icmp ugt i64 %call2, %div1
  %0 = load i64, ptr %__m, align 8
  %div52 = lshr i64 %0, 1
  %1 = load i64, ptr %__m, align 8
  %storemerge.in = select i1 %cmp.not, i64 %div52, i64 %1
  %storemerge = add i64 %storemerge.in, -16
  ret i64 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base18__setstate_nothrowB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #3 align 2 {
entry:
  %__state.addr = alloca i32, align 4
  store i32 %__state, ptr %__state.addr, align 4
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__rdbuf_, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %__state.addr, align 4
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %2 = load i32, ptr %__rdstate_, align 8
  %or = or i32 %2, %1
  store i32 %or, ptr %__rdstate_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %__state.addr, align 4
  %or2 = or i32 %3, 1
  %__rdstate_3 = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %4 = load i32, ptr %__rdstate_3, align 8
  %or4 = or i32 %4, %or2
  store i32 %or4, ptr %__rdstate_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #0 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt3__18ios_base10exceptionsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  ret i32 %call
}

declare void @__cxa_rethrow()

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #0 align 2 {
entry:
  call void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %__c1, ptr noundef nonnull align 1 dereferenceable(1) %__c2) #3 align 2 {
entry:
  %0 = load i8, ptr %__c2, align 1
  store i8 %0, ptr %__c1, align 1
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call, i64 0, i32 1
  store i64 %__s, ptr %__size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %cmp = icmp ult i64 %__s, 23
  call void @llvm.assume(i1 %cmp)
  %conv = trunc i64 %__s to i8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__size_, align 1
  %bf.clear = and i8 %bf.load, -128
  %bf.set = or i8 %bf.clear, %conv
  store i8 %bf.set, ptr %__size_, align 1
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call3, i64 0, i32 2
  %bf.load4 = load i8, ptr %__is_long_, align 1
  %bf.clear5 = and i8 %bf.load4, 127
  store i8 %bf.clear5, ptr %__is_long_, align 1
  ret void
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__rdbuf_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorIcE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsImE3maxB6v15007Ev() #3 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB6v15007Ev() #6
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIcE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__18ios_base10exceptionsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__exceptions_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 5
  %0 = load i32, ptr %__exceptions_, align 4
  ret i32 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #0 align 2 {
entry:
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %or = or i32 %0, %__state
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %__l) #0 {
entry:
  %call = call noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %__l, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %call
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 7
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %0(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c)
  ret i8 %call
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %__len) #0 personality ptr @__gxx_personality_v0 {
entry:
  %__os.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store ptr %__os, ptr %__os.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %__s, ptr noundef nonnull align 8 dereferenceable(8) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s)
  br i1 %call3, label %if.then, label %if.end29

if.then:                                          ; preds = %invoke.cont
  %0 = load ptr, ptr %__os.addr, align 8
  %call4 = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  %1 = load ptr, ptr %__str.addr, align 8
  %vtable = load ptr, ptr %0, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call6 = call noundef i32 @_ZNKSt3__18ios_base5flagsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr)
  %and = and i32 %call6, 176
  %cmp = icmp eq i32 %and, 32
  %2 = load ptr, ptr %__str.addr, align 8
  %3 = load i64, ptr %__len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load ptr, ptr %__str.addr, align 8
  %cond = select i1 %cmp, ptr %add.ptr7, ptr %4
  %5 = load ptr, ptr %__str.addr, align 8
  %6 = load i64, ptr %__len.addr, align 8
  %7 = load ptr, ptr %__os.addr, align 8
  %vtable9 = load ptr, ptr %7, align 8
  %vbase.offset.ptr10 = getelementptr i8, ptr %vtable9, i64 -24
  %vbase.offset11 = load i64, ptr %vbase.offset.ptr10, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset11
  %call18 = invoke noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr16)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %if.then
  %add.ptr12 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset11
  %add.ptr8 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = load ptr, ptr %agg.tmp, align 8
  %coerce.val.pi = ptrtoint ptr %8 to i64
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, ptr noundef %1, ptr noundef %cond, ptr noundef %add.ptr8, ptr noundef nonnull align 8 dereferenceable(136) %add.ptr12, i8 noundef signext %call18)
          to label %invoke.cont19 unwind label %lpad1

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.val.ip = inttoptr i64 %call20 to ptr
  store ptr %coerce.val.ip, ptr %ref.tmp, align 8
  %call22 = call noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #6
  br i1 %call22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %invoke.cont19
  %9 = load ptr, ptr %__os.addr, align 8
  %vtable24 = load ptr, ptr %9, align 8
  %vbase.offset.ptr25 = getelementptr i8, ptr %vtable24, i64 -24
  %vbase.offset26 = load i64, ptr %vbase.offset.ptr25, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %9, i64 %vbase.offset26
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr27, i32 noundef 5)
          to label %if.end29 unwind label %lpad1

lpad:                                             ; preds = %entry
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %if.then
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  %call31 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #6
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %16 = call ptr @__cxa_begin_catch(ptr %exn) #6
  %17 = load ptr, ptr %__os.addr, align 8
  %vtable32 = load ptr, ptr %17, align 8
  %vbase.offset.ptr33 = getelementptr i8, ptr %vtable32, i64 -24
  %vbase.offset34 = load i64, ptr %vbase.offset.ptr33, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %17, i64 %vbase.offset34
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr35)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %if.end29, %invoke.cont37
  %18 = load ptr, ptr %__os.addr, align 8
  ret ptr %18

if.end29:                                         ; preds = %invoke.cont19, %if.then23, %invoke.cont
  %call30 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #6
  br label %try.cont

lpad36:                                           ; preds = %catch
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = extractvalue { ptr, i32 } %19, 0
  store ptr %20, ptr %exn.slot, align 8
  %21 = extractvalue { ptr, i32 } %19, 1
  store i32 %21, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        ; preds = %lpad36
  %exn39 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn39, 0
  %lpad.val40 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val40

terminate.lpad:                                   ; preds = %lpad36
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__s) #3 align 2 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %__s) #6
  ret i64 %call
}

declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %0 = load i8, ptr %this, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, ptr noundef %__ob, ptr noundef %__op, ptr noundef %__oe, ptr noundef nonnull align 8 dereferenceable(136) %__iob, i8 noundef signext %__fl) #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca ptr, align 8
  %__op.addr = alloca ptr, align 8
  %__oe.addr = alloca ptr, align 8
  %__iob.addr = alloca ptr, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.val.ip = inttoptr i64 %__s.coerce to ptr
  store ptr %coerce.val.ip, ptr %__s, align 8
  store ptr %__ob, ptr %__ob.addr, align 8
  store ptr %__op, ptr %__op.addr, align 8
  store ptr %__oe, ptr %__oe.addr, align 8
  store ptr %__iob, ptr %__iob.addr, align 8
  store i8 %__fl, ptr %__fl.addr, align 1
  %cmp = icmp eq i64 %__s.coerce, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__s, align 8
  store i64 %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__oe.addr, align 8
  %2 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %__sz, align 8
  %3 = load ptr, ptr %__iob.addr, align 8
  %call = call noundef i64 @_ZNKSt3__18ios_base5widthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %3)
  store i64 %call, ptr %__ns, align 8
  %cmp1 = icmp sgt i64 %call, %sub.ptr.sub
  %4 = load i64, ptr %__sz, align 8
  %5 = load i64, ptr %__ns, align 8
  %sub = sub nsw i64 %5, %4
  %storemerge = select i1 %cmp1, i64 %sub, i64 0
  store i64 %storemerge, ptr %__ns, align 8
  %6 = load ptr, ptr %__op.addr, align 8
  %7 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast5 = ptrtoint ptr %7 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, ptr %__np, align 8
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %8 = load ptr, ptr %__s, align 8
  %9 = load ptr, ptr %__ob.addr, align 8
  %10 = load i64, ptr %__np, align 8
  %call10 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %9, i64 noundef %10)
  %cmp11.not = icmp eq i64 %call10, %10
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.then8
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.then8, %if.end
  %11 = load i64, ptr %__ns, align 8
  %cmp16 = icmp sgt i64 %11, 0
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end15
  %12 = load i64, ptr %__ns, align 8
  %13 = load i8, ptr %__fl.addr, align 1
  %call18 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc(ptr noundef nonnull align 8 dereferenceable(24) %__sp, i64 noundef %12, i8 noundef signext %13)
  %14 = load ptr, ptr %__s, align 8
  %call20 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #6
  %call21 = invoke noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef %call20, i64 noundef %12)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %15 = load i64, ptr %__ns, align 8
  %cmp22.not = icmp eq i64 %call21, %15
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %invoke.cont
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %exn.slot, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %ehselector.slot, align 4
  %call27 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val43 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val43

cleanup:                                          ; preds = %invoke.cont, %if.then23
  %19 = xor i1 %cmp22.not, true
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #6
  switch i1 %19, label %unreachable [
    i1 false, label %if.end28
    i1 true, label %return
  ]

if.end28:                                         ; preds = %cleanup, %if.end15
  %20 = load ptr, ptr %__oe.addr, align 8
  %21 = load ptr, ptr %__op.addr, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %21 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  store i64 %sub.ptr.sub31, ptr %__np, align 8
  %cmp32 = icmp sgt i64 %sub.ptr.sub31, 0
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end28
  %22 = load ptr, ptr %__s, align 8
  %23 = load ptr, ptr %__op.addr, align 8
  %24 = load i64, ptr %__np, align 8
  %call35 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef %23, i64 noundef %24)
  %cmp36.not = icmp eq i64 %call35, %24
  br i1 %cmp36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.then33
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %return

if.end40:                                         ; preds = %if.then33, %if.end28
  %25 = load ptr, ptr %__iob.addr, align 8
  %call41 = call noundef i64 @_ZNSt3__18ios_base5widthB6v15007El(ptr noundef nonnull align 8 dereferenceable(136) %25, i64 noundef 0)
  %26 = load i64, ptr %__s, align 8
  store i64 %26, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end40, %if.then37, %cleanup, %if.then12, %if.then
  %27 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %27 to i64
  ret i64 %coerce.val.pi

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) #6
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__18ios_base5flagsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #0 align 2 {
entry:
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #6
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  %0 = load i32, ptr %__fill_, align 8
  %call2 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call, i32 noundef %0) #6
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext 32)
  %conv = sext i8 %call3 to i32
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  store i32 %conv, ptr %__fill_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %__fill_5, align 8
  %conv6 = trunc i32 %1 to i8
  ret i8 %conv6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %cmp = icmp eq ptr %0, null
  ret i1 %cmp
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__18ios_base5widthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n) #0 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 12
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef i64 %0(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n)
  ret i64 %call
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__18ios_base5widthB6v15007El(ptr noundef nonnull align 8 dereferenceable(136) %this, i64 noundef %__wide) #3 align 2 {
entry:
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  store i64 %__wide, ptr %__width_2, align 8
  ret i64 %0
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #4 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef signext) #2

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %vtable = load ptr, ptr %__s, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__s, i64 %vbase.offset
  %call = invoke noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store ptr %call, ptr %this, align 8
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %call) #6
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %call) #6
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(128) %this, ptr noundef %vtt) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %vtt, align 8
  store ptr %0, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt, i64 8
  %2 = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %0, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %3 = getelementptr inbounds ptr, ptr %vtt, i64 9
  %4 = load ptr, ptr %3, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr %4, ptr %add.ptr3, align 8
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(100) %__sb_) #6
  %5 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call4 = call noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %5) #6
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZN14SymbolResolver16escapeShellParamERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %s, ptr noundef nonnull align 8 dereferenceable(24) %out) #0 align 2 {
entry:
  %out.addr = alloca ptr, align 8
  %__begin1 = alloca %"class.std::__1::__wrap_iter", align 8
  %__end1 = alloca %"class.std::__1::__wrap_iter", align 8
  %c = alloca i8, align 1
  store ptr %out, ptr %out.addr, align 8
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %s) #6
  %add = add i64 %call, 2
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %out, i64 noundef %add)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %out, i8 noundef signext 34)
  %call1 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %s) #6
  %coerce.val.ip = inttoptr i64 %call1 to ptr
  store ptr %coerce.val.ip, ptr %__begin1, align 8
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %s) #6
  %coerce.val.ip4 = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip4, ptr %__end1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call5 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPKcEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin1, ptr noundef nonnull align 8 dereferenceable(8) %__end1) #6
  br i1 %call5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPKcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #6
  %0 = load i8, ptr %call6, align 1
  store i8 %0, ptr %c, align 1
  %cmp = icmp ugt i8 %0, 31
  %1 = load i8, ptr %c, align 1
  %cmp8 = icmp ult i8 %1, 127
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %2 = load i8, ptr %c, align 1
  %cmp11.not = icmp eq i8 %2, 92
  %or.cond1 = select i1 %or.cond.not, i1 true, i1 %cmp11.not
  %3 = load i8, ptr %c, align 1
  %cmp14.not = icmp eq i8 %3, 34
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp14.not
  br i1 %or.cond2, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load i8, ptr %c, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext %5)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef signext 92)
  %7 = load i8, ptr %c, align 1
  switch i8 %7, label %sw.default [
    i8 34, label %sw.bb
    i8 92, label %sw.bb16
    i8 9, label %sw.bb17
    i8 13, label %sw.bb18
    i8 10, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.else
  %8 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef signext 34)
  br label %for.inc

sw.bb16:                                          ; preds = %if.else
  %9 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef signext 92)
  br label %for.inc

sw.bb17:                                          ; preds = %if.else
  %10 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef signext 116)
  br label %for.inc

sw.bb18:                                          ; preds = %if.else
  %11 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 noundef signext 114)
  br label %for.inc

sw.bb19:                                          ; preds = %if.else
  %12 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext 110)
  br label %for.inc

sw.default:                                       ; preds = %if.else
  %13 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef signext 120)
  %14 = load i8, ptr %c, align 1
  %15 = lshr i8 %14, 4
  %idxprom = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds i8, ptr @.str.13, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef signext %16)
  %17 = load ptr, ptr %out.addr, align 8
  %18 = load i8, ptr %c, align 1
  %19 = and i8 %18, 15
  %idxprom22 = zext i8 %19 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr @.str.13, i64 %idxprom22
  %20 = load i8, ptr %arrayidx23, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef signext %20)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %out.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 noundef signext 34)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(128) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 128
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 128
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3), ptr %add.ptr, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3), ptr %add.ptr2, align 8
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1), ptr noundef nonnull %__sb_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %this, i64 128
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3), ptr %add.ptr4, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 16
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3), ptr %add.ptr5, align 8
  %__sb_6 = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  %call9 = invoke noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ej(ptr noundef nonnull align 8 dereferenceable(100) %__sb_6, i32 noundef 24)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #6
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad7, %lpad
  %7 = getelementptr inbounds i8, ptr %this, i64 128
  %call11 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %7) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef nonnull align 8 dereferenceable(24) %__str) #0 {
entry:
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str) #6
  %call1 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str) #6
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %call, i64 noundef %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__16vectorI10FrameEntryNS_9allocatorIS1_EEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %arrayidx = getelementptr inbounds %struct.FrameEntry, ptr %0, i64 %__n
  ret ptr %arrayidx
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRNS_8ios_baseES5_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %call = call noundef nonnull align 8 dereferenceable(136) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt3__13hexERNS_8ios_baseE(ptr noundef nonnull align 8 dereferenceable(136) %__str) #0 {
entry:
  %call = call noundef i32 @_ZNSt3__18ios_base4setfB6v15007Ejj(ptr noundef nonnull align 8 dereferenceable(136) %__str, i32 noundef 8, i32 noundef 74)
  ret ptr %__str
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB6v15007Ev(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(128) %this) #0 align 2 {
entry:
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", ptr %this, i64 0, i32 1
  call void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(100) %__sb_)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  %__rhs_len = alloca i64, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %cmp = icmp ne ptr %__rhs, null
  call void @llvm.assume(i1 %cmp)
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef nonnull %__rhs) #6
  store i64 %call, ptr %__rhs_len, align 8
  %call1 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__lhs) #6
  %cmp2.not = icmp eq i64 %call, %call1
  br i1 %cmp2.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %__lhs.addr, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8
  %2 = load i64, ptr %__rhs_len, align 8
  %call3 = invoke noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef -1, ptr noundef %1, i64 noundef %2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.end
  %cmp4 = icmp eq i32 %call3, 0
  br label %return

return:                                           ; preds = %entry, %invoke.cont
  %storemerge = phi i1 [ %cmp4, %invoke.cont ], [ false, %entry ]
  ret i1 %storemerge

terminate.lpad:                                   ; preds = %if.end
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef %__lhs, ptr noundef nonnull align 8 dereferenceable(24) %__rhs) #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %__rhs, i64 noundef 0, ptr noundef %__lhs)
  %call1 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %call) #6
  ret void
}

declare void @_ZNSt3__19to_stringEy(ptr sret(%"class.std::__1::basic_string") align 8, i64 noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #3 align 2 {
entry:
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB6v15007ERS5_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #6
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #3 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #6
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofB6v15007Ecm(ptr noundef nonnull align 8 dereferenceable(24) %this, i8 noundef signext %__c, i64 noundef %__pos) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(24) %this, i8 noundef signext %__c, i64 noundef %__pos) #6
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__pos, i64 noundef %__n) #0 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__pos, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %call)
  ret void
}

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9push_backB6v15007EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(52) %__x) #0 align 2 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(52) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(52) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN11SymbolEntryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(52) %this) unnamed_addr #1 align 2 {
entry:
  %file.i = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 1
  %call.i = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %file.i) #6
  %call2.i = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNSt3__111__wrap_iterIPKcEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %call) #6
  %0 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call2
  %call3 = call noundef ptr @_ZNSt3__111__wrap_iterIPKcEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %add.ptr) #6
  %0 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPKcEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPKcEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #6
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPKcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKcEC1B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKcEC2B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKcEC2B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPKcEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #6
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #6
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #0 {
entry:
  %__comp = alloca %"struct.std::__1::__less.17", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %__b, ptr noundef nonnull align 8 dereferenceable(8) %__a)
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %cond-lvalue = select i1 %call, ptr %0, ptr %1
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 align 2 {
entry:
  %0 = load i64, ptr %__x, align 8
  %1 = load i64, ptr %__y, align 8
  %cmp = icmp ult i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ej(ptr noundef nonnull returned align 8 dereferenceable(100) %this, i32 noundef %__wch) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ej(ptr noundef nonnull align 8 dereferenceable(100) %this, i32 noundef %__wch)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ej(ptr noundef nonnull returned align 8 dereferenceable(100) %this, i32 noundef %__wch) unnamed_addr #4 align 2 {
entry:
  %__wch.addr = alloca i32, align 4
  store i32 %__wch, ptr %__wch.addr, align 4
  %call = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_) #6
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr null, ptr %__hm_, align 8
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %__wch.addr, align 4
  store i32 %0, ptr %__mode_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__18ios_base4setfB6v15007Ejj(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__fmtfl, i32 noundef %__mask) #0 align 2 {
entry:
  %__r = alloca i32, align 4
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %__fmtflags_, align 8
  store i32 %0, ptr %__r, align 4
  call void @_ZNSt3__18ios_base6unsetfB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__mask)
  %and = and i32 %__fmtfl, %__mask
  %__fmtflags_2 = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %__fmtflags_2, align 8
  %or = or i32 %1, %and
  store i32 %or, ptr %__fmtflags_2, align 8
  %2 = load i32, ptr %__r, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base6unsetfB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__mask) #3 align 2 {
entry:
  %neg = xor i32 %__mask, -1
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %__fmtflags_, align 8
  %and = and i32 %0, %neg
  store i32 %and, ptr %__fmtflags_, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(100) %this) #0 align 2 {
entry:
  %ref.tmp = alloca %"class.std::__1::allocator", align 1
  %ref.tmp14 = alloca %"class.std::__1::allocator", align 1
  %ref.tmp20 = alloca %"class.std::__1::allocator", align 1
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %__mode_, align 8
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__hm_, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %1, %call
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  store ptr %call3, ptr %__hm_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__hm_6 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__hm_6, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_) #6
  %call7 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IPcvEET_S8_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call5, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
  br label %return

if.else:                                          ; preds = %entry
  %__mode_8 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 3
  %3 = load i32, ptr %__mode_8, align 8
  %and9 = and i32 %3, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.else
  %call12 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call13 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %__str_15 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_15) #6
  %call17 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IPcvEET_S8_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call12, ptr noundef %call13, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp14)
  br label %return

if.end19:                                         ; preds = %if.else
  %__str_21 = getelementptr inbounds %"class.std::__1::basic_stringbuf", ptr %this, i64 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str_21) #6
  %call23 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp20) #6
  br label %return

return:                                           ; preds = %if.end19, %if.then11, %if.end
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IPcvEET_S8_RKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IPcvEET_S8_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IPcvEET_S8_RKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__first, ptr noundef %__last)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__first, ptr noundef %__last) #0 align 2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__sz = alloca i64, align 8
  %__p = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result", align 8
  %ref.tmp = alloca i8, align 1
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %call = call noundef i64 @_ZNSt3__18distanceB6v15007IPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %__first, ptr noundef %__last)
  store i64 %call, ptr %__sz, align 8
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %cmp = icmp ugt i64 %call, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__sz, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB6v15007Em(i64 noundef %0)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %1 = load i64, ptr %__sz, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %1) #6
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store ptr %call5, ptr %__p, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %2 = load i64, ptr %__sz, align 8
  %call7 = call noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendB6v15007Em(i64 noundef %2) #6
  %add = add i64 %call7, 1
  %call8 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIcEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %call6, i64 noundef %add)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %__allocation, align 8
  %__allocation.repack1 = getelementptr inbounds [2 x i64], ptr %__allocation, i64 0, i64 1
  %call8.elt2 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt2, ptr %__allocation.repack1, align 8
  %.cast = inttoptr i64 %call8.elt to ptr
  store ptr %.cast, ptr %__p, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i64 0, i32 1
  %3 = load i64, ptr %count, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__begin_lifetimeB6v15007EPcm(ptr noundef %.cast, i64 noundef %3)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerB6v15007EPc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %.cast) #6
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %3) #6
  %4 = load i64, ptr %__sz, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %4) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end10
  %5 = load ptr, ptr %__first.addr, align 8
  %6 = load ptr, ptr %__last.addr, align 8
  %cmp11.not = icmp eq ptr %5, %6
  br i1 %cmp11.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %__p, align 8
  %8 = load ptr, ptr %__first.addr, align 8
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #6
  %9 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  %10 = load ptr, ptr %__p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr12, ptr %__p, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %__p, align 8
  store i8 0, ptr %ref.tmp, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #6
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__18distanceB6v15007IPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %__first, ptr noundef %__last) #0 {
entry:
  %call = call noundef i64 @_ZNSt3__110__distanceB6v15007IPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(ptr noundef %__first, ptr noundef %__last)
  ret i64 %call
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str.14) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB6v15007Em(i64 noundef %__sz) #3 align 2 {
entry:
  %cmp = icmp ult i64 %__sz, 23
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIcEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #0 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIcE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
  store ptr %call, ptr %retval, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i64 0, i32 1
  store i64 %__n, ptr %count, align 8
  %.unpack.cast = ptrtoint ptr %call to i64
  %0 = insertvalue [2 x i64] undef, i64 %.unpack.cast, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendB6v15007Em(i64 noundef %__s) #3 align 2 {
entry:
  %__s.addr = alloca i64, align 8
  %__guess = alloca i64, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %cmp = icmp ult i64 %__s, 23
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__s.addr, align 8
  %add = add i64 %0, 1
  %call = call noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itB6v15007ILm16EEEmm(i64 noundef %add) #6
  %sub = add i64 %call, -1
  store i64 %sub, ptr %__guess, align 8
  %cmp1 = icmp eq i64 %sub, 23
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load i64, ptr %__guess, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %__guess, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i64, ptr %__guess, align 8
  br label %return

return:                                           ; preds = %entry, %if.end3
  %storemerge = phi i64 [ %2, %if.end3 ], [ 22, %entry ]
  ret i64 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__begin_lifetimeB6v15007EPcm(ptr noundef %__begin, i64 noundef %__n) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerB6v15007EPc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store ptr %__p, ptr %call, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__cap_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call, i64 0, i32 2
  %bf.load = load i64, ptr %__cap_, align 8
  %bf.value = and i64 %__s, 9223372036854775807
  %bf.clear = and i64 %bf.load, -9223372036854775808
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %__cap_, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call3, i64 0, i32 2
  %bf.load4 = load i64, ptr %__is_long_, align 8
  %bf.set6 = or i64 %bf.load4, -9223372036854775808
  store i64 %bf.set6, ptr %__is_long_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__110__distanceB6v15007IPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(ptr noundef %__first, ptr noundef %__last) #3 {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #12 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %exception = call ptr @__cxa_allocate_exception(i64 16) #6
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %__msg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #16
  unreachable

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  ret ptr %this
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #0 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %0, i64 noundef 1)
  ret ptr %call2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #12 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #6
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #6
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #0 {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #6
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__align.addr, align 8
  %1 = load i64, ptr %__size.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %1, i64 noundef %0)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__size.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call2, %if.end ], [ %call1, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #3 {
entry:
  %cmp = icmp ugt i64 %__align, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #0 {
entry:
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %__args, i64 noundef %__args1) #17
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %__args1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #0 {
entry:
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %__args) #17
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #13

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itB6v15007ILm16EEEmm(i64 noundef %__s) #3 align 2 {
entry:
  %add = add i64 %__s, 15
  %and = and i64 %add, -16
  ret i64 %and
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN11SymbolEntryC2Ev(ptr noundef nonnull returned align 8 dereferenceable(52) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %file = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %file) #6
  %line = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 2
  store i32 0, ptr %line, align 8
  ret ptr %this
}

declare noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB6v15007ERS5_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #3 align 2 {
entry:
  %__str.addr = alloca ptr, align 8
  %ref.tmp = alloca i8, align 1
  store ptr %__str, ptr %__str.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call4 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB6v15007ERS2_Pcm(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, i64 noundef %call4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %__str.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15007ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  %call5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  %call7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %call7, ptr noundef nonnull align 8 dereferenceable(24) %call5, i64 24, i1 false)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) #6
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  store i8 0, ptr %ref.tmp, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(ptr noundef nonnull align 1 dereferenceable(1) %call8, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB6v15007ERS2_Pcm(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  call void @_ZNSt3__19allocatorIcE10deallocateB6v15007EPcm(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15007ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #3 align 2 {
entry:
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15007ERS5_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIcE10deallocateB6v15007EPcm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %__n, i64 noundef 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #0 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #6
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__align.addr, align 8
  %1 = load ptr, ptr %__ptr.addr, align 8
  %2 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %1, i64 noundef %2, i64 noundef %0)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %3, i64 noundef %4)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #0 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__ptr, i64 noundef %__args)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #0 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__ptr)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #3 {
entry:
  call void @_ZdlPvSt11align_val_t(ptr noundef %__args, i64 noundef %__args1) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #3 {
entry:
  call void @_ZdlPv(ptr noundef %__args) #15
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB6v15007ERS5_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__c) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__c) #6
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext, i64 noundef) #5

declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_(ptr noundef nonnull returned align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(52) %__args) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %0) #6
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(52) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #6
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(52) %__x) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__x.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__x, ptr %__x.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %0) #6
  %1 = load ptr, ptr %__x.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(52) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #6
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #6
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(52) %__args) #0 align 2 {
entry:
  call void @_ZNSt3__19allocatorI11SymbolEntryE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(52) %__args)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__v, ptr %this, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %__v, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector.10", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %2, i64 %3
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorI11SymbolEntryE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(52) %__args) #3 align 2 {
entry:
  %call = call noundef ptr @_ZN11SymbolEntryC1EOS_(ptr noundef nonnull align 8 dereferenceable(52) %__p, ptr noundef nonnull align 8 dereferenceable(52) %__args) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN11SymbolEntryC1EOS_(ptr noundef nonnull returned align 8 dereferenceable(52) %this, ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZN11SymbolEntryC2EOS_(ptr noundef nonnull align 8 dereferenceable(52) %this, ptr noundef nonnull align 8 dereferenceable(52) %0) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN11SymbolEntryC2EOS_(ptr noundef nonnull returned align 8 dereferenceable(52) %this, ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  %file = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 1
  %file3 = getelementptr inbounds %struct.SymbolEntry, ptr %0, i64 0, i32 1
  %call4 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %file, ptr noundef nonnull align 8 dereferenceable(24) %file3) #6
  %line = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 2
  %line5 = getelementptr inbounds %struct.SymbolEntry, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %line5, align 8
  store i32 %1, ptr %line, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI11SymbolEntryEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI11SymbolEntryEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<SymbolEntry>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %1 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %1, i64 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #0 align 2 {
entry:
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  store i64 %call2, ptr %__cap, align 8
  %1 = load i64, ptr %__ms, align 8
  %div1 = lshr i64 %1, 1
  %cmp3.not = icmp ult i64 %call2, %div1
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load i64, ptr %__ms, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load i64, ptr %__cap, align 8
  %mul = shl i64 %3, 1
  store i64 %mul, ptr %ref.tmp, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__new_size.addr)
  %4 = load i64, ptr %call6, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %storemerge = phi i64 [ %4, %if.end5 ], [ %2, %if.then4 ]
  ret i64 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  ret i64 %sub.ptr.div
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #0 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__v, ptr %__v.addr, align 8
  call void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %__end_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %1 = load ptr, ptr %this, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack2, 1
  %.unpack3 = load i64, ptr %agg.tmp3, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp3, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack5, 1
  %.unpack6 = load i64, ptr %agg.tmp5, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack6, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp5, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %9 = insertvalue [2 x i64] %8, i64 %.unpack8, 1
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EES6_S6_EET2_RT_T0_T1_S7_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %5, [2 x i64] %7, [2 x i64] %9)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call8.elt10 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt10, ptr %ref.tmp.repack9, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IP11SymbolEntryEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #6
  %__end_13 = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 1
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 2
  call void @_ZNSt3__14swapB6v15007IP11SymbolEntryEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #6
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %11 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #6
  call void @_ZNSt3__14swapB6v15007IP11SymbolEntryEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #6
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  store ptr %12, ptr %11, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  call void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call18) #6
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorI11SymbolEntryNS_9allocatorIS2_EEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %call) #6
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #6
  store i64 %call4, ptr %ref.tmp3, align 8
  %call5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i64, ptr %call5, align 8
  ret i64 %0

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #7
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str.15) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #0 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorI11SymbolEntryE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #3 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #6
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorI11SymbolEntryE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret i64 329406144173384850
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorI11SymbolEntryEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorI11SymbolEntryEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.10", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #3 {
entry:
  %__comp = alloca %"struct.std::__1::__less.17", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %cond-lvalue = select i1 %call, ptr %0, ptr %1
  ret ptr %cond-lvalue
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
entry:
  %retval = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result.20", align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %this, ptr %retval, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  %cmp = icmp eq i64 %__cap, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %this, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  %0 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorI11SymbolEntryEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %0)
  %call3.elt = extractvalue [2 x i64] %call3, 0
  store i64 %call3.elt, ptr %__allocation, align 8
  %__allocation.repack1 = getelementptr inbounds [2 x i64], ptr %__allocation, i64 0, i64 1
  %call3.elt2 = extractvalue [2 x i64] %call3, 1
  store i64 %call3.elt2, ptr %__allocation.repack1, align 8
  %.cast = inttoptr i64 %call3.elt to ptr
  store ptr %.cast, ptr %this, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.20", ptr %__allocation, i64 0, i32 1
  %1 = load i64, ptr %count, align 8
  store i64 %1, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %this, align 8
  %3 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %2, i64 %3
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.SymbolEntry, ptr %4, i64 %5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  store ptr %add.ptr7, ptr %call8, align 8
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorI11SymbolEntryEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #0 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result.20", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorI11SymbolEntryE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
  store ptr %call, ptr %retval, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.20", ptr %retval, i64 0, i32 1
  store i64 %__n, ptr %count, align 8
  %.unpack.cast = ptrtoint ptr %call to i64
  %0 = insertvalue [2 x i64] undef, i64 %.unpack.cast, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorI11SymbolEntryEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorI11SymbolEntryEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr %__u, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorI11SymbolEntryE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #0 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this) #6
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 56
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorI11SymbolEntryEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorI11SymbolEntryEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call3 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call5 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr6 = getelementptr inbounds %struct.SymbolEntry, ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call8 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr9 = getelementptr inbounds %struct.SymbolEntry, ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #6
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EES6_S6_EET2_RT_T0_T1_S7_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__first1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__last1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first2 = alloca %"class.std::__1::reverse_iterator", align 8
  %__alloc.addr = alloca ptr, align 8
  %__destruct_first = alloca %"class.std::__1::reverse_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::_AllocatorDestroyRangeReverse", align 8
  %__first1.coerce.elt = extractvalue [2 x i64] %__first1.coerce, 0
  store i64 %__first1.coerce.elt, ptr %__first1, align 8
  %__first1.repack1 = getelementptr inbounds [2 x i64], ptr %__first1, i64 0, i64 1
  %__first1.coerce.elt2 = extractvalue [2 x i64] %__first1.coerce, 1
  store i64 %__first1.coerce.elt2, ptr %__first1.repack1, align 8
  %__last1.coerce.elt = extractvalue [2 x i64] %__last1.coerce, 0
  store i64 %__last1.coerce.elt, ptr %__last1, align 8
  %__last1.repack3 = getelementptr inbounds [2 x i64], ptr %__last1, i64 0, i64 1
  %__last1.coerce.elt4 = extractvalue [2 x i64] %__last1.coerce, 1
  store i64 %__last1.coerce.elt4, ptr %__last1.repack3, align 8
  %__first2.coerce.elt = extractvalue [2 x i64] %__first2.coerce, 0
  store i64 %__first2.coerce.elt, ptr %__first2, align 8
  %__first2.repack5 = getelementptr inbounds [2 x i64], ptr %__first2, i64 0, i64 1
  %__first2.coerce.elt6 = extractvalue [2 x i64] %__first2.coerce, 1
  store i64 %__first2.coerce.elt6, ptr %__first2.repack5, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont4, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IP11SymbolEntryS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %try.cont

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIP11SymbolEntryEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #6
  %call3 = call noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(52) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
  br label %while.cond, !llvm.loop !15

lpad:                                             ; preds = %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #6
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %lpad
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad9

lpad9:                                            ; preds = %invoke.cont12, %invoke.cont10, %lpad
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

try.cont:                                         ; preds = %invoke.cont
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %10 = insertvalue [2 x i64] %9, i64 %.unpack8, 1
  ret [2 x i64] %10

eh.resume:                                        ; preds = %lpad9
  %exn14 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn14, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  call void @__clang_call_terminate(ptr %12) #7
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC1B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC2B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IP11SymbolEntryEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  store ptr %1, ptr %__x, align 8
  store ptr %0, ptr %__y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #3 align 2 {
entry:
  %__current_size.addr = alloca i64, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call2 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call3 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %call5 = call noundef i64 @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %add.ptr6 = getelementptr inbounds %struct.SymbolEntry, ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %struct.SymbolEntry, ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorI11SymbolEntryNS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorI11SymbolEntryNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %0) #6
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IP11SymbolEntryS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #0 {
entry:
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__x)
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__y)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIP11SymbolEntryEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIP11SymbolEntryEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %0, i64 -1
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %0, i64 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #0 align 2 {
entry:
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.22", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.22", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator", align 8
  %0 = load ptr, ptr %this, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp2, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack2, 1
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %3)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp4, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.unpack3 = load i64, ptr %agg.tmp4, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp4, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack5, 1
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %6)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorI11SymbolEntryEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %agg.tmp, ptr noundef nonnull %agg.tmp3)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIP11SymbolEntryEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %call) #6
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #0 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorI11SymbolEntryEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
entry:
  store ptr %__alloc, ptr %this, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  store ptr %__first, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 2
  store ptr %__last, ptr %__last_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorI11SymbolEntryEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #0 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIP11SymbolEntryEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IP11SymbolEntryEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #6
  call void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEC1B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEC2B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIP11SymbolEntryEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #0 {
entry:
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__y, ptr %__y.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__x)
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call.elt2 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt2, ptr %ref.tmp.repack1, align 8
  %0 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %call2.elt = extractvalue [2 x i64] %call2, 0
  store i64 %call2.elt, ptr %ref.tmp1, align 8
  %ref.tmp1.repack3 = getelementptr inbounds [2 x i64], ptr %ref.tmp1, i64 0, i64 1
  %call2.elt4 = extractvalue [2 x i64] %call2, 1
  store i64 %call2.elt4, ptr %ref.tmp1.repack3, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IP11SymbolEntryS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #0 align 2 {
entry:
  call void @_ZNSt3__19allocatorI11SymbolEntryE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IP11SymbolEntryEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IP11SymbolEntryEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.22", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.22", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorI11SymbolEntryE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  %call = call noundef ptr @_ZN11SymbolEntryD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %__p) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IP11SymbolEntryEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef %call) #6
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 align 2 {
entry:
  %__tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.22", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__tmp, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(52) ptr @_ZNKSt3__116reverse_iteratorIP11SymbolEntryEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IP11SymbolEntryEEEC2B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %__x.coerce.elt = extractvalue [2 x i64] %__x.coerce, 0
  store i64 %__x.coerce.elt, ptr %__x, align 8
  %__x.repack1 = getelementptr inbounds [2 x i64], ptr %__x, i64 0, i64 1
  %__x.coerce.elt2 = extractvalue [2 x i64] %__x.coerce, 1
  store i64 %__x.coerce.elt2, ptr %__x.repack1, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.22", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__t, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.22", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %current, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIP11SymbolEntryEC2B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  store ptr %__x, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  %0 = load ptr, ptr %this, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  %1 = load ptr, ptr %this, align 8
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %0) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  call void @_ZNSt3__19allocatorI11SymbolEntryE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  call void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #6
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__end_, align 8
  %cmp.not = icmp eq ptr %0, %1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %struct.SymbolEntry, ptr %2, i64 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I11SymbolEntryEEPT_S3_(ptr noundef nonnull %incdec.ptr) #6
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI11SymbolEntryEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorI11SymbolEntryE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = mul i64 %__n, 56
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferI11SymbolEntryRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP11SymbolEntryRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP11SymbolEntryLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN11SymbolEntryD2Ev(ptr noundef nonnull returned align 8 dereferenceable(52) %this) unnamed_addr #1 align 2 {
entry:
  %file = getelementptr inbounds %struct.SymbolEntry, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %file) #6
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007EOS5_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  store ptr %this, ptr %retval, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str, i64 24, i1 false)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %__str.addr, align 8
  call void @_ZNSt3__115__debug_db_swapB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_S8_(ptr noundef nonnull %this, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115__debug_db_swapB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_S8_(ptr noundef %__lhs, ptr noundef %__rhs) #3 {
entry:
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2B6v15007ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__d) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1B6v15007IRS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 8 dereferenceable(8) %__d)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1B6v15007IRS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2B6v15007IRS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2B6v15007IRS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #1 align 2 {
entry:
  call void @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetB6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef null) #6
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetB6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tmp = alloca ptr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  store ptr %__p, ptr %call3, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6
  %1 = load ptr, ptr %call5, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %call6 = invoke noundef i32 %1(ptr noundef %2)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  %cmp = icmp ne ptr %__s, null
  call void @llvm.assume(i1 %cmp)
  %call3 = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef nonnull %__s) #6
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %__s, i64 noundef %call3)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn }
attributes #10 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
