; ModuleID = './out/real_signal_run_all/rewritten_ir/student_deep_forest/source_snapshot_public_repos_zlib_contrib_iostream3_test.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/contrib/iostream3/test.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%class.gzofstream = type { %"class.std::__1::basic_ostream.base", %class.gzfilebuf, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%class.gzfilebuf = type <{ %"class.std::__1::basic_streambuf", ptr, i32, i8, [3 x i8], ptr, i64, i8, [7 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%class.gzifstream = type { %"class.std::__1::basic_istream.base", %class.gzfilebuf, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%class.gzomanip2 = type { ptr, i32, i32 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::ostreambuf_iterator" = type { ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }

@.str = private unnamed_addr constant [13 x i8] c"test1.txt.gz\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"The quick brown fox sidestepped the lazy canine\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0APlan \00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [75 x i8] c"Wrote the following message to 'test1.txt.gz' (check with zcat or zless):\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\0AReading 'test1.txt.gz' (buffered) produces:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\09(\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" chars left in buffer)\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"test2.txt.gz\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\0AWrote the same message to 'test2.txt.gz' in uncompressed form\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"\0AReading 'test2.txt.gz' (unbuffered) produces:\0A\00", align 1
@_ZTV10gzifstream = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 120 to ptr), ptr null, ptr @_ZTI10gzifstream, ptr @_ZN10gzifstreamD1Ev, ptr @_ZN10gzifstreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -120 to ptr), ptr inttoptr (i64 -120 to ptr), ptr @_ZTI10gzifstream, ptr @_ZTv0_n24_N10gzifstreamD1Ev, ptr @_ZTv0_n24_N10gzifstreamD0Ev] }, align 8
@_ZTT10gzifstream = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 1, i32 3)], align 8
@_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 120 to ptr), ptr null, ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -120 to ptr), ptr inttoptr (i64 -120 to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS10gzifstream = linkonce_odr hidden constant [13 x i8] c"10gzifstream\00", align 1
@_ZTI10gzifstream = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTS10gzifstream to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE }, align 8
@_ZTV10gzofstream = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTI10gzofstream, ptr @_ZN10gzofstreamD1Ev, ptr @_ZN10gzofstreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTI10gzofstream, ptr @_ZTv0_n24_N10gzofstreamD1Ev, ptr @_ZTv0_n24_N10gzofstreamD0Ev] }, align 8
@_ZTT10gzofstream = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 1, i32 3)], align 8
@_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTS10gzofstream = linkonce_odr hidden constant [13 x i8] c"10gzofstream\00", align 1
@_ZTI10gzofstream = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTS10gzofstream to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress norecurse ssp uwtable
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %outf = alloca %class.gzofstream, align 8
  %inf = alloca %class.gzifstream, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %buf = alloca [80 x i8], align 1
  %ref.tmp = alloca %class.gzomanip2, align 8
  %call = call noundef ptr @_ZN10gzofstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %outf)
  %call1 = invoke noundef ptr @_ZN10gzifstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %inf)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %outf, ptr noundef nonnull @.str, i32 noundef 16)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %call5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %outf, ptr noundef nonnull @.str.1)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  %call7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %call5, double noundef 1.300000e+00)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %invoke.cont4
  %call9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call7, ptr noundef nonnull @.str.2)
          to label %invoke.cont8 unwind label %lpad2

invoke.cont8:                                     ; preds = %invoke.cont6
  %call11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %call9, i32 noundef 9)
          to label %invoke.cont10 unwind label %lpad2

invoke.cont10:                                    ; preds = %invoke.cont8
  %call13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %call11, ptr noundef nonnull @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %invoke.cont12 unwind label %lpad2

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @_ZN10gzofstream5closeEv(ptr noundef nonnull align 8 dereferenceable(112) %outf)
          to label %invoke.cont14 unwind label %lpad2

invoke.cont14:                                    ; preds = %invoke.cont12
  %call16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.3)
          to label %invoke.cont15 unwind label %lpad2

invoke.cont15:                                    ; preds = %invoke.cont14
  %call18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call16, ptr noundef nonnull @.str.1)
          to label %invoke.cont17 unwind label %lpad2

invoke.cont17:                                    ; preds = %invoke.cont15
  %call20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %call18, double noundef 1.300000e+00)
          to label %invoke.cont19 unwind label %lpad2

invoke.cont19:                                    ; preds = %invoke.cont17
  %call22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull @.str.2)
          to label %invoke.cont21 unwind label %lpad2

invoke.cont21:                                    ; preds = %invoke.cont19
  %call24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %call22, i32 noundef 9)
          to label %invoke.cont23 unwind label %lpad2

invoke.cont23:                                    ; preds = %invoke.cont21
  %call26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %invoke.cont25 unwind label %lpad2

invoke.cont25:                                    ; preds = %invoke.cont23
  %call28 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.4)
          to label %invoke.cont27 unwind label %lpad2

invoke.cont27:                                    ; preds = %invoke.cont25
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %inf, ptr noundef nonnull @.str, i32 noundef 8)
          to label %while.cond unwind label %lpad2

while.cond:                                       ; preds = %invoke.cont43, %invoke.cont27
  %call31 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %inf, ptr noundef nonnull %buf, i64 noundef 80, i8 noundef signext 10)
          to label %invoke.cont30 unwind label %lpad2

invoke.cont30:                                    ; preds = %while.cond
  %vtable = load ptr, ptr %call31, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call31, i64 %vbase.offset
  %call33 = invoke noundef zeroext i1 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr)
          to label %invoke.cont32 unwind label %lpad2

invoke.cont32:                                    ; preds = %invoke.cont30
  br i1 %call33, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont32
  %call36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull %buf)
          to label %invoke.cont35 unwind label %lpad2

invoke.cont35:                                    ; preds = %while.body
  %call38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call36, ptr noundef nonnull @.str.5)
          to label %invoke.cont37 unwind label %lpad2

invoke.cont37:                                    ; preds = %invoke.cont35
  %call40 = call noundef ptr @_ZNK10gzifstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(120) %inf)
  %call42 = invoke noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %call40)
          to label %invoke.cont41 unwind label %lpad2

invoke.cont41:                                    ; preds = %invoke.cont37
  %call44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8) %call38, i64 noundef %call42)
          to label %invoke.cont43 unwind label %lpad2

invoke.cont43:                                    ; preds = %invoke.cont41
  %call46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @.str.6)
          to label %while.cond unwind label %lpad2, !llvm.loop !6

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %while.end101, %invoke.cont97, %invoke.cont95, %invoke.cont91, %invoke.cont89, %while.body87, %invoke.cont79, %while.cond77, %invoke.cont74, %invoke.cont70, %invoke.cont68, %invoke.cont67, %invoke.cont65, %invoke.cont63, %invoke.cont61, %invoke.cont59, %invoke.cont57, %invoke.cont55, %invoke.cont53, %invoke.cont52, %invoke.cont50, %invoke.cont47, %while.end, %invoke.cont43, %invoke.cont41, %invoke.cont37, %invoke.cont35, %while.body, %invoke.cont30, %while.cond, %invoke.cont27, %invoke.cont25, %invoke.cont23, %invoke.cont21, %invoke.cont19, %invoke.cont17, %invoke.cont15, %invoke.cont14, %invoke.cont12, %invoke.cont10, %invoke.cont8, %invoke.cont6, %invoke.cont4, %invoke.cont3, %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call104 = call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %inf) #11
  br label %ehcleanup

while.end:                                        ; preds = %invoke.cont32
  invoke void @_ZN10gzifstream5closeEv(ptr noundef nonnull align 8 dereferenceable(120) %inf)
          to label %invoke.cont47 unwind label %lpad2

invoke.cont47:                                    ; preds = %while.end
  %call49 = call noundef ptr @_ZNK10gzofstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(112) %outf)
  %call51 = invoke noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufB6v15007EPcl(ptr noundef nonnull align 8 dereferenceable(64) %call49, ptr noundef null, i64 noundef 0)
          to label %invoke.cont50 unwind label %lpad2

invoke.cont50:                                    ; preds = %invoke.cont47
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %outf, ptr noundef nonnull @.str.7, i32 noundef 16)
          to label %invoke.cont52 unwind label %lpad2

invoke.cont52:                                    ; preds = %invoke.cont50
  %call54 = invoke [2 x i64] @_Z14setcompressionii(i32 noundef 0, i32 noundef 0)
          to label %invoke.cont53 unwind label %lpad2

invoke.cont53:                                    ; preds = %invoke.cont52
  %call54.elt = extractvalue [2 x i64] %call54, 0
  store i64 %call54.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call54.elt2 = extractvalue [2 x i64] %call54, 1
  store i64 %call54.elt2, ptr %ref.tmp.repack1, align 8
  %call56 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZlsIiiER10gzofstreamS1_RK9gzomanip2IT_T0_E(ptr noundef nonnull align 8 dereferenceable(112) %outf, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
          to label %invoke.cont55 unwind label %lpad2

invoke.cont55:                                    ; preds = %invoke.cont53
  %call58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call56, ptr noundef nonnull @.str.1)
          to label %invoke.cont57 unwind label %lpad2

invoke.cont57:                                    ; preds = %invoke.cont55
  %call60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %call58, double noundef 1.300000e+00)
          to label %invoke.cont59 unwind label %lpad2

invoke.cont59:                                    ; preds = %invoke.cont57
  %call62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str.2)
          to label %invoke.cont61 unwind label %lpad2

invoke.cont61:                                    ; preds = %invoke.cont59
  %call64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %call62, i32 noundef 9)
          to label %invoke.cont63 unwind label %lpad2

invoke.cont63:                                    ; preds = %invoke.cont61
  %call66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %call64, ptr noundef nonnull @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %invoke.cont65 unwind label %lpad2

invoke.cont65:                                    ; preds = %invoke.cont63
  invoke void @_ZN10gzofstream5closeEv(ptr noundef nonnull align 8 dereferenceable(112) %outf)
          to label %invoke.cont67 unwind label %lpad2

invoke.cont67:                                    ; preds = %invoke.cont65
  %call69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.8)
          to label %invoke.cont68 unwind label %lpad2

invoke.cont68:                                    ; preds = %invoke.cont67
  %call71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.9)
          to label %invoke.cont70 unwind label %lpad2

invoke.cont70:                                    ; preds = %invoke.cont68
  %call73 = call noundef ptr @_ZNK10gzifstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(120) %inf)
  %call75 = invoke noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufB6v15007EPcl(ptr noundef nonnull align 8 dereferenceable(64) %call73, ptr noundef null, i64 noundef 0)
          to label %invoke.cont74 unwind label %lpad2

invoke.cont74:                                    ; preds = %invoke.cont70
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %inf, ptr noundef nonnull @.str.7, i32 noundef 8)
          to label %while.cond77 unwind label %lpad2

while.cond77:                                     ; preds = %invoke.cont97, %invoke.cont74
  %call80 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %inf, ptr noundef nonnull %buf, i64 noundef 80, i8 noundef signext 10)
          to label %invoke.cont79 unwind label %lpad2

invoke.cont79:                                    ; preds = %while.cond77
  %vtable81 = load ptr, ptr %call80, align 8
  %vbase.offset.ptr82 = getelementptr i8, ptr %vtable81, i64 -24
  %vbase.offset83 = load i64, ptr %vbase.offset.ptr82, align 8
  %add.ptr84 = getelementptr inbounds i8, ptr %call80, i64 %vbase.offset83
  %call86 = invoke noundef zeroext i1 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr84)
          to label %invoke.cont85 unwind label %lpad2

invoke.cont85:                                    ; preds = %invoke.cont79
  br i1 %call86, label %while.body87, label %while.end101

while.body87:                                     ; preds = %invoke.cont85
  %call90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull %buf)
          to label %invoke.cont89 unwind label %lpad2

invoke.cont89:                                    ; preds = %while.body87
  %call92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call90, ptr noundef nonnull @.str.5)
          to label %invoke.cont91 unwind label %lpad2

invoke.cont91:                                    ; preds = %invoke.cont89
  %call94 = call noundef ptr @_ZNK10gzifstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(120) %inf)
  %call96 = invoke noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %call94)
          to label %invoke.cont95 unwind label %lpad2

invoke.cont95:                                    ; preds = %invoke.cont91
  %call98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8) %call92, i64 noundef %call96)
          to label %invoke.cont97 unwind label %lpad2

invoke.cont97:                                    ; preds = %invoke.cont95
  %call100 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call98, ptr noundef nonnull @.str.6)
          to label %while.cond77 unwind label %lpad2, !llvm.loop !8

while.end101:                                     ; preds = %invoke.cont85
  invoke void @_ZN10gzifstream5closeEv(ptr noundef nonnull align 8 dereferenceable(120) %inf)
          to label %invoke.cont102 unwind label %lpad2

invoke.cont102:                                   ; preds = %while.end101
  %call103 = call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %inf) #11
  %call105 = call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %outf) #11
  ret i32 0

ehcleanup:                                        ; preds = %lpad2, %lpad
  %call106 = call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %outf) #11
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val107 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val107
}

declare noundef ptr @_ZN10gzofstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(112)) unnamed_addr #1

declare noundef ptr @_ZN10gzifstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(120)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str) #2 {
entry:
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__str) #11
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %call)
  ret ptr %call1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15007EPFRS3_S4_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #2 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #2 {
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

declare void @_ZN10gzofstream5closeEv(ptr noundef nonnull align 8 dereferenceable(112)) #1

declare void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #2 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNK10gzifstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(120) %this) #3 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  ret ptr %sb
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #2 align 2 {
entry:
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %__ninp_, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  %1 = load ptr, ptr %__einp_, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__einp_2 = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  %2 = load ptr, ptr %__einp_2, align 8
  %__ninp_3 = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %3 = load ptr, ptr %__ninp_3, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

if.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 7
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i64 [ %call, %if.end ], [ %sub.ptr.sub, %if.then ]
  ret i64 %storemerge
}

declare void @_ZN10gzifstream5closeEv(ptr noundef nonnull align 8 dereferenceable(120)) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNK10gzofstream5rdbufEv(ptr noundef nonnull align 8 dereferenceable(112) %this) #3 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  ret ptr %sb
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufB6v15007EPcl(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef ptr %0(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_ZlsIiiER10gzofstreamS1_RK9gzomanip2IT_T0_E(ptr noundef nonnull align 8 dereferenceable(112) %s, ptr noundef nonnull align 8 dereferenceable(16) %m) #2 {
entry:
  %0 = load ptr, ptr %m, align 8
  %val1 = getelementptr inbounds %class.gzomanip2, ptr %m, i64 0, i32 1
  %1 = load i32, ptr %val1, align 8
  %val2 = getelementptr inbounds %class.gzomanip2, ptr %m, i64 0, i32 2
  %2 = load i32, ptr %val2, align 4
  %call = call noundef nonnull align 8 dereferenceable(112) ptr %0(ptr noundef nonnull align 8 dereferenceable(112) %s, i32 noundef %1, i32 noundef %2)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr [2 x i64] @_Z14setcompressionii(i32 noundef %l, i32 noundef %s) #2 {
entry:
  %retval = alloca %class.gzomanip2, align 8
  %call = call noundef ptr @_ZN9gzomanip2IiiEC1EPFR10gzofstreamS2_iiEii(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull @_Z14setcompressionR10gzofstreamii, i32 noundef %l, i32 noundef %s)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef nonnull @_ZTT10gzifstream) #11
  %0 = getelementptr inbounds i8, ptr %this, i64 120
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #11
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef nonnull @_ZTT10gzofstream) #11
  %0 = getelementptr inbounds i8, ptr %this, i64 112
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #11
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_Z14setcompressionR10gzofstreamii(ptr noundef nonnull align 8 dereferenceable(112) %gzs, i32 noundef %l, i32 noundef %s) #2 {
entry:
  %sb.i = getelementptr inbounds %class.gzofstream, ptr %gzs, i64 0, i32 1
  %call1 = call noundef i32 @_ZN9gzfilebuf14setcompressionEii(ptr noundef nonnull align 8 dereferenceable(97) %sb.i, i32 noundef %l, i32 noundef %s)
  ret ptr %gzs
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZN9gzomanip2IiiEC1EPFR10gzofstreamS2_iiEii(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %f, i32 noundef %v1, i32 noundef %v2) unnamed_addr #5 align 2 {
entry:
  %call = call noundef ptr @_ZN9gzomanip2IiiEC2EPFR10gzofstreamS2_iiEii(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %f, i32 noundef %v1, i32 noundef %v2)
  ret ptr %this
}

declare noundef i32 @_ZN9gzfilebuf14setcompressionEii(ptr noundef nonnull align 8 dereferenceable(97), i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN9gzomanip2IiiEC2EPFR10gzofstreamS2_iiEii(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %f, i32 noundef %v1, i32 noundef %v2) unnamed_addr #4 align 2 {
entry:
  store ptr %f, ptr %this, align 8
  %val1 = getelementptr inbounds %class.gzomanip2, ptr %this, i64 0, i32 1
  store i32 %v1, ptr %val1, align 8
  %val2 = getelementptr inbounds %class.gzomanip2, ptr %this, i64 0, i32 2
  store i32 %v2, ptr %val2, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %vtt, align 8
  store ptr %0, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %2 = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %0, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #11
  %3 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %3) #11
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(148)) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzifstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  %call = tail call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #11
  ret ptr undef
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzifstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %this) #11
  call void @_ZdlPv(ptr noundef %this) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzifstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  tail call void @_ZN10gzifstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #11
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull returned align 8 dereferenceable(97)) unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %vtt, align 8
  store ptr %0, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %2 = load ptr, ptr %1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %0, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #11
  %3 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %3) #11
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzofstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  %call = tail call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  ret ptr undef
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzofstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %this) #11
  call void @_ZdlPv(ptr noundef %this) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzofstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  tail call void @_ZN10gzofstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %__len) #2 personality ptr @__gxx_personality_v0 {
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
  %call4 = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
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
  %call22 = call noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #11
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
  %call31 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #11
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %16 = call ptr @__cxa_begin_catch(ptr %exn) #11
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
  %call30 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #11
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
  call void @__clang_call_terminate(ptr %23) #8
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__s) #3 align 2 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %__s) #11
  ret i64 %call
}

declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %0 = load i8, ptr %this, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, ptr noundef %__ob, ptr noundef %__op, ptr noundef %__oe, ptr noundef nonnull align 8 dereferenceable(136) %__iob, i8 noundef signext %__fl) #2 personality ptr @__gxx_personality_v0 {
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
  %call20 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #11
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
  %call27 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #11
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val43 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val43

cleanup:                                          ; preds = %invoke.cont, %if.then23
  %19 = xor i1 %cmp22.not, true
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #11
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
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) #11
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
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #2 align 2 {
entry:
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #11
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  %0 = load i32, ptr %__fill_, align 8
  %call2 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call, i32 noundef %0) #11
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

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #2 align 2 {
entry:
  call void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state)
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #6

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) #1

declare void @__cxa_end_catch()

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #8 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #8
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__18ios_base5widthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 12
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef i64 %0(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n)
  ret i64 %call
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %call) #11
  ret ptr %call2
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #6

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
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #5 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef signext) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #11
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #11
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__is_long_, align 1
  %tobool = icmp slt i8 %bf.load, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %call) #11
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %1) #8
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #2 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__rdbuf_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c1, i32 noundef %__c2) #3 align 2 {
entry:
  %cmp = icmp eq i32 %__c1, %__c2
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #3 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext %__c) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %call4 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #11
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #11
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %__l) #2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %__l, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %call
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 7
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %0(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c)
  ret i8 %call
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #2 align 2 {
entry:
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %or = or i32 %0, %__state
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #2 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__18ios_base4failB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  ret i1 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__18ios_base4failB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #3 align 2 {
entry:
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %and = and i32 %0, 5
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { noreturn nounwind }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

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
