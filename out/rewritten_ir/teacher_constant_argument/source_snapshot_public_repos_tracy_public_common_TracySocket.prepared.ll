; ModuleID = './source_snapshot/public_repos/tracy/public/common/TracySocket.cpp'
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
%"class.tracy::ListenSocket" = type { i32 }
%struct.sockaddr_storage = type { i8, i8, [6 x i8], i64, [112 x i8] }
%"class.tracy::UdpBroadcast" = type { i32, i32 }
%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.tracy::IpAddress" = type <{ i32, [17 x i8], [3 x i8] }>
%"class.tracy::UdpListen" = type { i32 }
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
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_buf = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_0(i64 noundef 131072)
  store ptr %call, ptr %m_buf, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef -1) #11
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @_ZN5tracyL12tracy_mallocEm(i64 noundef %size) #1 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #12
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__d, ptr %__d.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__d.addr, align 4
  %call = call noundef ptr @_ZNSt3__16atomicIiEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this1, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC1Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy6SocketC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %this1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC2Ei(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %sock.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %sock, ptr %sock.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_buf = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_1(i64 noundef 131072)
  store ptr %call, ptr %m_buf, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  store ptr null, ptr %m_bufPtr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %0 = load i32, ptr %sock.addr, align 4
  %call2 = call noundef ptr @_ZNSt3__16atomicIiEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %0) #11
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  store i32 0, ptr %m_bufLeft, align 4
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  store ptr null, ptr %m_ptr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy6SocketC1Ei(ptr noundef nonnull returned align 8 dereferenceable(44) %this, i32 noundef %sock) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %sock.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %sock, ptr %sock.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %sock.addr, align 4
  %call = call noundef ptr @_ZN5tracy6SocketC2Ei(ptr noundef nonnull align 8 dereferenceable(44) %this1, i32 noundef %0)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy6SocketD2Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_buf = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %m_buf, align 8
  invoke void @_ZN5tracyL10tracy_freeEPv(ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  invoke void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %invoke.cont
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  %1 = load ptr, ptr %m_ptr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %m_res = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 4
  %2 = load ptr, ptr %m_res, align 8
  invoke void @freeaddrinfo(ptr noundef %2)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then3
  %m_connSock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %3 = load i32, ptr %m_connSock, align 8
  %call6 = invoke i32 @"\01_close"(i32 noundef %3)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  br label %if.end7

if.end7:                                          ; preds = %invoke.cont5, %if.end
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4

terminate.lpad:                                   ; preds = %invoke.cont4, %if.then3, %if.then, %entry
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL10tracy_freeEPv(ptr noundef %ptr) #1 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #3 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__m) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__m, ptr %__m.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base.0", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__m.addr, align 4
  %call = call noundef i32 @_ZNSt3__117__cxx_atomic_loadB6v15007IiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a_, i32 noundef %0) #11
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy6Socket5CloseEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %sock = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  %0 = load i32, ptr %sock, align 4
  %cmp = icmp ne i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket5CloseEv, ptr noundef @.str, i32 noundef 284, ptr noundef @.str.4) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i32, ptr %sock, align 4
  %call2 = call i32 @"\01_close"(i32 noundef %2)
  %m_sock3 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock3, i32 noundef -1, i32 noundef 0) #11
  ret void
}

declare void @freeaddrinfo(ptr noundef) #5

declare i32 @"\01_close"(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy6SocketD1Ev(ptr noundef nonnull returned align 8 dereferenceable(44) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy6SocketD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7ConnectEPKct(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %addr, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %c = alloca i32, align 4
  %err = alloca i32, align 4
  %flags = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %flags41 = alloca i32, align 4
  %flags61 = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK5tracy6Socket7IsValidEv(ptr noundef nonnull align 8 dereferenceable(44) %this1)
  %lnot = xor i1 %call, true
  %lnot2 = xor i1 %lnot, true
  br i1 %lnot2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket7ConnectEPKct, ptr noundef @.str, i32 noundef 128, ptr noundef @.str.1) #14
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  %1 = load ptr, ptr %m_ptr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %cond.end
  %m_connSock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %2 = load i32, ptr %m_connSock, align 8
  %m_ptr3 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  %3 = load ptr, ptr %m_ptr3, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %ai_addr, align 8
  %m_ptr4 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  %5 = load ptr, ptr %m_ptr4, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %ai_addrlen, align 8
  %call5 = call i32 @"\01_connect"(i32 noundef %2, ptr noundef %4, i32 noundef %6)
  store i32 %call5, ptr %c, align 4
  %7 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.then
  %call7 = call ptr @__error()
  %8 = load i32, ptr %call7, align 4
  store i32 %8, ptr %err, align 4
  %9 = load i32, ptr %err, align 4
  %cmp8 = icmp eq i32 %9, 37
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %10 = load i32, ptr %err, align 4
  %cmp9 = icmp eq i32 %10, 36
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then6
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, ptr %err, align 4
  %cmp11 = icmp ne i32 %11, 56
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %m_res = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 4
  %12 = load ptr, ptr %m_res, align 8
  call void @freeaddrinfo(ptr noundef %12)
  %m_connSock13 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %13 = load i32, ptr %m_connSock13, align 8
  %call14 = call i32 @"\01_close"(i32 noundef %13)
  %m_ptr15 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  store ptr null, ptr %m_ptr15, align 8
  store i1 false, ptr %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %m_connSock18 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %14 = load i32, ptr %m_connSock18, align 8
  %call19 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %14, i32 noundef 3, i32 noundef 0)
  store i32 %call19, ptr %flags, align 4
  %m_connSock20 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %15 = load i32, ptr %m_connSock20, align 8
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, -5
  %call21 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %15, i32 noundef 4, i32 noundef %and)
  %m_connSock22 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %17 = load i32, ptr %m_connSock22, align 8
  call void @_ZN5tracyL10SetNoDelayEi(i32 noundef %17)
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %m_connSock23 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  %18 = load i32, ptr %m_connSock23, align 8
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %18, i32 noundef 0) #11
  %m_res24 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 4
  %19 = load ptr, ptr %m_res24, align 8
  call void @freeaddrinfo(ptr noundef %19)
  %m_ptr25 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  store ptr null, ptr %m_ptr25, align 8
  store i1 true, ptr %retval, align 1
  br label %return

if.end26:                                         ; preds = %cond.end
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1
  store i32 0, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2
  store i32 1, ptr %ai_socktype, align 8
  %arraydecay = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %20 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %20 to i32
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %conv)
  %21 = load ptr, ptr %addr.addr, align 8
  %arraydecay28 = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %call29 = call i32 @getaddrinfo(ptr noundef %21, ptr noundef %arraydecay28, ptr noundef %hints, ptr noundef %res)
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  store i1 false, ptr %retval, align 1
  br label %return

if.end32:                                         ; preds = %if.end26
  store i32 0, ptr %sock, align 4
  %22 = load ptr, ptr %res, align 8
  store ptr %22, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end32
  %23 = load ptr, ptr %ptr, align 8
  %tobool33 = icmp ne ptr %23, null
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %ptr, align 8
  %ai_family34 = getelementptr inbounds %struct.addrinfo, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %ai_family34, align 4
  %26 = load ptr, ptr %ptr, align 8
  %ai_socktype35 = getelementptr inbounds %struct.addrinfo, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %ai_socktype35, align 8
  %28 = load ptr, ptr %ptr, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %ai_protocol, align 4
  %call36 = call i32 @socket(i32 noundef %25, i32 noundef %27, i32 noundef %29)
  store i32 %call36, ptr %sock, align 4
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  br label %for.inc

if.end39:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %30 = load i32, ptr %sock, align 4
  %call40 = call i32 @setsockopt(i32 noundef %30, i32 noundef 65535, i32 noundef 4130, ptr noundef %val, i32 noundef 4)
  %31 = load i32, ptr %sock, align 4
  %call42 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %31, i32 noundef 3, i32 noundef 0)
  store i32 %call42, ptr %flags41, align 4
  %32 = load i32, ptr %sock, align 4
  %33 = load i32, ptr %flags41, align 4
  %or = or i32 %33, 4
  %call43 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %32, i32 noundef 4, i32 noundef %or)
  %34 = load i32, ptr %sock, align 4
  %35 = load ptr, ptr %ptr, align 8
  %ai_addr44 = getelementptr inbounds %struct.addrinfo, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %ai_addr44, align 8
  %37 = load ptr, ptr %ptr, align 8
  %ai_addrlen45 = getelementptr inbounds %struct.addrinfo, ptr %37, i32 0, i32 4
  %38 = load i32, ptr %ai_addrlen45, align 8
  %call46 = call i32 @"\01_connect"(i32 noundef %34, ptr noundef %36, i32 noundef %38)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end39
  br label %for.end

if.else:                                          ; preds = %if.end39
  %call49 = call ptr @__error()
  %39 = load i32, ptr %call49, align 4
  %cmp50 = icmp ne i32 %39, 36
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.else
  %40 = load i32, ptr %sock, align 4
  %call52 = call i32 @"\01_close"(i32 noundef %40)
  br label %for.inc

if.end53:                                         ; preds = %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  %41 = load ptr, ptr %res, align 8
  %m_res55 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 4
  store ptr %41, ptr %m_res55, align 8
  %42 = load ptr, ptr %ptr, align 8
  %m_ptr56 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  store ptr %42, ptr %m_ptr56, align 8
  %43 = load i32, ptr %sock, align 4
  %m_connSock57 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 6
  store i32 %43, ptr %m_connSock57, align 8
  store i1 false, ptr %retval, align 1
  br label %return

for.inc:                                          ; preds = %if.then51, %if.then38
  %44 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %ai_next, align 8
  store ptr %45, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then48, %for.cond
  %46 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %46)
  %47 = load ptr, ptr %ptr, align 8
  %tobool58 = icmp ne ptr %47, null
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end60:                                         ; preds = %for.end
  %48 = load i32, ptr %sock, align 4
  %call62 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %48, i32 noundef 3, i32 noundef 0)
  store i32 %call62, ptr %flags61, align 4
  %49 = load i32, ptr %sock, align 4
  %50 = load i32, ptr %flags61, align 4
  %and63 = and i32 %50, -5
  %call64 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %49, i32 noundef 4, i32 noundef %and63)
  %51 = load i32, ptr %sock, align 4
  call void @_ZN5tracyL10SetNoDelayEi(i32 noundef %51)
  %m_sock65 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %52 = load i32, ptr %sock, align 4
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock65, i32 noundef %52, i32 noundef 0) #11
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end60, %if.then59, %if.end54, %if.then31, %if.end17, %if.then12, %if.then10
  %53 = load i1, ptr %retval, align 1
  ret i1 %53
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef zeroext i1 @_ZNK5tracy6Socket7IsValidEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  %cmp = icmp sge i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

declare i32 @"\01_connect"(i32 noundef, ptr noundef, i32 noundef) #5

declare ptr @__error() #5

declare i32 @"\01_fcntl"(i32 noundef, i32 noundef, ...) #5

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL10SetNoDelayEi(i32 noundef %sock) #1 {
entry:
  %sock.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %sock, ptr %sock.addr, align 4
  store i32 1, ptr %val, align 4
  %0 = load i32, ptr %sock.addr, align 4
  %call = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef %val, i32 noundef 4)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %__d, i32 noundef %__m) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i32, align 4
  %__m.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__d, ptr %__d.addr, align 4
  store i32 %__m, ptr %__m.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base.0", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__d.addr, align 4
  %1 = load i32, ptr %__m.addr, align 4
  call void @_ZNSt3__118__cxx_atomic_storeB6v15007IiEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a_, i32 noundef %0, i32 noundef %1) #11
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
  %this.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK5tracy6Socket7IsValidEv(ptr noundef nonnull align 8 dereferenceable(44) %this1)
  %lnot = xor i1 %call, true
  %lnot2 = xor i1 %lnot, true
  br i1 %lnot2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket15ConnectBlockingEPKct, ptr noundef @.str, i32 noundef 241, ptr noundef @.str.1) #14
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %m_ptr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 5
  %1 = load ptr, ptr %m_ptr, align 8
  %tobool = icmp ne ptr %1, null
  %lnot3 = xor i1 %tobool, true
  %lnot4 = xor i1 %lnot3, true
  br i1 %lnot4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket15ConnectBlockingEPKct, ptr noundef @.str, i32 noundef 242, ptr noundef @.str.3) #14
  unreachable

2:                                                ; No predecessors!
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %2
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1
  store i32 0, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2
  store i32 1, ptr %ai_socktype, align 8
  %arraydecay = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %3 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %3 to i32
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %conv)
  %4 = load ptr, ptr %addr.addr, align 8
  %arraydecay9 = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %call10 = call i32 @getaddrinfo(ptr noundef %4, ptr noundef %arraydecay9, ptr noundef %hints, ptr noundef %res)
  %cmp = icmp ne i32 %call10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end7
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end7
  store i32 0, ptr %sock, align 4
  %5 = load ptr, ptr %res, align 8
  store ptr %5, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %ptr, align 8
  %tobool11 = icmp ne ptr %6, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ptr, align 8
  %ai_family12 = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %ai_family12, align 4
  %9 = load ptr, ptr %ptr, align 8
  %ai_socktype13 = getelementptr inbounds %struct.addrinfo, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %ai_socktype13, align 8
  %11 = load ptr, ptr %ptr, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %ai_protocol, align 4
  %call14 = call i32 @socket(i32 noundef %8, i32 noundef %10, i32 noundef %12)
  store i32 %call14, ptr %sock, align 4
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.inc

if.end17:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %13 = load i32, ptr %sock, align 4
  %call18 = call i32 @setsockopt(i32 noundef %13, i32 noundef 65535, i32 noundef 4130, ptr noundef %val, i32 noundef 4)
  %14 = load i32, ptr %sock, align 4
  %15 = load ptr, ptr %ptr, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %ai_addr, align 8
  %17 = load ptr, ptr %ptr, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %ai_addrlen, align 8
  %call19 = call i32 @"\01_connect"(i32 noundef %14, ptr noundef %16, i32 noundef %18)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %19 = load i32, ptr %sock, align 4
  %call22 = call i32 @"\01_close"(i32 noundef %19)
  br label %for.inc

if.end23:                                         ; preds = %if.end17
  br label %for.end

for.inc:                                          ; preds = %if.then21, %if.then16
  %20 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %ai_next, align 8
  store ptr %21, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.end23, %for.cond
  %22 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %22)
  %23 = load ptr, ptr %ptr, align 8
  %tobool24 = icmp ne ptr %23, null
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end26:                                         ; preds = %for.end
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %24 = load i32, ptr %sock, align 4
  call void @_ZNSt3__113__atomic_baseIiLb0EE5storeB6v15007EiNS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef %24, i32 noundef 0) #11
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then
  %25 = load i1, ptr %retval, align 1
  ret i1 %25
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket4SendEPKvi(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len) #1 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %_buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %start = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %_buf, ptr %_buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  %0 = load ptr, ptr %_buf.addr, align 8
  store ptr %0, ptr %buf, align 8
  %1 = load i32, ptr %sock, align 4
  %cmp = icmp ne i32 %1, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket4SendEPKvi, ptr noundef @.str, i32 noundef 297, ptr noundef @.str.4) #14
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %buf, align 8
  store ptr %3, ptr %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %4 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %sock, align 4
  %6 = load ptr, ptr %buf, align 8
  %7 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %7 to i64
  %call3 = call i64 @"\01_send"(i32 noundef %5, ptr noundef %6, i64 noundef %conv, i32 noundef 524288)
  store i64 %call3, ptr %ret, align 8
  %8 = load i64, ptr %ret, align 8
  %cmp4 = icmp eq i64 %8, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load i64, ptr %ret, align 8
  %10 = load i32, ptr %len.addr, align 4
  %conv5 = sext i32 %10 to i64
  %sub = sub nsw i64 %conv5, %9
  %conv6 = trunc i64 %sub to i32
  store i32 %conv6, ptr %len.addr, align 4
  %11 = load i64, ptr %ret, align 8
  %12 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %11
  store ptr %add.ptr, ptr %buf, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %buf, align 8
  %14 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i64 @"\01_send"(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket14GetSendBufSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %sock = alloca i32, align 4
  %bufSize = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  store i32 4, ptr %sz, align 4
  %0 = load i32, ptr %sock, align 4
  %call2 = call i32 @getsockopt(i32 noundef %0, i32 noundef 65535, i32 noundef 4097, ptr noundef %bufSize, ptr noundef %sz)
  %1 = load i32, ptr %bufSize, align 4
  ret i32 %1
}

declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket12RecvBufferedEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %len.addr, align 4
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %1 = load i32, ptr %m_bufLeft, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %m_bufPtr, align 8
  %4 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %conv, i1 false)
  %5 = load i32, ptr %len.addr, align 4
  %m_bufPtr2 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  %6 = load ptr, ptr %m_bufPtr2, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %m_bufPtr2, align 8
  %7 = load i32, ptr %len.addr, align 4
  %m_bufLeft3 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %8 = load i32, ptr %m_bufLeft3, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, ptr %m_bufLeft3, align 4
  %9 = load i32, ptr %len.addr, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %m_bufLeft4 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %10 = load i32, ptr %m_bufLeft4, align 4
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %buf.addr, align 8
  %m_bufPtr7 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %m_bufPtr7, align 8
  %m_bufLeft8 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %13 = load i32, ptr %m_bufLeft8, align 4
  %conv9 = sext i32 %13 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %conv9, i1 false)
  %m_bufLeft10 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %14 = load i32, ptr %m_bufLeft10, align 4
  store i32 %14, ptr %ret, align 4
  %m_bufLeft11 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  store i32 0, ptr %m_bufLeft11, align 4
  %15 = load i32, ptr %ret, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %16 = load i32, ptr %len.addr, align 4
  %conv13 = sext i32 %16 to i64
  %cmp14 = icmp uge i64 %conv13, 131072
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load i32, ptr %len.addr, align 4
  %19 = load i32, ptr %timeout.addr, align 4
  %call = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this1, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %m_buf = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %20 = load ptr, ptr %m_buf, align 8
  %21 = load i32, ptr %timeout.addr, align 4
  %call17 = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this1, ptr noundef %20, i32 noundef 131072, i32 noundef %21)
  %m_bufLeft18 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  store i32 %call17, ptr %m_bufLeft18, align 4
  %m_bufLeft19 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %22 = load i32, ptr %m_bufLeft19, align 4
  %cmp20 = icmp sle i32 %22, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %m_bufLeft22 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %23 = load i32, ptr %m_bufLeft22, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  %24 = load i32, ptr %len.addr, align 4
  %m_bufLeft24 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %25 = load i32, ptr %m_bufLeft24, align 4
  %cmp25 = icmp slt i32 %24, %25
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end23
  %26 = load i32, ptr %len.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  %m_bufLeft26 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %27 = load i32, ptr %m_bufLeft26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, ptr %sz, align 4
  %28 = load ptr, ptr %buf.addr, align 8
  %m_buf27 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %29 = load ptr, ptr %m_buf27, align 8
  %30 = load i32, ptr %sz, align 4
  %conv28 = sext i32 %30 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %29, i64 %conv28, i1 false)
  %m_buf29 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 0
  %31 = load ptr, ptr %m_buf29, align 8
  %32 = load i32, ptr %sz, align 4
  %idx.ext30 = sext i32 %32 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %31, i64 %idx.ext30
  %m_bufPtr32 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 1
  store ptr %add.ptr31, ptr %m_bufPtr32, align 8
  %33 = load i32, ptr %sz, align 4
  %m_bufLeft33 = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %34 = load i32, ptr %m_bufLeft33, align 4
  %sub34 = sub nsw i32 %34, %33
  store i32 %sub34, ptr %m_bufLeft33, align 4
  %35 = load i32, ptr %sz, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then21, %if.then15, %if.then6, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %_buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fd = alloca %struct.pollfd, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %_buf, ptr %_buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  %0 = load ptr, ptr %_buf.addr, align 8
  store ptr %0, ptr %buf, align 8
  %1 = load i32, ptr %sock, align 4
  %fd2 = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 0
  store i32 %1, ptr %fd2, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 1
  store i16 1, ptr %events, align 4
  %2 = load i32, ptr %timeout.addr, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef %fd, i32 noundef 1, i32 noundef %2)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %sock, align 4
  %4 = load ptr, ptr %buf, align 8
  %5 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %5 to i64
  %call4 = call i64 @"\01_recv"(i32 noundef %3, ptr noundef %4, i64 noundef %conv, i32 noundef 0)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @"\01_poll"(ptr noundef, i32 noundef, i32 noundef) #5

declare i64 @"\01_recv"(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy6Socket8ReadUpToEPvi(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len) #1 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %_buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %buf = alloca ptr, align 8
  %rd = alloca i32, align 4
  %res = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %_buf, ptr %_buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  %0 = load ptr, ptr %_buf.addr, align 8
  store ptr %0, ptr %buf, align 8
  store i32 0, ptr %rd, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %sock, align 4
  %3 = load ptr, ptr %buf, align 8
  %4 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %4 to i64
  %call2 = call i64 @"\01_recv"(i32 noundef %2, ptr noundef %3, i64 noundef %conv, i32 noundef 0)
  store i64 %call2, ptr %res, align 8
  %5 = load i64, ptr %res, align 8
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i64, ptr %res, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i64, ptr %res, align 8
  %8 = load i32, ptr %len.addr, align 4
  %conv7 = sext i32 %8 to i64
  %sub = sub nsw i64 %conv7, %7
  %conv8 = trunc i64 %sub to i32
  store i32 %conv8, ptr %len.addr, align 4
  %9 = load i64, ptr %res, align 8
  %10 = load i32, ptr %rd, align 4
  %conv9 = sext i32 %10 to i64
  %add = add nsw i64 %conv9, %9
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, ptr %rd, align 4
  %11 = load i64, ptr %res, align 8
  %12 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %11
  store ptr %add.ptr, ptr %buf, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then, %while.cond
  %13 = load i32, ptr %rd, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket4ReadEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %cbuf = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %cbuf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %timeout.addr, align 4
  %call = call noundef zeroext i1 @_ZN5tracy6Socket8ReadImplERPcRii(ptr noundef nonnull align 8 dereferenceable(44) %this1, ptr noundef nonnull align 8 dereferenceable(8) %cbuf, ptr noundef nonnull align 4 dereferenceable(4) %len.addr, i32 noundef %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %3 = load i1, ptr %retval, align 1
  ret i1 %3
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket8ReadImplERPcRii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef nonnull align 8 dereferenceable(8) %buf, ptr noundef nonnull align 4 dereferenceable(4) %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %len.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %timeout.addr, align 4
  %call = call noundef i32 @_ZN5tracy6Socket12RecvBufferedEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this1, ptr noundef %1, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %sz, align 4
  %5 = load i32, ptr %sz, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load i32, ptr %sz, align 4
  %7 = load ptr, ptr %len.addr, align 8
  %8 = load i32, ptr %7, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, ptr %7, align 4
  %9 = load i32, ptr %sz, align 4
  %10 = load ptr, ptr %buf.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %10, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %12 = load i1, ptr %retval, align 1
  ret i1 %12
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7ReadRawEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this, ptr noundef %_buf, i32 noundef %len, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %_buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %sz = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %_buf, ptr %_buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %_buf.addr, align 8
  store ptr %0, ptr %buf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %len.addr, align 4
  %4 = load i32, ptr %timeout.addr, align 4
  %call = call noundef i32 @_ZN5tracy6Socket4RecvEPvii(ptr noundef nonnull align 8 dereferenceable(44) %this1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %sz, align 4
  %5 = load i32, ptr %sz, align 4
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %sz, align 4
  %7 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, ptr %len.addr, align 4
  %8 = load i32, ptr %sz, align 4
  %9 = load ptr, ptr %buf, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %buf, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i1, ptr %retval, align 1
  ret i1 %10
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy6Socket7HasDataEv(ptr noundef nonnull align 8 dereferenceable(44) %this) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %sock = alloca i32, align 4
  %fd = alloca %struct.pollfd, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 2
  %call = call noundef i32 @_ZNKSt3__113__atomic_baseIiLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 4 dereferenceable(4) %m_sock, i32 noundef 0) #11
  store i32 %call, ptr %sock, align 4
  %m_bufLeft = getelementptr inbounds %"class.tracy::Socket", ptr %this1, i32 0, i32 3
  %0 = load i32, ptr %m_bufLeft, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %sock, align 4
  %fd2 = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 0
  store i32 %1, ptr %fd2, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 1
  store i16 1, ptr %events, align 4
  %call3 = call i32 @"\01_poll"(ptr noundef %fd, i32 noundef 1, i32 noundef 0)
  %cmp4 = icmp sgt i32 %call3, 0
  store i1 %cmp4, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1
  ret i1 %2
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketC2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock, align 4
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketC1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy12ListenSocketC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketD2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_sock = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #13
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket5CloseEv, ptr noundef @.str, i32 noundef 559, ptr noundef @.str.7) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %m_sock2 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %m_sock2, align 4
  %call = call i32 @"\01_close"(i32 noundef %2)
  %m_sock3 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock3, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocketD1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy12ListenSocketD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy12ListenSocket6ListenEti(ptr noundef nonnull align 4 dereferenceable(4) %this, i16 noundef zeroext %port, i32 noundef %backlog) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %backlog.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %onlyIPv4 = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  store i32 %backlog, ptr %backlog.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp eq i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy12ListenSocket6ListenEti, ptr noundef @.str, i32 noundef 490, ptr noundef @.str.5) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  store ptr null, ptr %res, align 8
  %call = call noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef @.str.6)
  store ptr %call, ptr %onlyIPv4, align 8
  %2 = load ptr, ptr %onlyIPv4, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load ptr, ptr %onlyIPv4, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 49
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %5 = load i16, ptr %port.addr, align 2
  %call3 = call noundef i32 @_ZN5tracyL30addrinfo_and_socket_for_familyEtiPP8addrinfo(i16 noundef zeroext %5, i32 noundef 30, ptr noundef %res)
  %m_sock4 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  store i32 %call3, ptr %m_sock4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %m_sock5 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %6 = load i32, ptr %m_sock5, align 4
  %cmp6 = icmp eq i32 %6, -1
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %7 = load i16, ptr %port.addr, align 2
  %call8 = call noundef i32 @_ZN5tracyL30addrinfo_and_socket_for_familyEtiPP8addrinfo(i16 noundef zeroext %7, i32 noundef 2, ptr noundef %res)
  %m_sock9 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  store i32 %call8, ptr %m_sock9, align 4
  %m_sock10 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %8 = load i32, ptr %m_sock10, align 4
  %cmp11 = icmp eq i32 %8, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i1 false, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i32 0, ptr %val, align 4
  %m_sock15 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %9 = load i32, ptr %m_sock15, align 4
  %call16 = call i32 @setsockopt(i32 noundef %9, i32 noundef 41, i32 noundef 27, ptr noundef %val, i32 noundef 4)
  store i32 1, ptr %val, align 4
  %m_sock17 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %10 = load i32, ptr %m_sock17, align 4
  %call18 = call i32 @setsockopt(i32 noundef %10, i32 noundef 65535, i32 noundef 4, ptr noundef %val, i32 noundef 4)
  %m_sock19 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %11 = load i32, ptr %m_sock19, align 4
  %12 = load ptr, ptr %res, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %ai_addr, align 8
  %14 = load ptr, ptr %res, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %ai_addrlen, align 8
  %call20 = call i32 @"\01_bind"(i32 noundef %11, ptr noundef %13, i32 noundef %15)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  %16 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %16)
  call void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this1)
  store i1 false, ptr %retval, align 1
  br label %return

if.end23:                                         ; preds = %if.end14
  %m_sock24 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %17 = load i32, ptr %m_sock24, align 4
  %18 = load i32, ptr %backlog.addr, align 4
  %call25 = call i32 @"\01_listen"(i32 noundef %17, i32 noundef %18)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %19 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %19)
  call void @_ZN5tracy12ListenSocket5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this1)
  store i1 false, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %if.end23
  %20 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %20)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then22, %if.then12
  %21 = load i1, ptr %retval, align 1
  ret i1 %21
}

declare noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZN5tracyL30addrinfo_and_socket_for_familyEtiPP8addrinfo(i16 noundef zeroext %port, i32 noundef %ai_family, ptr noundef %res) #1 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i16, align 2
  %ai_family.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %hints = alloca %struct.addrinfo, align 8
  %onlyLocalhost = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  store i32 %ai_family, ptr %ai_family.addr, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false)
  %0 = load i32, ptr %ai_family.addr, align 4
  %ai_family1 = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1
  store i32 %0, ptr %ai_family1, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2
  store i32 1, ptr %ai_socktype, align 8
  %call = call noundef ptr @_ZN5tracy9GetEnvVarEPKc(ptr noundef @.str.8)
  store ptr %call, ptr %onlyLocalhost, align 8
  %1 = load ptr, ptr %onlyLocalhost, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %onlyLocalhost, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  store i32 1, ptr %ai_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %arraydecay = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %4 = load i16, ptr %port.addr, align 2
  %conv2 = zext i16 %4 to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %conv2)
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %5 = load ptr, ptr %res.addr, align 8
  %call5 = call i32 @getaddrinfo(ptr noundef null, ptr noundef %arraydecay4, ptr noundef %hints, ptr noundef %5)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %res.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %ai_family9 = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %ai_family9, align 4
  %9 = load ptr, ptr %res.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %ai_socktype10 = getelementptr inbounds %struct.addrinfo, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %ai_socktype10, align 8
  %12 = load ptr, ptr %res.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %ai_protocol, align 4
  %call11 = call i32 @socket(i32 noundef %8, i32 noundef %11, i32 noundef %14)
  store i32 %call11, ptr %sock, align 4
  %15 = load i32, ptr %sock, align 4
  %cmp12 = icmp eq i32 %15, -1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  %16 = load ptr, ptr %res.addr, align 8
  %17 = load ptr, ptr %16, align 8
  call void @freeaddrinfo(ptr noundef %17)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8
  %18 = load i32, ptr %sock, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then7
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @"\01_bind"(i32 noundef, ptr noundef, i32 noundef) #5

declare i32 @"\01_listen"(i32 noundef, i32 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy12ListenSocket6AcceptEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %remote = alloca %struct.sockaddr_storage, align 8
  %sz = alloca i32, align 4
  %fd = alloca %struct.pollfd, align 4
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store i32 128, ptr %sz, align 4
  %m_sock = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %fd2 = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 0
  store i32 %0, ptr %fd2, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 1
  store i16 1, ptr %events, align 4
  %call = call i32 @"\01_poll"(ptr noundef %fd, i32 noundef 1, i32 noundef 10)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m_sock3 = getelementptr inbounds %"class.tracy::ListenSocket", ptr %this1, i32 0, i32 0
  %1 = load i32, ptr %m_sock3, align 4
  %call4 = call i32 @"\01_accept"(i32 noundef %1, ptr noundef %remote, ptr noundef %sz)
  store i32 %call4, ptr %sock, align 4
  %2 = load i32, ptr %sock, align 4
  %cmp5 = icmp eq i32 %2, -1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, ptr %val, align 4
  %3 = load i32, ptr %sock, align 4
  %call7 = call i32 @setsockopt(i32 noundef %3, i32 noundef 65535, i32 noundef 4130, ptr noundef %val, i32 noundef 4)
  %4 = load i32, ptr %sock, align 4
  call void @_ZN5tracyL10SetNoDelayEi(i32 noundef %4)
  %call8 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_2(i64 noundef 48)
  store ptr %call8, ptr %ptr, align 8
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %sock, align 4
  %call9 = call noundef ptr @_ZN5tracy6SocketC1Ei(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %6)
  %7 = load ptr, ptr %ptr, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then6
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare i32 @"\01_accept"(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastC2Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock, align 4
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastC1Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy12UdpBroadcastC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastD2Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #13
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12UdpBroadcast5CloseEv(ptr noundef nonnull align 4 dereferenceable(8) %this) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket5CloseEv, ptr noundef @.str, i32 noundef 631, ptr noundef @.str.7) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %m_sock2 = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %m_sock2, align 4
  %call = call i32 @"\01_close"(i32 noundef %2)
  %m_sock3 = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock3, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12UdpBroadcastD1Ev(ptr noundef nonnull returned align 4 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy12UdpBroadcastD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy12UdpBroadcast4OpenEPKct(ptr noundef nonnull align 4 dereferenceable(8) %this, ptr noundef %addr, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %portbuf = alloca [32 x i8], align 1
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %broadcast = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp eq i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy12UdpBroadcast4OpenEPKct, ptr noundef @.str, i32 noundef 583, ptr noundef @.str.5) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1
  store i32 2, ptr %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2
  store i32 2, ptr %ai_socktype, align 8
  %arraydecay = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %2 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %2 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %conv)
  %3 = load ptr, ptr %addr.addr, align 8
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %portbuf, i64 0, i64 0
  %call3 = call i32 @getaddrinfo(ptr noundef %3, ptr noundef %arraydecay2, ptr noundef %hints, ptr noundef %res)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 0, ptr %sock, align 4
  %4 = load ptr, ptr %res, align 8
  store ptr %4, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ptr, align 8
  %ai_family5 = getelementptr inbounds %struct.addrinfo, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %ai_family5, align 4
  %8 = load ptr, ptr %ptr, align 8
  %ai_socktype6 = getelementptr inbounds %struct.addrinfo, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %ai_socktype6, align 8
  %10 = load ptr, ptr %ptr, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %ai_protocol, align 4
  %call7 = call i32 @socket(i32 noundef %7, i32 noundef %9, i32 noundef %11)
  store i32 %call7, ptr %sock, align 4
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %for.inc

if.end10:                                         ; preds = %for.body
  store i32 1, ptr %val, align 4
  %12 = load i32, ptr %sock, align 4
  %call11 = call i32 @setsockopt(i32 noundef %12, i32 noundef 65535, i32 noundef 4130, ptr noundef %val, i32 noundef 4)
  store i32 1, ptr %broadcast, align 4
  %13 = load i32, ptr %sock, align 4
  %call12 = call i32 @setsockopt(i32 noundef %13, i32 noundef 65535, i32 noundef 32, ptr noundef %broadcast, i32 noundef 4)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %14 = load i32, ptr %sock, align 4
  %call15 = call i32 @"\01_close"(i32 noundef %14)
  br label %for.inc

if.end16:                                         ; preds = %if.end10
  br label %for.end

for.inc:                                          ; preds = %if.then14, %if.then9
  %15 = load ptr, ptr %ptr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %ai_next, align 8
  store ptr %16, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.end16, %for.cond
  %17 = load ptr, ptr %res, align 8
  call void @freeaddrinfo(ptr noundef %17)
  %18 = load ptr, ptr %ptr, align 8
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end19:                                         ; preds = %for.end
  %19 = load i32, ptr %sock, align 4
  %m_sock20 = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  store i32 %19, ptr %m_sock20, align 4
  %20 = load ptr, ptr %addr.addr, align 8
  %m_addr = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 1
  %call21 = call i32 @inet_pton(i32 noundef 2, ptr noundef %20, ptr noundef %m_addr)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then
  %21 = load i1, ptr %retval, align 1
  ret i1 %21
}

declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy12UdpBroadcast4SendEtPKvi(ptr noundef nonnull align 4 dereferenceable(8) %this, i16 noundef zeroext %port, ptr noundef %data, i32 noundef %len) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %addr = alloca %struct.sockaddr_in, align 4
  store ptr %this, ptr %this.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket4SendEPKvi, ptr noundef @.str, i32 noundef 642, ptr noundef @.str.7) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %2 = load i16, ptr %port.addr, align 2
  %3 = call i1 @llvm.is.constant.i16(i16 %2)
  br i1 %3, label %cond.true2, label %cond.false6

cond.true2:                                       ; preds = %cond.end
  %4 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 65280
  %shr = lshr i32 %and, 8
  %5 = load i16, ptr %port.addr, align 2
  %conv3 = zext i16 %5 to i32
  %and4 = and i32 %conv3, 255
  %shl = shl i32 %and4, 8
  %or = or i32 %shr, %shl
  %conv5 = trunc i32 %or to i16
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  %6 = load i16, ptr %port.addr, align 2
  %call = call noundef zeroext i16 @_ZL12_OSSwapInt16t(i16 noundef zeroext %6)
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true2
  %cond = phi i16 [ %conv5, %cond.true2 ], [ %call, %cond.false6 ]
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  store i16 %cond, ptr %sin_port, align 2
  %m_addr = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 1
  %7 = load i32, ptr %m_addr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %sin_addr, i32 0, i32 0
  store i32 %7, ptr %s_addr, align 4
  %m_sock8 = getelementptr inbounds %"class.tracy::UdpBroadcast", ptr %this1, i32 0, i32 0
  %8 = load i32, ptr %m_sock8, align 4
  %9 = load ptr, ptr %data.addr, align 8
  %10 = load i32, ptr %len.addr, align 4
  %conv9 = sext i32 %10 to i64
  %call10 = call i64 @"\01_sendto"(i32 noundef %8, ptr noundef %9, i64 noundef %conv9, i32 noundef 524288, ptr noundef %addr, i32 noundef 16)
  %conv11 = trunc i64 %call10 to i32
  ret i32 %conv11
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #9

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef zeroext i16 @_ZL12_OSSwapInt16t(i16 noundef zeroext %_data) #4 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, ptr %_data.addr, align 2
  %0 = load i16, ptr %_data.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, ptr %_data.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %or = or i32 %shl, %shr
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

declare i64 @"\01_sendto"(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressC2Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_number = getelementptr inbounds %"class.tracy::IpAddress", ptr %this1, i32 0, i32 0
  store i32 0, ptr %m_number, align 4
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [17 x i8], ptr %m_text, i64 0, i64 0
  store i8 0, ptr %arraydecay, align 4
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressC1Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy9IpAddressC2Ev(ptr noundef nonnull align 4 dereferenceable(21) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressD2Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9IpAddressD1Ev(ptr noundef nonnull returned align 4 dereferenceable(21) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy9IpAddressD2Ev(ptr noundef nonnull align 4 dereferenceable(21) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy9IpAddress3SetERK8sockaddr(ptr noundef nonnull align 4 dereferenceable(21) %this, ptr noundef nonnull align 1 dereferenceable(16) %addr) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %ai = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %addr.addr, align 8
  store ptr %0, ptr %ai, align 8
  %1 = load ptr, ptr %ai, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 3
  %m_text = getelementptr inbounds %"class.tracy::IpAddress", ptr %this1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [17 x i8], ptr %m_text, i64 0, i64 0
  %call = call ptr @inet_ntop(i32 noundef 2, ptr noundef %sin_addr, ptr noundef %arraydecay, i32 noundef 17)
  %2 = load ptr, ptr %ai, align 8
  %sin_addr2 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 3
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %sin_addr2, i32 0, i32 0
  %3 = load i32, ptr %s_addr, align 4
  %m_number = getelementptr inbounds %"class.tracy::IpAddress", ptr %this1, i32 0, i32 0
  store i32 %3, ptr %m_number, align 4
  ret void
}

declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenC2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock, align 4
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenC1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy9UdpListenC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenD2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  invoke void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #13
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy9UdpListen5CloseEv(ptr noundef nonnull align 4 dereferenceable(4) %this) #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp ne i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy6Socket5CloseEv, ptr noundef @.str, i32 noundef 741, ptr noundef @.str.7) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %m_sock2 = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %m_sock2, align 4
  %call = call i32 @"\01_close"(i32 noundef %2)
  %m_sock3 = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  store i32 -1, ptr %m_sock3, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy9UdpListenD1Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy9UdpListenD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZN5tracy9UdpListen6ListenEt(ptr noundef nonnull align 4 dereferenceable(4) %this, i16 noundef zeroext %port) #1 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %sock = alloca i32, align 4
  %val = alloca i32, align 4
  %reuse = alloca i32, align 4
  %broadcast = alloca i32, align 4
  %addr = alloca %struct.sockaddr_in, align 4
  store ptr %this, ptr %this.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %cmp = icmp eq i32 %0, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy12ListenSocket6ListenEti, ptr noundef @.str, i32 noundef 688, ptr noundef @.str.5) #14
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %call = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0)
  store i32 %call, ptr %sock, align 4
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 1, ptr %val, align 4
  %2 = load i32, ptr %sock, align 4
  %call3 = call i32 @setsockopt(i32 noundef %2, i32 noundef 65535, i32 noundef 4130, ptr noundef %val, i32 noundef 4)
  store i32 1, ptr %reuse, align 4
  %3 = load i32, ptr %sock, align 4
  %call4 = call i32 @setsockopt(i32 noundef %3, i32 noundef 65535, i32 noundef 4, ptr noundef %reuse, i32 noundef 4)
  store i32 1, ptr %broadcast, align 4
  %4 = load i32, ptr %sock, align 4
  %call5 = call i32 @setsockopt(i32 noundef %4, i32 noundef 65535, i32 noundef 32, ptr noundef %broadcast, i32 noundef 4)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %5 = load i32, ptr %sock, align 4
  %call8 = call i32 @"\01_close"(i32 noundef %5)
  store i1 false, ptr %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %6 = load i16, ptr %port.addr, align 2
  %7 = call i1 @llvm.is.constant.i16(i16 %6)
  br i1 %7, label %cond.true10, label %cond.false14

cond.true10:                                      ; preds = %if.end9
  %8 = load i16, ptr %port.addr, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 65280
  %shr = lshr i32 %and, 8
  %9 = load i16, ptr %port.addr, align 2
  %conv11 = zext i16 %9 to i32
  %and12 = and i32 %conv11, 255
  %shl = shl i32 %and12, 8
  %or = or i32 %shr, %shl
  %conv13 = trunc i32 %or to i16
  br label %cond.end16

cond.false14:                                     ; preds = %if.end9
  %10 = load i16, ptr %port.addr, align 2
  %call15 = call noundef zeroext i16 @_ZL12_OSSwapInt16t(i16 noundef zeroext %10)
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false14, %cond.true10
  %cond = phi i16 [ %conv13, %cond.true10 ], [ %call15, %cond.false14 ]
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  store i16 %cond, ptr %sin_port, align 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %sin_addr, i32 0, i32 0
  store i32 0, ptr %s_addr, align 4
  %11 = load i32, ptr %sock, align 4
  %call17 = call i32 @"\01_bind"(i32 noundef %11, ptr noundef %addr, i32 noundef 16)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %cond.end16
  %12 = load i32, ptr %sock, align 4
  %call20 = call i32 @"\01_close"(i32 noundef %12)
  store i1 false, ptr %retval, align 1
  br label %return

if.end21:                                         ; preds = %cond.end16
  %13 = load i32, ptr %sock, align 4
  %m_sock22 = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  store i32 %13, ptr %m_sock22, align 4
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then7, %if.then
  %14 = load i1, ptr %retval, align 1
  ret i1 %14
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy9UdpListen4ReadERmRNS_9IpAddressEi(ptr noundef nonnull align 4 dereferenceable(4) %this, ptr noundef nonnull align 8 dereferenceable(8) %len, ptr noundef nonnull align 4 dereferenceable(21) %addr, i32 noundef %timeout) #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %fd = alloca %struct.pollfd, align 4
  %sa = alloca %struct.sockaddr, align 1
  %salen = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store i32 %timeout, ptr %timeout.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %m_sock = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %m_sock, align 4
  %fd2 = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 0
  store i32 %0, ptr %fd2, align 4
  %events = getelementptr inbounds %struct.pollfd, ptr %fd, i32 0, i32 1
  store i16 1, ptr %events, align 4
  %1 = load i32, ptr %timeout.addr, align 4
  %call = call i32 @"\01_poll"(ptr noundef %fd, i32 noundef 1, i32 noundef %1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 16, ptr %salen, align 4
  %m_sock3 = getelementptr inbounds %"class.tracy::UdpListen", ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %m_sock3, align 4
  %call4 = call i64 @"\01_recvfrom"(i32 noundef %2, ptr noundef @_ZZN5tracy9UdpListen4ReadERmRNS_9IpAddressEiE3buf, i64 noundef 2048, i32 noundef 0, ptr noundef %sa, ptr noundef %salen)
  %3 = load ptr, ptr %len.addr, align 8
  store i64 %call4, ptr %3, align 8
  %4 = load ptr, ptr %addr.addr, align 8
  call void @_ZN5tracy9IpAddress3SetERK8sockaddr(ptr noundef nonnull align 4 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(16) %sa)
  store ptr @_ZZN5tracy9UdpListen4ReadERmRNS_9IpAddressEiE3buf, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare i64 @"\01_recvfrom"(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #10

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIiEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__d, ptr %__d.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__d.addr, align 4
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIiLb1EEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this1, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIiLb1EEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__d, ptr %__d.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__d.addr, align 4
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIiLb0EEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this1, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIiLb0EEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__d) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__d, ptr %__d.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base.0", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__d.addr, align 4
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC1B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %__a_, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC1B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__value, ptr %__value.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__value.addr, align 4
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC2B6v15007Ei(ptr noundef nonnull align 4 dereferenceable(4) %this1, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIiNS_22__cxx_atomic_base_implIiEEEC2B6v15007Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__value, ptr %__value.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %__value.addr, align 4
  %call = call noundef ptr @_ZNSt3__122__cxx_atomic_base_implIiEC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %this1, i32 noundef %0) #11
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__cxx_atomic_base_implIiEC2Ei(ptr noundef nonnull returned align 4 dereferenceable(4) %this, i32 noundef %__value) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__value, ptr %__value.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__value.addr, align 4
  store i32 %0, ptr %__a_value, align 4
  ret ptr %this1
}

declare void @free(ptr noundef) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__117__cxx_atomic_loadB6v15007IiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a, i32 noundef %__order) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__order.addr = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store ptr %__a, ptr %__a.addr, align 8
  store i32 %__order, ptr %__order.addr, align 4
  %0 = load ptr, ptr %__a.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__order.addr, align 4
  switch i32 %1, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %2 = load atomic i32, ptr %__a_value monotonic, align 4
  store i32 %2, ptr %atomic-temp, align 4
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i32, ptr %__a_value acquire, align 4
  store i32 %3, ptr %atomic-temp, align 4
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %4 = load atomic i32, ptr %__a_value seq_cst, align 4
  store i32 %4, ptr %atomic-temp, align 4
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i32, ptr %atomic-temp, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeB6v15007IiEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a, i32 noundef %__val, i32 noundef %__order) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__val.addr = alloca i32, align 4
  %__order.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  store ptr %__a, ptr %__a.addr, align 8
  store i32 %__val, ptr %__val.addr, align 4
  store i32 %__order, ptr %__order.addr, align 4
  %0 = load ptr, ptr %__a.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__order.addr, align 4
  %2 = load i32, ptr %__val.addr, align 4
  store i32 %2, ptr %.atomictmp, align 4
  switch i32 %1, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %3, ptr %__a_value monotonic, align 4
  br label %atomic.continue

release:                                          ; preds = %entry
  %4 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %4, ptr %__a_value release, align 4
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %5 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %5, ptr %__a_value seq_cst, align 4
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

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
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_0(i64 noundef %size)  alwaysinline#1 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #12
  ret ptr %call
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_1(i64 noundef %size)  alwaysinline#1 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #12
  ret ptr %call
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_public_common_TracySocket_2(i64 noundef %size)  alwaysinline#1 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #12
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
