; ModuleID = './source_snapshot/public_repos/zlib/contrib/iostream3/zfstream.cc'
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
  %this.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTV9gzfilebuf, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  store ptr null, ptr %file, align 8
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  store i32 0, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 3
  store i8 0, ptr %own_fd, align 4
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr null, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  store i64 1024, ptr %buffer_size, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 7
  store i8 1, ptr %own_buffer, align 8
  invoke void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call2 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1) #10
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 7
  %0 = load i8, ptr %own_buffer, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %1 = load ptr, ptr %buffer, align 8
  %tobool2 = icmp ne ptr %1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %tobool3 = icmp ne ptr %call, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  store i64 0, ptr %buffer_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %buffer5 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %2 = load ptr, ptr %buffer5, align 8
  %isnull = icmp eq ptr %2, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end
  call void @_ZdaPv(ptr noundef %2) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end
  %buffer6 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr null, ptr %buffer6, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef null, ptr noundef null)
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %entry
  %buffer7 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %3 = load ptr, ptr %buffer7, align 8
  %buffer8 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %4 = load ptr, ptr %buffer8, align 8
  %buffer9 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %5 = load ptr, ptr %buffer9, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %buffer10 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %6 = load ptr, ptr %buffer10, align 8
  %tobool11 = icmp ne ptr %6, null
  br i1 %tobool11, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else
  %buffer13 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %7 = load ptr, ptr %buffer13, align 8
  %buffer14 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %8 = load ptr, ptr %buffer14, align 8
  %buffer_size15 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %9 = load i64, ptr %buffer_size15, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %7, ptr noundef %add.ptr16)
  br label %if.end18

if.else17:                                        ; preds = %if.else
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef null, ptr noundef null)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %delete.end
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN9gzfilebufC2Ev(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN9gzfilebufD2Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTV9gzfilebuf, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %0 = load ptr, ptr %vfn, align 8
  %call = invoke noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 3
  %1 = load i8, ptr %own_fd, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %call3 = invoke noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %invoke.cont
  invoke void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.end
  %call5 = call noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1) #10
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.end, %if.then, %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #12
  unreachable
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %retval2 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr %this1, ptr %retval2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %0 = load ptr, ptr %vfn, align 8
  %call3 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval2, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %file, align 8
  %call6 = call i32 @gzclose(ptr noundef %1)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store ptr null, ptr %retval2, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %file10 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  store ptr null, ptr %file10, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 3
  store i8 0, ptr %own_fd, align 4
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %2 = load ptr, ptr %retval2, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull returned align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN9gzfilebufD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %this1) #10
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define void @_ZN9gzfilebufD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %this1) #10
  call void @_ZdlPv(ptr noundef %this1) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf14setcompressionEii(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %comp_level, i32 noundef %comp_strategy) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %comp_level.addr = alloca i32, align 4
  %comp_strategy.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %comp_level, ptr %comp_level.addr, align 4
  store i32 %comp_strategy, ptr %comp_strategy.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %file, align 8
  %1 = load i32, ptr %comp_level.addr, align 4
  %2 = load i32, ptr %comp_strategy.addr, align 4
  %call = call i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %call
}

declare i32 @gzsetparams(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %char_mode = alloca [6 x i8], align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr %mode.addr, align 4
  %and2 = and i32 %1, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.memset.p0.i64(ptr align 1 %char_mode, i8 0, i64 6, i1 false)
  %2 = load i32, ptr %mode.addr, align 4
  %arraydecay = getelementptr inbounds [6 x i8], ptr %char_mode, i64 0, i64 0
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this1, i32 noundef %2, ptr noundef %arraydecay)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end5
  %3 = load ptr, ptr %name.addr, align 8
  %arraydecay9 = getelementptr inbounds [6 x i8], ptr %char_mode, i64 0, i64 0
  %call10 = call ptr @gzopen(ptr noundef %3, ptr noundef %arraydecay9)
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  store ptr %call10, ptr %file, align 8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %4 = load i32, ptr %mode.addr, align 4
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  store i32 %4, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 3
  store i8 1, ptr %own_fd, align 4
  store ptr %this1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then4, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %file, align 8
  %cmp = icmp ne ptr %0, null
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %mode, ptr noundef %c_mode) #2 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %c_mode.addr = alloca ptr, align 8
  %testb = alloca i8, align 1
  %testi = alloca i8, align 1
  %testo = alloca i8, align 1
  %testt = alloca i8, align 1
  %testa = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  store ptr %c_mode, ptr %c_mode.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %testb, align 1
  %1 = load i32, ptr %mode.addr, align 4
  %and2 = and i32 %1, 8
  %tobool3 = icmp ne i32 %and2, 0
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, ptr %testi, align 1
  %2 = load i32, ptr %mode.addr, align 4
  %and5 = and i32 %2, 16
  %tobool6 = icmp ne i32 %and5, 0
  %frombool7 = zext i1 %tobool6 to i8
  store i8 %frombool7, ptr %testo, align 1
  %3 = load i32, ptr %mode.addr, align 4
  %and8 = and i32 %3, 32
  %tobool9 = icmp ne i32 %and8, 0
  %frombool10 = zext i1 %tobool9 to i8
  store i8 %frombool10, ptr %testt, align 1
  %4 = load i32, ptr %mode.addr, align 4
  %and11 = and i32 %4, 1
  %tobool12 = icmp ne i32 %and11, 0
  %frombool13 = zext i1 %tobool12 to i8
  store i8 %frombool13, ptr %testa, align 1
  %5 = load i8, ptr %testi, align 1
  %tobool14 = trunc i8 %5 to i1
  br i1 %tobool14, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load i8, ptr %testo, align 1
  %tobool15 = trunc i8 %6 to i1
  br i1 %tobool15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %7 = load i8, ptr %testt, align 1
  %tobool17 = trunc i8 %7 to i1
  br i1 %tobool17, label %if.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %8 = load i8, ptr %testa, align 1
  %tobool19 = trunc i8 %8 to i1
  br i1 %tobool19, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true18
  %9 = load ptr, ptr %c_mode.addr, align 8
  %call = call ptr @strcpy(ptr noundef %9, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true18, %land.lhs.true16, %land.lhs.true, %entry
  %10 = load i8, ptr %testi, align 1
  %tobool20 = trunc i8 %10 to i1
  br i1 %tobool20, label %if.end29, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end
  %11 = load i8, ptr %testo, align 1
  %tobool22 = trunc i8 %11 to i1
  br i1 %tobool22, label %land.lhs.true23, label %if.end29

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %12 = load i8, ptr %testt, align 1
  %tobool24 = trunc i8 %12 to i1
  br i1 %tobool24, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %13 = load i8, ptr %testa, align 1
  %tobool26 = trunc i8 %13 to i1
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true25
  %14 = load ptr, ptr %c_mode.addr, align 8
  %call28 = call ptr @strcpy(ptr noundef %14, ptr noundef @.str.1)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true25, %land.lhs.true23, %land.lhs.true21, %if.end
  %15 = load i8, ptr %testi, align 1
  %tobool30 = trunc i8 %15 to i1
  br i1 %tobool30, label %if.end39, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29
  %16 = load i8, ptr %testo, align 1
  %tobool32 = trunc i8 %16 to i1
  br i1 %tobool32, label %land.lhs.true33, label %if.end39

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %17 = load i8, ptr %testt, align 1
  %tobool34 = trunc i8 %17 to i1
  br i1 %tobool34, label %land.lhs.true35, label %if.end39

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %18 = load i8, ptr %testa, align 1
  %tobool36 = trunc i8 %18 to i1
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %land.lhs.true35
  %19 = load ptr, ptr %c_mode.addr, align 8
  %call38 = call ptr @strcpy(ptr noundef %19, ptr noundef @.str)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true35, %land.lhs.true33, %land.lhs.true31, %if.end29
  %20 = load i8, ptr %testi, align 1
  %tobool40 = trunc i8 %20 to i1
  br i1 %tobool40, label %land.lhs.true41, label %if.end49

land.lhs.true41:                                  ; preds = %if.end39
  %21 = load i8, ptr %testo, align 1
  %tobool42 = trunc i8 %21 to i1
  br i1 %tobool42, label %if.end49, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true41
  %22 = load i8, ptr %testt, align 1
  %tobool44 = trunc i8 %22 to i1
  br i1 %tobool44, label %if.end49, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %23 = load i8, ptr %testa, align 1
  %tobool46 = trunc i8 %23 to i1
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %land.lhs.true45
  %24 = load ptr, ptr %c_mode.addr, align 8
  %call48 = call ptr @strcpy(ptr noundef %24, ptr noundef @.str.2)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true45, %land.lhs.true43, %land.lhs.true41, %if.end39
  %25 = load ptr, ptr %c_mode.addr, align 8
  %call50 = call i64 @strlen(ptr noundef %25)
  %cmp = icmp eq i64 %call50, 0
  br i1 %cmp, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  store i1 false, ptr %retval, align 1
  br label %return

if.end52:                                         ; preds = %if.end49
  %26 = load i8, ptr %testb, align 1
  %tobool53 = trunc i8 %26 to i1
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %27 = load ptr, ptr %c_mode.addr, align 8
  %call55 = call ptr @strcat(ptr noundef %27, ptr noundef @.str.3)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end56, %if.then51
  %28 = load i1, ptr %retval, align 1
  ret i1 %28
}

declare ptr @gzopen(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 7
  %0 = load i8, ptr %own_buffer, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %1 = load ptr, ptr %buffer, align 8
  %tobool2 = icmp ne ptr %1, null
  br i1 %tobool2, label %if.else20, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %2 = load i64, ptr %buffer_size, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %buffer_size4 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %3 = load i64, ptr %buffer_size4, align 8
  %call = call noalias noundef nonnull ptr @_Znam(i64 noundef %3) #13
  %buffer5 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr %call, ptr %buffer5, align 8
  %buffer6 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %4 = load ptr, ptr %buffer6, align 8
  %buffer7 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %5 = load ptr, ptr %buffer7, align 8
  %buffer8 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %6 = load ptr, ptr %buffer8, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %buffer9 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %7 = load ptr, ptr %buffer9, align 8
  %buffer10 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %8 = load ptr, ptr %buffer10, align 8
  %buffer_size11 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %9 = load i64, ptr %buffer_size11, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %7, ptr noundef %add.ptr12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %buffer_size13 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  store i64 1, ptr %buffer_size13, align 8
  %buffer_size14 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %10 = load i64, ptr %buffer_size14, align 8
  %call15 = call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #13
  %buffer16 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr %call15, ptr %buffer16, align 8
  %buffer17 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %11 = load ptr, ptr %buffer17, align 8
  %buffer18 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %12 = load ptr, ptr %buffer18, align 8
  %buffer19 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %13 = load ptr, ptr %buffer19, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef null, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end29

if.else20:                                        ; preds = %land.lhs.true, %entry
  %buffer21 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %14 = load ptr, ptr %buffer21, align 8
  %buffer22 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %15 = load ptr, ptr %buffer22, align 8
  %buffer23 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %16 = load ptr, ptr %buffer23, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %buffer24 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %17 = load ptr, ptr %buffer24, align 8
  %buffer25 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %18 = load ptr, ptr %buffer25, align 8
  %buffer_size26 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %19 = load i64, ptr %buffer_size26, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %18, i64 %19
  %add.ptr28 = getelementptr inbounds i8, ptr %add.ptr27, i64 -1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %17, ptr noundef %add.ptr28)
  br label %if.end29

if.end29:                                         ; preds = %if.else20, %if.end
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %char_mode = alloca [6 x i8], align 1
  store ptr %this, ptr %this.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr %mode.addr, align 4
  %and2 = and i32 %1, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.memset.p0.i64(ptr align 1 %char_mode, i8 0, i64 6, i1 false)
  %2 = load i32, ptr %mode.addr, align 4
  %arraydecay = getelementptr inbounds [6 x i8], ptr %char_mode, i64 0, i64 0
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf9open_modeEjPc(ptr noundef nonnull align 8 dereferenceable(97) %this1, i32 noundef %2, ptr noundef %arraydecay)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end5
  %3 = load i32, ptr %fd.addr, align 4
  %arraydecay9 = getelementptr inbounds [6 x i8], ptr %char_mode, i64 0, i64 0
  %call10 = call ptr @gzdopen(i32 noundef %3, ptr noundef %arraydecay9)
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  store ptr %call10, ptr %file, align 8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %4 = load i32, ptr %mode.addr, align 4
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  store i32 %4, ptr %io_mode, align 8
  %own_fd = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 3
  store i8 0, ptr %own_fd, align 4
  store ptr %this1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then4, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare ptr @gzdopen(i32 noundef, ptr noundef) #1

declare i32 @gzclose(ptr noundef) #1

declare ptr @strcpy(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZN9gzfilebuf9showmanycEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  %0 = load i32, ptr %io_mode, align 8
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %tobool3 = icmp ne ptr %call2, null
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ult ptr %call4, %call5
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call8 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %__ninp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %__einp_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf9underflowEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %bytes_read = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ult ptr %call2, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %0 = load i8, ptr %call4, align 1
  %call5 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %0) #10
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call6 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call6, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  %1 = load i32, ptr %io_mode, align 8
  %and = and i32 %1, 8
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %call9 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call9, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %file, align 8
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %3 = load ptr, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  %4 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %4 to i32
  %call11 = call i32 @gzread(ptr noundef %2, ptr noundef %3, i32 noundef %conv)
  store i32 %call11, ptr %bytes_read, align 4
  %5 = load i32, ptr %bytes_read, align 4
  %cmp12 = icmp sle i32 %5, 0
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %buffer14 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %6 = load ptr, ptr %buffer14, align 8
  %buffer15 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %7 = load ptr, ptr %buffer15, align 8
  %buffer16 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %8 = load ptr, ptr %buffer16, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %call17 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call17, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %buffer19 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %9 = load ptr, ptr %buffer19, align 8
  %buffer20 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %10 = load ptr, ptr %buffer20, align 8
  %buffer21 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  %11 = load ptr, ptr %buffer21, align 8
  %12 = load i32, ptr %bytes_read, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB6v15007EPcS4_S4_(ptr noundef nonnull align 8 dereferenceable(64) %this1, ptr noundef %9, ptr noundef %10, ptr noundef %add.ptr)
  %call22 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %13 = load i8, ptr %call22, align 1
  %call23 = call noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %13) #10
  store i32 %call23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then13, %if.then8, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 noundef signext %__c) #7 align 2 {
entry:
  %__c.addr = alloca i8, align 1
  store i8 %__c, ptr %__c.addr, align 1
  %0 = load i8, ptr %__c.addr, align 1
  %conv = zext i8 %0 to i32
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
  %this.addr = alloca ptr, align 8
  %__gbeg.addr = alloca ptr, align 8
  %__gnext.addr = alloca ptr, align 8
  %__gend.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__gbeg, ptr %__gbeg.addr, align 8
  store ptr %__gnext, ptr %__gnext.addr, align 8
  store ptr %__gend, ptr %__gend.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__gbeg.addr, align 8
  %__binp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 2
  store ptr %0, ptr %__binp_, align 8
  %1 = load ptr, ptr %__gnext.addr, align 8
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 3
  store ptr %1, ptr %__ninp_, align 8
  %2 = load ptr, ptr %__gend.addr, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 4
  store ptr %2, ptr %__einp_, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf8overflowEi(ptr noundef nonnull align 8 dereferenceable(97) %this, i32 noundef %c) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %bytes_to_write = alloca i32, align 4
  %last_char = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call3 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp = icmp ugt ptr %call2, %call3
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call4 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call5 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %cmp6 = icmp ult ptr %call4, %call5
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %call8 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = load i32, ptr %c.addr, align 4
  %call9 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %call10 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %0, i32 noundef %call9) #10
  br i1 %call10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %1 = load i32, ptr %c.addr, align 4
  %call12 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %1) #10
  %call13 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  store i8 %call12, ptr %call13, align 1
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this1, i32 noundef 1)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %call15 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %call16 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %sub.ptr.lhs.cast = ptrtoint ptr %call15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %bytes_to_write, align 4
  %2 = load i32, ptr %bytes_to_write, align 4
  %cmp17 = icmp sgt i32 %2, 0
  br i1 %cmp17, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.end14
  %call19 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call19, label %lor.lhs.false20, label %if.then22

lor.lhs.false20:                                  ; preds = %if.then18
  %io_mode = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  %3 = load i32, ptr %io_mode, align 8
  %and = and i32 %3, 16
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false20, %if.then18
  %call23 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call23, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  %file = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %file, align 8
  %call25 = call noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1)
  %5 = load i32, ptr %bytes_to_write, align 4
  %call26 = call i32 @gzwrite(ptr noundef %4, ptr noundef %call25, i32 noundef %5)
  %6 = load i32, ptr %bytes_to_write, align 4
  %cmp27 = icmp ne i32 %call26, %6
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %call29 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call29, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %7 = load i32, ptr %bytes_to_write, align 4
  %sub = sub nsw i32 0, %7
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this1, i32 noundef %sub)
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end14
  br label %if.end51

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %c.addr, align 4
  %call32 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %call33 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %8, i32 noundef %call32) #10
  br i1 %call33, label %if.end50, label %if.then34

if.then34:                                        ; preds = %if.else
  %call35 = call noundef zeroext i1 @_ZNK9gzfilebuf7is_openEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br i1 %call35, label %lor.lhs.false36, label %if.then40

lor.lhs.false36:                                  ; preds = %if.then34
  %io_mode37 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 2
  %9 = load i32, ptr %io_mode37, align 8
  %and38 = and i32 %9, 16
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false36, %if.then34
  %call41 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false36
  %10 = load i32, ptr %c.addr, align 4
  %call43 = call noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %10) #10
  store i8 %call43, ptr %last_char, align 1
  %file44 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 1
  %11 = load ptr, ptr %file44, align 8
  %call45 = call i32 @gzwrite(ptr noundef %11, ptr noundef %last_char, i32 noundef 1)
  %cmp46 = icmp ne i32 %call45, 1
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  %call48 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  store i32 %call48, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end31
  %12 = load i32, ptr %c.addr, align 4
  %call52 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %call53 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %12, i32 noundef %call52) #10
  br i1 %call53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end51
  %13 = load i32, ptr %c.addr, align 4
  %call55 = call noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %13) #10
  store i32 %call55, ptr %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.end51
  %14 = load i32, ptr %c.addr, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else56, %if.then54, %if.then47, %if.then40, %if.then28, %if.then22, %if.then7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %__bout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 6
  %0 = load ptr, ptr %__nout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 7
  %0 = load ptr, ptr %__eout_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c1, i32 noundef %__c2) #7 align 2 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, ptr %__c1.addr, align 4
  store i32 %__c2, ptr %__c2.addr, align 4
  %0 = load i32, ptr %__c1.addr, align 4
  %1 = load i32, ptr %__c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 noundef %__c) #7 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load i32, ptr %__c.addr, align 4
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB6v15007Ei(ptr noundef nonnull align 8 dereferenceable(64) %this, i32 noundef %__n) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__n, ptr %__n.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__n.addr, align 4
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 6
  %1 = load ptr, ptr %__nout_, align 8
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %__nout_, align 8
  ret void
}

declare i32 @gzwrite(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 noundef %__c) #7 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  %0 = load i32, ptr %__c.addr, align 4
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %call1 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %0, i32 noundef %call) #10
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %neg = xor i32 %call2, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN9gzfilebuf6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(97) %this, ptr noundef %p, i64 noundef %n) unnamed_addr #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, ptr %n.addr, align 8
  %tobool2 = icmp ne i64 %2, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr null, ptr %buffer, align 8
  %buffer_size = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  store i64 0, ptr %buffer_size, align 8
  %own_buffer = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 7
  store i8 1, ptr %own_buffer, align 8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  call void @_ZN9gzfilebuf14disable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  %3 = load ptr, ptr %p.addr, align 8
  %buffer4 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 5
  store ptr %3, ptr %buffer4, align 8
  %4 = load i64, ptr %n.addr, align 8
  %buffer_size5 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 6
  store i64 %4, ptr %buffer_size5, align 8
  %own_buffer6 = getelementptr inbounds %class.gzfilebuf, ptr %this1, i32 0, i32 7
  store i8 0, ptr %own_buffer6, align 8
  call void @_ZN9gzfilebuf13enable_bufferEv(ptr noundef nonnull align 8 dereferenceable(97) %this1)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  store ptr %this1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9gzfilebuf4syncEv(ptr noundef nonnull align 8 dereferenceable(97) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 13
  %0 = load ptr, ptr %vfn, align 8
  %call2 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(97) %this1, i32 noundef %call)
  %call3 = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %call4 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call2, i32 noundef %call3) #10
  %1 = zext i1 %call4 to i64
  %cond = select i1 %call4, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #9

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB6v15007EPcS4_(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__pbeg, ptr noundef %__pend) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pbeg.addr = alloca ptr, align 8
  %__pend.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__pbeg, ptr %__pbeg.addr, align 8
  store ptr %__pend, ptr %__pend.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pbeg.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 6
  store ptr %0, ptr %__nout_, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 5
  store ptr %0, ptr %__bout_, align 8
  %1 = load ptr, ptr %__pend.addr, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", ptr %this1, i32 0, i32 7
  store ptr %1, ptr %__eout_, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) #6

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %10 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %10) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val13 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val13
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %__sb.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store ptr %__sb, ptr %__sb.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %__gc_ = getelementptr inbounds %"class.std::__1::basic_istream", ptr %this1, i32 0, i32 1
  store i64 0, ptr %__gc_, align 8
  %vtable3 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr4 = getelementptr i8, ptr %vtable3, i64 -24
  %vbase.offset5 = load i64, ptr %vbase.offset.ptr4, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset5
  %3 = load ptr, ptr %__sb.addr, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %3)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %this, ptr noundef %__sb) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__sb.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__sb, ptr %__sb.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__sb.addr, align 8
  call void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136) %this1, ptr noundef %0)
  %__tie_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__tie_, align 8
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this1, i32 0, i32 2
  store i32 %call, ptr %__fill_, align 8
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  ret ptr %this1

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
  %call10 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call11 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #10
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad
  %10 = getelementptr inbounds i8, ptr %this1, i64 120
  %call13 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %10) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(148) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this1)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(148)) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2EPKcj(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this1, ptr noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this1

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
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load i32, ptr %mode.addr, align 4
  %or = or i32 %1, 8
  %call = call noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %sb, ptr noundef %0, i32 noundef %or)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1EPKcj(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(120) %this1, ptr noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #10
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this1, i64 120
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC2Eij(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load i32, ptr %fd.addr, align 4
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this1, i32 noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this1

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
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %or = or i32 %1, 8
  %call = call noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %sb, i32 noundef %0, i32 noundef %or)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzifstreamC1Eij(ptr noundef nonnull returned align 8 dereferenceable(120) %this, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 120
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzifstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzifstream6attachEij(ptr noundef nonnull align 8 dereferenceable(120) %this1, i32 noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzifstream, i64 0, i64 1)) #10
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this1, i64 120
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__state, ptr %__state.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__state.addr, align 4
  call void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this1, i32 noundef %0)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__state, ptr %__state.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__state.addr, align 4
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this1, i32 noundef %0)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzifstream5closeEv(ptr noundef nonnull align 8 dereferenceable(120) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %sb)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %10 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %10) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val13 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val13
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %vtt, ptr noundef %__sb) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %__sb.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store ptr %__sb, ptr %__sb.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %vtable3 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr4 = getelementptr i8, ptr %vtable3, i64 -24
  %vbase.offset5 = load i64, ptr %vbase.offset.ptr4, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset5
  %3 = load ptr, ptr %__sb.addr, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %3)
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  ret ptr %this1

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
  %call10 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call11 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #10
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad
  %10 = getelementptr inbounds i8, ptr %this1, i64 112
  %call13 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %10) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2EPKcj(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this1, ptr noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this1

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
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this, ptr noundef %name, i32 noundef %mode) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load i32, ptr %mode.addr, align 4
  %or = or i32 %1, 16
  %call = call noundef ptr @_ZN9gzfilebuf4openEPKcj(ptr noundef nonnull align 8 dereferenceable(97) %sb, ptr noundef %0, i32 noundef %or)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1EPKcj(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %name, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream4openEPKcj(ptr noundef nonnull align 8 dereferenceable(112) %this1, ptr noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #10
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this1, i64 112
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC2Eij(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %vtt2, align 8
  store ptr %1, ptr %this1, align 8
  %2 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %3 = load ptr, ptr %2, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %3, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %vtable4 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset6
  %sb8 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr7, ptr noundef %sb8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %4 = load i32, ptr %fd.addr, align 4
  %5 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this1, i32 noundef %4, i32 noundef %5)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  ret ptr %this1

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
  %call12 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %12 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call13 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this, i32 noundef %fd, i32 noundef %mode) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %or = or i32 %1, 16
  %call = call noundef ptr @_ZN9gzfilebuf6attachEij(ptr noundef nonnull align 8 dereferenceable(97) %sb, i32 noundef %0, i32 noundef %or)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable2 = load ptr, ptr %this1, align 8
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset4
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN10gzofstreamC1Eij(ptr noundef nonnull returned align 8 dereferenceable(112) %this, i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %call2 = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1), ptr noundef null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 0, i32 3), ptr %this1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 112
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV10gzofstream, i32 0, inrange i32 1, i32 3), ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call5 = invoke noundef ptr @_ZN9gzfilebufC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %sb7 = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB6v15007EPNS_15basic_streambufIcS2_EE(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr6, ptr noundef %sb7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont4
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i32, ptr %mode.addr, align 4
  invoke void @_ZN10gzofstream6attachEij(ptr noundef nonnull align 8 dereferenceable(112) %this1, i32 noundef %1, i32 noundef %2)
          to label %invoke.cont10 unwind label %lpad8

invoke.cont10:                                    ; preds = %invoke.cont9
  ret ptr %this1

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
  %call11 = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad3
  %call12 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef getelementptr inbounds ([4 x ptr], ptr @_ZTT10gzofstream, i64 0, i64 1)) #10
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  %12 = getelementptr inbounds i8, ptr %this1, i64 112
  %call14 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %12) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN10gzofstream5closeEv(ptr noundef nonnull align 8 dereferenceable(112) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebuf5closeEv(ptr noundef nonnull align 8 dereferenceable(97) %sb)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_0(ptr noundef nonnull align 8 dereferenceable(120) %this1, ptr noundef @_ZTT10gzifstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzifstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_1(ptr noundef nonnull align 8 dereferenceable(120) %this1) #10
  call void @_ZdlPv(ptr noundef %this1) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzifstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %0 = load ptr, ptr %this1, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this1, i64 %2
  %call = tail call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_2(ptr noundef nonnull align 8 dereferenceable(120) %3) #10
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzifstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %this1, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this1, i64 %2
  tail call void @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_3(ptr noundef nonnull align 8 dereferenceable(120) %3) #10
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_4(ptr noundef nonnull align 8 dereferenceable(112) %this1, ptr noundef @_ZTT10gzofstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10gzofstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_5(ptr noundef nonnull align 8 dereferenceable(112) %this1) #10
  call void @_ZdlPv(ptr noundef %this1) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZTv0_n24_N10gzofstreamD1Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %0 = load ptr, ptr %this1, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this1, i64 %2
  %call = tail call noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_6(ptr noundef nonnull align 8 dereferenceable(112) %3) #10
  ret ptr undef
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_N10gzofstreamD0Ev(ptr noundef %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %this1, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 -24
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %this1, i64 %2
  tail call void @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_7(ptr noundef nonnull align 8 dereferenceable(112) %3) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__18ios_baseC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(136) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVNSt3__18ios_baseE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

declare void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__state, ptr %__state.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this1, i32 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %1 = load i32, ptr %__state.addr, align 4
  %or = or i32 %0, %1
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this1, i32 noundef %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  %3 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %3) #10
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  %3 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %3) #10
  ret ptr %this1
}

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_0(ptr noundef nonnull returned align 8 dereferenceable(120) %this, ptr noundef %vtt) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzifstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  %3 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %3) #10
  ret ptr %this1
}

define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_1(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %this1, ptr noundef @_ZTT10gzifstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_2(ptr noundef nonnull returned align 8 dereferenceable(120) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzifstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %this1, ptr noundef @_ZTT10gzifstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 120
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

define linkonce_odr void @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_3(ptr noundef nonnull align 8 dereferenceable(120) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzifstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %this1) #10
  call void @_ZdlPv(ptr noundef %this1) #11
  ret void
}

define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_4(ptr noundef nonnull returned align 8 dereferenceable(112) %this, ptr noundef %vtt) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %vtt.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %vtt, ptr %vtt.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %vtt2 = load ptr, ptr %vtt.addr, align 8
  %0 = load ptr, ptr %vtt2, align 8
  store ptr %0, ptr %this1, align 8
  %1 = getelementptr inbounds ptr, ptr %vtt2, i64 3
  %2 = load ptr, ptr %1, align 8
  %vtable = load ptr, ptr %this1, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  store ptr %2, ptr %add.ptr, align 8
  %sb = getelementptr inbounds %class.gzofstream, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZN9gzfilebufD1Ev(ptr noundef nonnull align 8 dereferenceable(97) %sb) #10
  %3 = getelementptr inbounds ptr, ptr %vtt2, i64 1
  %call3 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %3) #10
  ret ptr %this1
}

define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_5(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %this1, ptr noundef @_ZTT10gzofstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

define linkonce_odr noundef ptr @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_6(ptr noundef nonnull returned align 8 dereferenceable(112) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzofstreamD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %this1, ptr noundef @_ZTT10gzofstream) #10
  %0 = getelementptr inbounds i8, ptr %this1, i64 112
  %call2 = call noundef ptr @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #10
  ret ptr %this1
}

define linkonce_odr void @pc_inline_source_snapshot_public_repos_zlib_contrib_iostream3_zfstream_7(ptr noundef nonnull align 8 dereferenceable(112) %this) unnamed_addr  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN10gzofstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %this1) #10
  call void @_ZdlPv(ptr noundef %this1) #11
  ret void
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
