; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_tracy_public_common_TracySocket.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/public/common/TracySocket.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.tracy::Socket" = type <{ ptr, ptr, %"struct.std::__1::atomic", i32, ptr, ptr, i32, [4 x i8] }>
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { %"struct.std::__1::__cxx_atomic_impl" }
%"struct.std::__1::__cxx_atomic_impl" = type { %"struct.std::__1::__cxx_atomic_base_impl" }
%"struct.std::__1::__cxx_atomic_base_impl" = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pollfd = type { i32, i16, i16 }
%struct.sockaddr_storage = type { i8, i8, [6 x i8], i64, [112 x i8] }
%"class.tracy::UdpBroadcast" = type { i32, i32 }
%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.tracy::IpAddress" = type <{ i32, [17 x i8], [3 x i8] }>
%struct.sockaddr = type { i8, i8, [14 x i8] }

@__func__._ZN5tracy6Socket7ConnectEPKct = private unnamed_addr constant [8 x i8] c"Connect\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"TracySocket.cpp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"!IsValid()\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@__func__._ZN5tracy6Socket15ConnectBlockingEPKct = private unnamed_addr constant [16 x i8] c"ConnectBlocking\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"!m_ptr\00", align 1
@__func__._ZN5tracy6Socket5CloseEv = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sock != -1\00", align 1
@__func__._ZN5tracy6Socket4SendEPKvi = private unnamed_addr constant [5 x i8] c"Send\00", align 1
@__func__._ZN5tracy12ListenSocket6ListenEti = private unnamed_addr constant [7 x i8] c"Listen\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"m_sock == -1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TRACY_ONLY_IPV4\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"m_sock != -1\00", align 1
@__func__._ZN5tracy12UdpBroadcast4OpenEPKct = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@_ZZN5tracy9UdpListen4ReadERmRNS_9IpAddressEiE3buf = internal global [2048 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"TRACY_ONLY_LOCALHOST\00", align 1

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC2Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #0 align 2 {
entry:
  %call.i = call dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #17
  store ptr %call.i, ptr %this, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef -1) #18
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef %size) #1 {
entry:
  %call = call ptr @malloc(i64 noundef %size) #17
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16atomicIiEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d) #18
  ret ptr %this
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC1Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #0 align 2 {
entry:
  %call.i = call noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef 131072)
  store ptr %call.i, ptr %this, align 8
  %m_bufPtr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr.i, align 8
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2.i = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef -1) #18
  %m_bufLeft.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft.i, align 4
  %m_ptr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr.i, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC2Ei(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #0 align 2 {
entry:
  %call.i = call dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #17
  store ptr %call.i, ptr %this, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %sock) #18
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC1Ei(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #0 align 2 {
entry:
  %call.i = call noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef 131072)
  store ptr %call.i, ptr %this, align 8
  %m_bufPtr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr.i, align 8
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2.i = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef %sock) #18
  %m_bufLeft.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft.i, align 4
  %m_ptr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr.i, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy6SocketD2Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load ptr, ptr %this, align 8
  invoke void @_ZN5tracyL10tracy_freeEPv(ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  invoke void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %invoke.cont
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %1 = load ptr, ptr %m_ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %m_res = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  %2 = load ptr, ptr %m_res, align 8
  invoke void @freeaddrinfo(ptr noundef %2)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then3
  %m_connSock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %3 = load i32, ptr %m_connSock, align 8
  %call6 = invoke i32 @"\01_close"(i32 noundef %3)
          to label %if.end7 unwind label %terminate.lpad

if.end7:                                          ; preds = %invoke.cont4, %if.end
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4

terminate.lpad:                                   ; preds = %invoke.cont4, %if.then3, %if.then, %entry
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #3
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL10tracy_freeEPv(ptr noundef %ptr) #1 {
entry:
  call void @free(ptr noundef %ptr)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #3 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #18
  call void @_ZSt9terminatev() #3
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__m) #4 align 2 {
entry:
  %call = call noundef i32 @_ZNSt3__117__cxx_atomic_loadB6v15007IiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef nonnull %this, i32 noundef %__m) #18
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %sock = alloca i32, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 284, ptr noundef nonnull @.str.4) #19
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i32, ptr %sock, align 4
  %call2 = call i32 @"\01_close"(i32 noundef %0)
  %m_sock3 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock3, i32 noundef -1, i32 noundef 0) #18
  ret void
}

declare void @freeaddrinfo(ptr noundef) #5

declare i32 @"\01_close"(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy6SocketD1Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %this, align 8
  invoke void @_ZN5tracyL10tracy_freeEPv(ptr noundef %0)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %entry
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef 0) #18
  %cmp.i.not = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont.i
  invoke void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this)
          to label %if.end.i unwind label %terminate.lpad.i

if.end.i:                                         ; preds = %if.then.i, %invoke.cont.i
  %m_ptr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %1 = load ptr, ptr %m_ptr.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_4.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %m_res.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  %2 = load ptr, ptr %m_res.i, align 8
  invoke void @freeaddrinfo(ptr noundef %2)
          to label %invoke.cont4.i unwind label %terminate.lpad.i

invoke.cont4.i:                                   ; preds = %if.then3.i
  %m_connSock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %3 = load i32, ptr %m_connSock.i, align 8
  %call6.i = invoke i32 @"\01_close"(i32 noundef %3)
          to label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_4.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %invoke.cont4.i, %if.then3.i, %if.then.i, %entry
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #3
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_4.exit: ; preds = %invoke.cont4.i, %if.end.i
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7ConnectEPKct(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %addr, i16 noundef zeroext %port) #1 align 2 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %err = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef 0) #18
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket7ConnectEPKct, ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #19
  unreachable

cond.end:                                         ; preds = %entry
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %m_ptr, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %cond.end
  %m_connSock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %1 = load i32, ptr %m_connSock, align 8
  %m_ptr3 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %2 = load ptr, ptr %m_ptr3, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %2, i64 0, i32 6
  %3 = load ptr, ptr %ai_addr, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %ai_addrlen, align 8
  %call5 = call i32 @"\01_connect"(i32 noundef %1, ptr noundef %3, i32 noundef %4)
  %cmp = icmp eq i32 %call5, -1
  br i1 %cmp, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.then
  %call7 = call ptr @__error()
  %5 = load i32, ptr %call7, align 4
  store i32 %5, ptr %err, align 4
  %cmp8 = icmp eq i32 %5, 37
  %6 = load i32, ptr %err, align 4
  %cmp9 = icmp eq i32 %6, 36
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then6
  %7 = load i32, ptr %err, align 4
  %cmp11.not = icmp eq i32 %7, 56
  br i1 %cmp11.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end
  %m_res = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  %8 = load ptr, ptr %m_res, align 8
  call void @freeaddrinfo(ptr noundef %8)
  %m_connSock13 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %9 = load i32, ptr %m_connSock13, align 8
  %call14 = call i32 @"\01_close"(i32 noundef %9)
  %m_ptr15 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr15, align 8
  store i1 false, ptr %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.end, %if.then
  %m_connSock18 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %10 = load i32, ptr %m_connSock18, align 8
  %call19 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %10, i32 noundef 3, i32 noundef 0)
  %m_connSock20 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %11 = load i32, ptr %m_connSock20, align 8
  %and = and i32 %call19, -5
  %call21 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %11, i32 noundef 4, i32 noundef %and)
  %m_connSock22 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %12 = load i32, ptr %m_connSock22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  store i32 1, ptr %val.i, align 4
  %call.i1 = call i32 @setsockopt(i32 noundef %12, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %val.i, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %m_connSock23 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %13 = load i32, ptr %m_connSock23, align 8
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %13, i32 noundef 0) #18
  %m_res24 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  %14 = load ptr, ptr %m_res24, align 8
  call void @freeaddrinfo(ptr noundef %14)
  %m_ptr25 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr25, align 8
  store i1 true, ptr %retval, align 1
  br label %return

if.end26:                                         ; preds = %cond.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 1
  store i32 0, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 2
  store i32 1, ptr %ai_socktype, align 8
  %15 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %15 to i32
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portbuf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  %16 = load ptr, ptr %addr.addr, align 8
  %call29 = call i32 @getaddrinfo(ptr noundef %16, ptr noundef nonnull %portbuf, ptr noundef nonnull %hints, ptr noundef nonnull %res)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  store i1 false, ptr %retval, align 1
  br label %return

if.end32:                                         ; preds = %if.end26
  store i32 0, ptr %sock, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end32
  %storemerge.in = phi ptr [ %res, %if.end32 ], [ %ai_next, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %ptr, align 8
  %tobool33.not = icmp eq ptr %storemerge, null
  br i1 %tobool33.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %ptr, align 8
  %ai_family34 = getelementptr inbounds %struct.addrinfo, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %ai_family34, align 4
  %ai_socktype35 = getelementptr inbounds %struct.addrinfo, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %ai_socktype35, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %ai_protocol, align 4
  %call36 = call i32 @socket(i32 noundef %18, i32 noundef %19, i32 noundef %20)
  store i32 %call36, ptr %sock, align 4
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %for.inc, label %if.end39

if.end39:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %21 = load i32, ptr %sock, align 4
  %call40 = call i32 @setsockopt(i32 noundef %21, i32 noundef 65535, i32 noundef 4130, ptr noundef nonnull %val, i32 noundef 4)
  %call42 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %or = or i32 %call42, 4
  %call43 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %21, i32 noundef 4, i32 noundef %or)
  %22 = load ptr, ptr %ptr, align 8
  %ai_addr44 = getelementptr inbounds %struct.addrinfo, ptr %22, i64 0, i32 6
  %23 = load ptr, ptr %ai_addr44, align 8
  %ai_addrlen45 = getelementptr inbounds %struct.addrinfo, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %ai_addrlen45, align 8
  %call46 = call i32 @"\01_connect"(i32 noundef %21, ptr noundef %23, i32 noundef %24)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %for.end, label %if.else

if.else:                                          ; preds = %if.end39
  %call49 = call ptr @__error()
  %25 = load i32, ptr %call49, align 4
  %cmp50.not = icmp eq i32 %25, 36
  br i1 %cmp50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.else
  %26 = load i32, ptr %sock, align 4
  %call52 = call i32 @"\01_close"(i32 noundef %26)
  br label %for.inc

if.end54:                                         ; preds = %if.else
  %27 = load ptr, ptr %res, align 8
  %m_res55 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  store ptr %27, ptr %m_res55, align 8
  %28 = load ptr, ptr %ptr, align 8
  %m_ptr56 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr %28, ptr %m_ptr56, align 8
  %29 = load i32, ptr %sock, align 4
  %m_connSock57 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  store i32 %29, ptr %m_connSock57, align 8
  store i1 false, ptr %retval, align 1
  br label %return

for.inc:                                          ; preds = %for.body, %if.then51
  %30 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %30, i64 0, i32 7
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end39, %for.cond
  %31 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %31)
  %32 = load ptr, ptr %ptr, align 8
  %tobool58.not = icmp eq ptr %32, null
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end60:                                         ; preds = %for.end
  %33 = load i32, ptr %sock, align 4
  %call62 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %33, i32 noundef 3, i32 noundef 0)
  %and63 = and i32 %call62, -5
  %call64 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %33, i32 noundef 4, i32 noundef %and63)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3)
  store i32 1, ptr %val.i3, align 4
  %call.i4 = call i32 @setsockopt(i32 noundef %33, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %val.i3, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3)
  %m_sock65 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %34 = load i32, ptr %sock, align 4
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock65, i32 noundef %34, i32 noundef 0) #18
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end60, %if.then59, %if.end54, %if.then31, %if.end17, %if.then12, %if.then10
  %35 = load i1, ptr %retval, align 1
  ret i1 %35
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef zeroext i1 @_ZNK5tracy6Socket7IsValidEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #4 align 2 {
entry:
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  %cmp = icmp sgt i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

declare i32 @"\01_connect"(i32 noundef, ptr noundef, i32 noundef) #5

declare ptr @__error() #5

declare i32 @"\01_fcntl"(i32 noundef, i32 noundef, ...) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d, i32 noundef %__m) #4 align 2 {
entry:
  call void @_ZNSt3__118__cxx_atomic_storeB6v15007IiEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef nonnull %this, i32 noundef %__d, i32 noundef %__m) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #5

declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket15ConnectBlockingEPKct(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %addr, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef 0) #18
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket15ConnectBlockingEPKct, ptr noundef nonnull @.str, i32 noundef 241, ptr noundef nonnull @.str.1) #19
  unreachable

cond.end:                                         ; preds = %entry
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %0 = load ptr, ptr %m_ptr, align 8
  %tobool.not.not = icmp eq ptr %0, null
  br i1 %tobool.not.not, label %cond.end7, label %cond.true5

cond.true5:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket15ConnectBlockingEPKct, ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.3) #19
  unreachable

cond.end7:                                        ; preds = %cond.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 1
  store i32 0, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 2
  store i32 1, ptr %ai_socktype, align 8
  %1 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %1 to i32
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portbuf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  %2 = load ptr, ptr %addr.addr, align 8
  %call10 = call i32 @getaddrinfo(ptr noundef %2, ptr noundef nonnull %portbuf, ptr noundef nonnull %hints, ptr noundef nonnull %res)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end7
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end7
  store i32 0, ptr %sock, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge.in = phi ptr [ %res, %if.end ], [ %ai_next, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %ptr, align 8
  %tobool11.not = icmp eq ptr %storemerge, null
  br i1 %tobool11.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ptr, align 8
  %ai_family12 = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %ai_family12, align 4
  %ai_socktype13 = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %ai_socktype13, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %ai_protocol, align 4
  %call14 = call i32 @socket(i32 noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call14, ptr %sock, align 4
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %for.inc, label %if.end17

if.end17:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %7 = load i32, ptr %sock, align 4
  %call18 = call i32 @setsockopt(i32 noundef %7, i32 noundef 65535, i32 noundef 4130, ptr noundef nonnull %val, i32 noundef 4)
  %8 = load ptr, ptr %ptr, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %8, i64 0, i32 6
  %9 = load ptr, ptr %ai_addr, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %ai_addrlen, align 8
  %call19 = call i32 @"\01_connect"(i32 noundef %7, ptr noundef %9, i32 noundef %10)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then21, label %for.end

if.then21:                                        ; preds = %if.end17
  %11 = load i32, ptr %sock, align 4
  %call22 = call i32 @"\01_close"(i32 noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then21
  %12 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %12, i64 0, i32 7
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.end17, %for.cond
  %13 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %13)
  %14 = load ptr, ptr %ptr, align 8
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end26:                                         ; preds = %for.end
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %15 = load i32, ptr %sock, align 4
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %15, i32 noundef 0) #18
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then
  %16 = load i1, ptr %retval, align 1
  ret i1 %16
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket4SendEPKvi(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len) #1 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %start = alloca ptr, align 8
  %ret = alloca i64, align 8
  store i32 %len, ptr %len.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket4SendEPKvi, ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @.str.4) #19
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %buf, align 8
  store ptr %0, ptr %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %1 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %sock, align 4
  %3 = load ptr, ptr %buf, align 8
  %4 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %4 to i64
  %call3 = call i64 @"\01_send"(i32 noundef %2, ptr noundef %3, i64 noundef %conv, i32 noundef 524288)
  store i64 %call3, ptr %ret, align 8
  %cmp4 = icmp eq i64 %call3, -1
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %5 = load i64, ptr %ret, align 8
  %6 = load i32, ptr %len.addr, align 4
  %7 = trunc i64 %5 to i32
  %conv6 = sub i32 %6, %7
  store i32 %conv6, ptr %len.addr, align 4
  %8 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %5
  store ptr %add.ptr, ptr %buf, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %buf, align 8
  %10 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  br label %return

return:                                           ; preds = %while.body, %while.end
  %storemerge = phi i32 [ %conv7, %while.end ], [ -1, %while.body ]
  ret i32 %storemerge
}

declare i64 @"\01_send"(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket14GetSendBufSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %bufSize = alloca i32, align 4
  %sz = alloca i32, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 4, ptr %sz, align 4
  %call2 = call i32 @getsockopt(i32 noundef %call, i32 noundef 65535, i32 noundef 4097, ptr noundef nonnull %bufSize, ptr noundef nonnull %sz)
  %0 = load i32, ptr %bufSize, align 4
  ret i32 %0
}

declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket12RecvBufferedEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %len.addr.i4 = alloca i32, align 4
  %timeout.addr.i5 = alloca i32, align 4
  %sock.i6 = alloca i32, align 4
  %buf.i7 = alloca ptr, align 8
  %fd.i8 = alloca %struct.pollfd, align 4
  %len.addr.i = alloca i32, align 4
  %timeout.addr.i = alloca i32, align 4
  %sock.i = alloca i32, align 4
  %buf.i = alloca ptr, align 8
  %fd.i = alloca %struct.pollfd, align 4
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %m_bufLeft, align 4
  %cmp.not = icmp slt i32 %0, %len
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %m_bufPtr, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %conv, i1 false)
  %m_bufPtr2 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %m_bufPtr2, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %m_bufPtr2, align 8
  %5 = load i32, ptr %len.addr, align 4
  %m_bufLeft3 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %6 = load i32, ptr %m_bufLeft3, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %m_bufLeft3, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %m_bufLeft4 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %7 = load i32, ptr %m_bufLeft4, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr7 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %9 = load ptr, ptr %m_bufPtr7, align 8
  %m_bufLeft8 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %10 = load i32, ptr %m_bufLeft8, align 4
  %conv9 = sext i32 %10 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %conv9, i1 false)
  %m_bufLeft10 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %11 = load i32, ptr %m_bufLeft10, align 4
  %m_bufLeft11 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft11, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %12 = load i32, ptr %len.addr, align 4
  %cmp14 = icmp ugt i32 %12, 131071
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load i32, ptr %len.addr, align 4
  %15 = load i32, ptr %timeout.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd.i)
  store i32 %14, ptr %len.addr.i, align 4
  store i32 %15, ptr %timeout.addr.i, align 4
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef 0) #18
  store i32 %call.i, ptr %sock.i, align 4
  store ptr %13, ptr %buf.i, align 8
  store i32 %call.i, ptr %fd.i, align 4
  %events.i = getelementptr inbounds %struct.pollfd, ptr %fd.i, i64 0, i32 1
  store i16 1, ptr %events.i, align 4
  %16 = load i32, ptr %timeout.addr.i, align 4
  %call3.i = call i32 @"\01_poll"(ptr noundef nonnull %fd.i, i32 noundef 1, i32 noundef %16)
  %cmp.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_9.exit

if.then.i:                                        ; preds = %if.then15
  %17 = load i32, ptr %sock.i, align 4
  %18 = load ptr, ptr %buf.i, align 8
  %19 = load i32, ptr %len.addr.i, align 4
  %conv.i = sext i32 %19 to i64
  %call4.i = call i64 @"\01_recv"(i32 noundef %17, ptr noundef %18, i64 noundef %conv.i, i32 noundef 0)
  %conv5.i = trunc i64 %call4.i to i32
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_9.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_9.exit: ; preds = %if.then15, %if.then.i
  %storemerge20 = phi i32 [ %conv5.i, %if.then.i ], [ -1, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd.i)
  store i32 %storemerge20, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %20 = load ptr, ptr %this, align 8
  %21 = load i32, ptr %timeout.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd.i8)
  store i32 131072, ptr %len.addr.i4, align 4
  store i32 %21, ptr %timeout.addr.i5, align 4
  %m_sock.i10 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i11 = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i10, i32 noundef 0) #18
  store i32 %call.i11, ptr %sock.i6, align 4
  store ptr %20, ptr %buf.i7, align 8
  store i32 %call.i11, ptr %fd.i8, align 4
  %events.i12 = getelementptr inbounds %struct.pollfd, ptr %fd.i8, i64 0, i32 1
  store i16 1, ptr %events.i12, align 4
  %22 = load i32, ptr %timeout.addr.i5, align 4
  %call3.i13 = call i32 @"\01_poll"(ptr noundef nonnull %fd.i8, i32 noundef 1, i32 noundef %22)
  %cmp.i14 = icmp sgt i32 %call3.i13, 0
  br i1 %cmp.i14, label %if.then.i18, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10.exit

if.then.i18:                                      ; preds = %if.end16
  %23 = load i32, ptr %sock.i6, align 4
  %24 = load ptr, ptr %buf.i7, align 8
  %25 = load i32, ptr %len.addr.i4, align 4
  %conv.i15 = sext i32 %25 to i64
  %call4.i16 = call i64 @"\01_recv"(i32 noundef %23, ptr noundef %24, i64 noundef %conv.i15, i32 noundef 0)
  %conv5.i17 = trunc i64 %call4.i16 to i32
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10.exit: ; preds = %if.end16, %if.then.i18
  %storemerge = phi i32 [ %conv5.i17, %if.then.i18 ], [ -1, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd.i8)
  %m_bufLeft18 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 %storemerge, ptr %m_bufLeft18, align 4
  %cmp20 = icmp slt i32 %storemerge, 1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10.exit
  %m_bufLeft22 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %26 = load i32, ptr %m_bufLeft22, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10.exit
  %27 = load i32, ptr %len.addr, align 4
  %m_bufLeft24 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %28 = load i32, ptr %m_bufLeft24, align 4
  %cmp25 = icmp slt i32 %27, %28
  %29 = load i32, ptr %len.addr, align 4
  %m_bufLeft26 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %30 = load i32, ptr %m_bufLeft26, align 4
  %cond = select i1 %cmp25, i32 %29, i32 %30
  store i32 %cond, ptr %sz, align 4
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load ptr, ptr %this, align 8
  %conv28 = sext i32 %cond to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %32, i64 %conv28, i1 false)
  %33 = load ptr, ptr %this, align 8
  %idx.ext30 = sext i32 %cond to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %33, i64 %idx.ext30
  %m_bufPtr32 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr %add.ptr31, ptr %m_bufPtr32, align 8
  %34 = load i32, ptr %sz, align 4
  %m_bufLeft33 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %35 = load i32, ptr %m_bufLeft33, align 4
  %sub34 = sub nsw i32 %35, %34
  store i32 %sub34, ptr %m_bufLeft33, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then21, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_9.exit, %if.then6, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  store i32 %call, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %0 = load i32, ptr %timeout.addr, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef %0)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call4 = call i64 @"\01_recv"(i32 noundef %1, ptr noundef %2, i64 noundef %conv, i32 noundef 0)
  %conv5 = trunc i64 %call4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %conv5, %if.then ], [ -1, %entry ]
  ret i32 %storemerge
}

declare i32 @"\01_poll"(ptr noundef, i32 noundef, i32 noundef) #5

declare i64 @"\01_recv"(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket8ReadUpToEPvi(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len) #1 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %rd = alloca i32, align 4
  %res = alloca i64, align 8
  store i32 %len, ptr %len.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  store i32 0, ptr %rd, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %sock, align 4
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call2 = call i64 @"\01_recv"(i32 noundef %1, ptr noundef %2, i64 noundef %conv, i32 noundef 0)
  store i64 %call2, ptr %res, align 8
  %cmp3 = icmp eq i64 %call2, 0
  br i1 %cmp3, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load i64, ptr %res, align 8
  %cmp4 = icmp eq i64 %4, -1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %5 = load i64, ptr %res, align 8
  %6 = load i32, ptr %len.addr, align 4
  %7 = trunc i64 %5 to i32
  %conv8 = sub i32 %6, %7
  store i32 %conv8, ptr %len.addr, align 4
  %8 = load i32, ptr %rd, align 4
  %9 = trunc i64 %5 to i32
  %conv10 = add i32 %8, %9
  store i32 %conv10, ptr %rd, align 4
  %10 = load i64, ptr %res, align 8
  %11 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %10
  store ptr %add.ptr, ptr %buf, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.body, %while.cond
  %12 = load i32, ptr %rd, align 4
  br label %return

return:                                           ; preds = %if.end, %while.end
  %storemerge = phi i32 [ %12, %while.end ], [ -1, %if.end ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket4ReadEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %buf.addr.i = alloca ptr, align 8
  %len.addr.i = alloca ptr, align 8
  %sz.i = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %cbuf = alloca ptr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  store ptr %buf, ptr %cbuf, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.i, %entry
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %timeout.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i)
  store ptr %cbuf, ptr %buf.addr.i, align 8
  store ptr %len.addr, ptr %len.addr.i, align 8
  %2 = load ptr, ptr %cbuf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %call.i = call noundef i32 @_ZN5tracy6Socket12RecvBufferedEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %2, i32 noundef %3, i32 noundef %1)
  store i32 %call.i, ptr %sz.i, align 4
  switch i32 %call.i, label %sw.default.i [
    i32 0, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_11.exit
    i32 -1, label %sw.epilog.i
  ]

sw.default.i:                                     ; preds = %while.body
  %4 = load i32, ptr %sz.i, align 4
  %5 = load ptr, ptr %len.addr.i, align 8
  %6 = load i32, ptr %5, align 4
  %sub.i = sub nsw i32 %6, %4
  store i32 %sub.i, ptr %5, align 4
  %7 = load ptr, ptr %buf.addr.i, align 8
  %8 = load ptr, ptr %7, align 8
  %idx.ext.i = sext i32 %4 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %7, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %while.body, %sw.default.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i)
  br label %while.cond, !llvm.loop !11

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_11.exit: ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i)
  br label %return

return:                                           ; preds = %while.cond, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_11.exit
  %9 = xor i1 %cmp, true
  ret i1 %9
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket8ReadImplERPcRii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef nonnull align 8 dereferenceable(8) %buf, ptr noundef nonnull align 4 dereferenceable(4) %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval.i = alloca i32, align 4
  %buf.addr.i = alloca ptr, align 8
  %len.addr.i = alloca i32, align 4
  %timeout.addr.i = alloca i32, align 4
  %sz.i = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %sz = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %buf, align 8
  %1 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i)
  store ptr %0, ptr %buf.addr.i, align 8
  store i32 %1, ptr %len.addr.i, align 4
  store i32 %timeout, ptr %timeout.addr.i, align 4
  %m_bufLeft.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %2 = load i32, ptr %m_bufLeft.i, align 4
  %cmp.i.not = icmp sgt i32 %1, %2
  br i1 %cmp.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = load ptr, ptr %buf.addr.i, align 8
  %m_bufPtr.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %m_bufPtr.i, align 8
  %5 = load i32, ptr %len.addr.i, align 4
  %conv.i = sext i32 %5 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %conv.i, i1 false)
  %m_bufPtr2.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %6 = load ptr, ptr %m_bufPtr2.i, align 8
  %idx.ext.i = sext i32 %5 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %6, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %m_bufPtr2.i, align 8
  %7 = load i32, ptr %len.addr.i, align 4
  %m_bufLeft3.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %8 = load i32, ptr %m_bufLeft3.i, align 4
  %sub.i = sub nsw i32 %8, %7
  store i32 %sub.i, ptr %m_bufLeft3.i, align 4
  store i32 %7, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit

if.end.i:                                         ; preds = %entry
  %m_bufLeft4.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %9 = load i32, ptr %m_bufLeft4.i, align 4
  %cmp5.i = icmp sgt i32 %9, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  %10 = load ptr, ptr %buf.addr.i, align 8
  %m_bufPtr7.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %11 = load ptr, ptr %m_bufPtr7.i, align 8
  %m_bufLeft8.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %12 = load i32, ptr %m_bufLeft8.i, align 4
  %conv9.i = sext i32 %12 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %conv9.i, i1 false)
  %m_bufLeft10.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %13 = load i32, ptr %m_bufLeft10.i, align 4
  %m_bufLeft11.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft11.i, align 4
  store i32 %13, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit

if.end12.i:                                       ; preds = %if.end.i
  %14 = load i32, ptr %len.addr.i, align 4
  %cmp14.i = icmp ugt i32 %14, 131071
  br i1 %cmp14.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  %15 = load ptr, ptr %buf.addr.i, align 8
  %16 = load i32, ptr %len.addr.i, align 4
  %17 = load i32, ptr %timeout.addr.i, align 4
  %call.i = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %15, i32 noundef %16, i32 noundef %17)
  store i32 %call.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit

if.end16.i:                                       ; preds = %if.end12.i
  %18 = load ptr, ptr %this, align 8
  %19 = load i32, ptr %timeout.addr.i, align 4
  %call17.i = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %18, i32 noundef 131072, i32 noundef %19)
  %m_bufLeft18.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 %call17.i, ptr %m_bufLeft18.i, align 4
  %cmp20.i = icmp slt i32 %call17.i, 1
  br i1 %cmp20.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %if.end16.i
  %m_bufLeft22.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %20 = load i32, ptr %m_bufLeft22.i, align 4
  store i32 %20, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit

if.end23.i:                                       ; preds = %if.end16.i
  %21 = load i32, ptr %len.addr.i, align 4
  %m_bufLeft24.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %22 = load i32, ptr %m_bufLeft24.i, align 4
  %cmp25.i = icmp slt i32 %21, %22
  %m_bufLeft26.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %cond.i.in = select i1 %cmp25.i, ptr %len.addr.i, ptr %m_bufLeft26.i
  %cond.i = load i32, ptr %cond.i.in, align 4
  store i32 %cond.i, ptr %sz.i, align 4
  %23 = load ptr, ptr %buf.addr.i, align 8
  %24 = load ptr, ptr %this, align 8
  %conv28.i = sext i32 %cond.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 %conv28.i, i1 false)
  %25 = load ptr, ptr %this, align 8
  %idx.ext30.i = sext i32 %cond.i to i64
  %add.ptr31.i = getelementptr inbounds i8, ptr %25, i64 %idx.ext30.i
  %m_bufPtr32.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr %add.ptr31.i, ptr %m_bufPtr32.i, align 8
  %26 = load i32, ptr %sz.i, align 4
  %m_bufLeft33.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %27 = load i32, ptr %m_bufLeft33.i, align 4
  %sub34.i = sub nsw i32 %27, %26
  store i32 %sub34.i, ptr %m_bufLeft33.i, align 4
  store i32 %26, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit: ; preds = %if.then.i, %if.then6.i, %if.then15.i, %if.then21.i, %if.end23.i
  %28 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i)
  store i32 %28, ptr %sz, align 4
  switch i32 %28, label %sw.default [
    i32 0, label %return
    i32 -1, label %sw.epilog
  ]

sw.default:                                       ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit
  %29 = load i32, ptr %sz, align 4
  %30 = load ptr, ptr %len.addr, align 8
  %31 = load i32, ptr %30, align 4
  %sub = sub nsw i32 %31, %29
  store i32 %sub, ptr %30, align 4
  %32 = load ptr, ptr %buf.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  store ptr %add.ptr, ptr %32, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit, %sw.default
  br label %return

return:                                           ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit, %sw.epilog
  %storemerge = phi i1 [ true, %sw.epilog ], [ false, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12.exit ]
  ret i1 %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7ReadRawEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %len.addr.i = alloca i32, align 4
  %timeout.addr.i = alloca i32, align 4
  %sock.i = alloca i32, align 4
  %buf.i = alloca ptr, align 8
  %fd.i = alloca %struct.pollfd, align 4
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %sz = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge = phi ptr [ %_buf, %entry ], [ %add.ptr, %if.end ]
  store ptr %storemerge, ptr %buf, align 8
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %buf, align 8
  %2 = load i32, ptr %len.addr, align 4
  %3 = load i32, ptr %timeout.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd.i)
  store i32 %2, ptr %len.addr.i, align 4
  store i32 %3, ptr %timeout.addr.i, align 4
  %m_sock.i = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call.i = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock.i, i32 noundef 0) #18
  store i32 %call.i, ptr %sock.i, align 4
  store ptr %1, ptr %buf.i, align 8
  store i32 %call.i, ptr %fd.i, align 4
  %events.i = getelementptr inbounds %struct.pollfd, ptr %fd.i, i64 0, i32 1
  store i16 1, ptr %events.i, align 4
  %4 = load i32, ptr %timeout.addr.i, align 4
  %call3.i = call i32 @"\01_poll"(ptr noundef nonnull %fd.i, i32 noundef 1, i32 noundef %4)
  %cmp.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13.exit

if.then.i:                                        ; preds = %while.body
  %5 = load i32, ptr %sock.i, align 4
  %6 = load ptr, ptr %buf.i, align 8
  %7 = load i32, ptr %len.addr.i, align 4
  %conv.i = sext i32 %7 to i64
  %call4.i = call i64 @"\01_recv"(i32 noundef %5, ptr noundef %6, i64 noundef %conv.i, i32 noundef 0)
  %conv5.i = trunc i64 %call4.i to i32
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13.exit: ; preds = %while.body, %if.then.i
  %storemerge2 = phi i32 [ %conv5.i, %if.then.i ], [ -1, %while.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd.i)
  store i32 %storemerge2, ptr %sz, align 4
  %cmp2 = icmp slt i32 %storemerge2, 1
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13.exit
  %8 = load i32, ptr %sz, align 4
  %9 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, ptr %len.addr, align 4
  %10 = load ptr, ptr %buf, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext
  br label %while.cond, !llvm.loop !12

return:                                           ; preds = %while.cond, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13.exit
  %11 = xor i1 %cmp, true
  ret i1 %11
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7HasDataEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %sock = alloca i32, align 4
  %fd = alloca %struct.pollfd, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %m_bufLeft, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  store i32 %1, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef 0)
  %cmp4 = icmp sgt i32 %call3, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i1 [ %cmp4, %if.end ], [ true, %entry ]
  ret i1 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketC2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketC1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketD2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #1 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call = call i32 @"\01_close"(i32 noundef %1)
  store i32 -1, ptr %this, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketD1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.i.not = icmp eq i32 %0, -1
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_15.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  invoke void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_15.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #3
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_15.exit: ; preds = %if.then.i, %entry
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy12ListenSocket6ListenEti(ptr noundef nonnull align 4 dereferenceable(4) %this, i16 noundef zeroext %port, i32 noundef %backlog) #1 align 2 {
entry:
  %port.addr.i2 = alloca i16, align 2
  %res.addr.i4 = alloca ptr, align 8
  %hints.i5 = alloca %struct.addrinfo, align 8
  %onlyLocalhost.i6 = alloca ptr, align 8
  %portbuf.i7 = alloca [32 x i8], align 1
  %sock.i8 = alloca i32, align 4
  %port.addr.i = alloca i16, align 2
  %res.addr.i = alloca ptr, align 8
  %hints.i = alloca %struct.addrinfo, align 8
  %onlyLocalhost.i = alloca ptr, align 8
  %portbuf.i = alloca [32 x i8], align 1
  %sock.i = alloca i32, align 4
  %retval = alloca i1, align 1
  %port.addr = alloca i16, align 2
  %backlog.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %onlyIPv4 = alloca ptr, align 8
  %val = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  store i32 %backlog, ptr %backlog.addr, align 4
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy12ListenSocket6ListenEti, ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @.str.5) #19
  unreachable

cond.end:                                         ; preds = %entry
  store ptr null, ptr %res, align 8
  %call = call noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef nonnull @.str.6)
  store ptr %call, ptr %onlyIPv4, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %1 = load ptr, ptr %onlyIPv4, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2.not = icmp eq i8 %2, 49
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %3 = load i16, ptr %port.addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.addr.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hints.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %onlyLocalhost.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %portbuf.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i)
  store i16 %3, ptr %port.addr.i, align 2
  store ptr %res, ptr %res.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %hints.i, i8 0, i64 48, i1 false)
  %ai_family1.i = getelementptr inbounds %struct.addrinfo, ptr %hints.i, i64 0, i32 1
  store i32 30, ptr %ai_family1.i, align 4
  %ai_socktype.i = getelementptr inbounds %struct.addrinfo, ptr %hints.i, i64 0, i32 2
  store i32 1, ptr %ai_socktype.i, align 8
  %call.i = call noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef nonnull @.str.8)
  store ptr %call.i, ptr %onlyLocalhost.i, align 8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then
  %4 = load ptr, ptr %onlyLocalhost.i, align 8
  %5 = load i8, ptr %4, align 1
  %cmp.i.not = icmp eq i8 %5, 49
  br i1 %cmp.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.then
  store i32 1, ptr %hints.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  %6 = load i16, ptr %port.addr.i, align 2
  %conv2.i = zext i16 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portbuf.i, ptr noundef nonnull @.str.2, i32 noundef %conv2.i)
  %7 = load ptr, ptr %res.addr.i, align 8
  %call5.i = call i32 @getaddrinfo(ptr noundef null, ptr noundef nonnull %portbuf.i, ptr noundef nonnull %hints.i, ptr noundef %7)
  %cmp6.i.not = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i.not, label %if.end8.i, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_16.exit

if.end8.i:                                        ; preds = %if.end.i
  %8 = load ptr, ptr %res.addr.i, align 8
  %9 = load ptr, ptr %8, align 8
  %ai_family9.i = getelementptr inbounds %struct.addrinfo, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %ai_family9.i, align 4
  %ai_socktype10.i = getelementptr inbounds %struct.addrinfo, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %ai_socktype10.i, align 8
  %ai_protocol.i = getelementptr inbounds %struct.addrinfo, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %ai_protocol.i, align 4
  %call11.i = call i32 @socket(i32 noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call11.i, ptr %sock.i, align 4
  %cmp12.i = icmp eq i32 %call11.i, -1
  br i1 %cmp12.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end8.i
  %13 = load ptr, ptr %res.addr.i, align 8
  %14 = load ptr, ptr %13, align 8
  call void @freeaddrinfo(ptr noundef %14)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end8.i
  %15 = load i32, ptr %sock.i, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_16.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_16.exit: ; preds = %if.end.i, %if.end14.i
  %storemerge = phi i32 [ %15, %if.end14.i ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.addr.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hints.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %onlyLocalhost.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %portbuf.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i)
  store i32 %storemerge, ptr %this, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_16.exit, %lor.lhs.false
  %16 = load i32, ptr %this, align 4
  %cmp6 = icmp eq i32 %16, -1
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %17 = load i16, ptr %port.addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port.addr.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.addr.i4)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hints.i5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %onlyLocalhost.i6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %portbuf.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i8)
  store i16 %17, ptr %port.addr.i2, align 2
  store ptr %res, ptr %res.addr.i4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %hints.i5, i8 0, i64 48, i1 false)
  %ai_family1.i9 = getelementptr inbounds %struct.addrinfo, ptr %hints.i5, i64 0, i32 1
  store i32 2, ptr %ai_family1.i9, align 4
  %ai_socktype.i10 = getelementptr inbounds %struct.addrinfo, ptr %hints.i5, i64 0, i32 2
  store i32 1, ptr %ai_socktype.i10, align 8
  %call.i11 = call noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef nonnull @.str.8)
  store ptr %call.i11, ptr %onlyLocalhost.i6, align 8
  %tobool.i12.not = icmp eq ptr %call.i11, null
  br i1 %tobool.i12.not, label %if.then.i16, label %lor.lhs.false.i15

lor.lhs.false.i15:                                ; preds = %if.then7
  %18 = load ptr, ptr %onlyLocalhost.i6, align 8
  %19 = load i8, ptr %18, align 1
  %cmp.i14.not = icmp eq i8 %19, 49
  br i1 %cmp.i14.not, label %if.end.i21, label %if.then.i16

if.then.i16:                                      ; preds = %lor.lhs.false.i15, %if.then7
  store i32 1, ptr %hints.i5, align 8
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i16, %lor.lhs.false.i15
  %20 = load i16, ptr %port.addr.i2, align 2
  %conv2.i17 = zext i16 %20 to i32
  %call3.i18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portbuf.i7, ptr noundef nonnull @.str.2, i32 noundef %conv2.i17)
  %21 = load ptr, ptr %res.addr.i4, align 8
  %call5.i19 = call i32 @getaddrinfo(ptr noundef null, ptr noundef nonnull %portbuf.i7, ptr noundef nonnull %hints.i5, ptr noundef %21)
  %cmp6.i20.not = icmp eq i32 %call5.i19, 0
  br i1 %cmp6.i20.not, label %if.end8.i28, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_17.exit

if.end8.i28:                                      ; preds = %if.end.i21
  %22 = load ptr, ptr %res.addr.i4, align 8
  %23 = load ptr, ptr %22, align 8
  %ai_family9.i23 = getelementptr inbounds %struct.addrinfo, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %ai_family9.i23, align 4
  %ai_socktype10.i24 = getelementptr inbounds %struct.addrinfo, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %ai_socktype10.i24, align 8
  %ai_protocol.i25 = getelementptr inbounds %struct.addrinfo, ptr %23, i64 0, i32 3
  %26 = load i32, ptr %ai_protocol.i25, align 4
  %call11.i26 = call i32 @socket(i32 noundef %24, i32 noundef %25, i32 noundef %26)
  store i32 %call11.i26, ptr %sock.i8, align 4
  %cmp12.i27 = icmp eq i32 %call11.i26, -1
  br i1 %cmp12.i27, label %if.then13.i29, label %if.end14.i30

if.then13.i29:                                    ; preds = %if.end8.i28
  %27 = load ptr, ptr %res.addr.i4, align 8
  %28 = load ptr, ptr %27, align 8
  call void @freeaddrinfo(ptr noundef %28)
  br label %if.end14.i30

if.end14.i30:                                     ; preds = %if.then13.i29, %if.end8.i28
  %29 = load i32, ptr %sock.i8, align 4
  br label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_17.exit

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_17.exit: ; preds = %if.end.i21, %if.end14.i30
  %storemerge39 = phi i32 [ %29, %if.end14.i30 ], [ -1, %if.end.i21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.addr.i2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.addr.i4)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hints.i5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %onlyLocalhost.i6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %portbuf.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i8)
  store i32 %storemerge39, ptr %this, align 4
  %cmp11 = icmp eq i32 %storemerge39, -1
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_17.exit
  store i1 false, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_17.exit, %if.end
  store i32 0, ptr %val, align 4
  %30 = load i32, ptr %this, align 4
  %call16 = call i32 @setsockopt(i32 noundef %30, i32 noundef 41, i32 noundef 27, ptr noundef nonnull %val, i32 noundef 4)
  store i32 1, ptr %val, align 4
  %31 = load i32, ptr %this, align 4
  %call18 = call i32 @setsockopt(i32 noundef %31, i32 noundef 65535, i32 noundef 4, ptr noundef nonnull %val, i32 noundef 4)
  %32 = load i32, ptr %this, align 4
  %33 = load ptr, ptr %res, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %33, i64 0, i32 6
  %34 = load ptr, ptr %ai_addr, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %ai_addrlen, align 8
  %call20 = call i32 @"\01_bind"(i32 noundef %32, ptr noundef %34, i32 noundef %35)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  %36 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %36)
  %37 = load i32, ptr %this, align 4
  %cmp.i31.not = icmp eq i32 %37, -1
  br i1 %cmp.i31.not, label %cond.true.i, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_18.exit

cond.true.i:                                      ; preds = %if.then22
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.7) #19
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_18.exit: ; preds = %if.then22
  %38 = load i32, ptr %this, align 4
  %call.i32 = call i32 @"\01_close"(i32 noundef %38)
  store i32 -1, ptr %this, align 4
  store i1 false, ptr %retval, align 1
  br label %return

if.end23:                                         ; preds = %if.end14
  %39 = load i32, ptr %this, align 4
  %40 = load i32, ptr %backlog.addr, align 4
  %call25 = call i32 @"\01_listen"(i32 noundef %39, i32 noundef %40)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %41 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %41)
  %42 = load i32, ptr %this, align 4
  %cmp.i35.not = icmp eq i32 %42, -1
  br i1 %cmp.i35.not, label %cond.true.i37, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_19.exit

cond.true.i37:                                    ; preds = %if.then27
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.7) #19
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_19.exit: ; preds = %if.then27
  %43 = load i32, ptr %this, align 4
  %call.i38 = call i32 @"\01_close"(i32 noundef %43)
  store i32 -1, ptr %this, align 4
  store i1 false, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %if.end23
  %44 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %44)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end28, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_19.exit, %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_18.exit, %if.then12
  %45 = load i1, ptr %retval, align 1
  ret i1 %45
}

declare noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef) #5

declare i32 @"\01_bind"(i32 noundef, ptr noundef, i32 noundef) #5

declare i32 @"\01_listen"(i32 noundef, i32 noundef) #5

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocket6AcceptEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #0 align 2 {
entry:
  %val.i = alloca i32, align 4
  %retval = alloca ptr, align 8
  %remote = alloca %struct.sockaddr_storage, align 8
  %sz = alloca i32, align 4
  %fd = alloca %struct.pollfd, align 4
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 128, ptr %sz, align 4
  %0 = load i32, ptr %this, align 4
  store i32 %0, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %call = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef 10)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call4 = call i32 @"\01_accept"(i32 noundef %1, ptr noundef nonnull %remote, ptr noundef nonnull %sz)
  store i32 %call4, ptr %sock, align 4
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, ptr %val, align 4
  %2 = load i32, ptr %sock, align 4
  %call7 = call i32 @setsockopt(i32 noundef %2, i32 noundef 65535, i32 noundef 4130, ptr noundef nonnull %val, i32 noundef 4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  store i32 1, ptr %val.i, align 4
  %call.i = call i32 @setsockopt(i32 noundef %2, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %val.i, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  %call.i1 = call dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #17
  %3 = load i32, ptr %sock, align 4
  %call.i3 = call noundef ptr @_ZN5tracy6SocketC2Ei(ptr noundef nonnull align 8 dereferenceable(44) %call.i1, i32 noundef %3)
  store ptr %call.i1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then6
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare i32 @"\01_accept"(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastC2Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastC1Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastD2Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this) #1 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 631, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call = call i32 @"\01_close"(i32 noundef %1)
  store i32 -1, ptr %this, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastD1Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.i.not = icmp eq i32 %0, -1
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_24.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  invoke void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this)
          to label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_24.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #3
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_24.exit: ; preds = %if.then.i, %entry
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy12UdpBroadcast4OpenEPKct(ptr noundef nonnull align 4 dereferenceable(8) %this, ptr noundef %addr, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %broadcast = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy12UdpBroadcast4OpenEPKct, ptr noundef nonnull @.str, i32 noundef 583, ptr noundef nonnull @.str.5) #19
  unreachable

cond.end:                                         ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 1
  store i32 2, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i64 0, i32 2
  store i32 2, ptr %ai_socktype, align 8
  %1 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %1 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %portbuf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  %2 = load ptr, ptr %addr.addr, align 8
  %call3 = call i32 @getaddrinfo(ptr noundef %2, ptr noundef nonnull %portbuf, ptr noundef nonnull %hints, ptr noundef nonnull %res)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 0, ptr %sock, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge.in = phi ptr [ %res, %if.end ], [ %ai_next, %for.inc ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %ptr, align 8
  %tobool.not = icmp eq ptr %storemerge, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ptr, align 8
  %ai_family5 = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %ai_family5, align 4
  %ai_socktype6 = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %ai_socktype6, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %ai_protocol, align 4
  %call7 = call i32 @socket(i32 noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call7, ptr %sock, align 4
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %7 = load i32, ptr %sock, align 4
  %call11 = call i32 @setsockopt(i32 noundef %7, i32 noundef 65535, i32 noundef 4130, ptr noundef nonnull %val, i32 noundef 4)
  store i32 1, ptr %broadcast, align 4
  %call12 = call i32 @setsockopt(i32 noundef %7, i32 noundef 65535, i32 noundef 32, ptr noundef nonnull %broadcast, i32 noundef 4)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then14, label %for.end

if.then14:                                        ; preds = %if.end10
  %8 = load i32, ptr %sock, align 4
  %call15 = call i32 @"\01_close"(i32 noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then14
  %9 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %9, i64 0, i32 7
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.end10, %for.cond
  %10 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %10)
  %11 = load ptr, ptr %ptr, align 8
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end19:                                         ; preds = %for.end
  %12 = load i32, ptr %sock, align 4
  store i32 %12, ptr %this, align 4
  %13 = load ptr, ptr %addr.addr, align 8
  %m_addr = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this, i64 0, i32 1
  %call21 = call i32 @inet_pton(i32 noundef 2, ptr noundef %13, ptr noundef nonnull %m_addr)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then
  %14 = load i1, ptr %retval, align 1
  ret i1 %14
}

declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy12UdpBroadcast4SendEtPKvi(ptr noundef nonnull align 4 dereferenceable(8) %this, i16 noundef zeroext %port, ptr noundef %data, i32 noundef %len) #1 align 2 {
entry:
  %port.addr = alloca i16, align 2
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %addr = alloca %struct.sockaddr_in, align 4
  store i16 %port, ptr %port.addr, align 2
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket4SendEPKvi, ptr noundef nonnull @.str, i32 noundef 642, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %1 = load i16, ptr %port.addr, align 2
  %2 = call i1 @llvm.is.constant.i16(i16 %1)
  %3 = load i16, ptr %port.addr, align 2
  %rev = call i16 @llvm.bswap.i16(i16 %3)
  %4 = load i16, ptr %port.addr, align 2
  %or.i = call i16 @llvm.bswap.i16(i16 %4)
  %cond = select i1 %2, i16 %rev, i16 %or.i
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 2
  store i16 %cond, ptr %sin_port, align 2
  %m_addr = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this, i64 0, i32 1
  %5 = load i32, ptr %m_addr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  store i32 %5, ptr %sin_addr, align 4
  %6 = load i32, ptr %this, align 4
  %7 = load ptr, ptr %data.addr, align 8
  %8 = load i32, ptr %len.addr, align 4
  %conv9 = sext i32 %8 to i64
  %call10 = call i64 @"\01_sendto"(i32 noundef %6, ptr noundef %7, i64 noundef %conv9, i32 noundef 524288, ptr noundef nonnull %addr, i32 noundef 16)
  %conv11 = trunc i64 %call10 to i32
  ret i32 %conv11
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #9

declare i64 @"\01_sendto"(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressC2Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  store i32 0, ptr %this, align 4
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this, i64 0, i32 1
  store i8 0, ptr %m_text, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressC1Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  store i32 0, ptr %this, align 4
  %m_text.i = getelementptr inbounds %"class.tracy::IpAddress", ptr %this, i64 0, i32 1
  store i8 0, ptr %m_text.i, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressD2Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressD1Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy9IpAddress3SetERK8sockaddr(ptr noundef nonnull align 4 dereferenceable(21) %this, ptr noundef nonnull align 1 dereferenceable(16) %addr) #1 align 2 {
entry:
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this, i64 0, i32 1
  %call = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %sin_addr, ptr noundef nonnull %m_text, i32 noundef 17)
  %sin_addr2 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  %0 = load i32, ptr %sin_addr2, align 4
  store i32 %0, ptr %this, align 4
  ret void
}

declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenC2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenC1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenD2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #1 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call = call i32 @"\01_close"(i32 noundef %1)
  store i32 -1, ptr %this, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenD1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.i.not = icmp eq i32 %0, -1
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_29.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  invoke void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_29.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #3
  unreachable

pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_29.exit: ; preds = %if.then.i, %entry
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy9UdpListen6ListenEt(ptr noundef nonnull align 4 dereferenceable(4) %this, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %port.addr = alloca i16, align 2
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %reuse = alloca i32, align 4
  %broadcast = alloca i32, align 4
  %addr = alloca %struct.sockaddr_in, align 4
  store i16 %port, ptr %port.addr, align 2
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy12ListenSocket6ListenEti, ptr noundef nonnull @.str, i32 noundef 688, ptr noundef nonnull @.str.5) #19
  unreachable

cond.end:                                         ; preds = %entry
  %call = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0)
  store i32 %call, ptr %sock, align 4
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 1, ptr %val, align 4
  %1 = load i32, ptr %sock, align 4
  %call3 = call i32 @setsockopt(i32 noundef %1, i32 noundef 65535, i32 noundef 4130, ptr noundef nonnull %val, i32 noundef 4)
  store i32 1, ptr %reuse, align 4
  %call4 = call i32 @setsockopt(i32 noundef %1, i32 noundef 65535, i32 noundef 4, ptr noundef nonnull %reuse, i32 noundef 4)
  store i32 1, ptr %broadcast, align 4
  %call5 = call i32 @setsockopt(i32 noundef %1, i32 noundef 65535, i32 noundef 32, ptr noundef nonnull %broadcast, i32 noundef 4)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %2 = load i32, ptr %sock, align 4
  %call8 = call i32 @"\01_close"(i32 noundef %2)
  store i1 false, ptr %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %3 = load i16, ptr %port.addr, align 2
  %4 = call i1 @llvm.is.constant.i16(i16 %3)
  %5 = load i16, ptr %port.addr, align 2
  %rev = call i16 @llvm.bswap.i16(i16 %5)
  %6 = load i16, ptr %port.addr, align 2
  %or.i = call i16 @llvm.bswap.i16(i16 %6)
  %cond = select i1 %4, i16 %rev, i16 %or.i
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 2
  store i16 %cond, ptr %sin_port, align 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  store i32 0, ptr %sin_addr, align 4
  %7 = load i32, ptr %sock, align 4
  %call17 = call i32 @"\01_bind"(i32 noundef %7, ptr noundef nonnull %addr, i32 noundef 16)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end9
  %8 = load i32, ptr %sock, align 4
  %call20 = call i32 @"\01_close"(i32 noundef %8)
  store i1 false, ptr %retval, align 1
  br label %return

if.end21:                                         ; preds = %if.end9
  %9 = load i32, ptr %sock, align 4
  store i32 %9, ptr %this, align 4
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then7, %if.then
  %10 = load i1, ptr %retval, align 1
  ret i1 %10
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy9UdpListen4ReadERmRNS_9IpAddressEi(ptr noundef nonnull align 4 dereferenceable(4) %this, ptr noundef nonnull align 8 dereferenceable(8) %len, ptr noundef nonnull align 4 dereferenceable(21) %addr, i32 noundef %timeout) #1 align 2 {
entry:
  %len.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  %sa = alloca %struct.sockaddr, align 1
  %salen = alloca i32, align 4
  store ptr %len, ptr %len.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  %0 = load i32, ptr %this, align 4
  store i32 %0, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %call = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef %timeout)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 16, ptr %salen, align 4
  %1 = load i32, ptr %this, align 4
  %call4 = call i64 @"\01_recvfrom"(i32 noundef %1, ptr noundef nonnull @_ZZN5tracy9UdpListen4ReadERmRNS_9IpAddressEiE3buf, i64 noundef 2048, i32 noundef 0, ptr noundef nonnull %sa, ptr noundef nonnull %salen)
  %2 = load ptr, ptr %len.addr, align 8
  store i64 %call4, ptr %2, align 8
  %3 = load ptr, ptr %addr.addr, align 8
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i64 0, i32 3
  %m_text.i = getelementptr inbounds %"class.tracy::IpAddress", ptr %3, i64 0, i32 1
  %call.i = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %sin_addr.i, ptr noundef nonnull %m_text.i, i32 noundef 17)
  %sin_addr2.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i64 0, i32 3
  %4 = load i32, ptr %sin_addr2.i, align 4
  store i32 %4, ptr %3, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ @_ZZN5tracy9UdpListen4ReadERmRNS_9IpAddressEiE3buf, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

declare i64 @"\01_recvfrom"(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #10

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIiEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIiLb1EEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d) #18
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIiLb1EEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIiLb0EEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d) #18
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIiLb0EEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d) #18
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC1B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__value) #18
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__cxx_atomic_base_implIiEC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__value) #18
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__cxx_atomic_base_implIiEC2Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  store i32 %__value, ptr %this, align 4
  ret ptr %this
}

declare void @free(ptr noundef) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__117__cxx_atomic_loadB6v15007IiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a, i32 noundef %__order) #4 {
entry:
  %atomic-temp = alloca i32, align 4
  switch i32 %__order, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %0 = load atomic i32, ptr %__a monotonic, align 4
  store i32 %0, ptr %atomic-temp, align 4
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %1 = load atomic i32, ptr %__a acquire, align 4
  store i32 %1, ptr %atomic-temp, align 4
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %2 = load atomic i32, ptr %__a seq_cst, align 4
  store i32 %2, ptr %atomic-temp, align 4
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %3 = load i32, ptr %atomic-temp, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeB6v15007IiEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a, i32 noundef %__val, i32 noundef %__order) #4 {
entry:
  %.atomictmp = alloca i32, align 4
  store i32 %__val, ptr %.atomictmp, align 4
  switch i32 %__order, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %0 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %0, ptr %__a monotonic, align 4
  br label %atomic.continue

release:                                          ; preds = %entry
  %1 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %1, ptr %__a release, align 4
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %2 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %2, ptr %__a seq_cst, align 4
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: alwaysinline ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_1(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #11 align 2 {
entry:
  %call = call noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef 131072)
  store ptr %call, ptr %this, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef -1) #18
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this
}

; Function Attrs: alwaysinline ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_3(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #11 align 2 {
entry:
  %call = call noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef 131072)
  store ptr %call, ptr %this, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %sock) #18
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_4(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load ptr, ptr %this, align 8
  invoke void @_ZN5tracyL10tracy_freeEPv(ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  invoke void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %invoke.cont
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 5
  %1 = load ptr, ptr %m_ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %m_res = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 4
  %2 = load ptr, ptr %m_res, align 8
  invoke void @freeaddrinfo(ptr noundef %2)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then3
  %m_connSock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 6
  %3 = load i32, ptr %m_connSock, align 8
  %call6 = invoke i32 @"\01_close"(i32 noundef %3)
          to label %if.end7 unwind label %terminate.lpad

if.end7:                                          ; preds = %invoke.cont4, %if.end
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4

terminate.lpad:                                   ; preds = %invoke.cont4, %if.then3, %if.then, %entry
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #3
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef zeroext i1 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_5(ptr noundef nonnull align 8 dereferenceable(44) %this) #13 align 2 {
entry:
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  %cmp = icmp sgt i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef zeroext i1 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_8(ptr noundef nonnull align 8 dereferenceable(44) %this) #13 align 2 {
entry:
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  %cmp = icmp sgt i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define noundef i32 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_9(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #14 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  store i32 %call, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %0 = load i32, ptr %timeout.addr, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef %0)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call4 = call i64 @"\01_recv"(i32 noundef %1, ptr noundef %2, i64 noundef %conv, i32 noundef 0)
  %conv5 = trunc i64 %call4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %conv5, %if.then ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define noundef i32 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_10(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #14 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  store i32 %call, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %0 = load i32, ptr %timeout.addr, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef %0)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call4 = call i64 @"\01_recv"(i32 noundef %1, ptr noundef %2, i64 noundef %conv, i32 noundef 0)
  %conv5 = trunc i64 %call4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %conv5, %if.then ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define noundef zeroext i1 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_11(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef nonnull align 8 dereferenceable(8) %buf, ptr noundef nonnull align 4 dereferenceable(4) %len, i32 noundef %timeout) #14 align 2 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %sz = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %buf, align 8
  %1 = load i32, ptr %len, align 4
  %call = call noundef i32 @_ZN5tracy6Socket12RecvBufferedEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %0, i32 noundef %1, i32 noundef %timeout)
  store i32 %call, ptr %sz, align 4
  switch i32 %call, label %sw.default [
    i32 0, label %return
    i32 -1, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %2 = load i32, ptr %sz, align 4
  %3 = load ptr, ptr %len.addr, align 8
  %4 = load i32, ptr %3, align 4
  %sub = sub nsw i32 %4, %2
  store i32 %sub, ptr %3, align 4
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default
  br label %return

return:                                           ; preds = %entry, %sw.epilog
  %storemerge = phi i1 [ true, %sw.epilog ], [ false, %entry ]
  ret i1 %storemerge
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define noundef i32 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_12(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %buf, i32 noundef %len, i32 noundef %timeout) #14 align 2 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %0 = load i32, ptr %m_bufLeft, align 4
  %cmp.not = icmp slt i32 %0, %len
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %m_bufPtr, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %conv, i1 false)
  %m_bufPtr2 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %m_bufPtr2, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %m_bufPtr2, align 8
  %5 = load i32, ptr %len.addr, align 4
  %m_bufLeft3 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %6 = load i32, ptr %m_bufLeft3, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %m_bufLeft3, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %m_bufLeft4 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %7 = load i32, ptr %m_bufLeft4, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr7 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  %9 = load ptr, ptr %m_bufPtr7, align 8
  %m_bufLeft8 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %10 = load i32, ptr %m_bufLeft8, align 4
  %conv9 = sext i32 %10 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %conv9, i1 false)
  %m_bufLeft10 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %11 = load i32, ptr %m_bufLeft10, align 4
  %m_bufLeft11 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 0, ptr %m_bufLeft11, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %12 = load i32, ptr %len.addr, align 4
  %cmp14 = icmp ugt i32 %12, 131071
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load i32, ptr %len.addr, align 4
  %15 = load i32, ptr %timeout.addr, align 4
  %call = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %13, i32 noundef %14, i32 noundef %15)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %16 = load ptr, ptr %this, align 8
  %17 = load i32, ptr %timeout.addr, align 4
  %call17 = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %16, i32 noundef 131072, i32 noundef %17)
  %m_bufLeft18 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  store i32 %call17, ptr %m_bufLeft18, align 4
  %cmp20 = icmp slt i32 %call17, 1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %m_bufLeft22 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %18 = load i32, ptr %m_bufLeft22, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  %19 = load i32, ptr %len.addr, align 4
  %m_bufLeft24 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %20 = load i32, ptr %m_bufLeft24, align 4
  %cmp25 = icmp slt i32 %19, %20
  %21 = load i32, ptr %len.addr, align 4
  %m_bufLeft26 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %22 = load i32, ptr %m_bufLeft26, align 4
  %cond = select i1 %cmp25, i32 %21, i32 %22
  store i32 %cond, ptr %sz, align 4
  %23 = load ptr, ptr %buf.addr, align 8
  %24 = load ptr, ptr %this, align 8
  %conv28 = sext i32 %cond to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 %conv28, i1 false)
  %25 = load ptr, ptr %this, align 8
  %idx.ext30 = sext i32 %cond to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %25, i64 %idx.ext30
  %m_bufPtr32 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 1
  store ptr %add.ptr31, ptr %m_bufPtr32, align 8
  %26 = load i32, ptr %sz, align 4
  %m_bufLeft33 = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 3
  %27 = load i32, ptr %m_bufLeft33, align 4
  %sub34 = sub nsw i32 %27, %26
  store i32 %sub34, ptr %m_bufLeft33, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then21, %if.then15, %if.then6, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define noundef i32 @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_13(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #14 align 2 {
entry:
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this, i64 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #18
  store i32 %call, ptr %sock, align 4
  store ptr %_buf, ptr %buf, align 8
  store i32 %call, ptr %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i64 0, i32 1
  store i16 1, ptr %events, align 4
  %0 = load i32, ptr %timeout.addr, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef nonnull %fd, i32 noundef 1, i32 noundef %0)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call4 = call i64 @"\01_recv"(i32 noundef %1, ptr noundef %2, i64 noundef %conv, i32 noundef 0)
  %conv5 = trunc i64 %call4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %conv5, %if.then ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_14(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #12 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_15(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define void @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_18(ptr noundef nonnull align 4 dereferenceable(4) %this) #14 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call = call i32 @"\01_close"(i32 noundef %1)
  store i32 -1, ptr %this, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define void @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_19(ptr noundef nonnull align 4 dereferenceable(4) %this) #14 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy6Socket5CloseEv, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.7) #19
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i32, ptr %this, align 4
  %call = call i32 @"\01_close"(i32 noundef %1)
  store i32 -1, ptr %this, align 4
  ret void
}

; Function Attrs: alwaysinline ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_22(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #11 align 2 {
entry:
  %call = call noundef ptr @_ZN5tracy6SocketC2Ei(ptr noundef nonnull align 8 dereferenceable(44) %this, i32 noundef %sock)
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_23(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #12 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_24(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_26(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #12 align 2 {
entry:
  store i32 0, ptr %this, align 4
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this, i64 0, i32 1
  store i8 0, ptr %m_text, align 4
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_27(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #12 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_28(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #12 align 2 {
entry:
  store i32 -1, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_29(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %0 = load i32, ptr %this, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #3
  unreachable
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define void @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_31(ptr noundef nonnull align 4 dereferenceable(21) %this, ptr noundef nonnull align 1 dereferenceable(16) %addr) #14 align 2 {
entry:
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this, i64 0, i32 1
  %call = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %sin_addr, ptr noundef nonnull %m_text, i32 noundef 17)
  %sin_addr2 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  %0 = load i32, ptr %sin_addr2, align 4
  store i32 %0, ptr %this, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind }
attributes #4 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { alwaysinline ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { alwaysinline mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { alwaysinline mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #15 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn }

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
