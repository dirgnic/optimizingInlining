; ModuleID = '<stdin>'
source_filename = "mi/Gget_proc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor = type { %struct.dwarf_cursor, %struct.unw_tdep_frame_t, i32, i64 }
%struct.dwarf_cursor = type { ptr, ptr, i64, i64, i64, [2 x i64], i32, [17 x %struct.dwarf_loc], i8, %struct.unw_proc_info, i16, i16 }
%struct.dwarf_loc = type { i64, i64 }
%struct.unw_proc_info = type { i64, i64, i64, i64, i64, i64, i32, i32, ptr, %struct.unw_tdep_proc_info_t }
%struct.unw_tdep_proc_info_t = type { i8 }
%struct.unw_tdep_frame_t = type { i64, i64 }
%struct.unw_dyn_info = type { ptr, ptr, i64, i64, i64, i32, i32, i64, %union.anon }
%union.anon = type { %struct.unw_dyn_proc_info }
%struct.unw_dyn_proc_info = type { i64, i64, i32, i32, ptr }
%struct.unw_accessors = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline optnone uwtable
define i32 @_Ux86_64_get_proc_name(ptr noundef %cursor, ptr noundef %buf, i64 noundef %buf_len, ptr noundef %offp) #0 {
entry:
  %cursor.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %ip = alloca i64, align 8
  %error = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_len, ptr %buf_len.addr, align 8
  store ptr %offp, ptr %offp.addr, align 8
  %0 = load ptr, ptr %cursor.addr, align 8
  store ptr %0, ptr %c, align 8
  %1 = load ptr, ptr %c, align 8
  %dwarf = getelementptr inbounds %struct.cursor, ptr %1, i32 0, i32 0
  %ip1 = getelementptr inbounds %struct.dwarf_cursor, ptr %dwarf, i32 0, i32 3
  %2 = load i64, ptr %ip1, align 8
  store i64 %2, ptr %ip, align 8
  %3 = load ptr, ptr %c, align 8
  %dwarf2 = getelementptr inbounds %struct.cursor, ptr %3, i32 0, i32 0
  %use_prev_instr = getelementptr inbounds %struct.dwarf_cursor, ptr %dwarf2, i32 0, i32 8
  %bf.load = load i8, ptr %use_prev_instr, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %ip, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %ip, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %c, align 8
  %dwarf3 = getelementptr inbounds %struct.cursor, ptr %5, i32 0, i32 0
  %as = getelementptr inbounds %struct.dwarf_cursor, ptr %dwarf3, i32 0, i32 1
  %6 = load ptr, ptr %as, align 8
  %7 = load i64, ptr %ip, align 8
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i64, ptr %buf_len.addr, align 8
  %10 = load ptr, ptr %offp.addr, align 8
  %11 = load ptr, ptr %c, align 8
  %dwarf4 = getelementptr inbounds %struct.cursor, ptr %11, i32 0, i32 0
  %as_arg = getelementptr inbounds %struct.dwarf_cursor, ptr %dwarf4, i32 0, i32 0
  %12 = load ptr, ptr %as_arg, align 8
  %call = call i32 @get_proc_name(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, ptr noundef %12)
  store i32 %call, ptr %error, align 4
  %13 = load ptr, ptr %c, align 8
  %dwarf5 = getelementptr inbounds %struct.cursor, ptr %13, i32 0, i32 0
  %use_prev_instr6 = getelementptr inbounds %struct.dwarf_cursor, ptr %dwarf5, i32 0, i32 8
  %bf.load7 = load i8, ptr %use_prev_instr6, align 8
  %bf.lshr8 = lshr i8 %bf.load7, 1
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = zext i8 %bf.clear9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %14 = load ptr, ptr %offp.addr, align 8
  %cmp = icmp ne ptr %14, null
  br i1 %cmp, label %land.lhs.true12, label %if.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %15 = load i32, ptr %error, align 4
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true12
  %16 = load ptr, ptr %offp.addr, align 8
  %17 = load i64, ptr %16, align 8
  %add = add i64 %17, 1
  store i64 %add, ptr %16, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true12, %land.lhs.true, %if.end
  %18 = load i32, ptr %error, align 4
  ret i32 %18
}

; Function Attrs: noinline optnone uwtable
define internal i32 @get_proc_name(ptr noundef %as, i64 noundef %ip, ptr noundef %buf, i64 noundef %buf_len, ptr noundef %offp, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %pi = alloca %struct.unw_proc_info, align 8
  %ret = alloca i32, align 4
  %di = alloca ptr, align 8
  store ptr %as, ptr %as.addr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_len, ptr %buf_len.addr, align 8
  store ptr %offp, ptr %offp.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %as.addr, align 8
  %call = call ptr @_Ux86_64_get_accessors_int(ptr noundef %0)
  store ptr %call, ptr %a, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 0, ptr %arrayidx, align 1
  %2 = load ptr, ptr %as.addr, align 8
  %3 = load i64, ptr %ip.addr, align 8
  %4 = load ptr, ptr %arg.addr, align 8
  %call1 = call i32 @_Ux86_64_Ifind_dynamic_proc_info(ptr noundef %2, i64 noundef %3, ptr noundef %pi, i32 noundef 1, ptr noundef %4)
  store i32 %call1, ptr %ret, align 4
  %5 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %unwind_info = getelementptr inbounds %struct.unw_proc_info, ptr %pi, i32 0, i32 8
  %6 = load ptr, ptr %unwind_info, align 8
  store ptr %6, ptr %di, align 8
  %7 = load ptr, ptr %offp.addr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load i64, ptr %ip.addr, align 8
  %start_ip = getelementptr inbounds %struct.unw_proc_info, ptr %pi, i32 0, i32 0
  %9 = load i64, ptr %start_ip, align 8
  %sub = sub i64 %8, %9
  %10 = load ptr, ptr %offp.addr, align 8
  store i64 %sub, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %di, align 8
  %format = getelementptr inbounds %struct.unw_dyn_info, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %format, align 8
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load ptr, ptr %as.addr, align 8
  %14 = load ptr, ptr %a, align 8
  %15 = load ptr, ptr %di, align 8
  %u = getelementptr inbounds %struct.unw_dyn_info, ptr %15, i32 0, i32 8
  %name_ptr = getelementptr inbounds %struct.unw_dyn_proc_info, ptr %u, i32 0, i32 0
  %16 = load i64, ptr %name_ptr, align 8
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load i64, ptr %buf_len.addr, align 8
  %19 = load ptr, ptr %arg.addr, align 8
  %call3 = call i32 @intern_string(ptr noundef %13, ptr noundef %14, i64 noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19)
  store i32 %call3, ptr %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store i32 -10, ptr %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -8, ptr %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %20 = load ptr, ptr %as.addr, align 8
  %21 = load ptr, ptr %arg.addr, align 8
  call void @_Ux86_64_Iput_dynamic_unwind_info(ptr noundef %20, ptr noundef %pi, ptr noundef %21)
  %22 = load i32, ptr %ret, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  %23 = load i32, ptr %ret, align 4
  %cmp6 = icmp ne i32 %23, -10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %24 = load i32, ptr %ret, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %25 = load ptr, ptr %a, align 8
  %get_proc_name = getelementptr inbounds %struct.unw_accessors, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %get_proc_name, align 8
  %tobool9 = icmp ne ptr %26, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %27 = load ptr, ptr %a, align 8
  %get_proc_name11 = getelementptr inbounds %struct.unw_accessors, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %get_proc_name11, align 8
  %29 = load ptr, ptr %as.addr, align 8
  %30 = load i64, ptr %ip.addr, align 8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i64, ptr %buf_len.addr, align 8
  %33 = load ptr, ptr %offp.addr, align 8
  %34 = load ptr, ptr %arg.addr, align 8
  %call12 = call i32 %28(ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %34)
  store i32 %call12, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  store i32 -10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then10, %if.then7, %sw.epilog
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare ptr @_Ux86_64_get_accessors_int(ptr noundef) #1

declare i32 @_Ux86_64_Ifind_dynamic_proc_info(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline optnone uwtable
define internal i32 @intern_string(ptr noundef %as, ptr noundef %a, i64 noundef %addr, ptr noundef %buf, i64 noundef %buf_len, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %as, ptr %as.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_len, ptr %buf_len.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %buf_len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %as.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i64, ptr %i, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load ptr, ptr %arg.addr, align 8
  %call = call i32 @fetch8(ptr noundef %2, ptr noundef %3, ptr noundef %addr.addr, ptr noundef %add.ptr, ptr noundef %6)
  store i32 %call, ptr %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %ret, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %11 = load i64, ptr %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i64, ptr %buf_len.addr, align 8
  %sub = sub i64 %13, 1
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %sub
  store i8 0, ptr %arrayidx6, align 1
  store i32 -2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @_Ux86_64_Iput_dynamic_unwind_info(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline optnone uwtable
define internal i32 @fetch8(ptr noundef %as, ptr noundef %a, ptr noundef %addr, ptr noundef %valp, ptr noundef %arg) #0 {
entry:
  %as.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %valp.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  %aligned_addr = alloca i64, align 8
  %off = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %as, ptr %as.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store ptr %valp, ptr %valp.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %addr.addr, align 8
  %1 = load i64, ptr %0, align 8
  %and = and i64 %1, -8
  store i64 %and, ptr %aligned_addr, align 8
  %2 = load ptr, ptr %addr.addr, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load i64, ptr %aligned_addr, align 8
  %sub = sub i64 %3, %4
  store i64 %sub, ptr %off, align 8
  %5 = load ptr, ptr %addr.addr, align 8
  %6 = load i64, ptr %5, align 8
  %add = add i64 %6, 1
  store i64 %add, ptr %5, align 8
  %7 = load ptr, ptr %a.addr, align 8
  %access_mem = getelementptr inbounds %struct.unw_accessors, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %access_mem, align 8
  %9 = load ptr, ptr %as.addr, align 8
  %10 = load i64, ptr %aligned_addr, align 8
  %11 = load ptr, ptr %arg.addr, align 8
  %call = call i32 %8(ptr noundef %9, i64 noundef %10, ptr noundef %val, i32 noundef 0, ptr noundef %11)
  store i32 %call, ptr %ret, align 4
  %12 = load i64, ptr %off, align 8
  %mul = mul i64 8, %12
  %13 = load i64, ptr %val, align 8
  %shr = lshr i64 %13, %mul
  store i64 %shr, ptr %val, align 8
  %14 = load i64, ptr %val, align 8
  %and1 = and i64 %14, 255
  %conv = trunc i64 %and1 to i8
  %15 = load ptr, ptr %valp.addr, align 8
  store i8 %conv, ptr %15, align 1
  %16 = load i32, ptr %ret, align 4
  ret i32 %16
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
