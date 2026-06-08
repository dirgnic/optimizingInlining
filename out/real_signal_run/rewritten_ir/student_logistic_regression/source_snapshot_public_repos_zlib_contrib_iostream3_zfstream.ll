; ModuleID = './out/real_signal_run/rewritten_ir/student_logistic_regression/source_snapshot_public_repos_zlib_contrib_iostream3_zfstream.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/contrib/iostream3/zfstream.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.gzfilebuf = type <{ %"class.std::__1::basic_streambuf", ptr, i32, i8, [3 x i8], ptr, i64, i8, [7 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%class.gzifstream = type { %"class.std::__1::basic_istream.base", %class.gzfilebuf, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::basic_istream" = type { ptr, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%class.gzofstream = type { %"class.std::__1::basic_ostream.base", %class.gzfilebuf, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }

@_ZTV9gzfilebuf = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTI9gzfilebuf, ptr @_ZN9gzfilebufD1Ev, ptr @_ZN9gzfilebufD0Ev, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE, ptr @_ZN9gzfilebuf6setbufEPcl, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj, ptr @_ZN9gzfilebuf4syncEv, ptr @_ZN9gzfilebuf9showmanycEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl, ptr @_ZN9gzfilebuf9underflowEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl, ptr @_ZN9gzfilebuf8overflowEi] }, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@_ZTV10gzifstream = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 120 to ptr), ptr null, ptr @_ZTI10gzifstream, ptr @_ZN10gzifstreamD1Ev, ptr @_ZN10gzifstreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -120 to ptr), ptr inttoptr (i64 -120 to ptr), ptr @_ZTI10gzifstream, ptr @_ZTv0_n24_N10gzifstreamD1Ev, ptr @_ZTv0_n24_N10gzifstreamD0Ev] }, align 8
@_ZTT10gzifstream = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 1, i32 3)], align 8
@_ZTV10gzofstream = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTI10gzofstream, ptr @_ZN10gzofstreamD1Ev, ptr @_ZN10gzofstreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTI10gzofstream, ptr @_ZTv0_n24_N10gzofstreamD1Ev, ptr @_ZTv0_n24_N10gzofstreamD0Ev] }, align 8
@_ZTT10gzofstream = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 1, i32 3)], align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS9gzfilebuf = constant [11 x i8] c"9gzfilebuf\00", align 1
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTI9gzfilebuf = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9gzfilebuf, ptr @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE }, align 8
@_ZTC10gzifstream0_NSt3__113basic_istreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 120 to ptr), ptr null, ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -120 to ptr), ptr inttoptr (i64 -120 to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTS10gzifstream = linkonce_odr hidden constant [13 x i8] c"10gzifstream\00", align 1
@_ZTI10gzifstream = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTS10gzifstream to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE }, align 8
@_ZTC10gzofstream0_NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 112 to ptr), ptr null, ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -112 to ptr), ptr inttoptr (i64 -112 to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev] }, align 8
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant ptr
@_ZTS10gzofstream = linkonce_odr hidden constant [13 x i8] c"10gzofstream\00", align 1
@_ZTI10gzofstream = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTS10gzofstream to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE }, align 8
@_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt3__18ios_baseE = external unnamed_addr constant { [4 x ptr] }, align 8

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9gzfilebufC2Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTV9gzfilebuf, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  store ptr null, ptr %file, align 8
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  store i32 0, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 3
  store i8 0, ptr %own_fd, align 4
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr null, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  store i64 1024, ptr %buffer_size, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 7
  store i8 1, ptr %own_buffer, align 8
  invoke void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call2 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val3 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val3
}

declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress ssp uwtable
define void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #2 align 2 {
entry:
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 7
  %0 = load i8, ptr %own_buffer, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %2 = load ptr, ptr %buffer, align 8
  %tobool2.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  store i64 0, ptr %buffer_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %buffer5 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %3 = load ptr, ptr %buffer5, align 8
  %isnull = icmp eq ptr %3, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end
  call void @_ZdaPv(ptr noundef %3) #13
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end
  %buffer6 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr null, ptr %buffer6, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef null, ptr noundef null)
  br label %if.end19

if.else:                                          ; preds = %entry
  %buffer7 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %4 = load ptr, ptr %buffer7, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %4, ptr noundef %4, ptr noundef %4)
  %buffer10 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %5 = load ptr, ptr %buffer10, align 8
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.else17, label %if.then12

if.then12:                                        ; preds = %if.else
  %buffer13 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %6 = load ptr, ptr %buffer13, align 8
  %buffer_size15 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %7 = load i64, ptr %buffer_size15, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %6, ptr noundef nonnull %add.ptr16)
  br label %if.end19

if.else17:                                        ; preds = %if.else
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef null, ptr noundef null)
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.else17, %delete.end
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZN9gzfilebufC2Ev(ptr noundef nonnull align 8 dereferenceable(97) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN9gzfilebufD2Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTV9gzfilebuf, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  %call = invoke noundef i32 @_ZN9gzfilebuf4syncEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 3
  %0 = load i8, ptr %own_fd, align 4
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  %call3 = invoke noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %invoke.cont
  invoke void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.end
  %call5 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #12
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.end, %if.then, %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #5
  unreachable
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #2 align 2 {
entry:
  %retval2 = alloca ptr, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  store ptr %this, ptr %retval2, align 8
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %0 = load ptr, ptr %vfn, align 8
  %call3 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval2, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %file, align 8
  %call6 = call i32 @gzclose(ptr noundef %1)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store ptr null, ptr %retval2, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %file10 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  store ptr null, ptr %file10, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 3
  store i8 0, ptr %own_fd, align 4
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %2 = load ptr, ptr %retval2, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9
  %storemerge = phi ptr [ %2, %if.end9 ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN9gzfilebufD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define void @_ZN9gzfilebufD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %this) #12
  call void @_ZdlPv(ptr noundef %this) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf14setcompressionEii(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %comp_level, i32 noundef %comp_strategy) #2 align 2 {
entry:
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %file, align 8
  %call = call i32 @gzsetparams(ptr noundef %0, i32 noundef %comp_level, i32 noundef %comp_strategy)
  ret i32 %call
}

declare i32 @gzsetparams(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %char_mode = alloca [6 x i8], align 1
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr %mode.addr, align 4
  %and2 = and i32 %1, 16
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %char_mode, i8 0, i64 6, i1 false)
  %2 = load i32, ptr %mode.addr, align 4
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %2, ptr noundef nonnull %char_mode)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end5
  %3 = load ptr, ptr %name.addr, align 8
  %call10 = call ptr @gzopen(ptr noundef %3, ptr noundef nonnull %char_mode)
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  store ptr %call10, ptr %file, align 8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %4 = load i32, ptr %mode.addr, align 4
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  store i32 %4, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 3
  store i8 1, ptr %own_fd, align 4
  store ptr %this, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then4, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #7 align 2 {
entry:
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %file, align 8
  %cmp = icmp ne ptr %0, null
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %mode, ptr noundef %c_mode) #2 align 2 {
entry:
  %mode.addr = alloca i32, align 4
  %c_mode.addr = alloca ptr, align 8
  %testb = alloca i8, align 1
  %testi = alloca i8, align 1
  %testo = alloca i8, align 1
  %testt = alloca i8, align 1
  %testa = alloca i8, align 1
  store i32 %mode, ptr %mode.addr, align 4
  store ptr %c_mode, ptr %c_mode.addr, align 8
  %0 = trunc i32 %mode to i8
  %1 = lshr i8 %0, 2
  %2 = and i8 %1, 1
  store i8 %2, ptr %testb, align 1
  %3 = trunc i32 %mode to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  store i8 %5, ptr %testi, align 1
  %6 = load i32, ptr %mode.addr, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 4
  %9 = and i8 %8, 1
  store i8 %9, ptr %testo, align 1
  %10 = trunc i32 %6 to i8
  %11 = lshr i8 %10, 5
  %12 = and i8 %11, 1
  store i8 %12, ptr %testt, align 1
  %13 = load i32, ptr %mode.addr, align 4
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  store i8 %15, ptr %testa, align 1
  %16 = load i8, ptr %testi, align 1
  %17 = and i8 %16, 1
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %18 = load i8, ptr %testo, align 1
  %19 = and i8 %18, 1
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %20 = load i8, ptr %testt, align 1
  %21 = and i8 %20, 1
  %tobool17.not = icmp eq i8 %21, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %22 = load i8, ptr %testa, align 1
  %23 = and i8 %22, 1
  %tobool19.not = icmp eq i8 %23, 0
  br i1 %tobool19.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true18
  %24 = load ptr, ptr %c_mode.addr, align 8
  store i16 119, ptr %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true18, %land.lhs.true16, %land.lhs.true, %entry
  %25 = load i8, ptr %testi, align 1
  %26 = and i8 %25, 1
  %tobool20.not = icmp eq i8 %26, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end29

land.lhs.true21:                                  ; preds = %if.end
  %27 = load i8, ptr %testo, align 1
  %28 = and i8 %27, 1
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %if.end29, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %29 = load i8, ptr %testt, align 1
  %30 = and i8 %29, 1
  %tobool24.not = icmp eq i8 %30, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end29

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %31 = load i8, ptr %testa, align 1
  %32 = and i8 %31, 1
  %tobool26.not = icmp eq i8 %32, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %land.lhs.true25
  %33 = load ptr, ptr %c_mode.addr, align 8
  store i16 97, ptr %33, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true25, %land.lhs.true23, %land.lhs.true21, %if.end
  %34 = load i8, ptr %testi, align 1
  %35 = and i8 %34, 1
  %tobool30.not = icmp eq i8 %35, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end39

land.lhs.true31:                                  ; preds = %if.end29
  %36 = load i8, ptr %testo, align 1
  %37 = and i8 %36, 1
  %tobool32.not = icmp eq i8 %37, 0
  br i1 %tobool32.not, label %if.end39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %38 = load i8, ptr %testt, align 1
  %39 = and i8 %38, 1
  %tobool34.not = icmp eq i8 %39, 0
  br i1 %tobool34.not, label %if.end39, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %40 = load i8, ptr %testa, align 1
  %41 = and i8 %40, 1
  %tobool36.not = icmp eq i8 %41, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true35
  %42 = load ptr, ptr %c_mode.addr, align 8
  store i16 119, ptr %42, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true35, %land.lhs.true33, %land.lhs.true31, %if.end29
  %43 = load i8, ptr %testi, align 1
  %44 = and i8 %43, 1
  %tobool40.not = icmp eq i8 %44, 0
  br i1 %tobool40.not, label %if.end49, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end39
  %45 = load i8, ptr %testo, align 1
  %46 = and i8 %45, 1
  %tobool42.not = icmp eq i8 %46, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end49

land.lhs.true43:                                  ; preds = %land.lhs.true41
  %47 = load i8, ptr %testt, align 1
  %48 = and i8 %47, 1
  %tobool44.not = icmp eq i8 %48, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %49 = load i8, ptr %testa, align 1
  %50 = and i8 %49, 1
  %tobool46.not = icmp eq i8 %50, 0
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %land.lhs.true45
  %51 = load ptr, ptr %c_mode.addr, align 8
  store i16 114, ptr %51, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true45, %land.lhs.true43, %land.lhs.true41, %if.end39
  %52 = load ptr, ptr %c_mode.addr, align 8
  %char0 = load i8, ptr %52, align 1
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %return, label %if.end52

if.end52:                                         ; preds = %if.end49
  %53 = load i8, ptr %testb, align 1
  %54 = and i8 %53, 1
  %tobool53.not = icmp eq i8 %54, 0
  br i1 %tobool53.not, label %return, label %if.then54

if.then54:                                        ; preds = %if.end52
  %55 = load ptr, ptr %c_mode.addr, align 8
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %endptr = getelementptr inbounds i8, ptr %55, i64 %strlen
  store i16 98, ptr %endptr, align 1
  br label %return

return:                                           ; preds = %if.end52, %if.then54, %if.end49
  %56 = xor i1 %cmp, true
  ret i1 %56
}

declare ptr @gzopen(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #2 align 2 {
entry:
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 7
  %0 = load i8, ptr %own_buffer, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp ne i8 %1, 0
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %2 = load ptr, ptr %buffer, align 8
  %tobool2.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %3 = load i64, ptr %buffer_size, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %buffer_size4 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %4 = load i64, ptr %buffer_size4, align 8
  %call = call noalias noundef nonnull ptr @_Znam(i64 noundef %4) #14
  %buffer5 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr %call, ptr %buffer5, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef nonnull %call, ptr noundef nonnull %call, ptr noundef nonnull %call)
  %buffer9 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %5 = load ptr, ptr %buffer9, align 8
  %buffer_size11 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %6 = load i64, ptr %buffer_size11, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %5, ptr noundef nonnull %add.ptr12)
  br label %if.end29

if.else:                                          ; preds = %if.then
  %buffer_size13 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  store i64 1, ptr %buffer_size13, align 8
  %call15 = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #14
  %buffer16 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr %call15, ptr %buffer16, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef nonnull %call15, ptr noundef nonnull %call15, ptr noundef nonnull %call15)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef null, ptr noundef null)
  br label %if.end29

if.else20:                                        ; preds = %entry
  %buffer21 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %7 = load ptr, ptr %buffer21, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %7, ptr noundef %7, ptr noundef %7)
  %buffer24 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %8 = load ptr, ptr %buffer24, align 8
  %buffer_size26 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %9 = load i64, ptr %buffer_size26, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %8, i64 %9
  %add.ptr28 = getelementptr inbounds i8, ptr %add.ptr27, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %8, ptr noundef nonnull %add.ptr28)
  br label %if.end29

if.end29:                                         ; preds = %if.then3, %if.else, %if.else20
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %char_mode = alloca [6 x i8], align 1
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr %mode.addr, align 4
  %and2 = and i32 %1, 16
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %char_mode, i8 0, i64 6, i1 false)
  %2 = load i32, ptr %mode.addr, align 4
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %2, ptr noundef nonnull %char_mode)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end5
  %3 = load i32, ptr %fd.addr, align 4
  %call10 = call ptr @gzdopen(i32 noundef %3, ptr noundef nonnull %char_mode)
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  store ptr %call10, ptr %file, align 8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %4 = load i32, ptr %mode.addr, align 4
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  store i32 %4, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 3
  store i8 0, ptr %own_fd, align 4
  store ptr %this, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then4, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare ptr @gzdopen(i32 noundef, ptr noundef) #1

declare i32 @gzclose(ptr noundef) #1

declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) #9

declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZN9gzfilebuf9showmanycEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i64, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  %0 = load i32, ptr %io_mode, align 8
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %call4, %call5
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call8 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast = ptrtoint ptr %call7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then
  %1 = load i64, ptr %retval, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 3
  %0 = load ptr, ptr %__ninp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 4
  %0 = load ptr, ptr %__einp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf9underflowEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ult ptr %call2, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %0 = load i8, ptr %call4, align 1
  %call5 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %0) #12
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call6, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  %1 = load i32, ptr %io_mode, align 8
  %and = and i32 %1, 8
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %call9 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call9, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %file, align 8
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %3 = load ptr, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  %4 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %4 to i32
  %call11 = call i32 @gzread(ptr noundef %2, ptr noundef %3, i32 noundef %conv)
  store i32 %call11, ptr %bytes_read, align 4
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %buffer14 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %5 = load ptr, ptr %buffer14, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %5, ptr noundef %5, ptr noundef %5)
  %call17 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call17, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %buffer19 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  %6 = load ptr, ptr %buffer19, align 8
  %7 = load i32, ptr %bytes_read, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %6, ptr noundef %6, ptr noundef %add.ptr)
  %call22 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %8 = load i8, ptr %call22, align 1
  %call23 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %8) #12
  store i32 %call23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then13, %if.then8, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %__c) #7 align 2 {
entry:
  %conv = zext i8 %__c to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #7 align 2 {
entry:
  ret i32 -1
}

declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__gbeg, ptr noundef %__gnext, ptr noundef %__gend) #7 align 2 {
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
define noundef i32 @_ZN9gzfilebuf8overflowEi(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %c) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %bytes_to_write = alloca i32, align 4
  %last_char = alloca i8, align 1
  store i32 %c, ptr %c.addr, align 4
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp = icmp ugt ptr %call2, %call3
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %cmp6 = icmp ult ptr %call4, %call5
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %call8 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = load i32, ptr %c.addr, align 4
  %call9 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %call10 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %0, i32 noundef %call9) #12
  br i1 %call10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %1 = load i32, ptr %c.addr, align 4
  %call12 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %1) #12
  %call13 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  store i8 %call12, ptr %call13, align 1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef 1)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %call15 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %call16 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %sub.ptr.lhs.cast = ptrtoint ptr %call15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %bytes_to_write, align 4
  %cmp17 = icmp sgt i32 %conv, 0
  br i1 %cmp17, label %if.then18, label %if.end51

if.then18:                                        ; preds = %if.end14
  %call19 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call19, label %lor.lhs.false20, label %if.then22

lor.lhs.false20:                                  ; preds = %if.then18
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  %2 = load i32, ptr %io_mode, align 8
  %and = and i32 %2, 16
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %lor.lhs.false20, %if.then18
  %call23 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call23, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %file, align 8
  %call25 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this)
  %4 = load i32, ptr %bytes_to_write, align 4
  %call26 = call i32 @gzwrite(ptr noundef %3, ptr noundef %call25, i32 noundef %4)
  %cmp27.not = icmp eq i32 %call26, %4
  br i1 %cmp27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  %call29 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call29, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %5 = load i32, ptr %bytes_to_write, align 4
  %sub = sub nsw i32 0, %5
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %sub)
  br label %if.end51

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %c.addr, align 4
  %call32 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %call33 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %6, i32 noundef %call32) #12
  br i1 %call33, label %if.end51, label %if.then34

if.then34:                                        ; preds = %if.else
  %call35 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br i1 %call35, label %lor.lhs.false36, label %if.then40

lor.lhs.false36:                                  ; preds = %if.then34
  %io_mode37 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 2
  %7 = load i32, ptr %io_mode37, align 8
  %and38 = and i32 %7, 16
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %lor.lhs.false36, %if.then34
  %call41 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false36
  %8 = load i32, ptr %c.addr, align 4
  %call43 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %8) #12
  store i8 %call43, ptr %last_char, align 1
  %file44 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 1
  %9 = load ptr, ptr %file44, align 8
  %call45 = call i32 @gzwrite(ptr noundef %9, ptr noundef nonnull %last_char, i32 noundef 1)
  %cmp46.not = icmp eq i32 %call45, 1
  br i1 %cmp46.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.end42
  %call48 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  store i32 %call48, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.else, %if.end42, %if.end14, %if.end30
  %10 = load i32, ptr %c.addr, align 4
  %call52 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %call53 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %10, i32 noundef %call52) #12
  br i1 %call53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end51
  %11 = load i32, ptr %c.addr, align 4
  %call55 = call noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %11) #12
  store i32 %call55, ptr %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.end51
  %12 = load i32, ptr %c.addr, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else56, %if.then54, %if.then47, %if.then40, %if.then28, %if.then22, %if.then7
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %__bout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 7
  %0 = load ptr, ptr %__eout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c1, i32 noundef %__c2) #7 align 2 {
entry:
  %cmp = icmp eq i32 %__c1, %__c2
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %__c) #7 align 2 {
entry:
  %conv = trunc i32 %__c to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %__n) #7 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  %idx.ext = sext i32 %__n to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %__nout_, align 8
  ret void
}

declare i32 @gzwrite(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %__c) #7 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %call1 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c, i32 noundef %call) #12
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %neg = xor i32 %call2, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load i32, ptr %__c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(97) %this, ptr noundef %p, i64 noundef %n) unnamed_addr #2 align 2 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %n.addr, align 8
  %tobool2.not = icmp eq i64 %2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr null, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  store i64 0, ptr %buffer_size, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 7
  store i8 1, ptr %own_buffer, align 8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br label %return

if.else:                                          ; preds = %if.end
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  %3 = load ptr, ptr %p.addr, align 8
  %buffer4 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 5
  store ptr %3, ptr %buffer4, align 8
  %4 = load i64, ptr %n.addr, align 8
  %buffer_size5 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 6
  store i64 %4, ptr %buffer_size5, align 8
  %own_buffer6 = getelementptr inbounds %class.gzfilebuf, ptr %this, i64 0, i32 7
  store i8 0, ptr %own_buffer6, align 8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this)
  br label %return

return:                                           ; preds = %if.then3, %if.else, %entry
  %storemerge = phi ptr [ null, %entry ], [ %this, %if.else ], [ %this, %if.then3 ]
  ret ptr %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf4syncEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 13
  %0 = load ptr, ptr %vfn, align 8
  %call2 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %call)
  %call3 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %call4 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call2, i32 noundef %call3) #12
  %cond = sext i1 %call4 to i32
  ret i32 %cond
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__pbeg, ptr noundef %__pend) #7 align 2 {
entry:
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 6
  store ptr %__pbeg, ptr %__nout_, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 5
  store ptr %__pbeg, ptr %__bout_, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this, i64 0, i32 7
  store ptr %__pend, ptr %__eout_, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) #6

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  ret ptr %this

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %10 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %10) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val13 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val13
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #0 align 2 {
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

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %this, ptr noundef %__sb) #2 align 2 {
entry:
  call void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136) %this, ptr noundef %__sb)
  %__tie_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 1
  store ptr null, ptr %__tie_, align 8
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  store i32 %call, ptr %__fill_, align 8
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %ehcleanup12

lpad3:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call11 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #12
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad
  %10 = getelementptr inbounds i8, ptr %this, i64 120
  %call13 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %10) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(148) %this) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(148)) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2EPKcj(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this

lpad:                                             ; preds = %entry
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %or = or i32 %mode, 8
  %call = call noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %sb, ptr noundef %name, i32 noundef %or)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1EPKcj(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont9, %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #12
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this, i64 120
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2Eij(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load i32, ptr %fd.addr, align 4
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this, i32 noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this

lpad:                                             ; preds = %entry
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %or = or i32 %mode, 8
  %call = call noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %sb, i32 noundef %fd, i32 noundef %or)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1Eij(ptr noundef nonnull returned align 8 dereferenceable(120) %this, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this, i32 noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont9, %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #12
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this, i64 120
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #2 align 2 {
entry:
  call void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #2 align 2 {
entry:
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream5closeEv(ptr noundef nonnull align 8 dereferenceable(120) %this) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzifstream, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %sb)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  ret ptr %this

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %10 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %10) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val13 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val13
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #0 align 2 {
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
  %vtable3 = load ptr, ptr %this, align 8
  %vbase.offset.ptr4 = getelementptr i8, ptr %vtable3, i64 -24
  %vbase.offset5 = load i64, ptr %vbase.offset.ptr4, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset5
  %3 = load ptr, ptr %__sb.addr, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %3)
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %ehcleanup12

lpad3:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call11 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #12
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad
  %10 = getelementptr inbounds i8, ptr %this, i64 112
  %call13 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %10) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2EPKcj(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this

lpad:                                             ; preds = %entry
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %or = or i32 %mode, 16
  %call = call noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %sb, ptr noundef %name, i32 noundef %or)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1EPKcj(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont9, %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #12
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this, i64 112
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2Eij(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %0, ptr noundef null)
  %1 = load ptr, ptr %vtt, align 8
  store ptr %1, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt, i64 3
  %3 = load ptr, ptr %2, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %1, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef nonnull %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load i32, ptr %fd.addr, align 4
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this, i32 noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this

lpad:                                             ; preds = %entry
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %or = or i32 %mode, 16
  %call = call noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %sb, i32 noundef %fd, i32 noundef %or)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1Eij(ptr noundef nonnull returned align 8 dereferenceable(112) %this, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %0 = getelementptr inbounds i8, ptr %this, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 0, i64 3), ptr %this, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i64 0, inrange i32 1, i64 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef nonnull %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this, i32 noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont9, %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #12
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this, i64 112
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream5closeEv(ptr noundef nonnull align 8 dereferenceable(112) %this) #2 align 2 {
entry:
  %sb = getelementptr inbounds %class.gzofstream, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %sb)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj() unnamed_addr

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj() unnamed_addr

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #1

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #1

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef nonnull @_ZTT10gzifstream) #12
  %0 = getelementptr inbounds i8, ptr %this, i64 120
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzifstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %this) #12
  call void @_ZdlPv(ptr noundef %this) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzifstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  %call = tail call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #12
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzifstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  tail call void @_ZN10gzifstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #12
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef nonnull @_ZTT10gzofstream) #12
  %0 = getelementptr inbounds i8, ptr %this, i64 112
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzofstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %this) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %this) #12
  call void @_ZdlPv(ptr noundef %this) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzofstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  %call = tail call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #12
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzofstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this, i64 %2
  tail call void @_ZN10gzofstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(136) %this) unnamed_addr #4 align 2 {
entry:
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__18ios_baseE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

declare void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) #1

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
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  %3 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull %3) #12
  ret ptr %this
}

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
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #12
  %3 = getelementptr inbounds ptr, ptr %vtt, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull %3) #12
  ret ptr %this
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { argmemonly nocallback nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
