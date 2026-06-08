; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_intl_loadmsgcat.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/loadmsgcat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.loaded_l10nfile = type { ptr, i32, ptr, ptr, [1 x ptr] }
%struct.loaded_domain = type { ptr, i32, i64, i32, i32, ptr, ptr, i32, ptr }
%struct.mo_file_header = type { i32, i32, i32, i32, i32, i32, i32 }

@_nl_msg_cat_cntr = global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @_nl_load_domain(ptr noundef %domain_file) #0 {
entry:
  %domain_file.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %size = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %data = alloca ptr, align 8
  %domain = alloca ptr, align 8
  %to_read = alloca i64, align 8
  %read_ptr = alloca ptr, align 8
  %nb = alloca i64, align 8
  store ptr %domain_file, ptr %domain_file.addr, align 8
  store ptr inttoptr (i64 -1 to ptr), ptr %data, align 8
  %decided = getelementptr inbounds %struct.loaded_l10nfile, ptr %domain_file, i64 0, i32 1
  store i32 1, ptr %decided, align 8
  %data1 = getelementptr inbounds %struct.loaded_l10nfile, ptr %domain_file, i64 0, i32 2
  store ptr null, ptr %data1, align 8
  %0 = load ptr, ptr %domain_file, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %domain_file.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %2, i32 noundef 0) #4
  store i32 %call, ptr %fd, align 4
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %fd, align 4
  %call6 = call i32 @"\01_fstat"(i32 noundef %3, ptr noundef nonnull %st) #4
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.end5
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 11
  %4 = load i64, ptr %st_size, align 8
  store i64 %4, ptr %size, align 8
  %5 = load i64, ptr %size, align 8
  %cmp11 = icmp ult i64 %5, 28
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end5
  %6 = load i32, ptr %fd, align 4
  %call13 = call i32 @close(i32 noundef %6) #4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %7 = load ptr, ptr %data, align 8
  %cmp15 = icmp eq ptr %7, inttoptr (i64 -1 to ptr)
  br i1 %cmp15, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end14
  %8 = load i64, ptr %size, align 8
  %call17 = call ptr @malloc(i64 noundef %8) #5
  store ptr %call17, ptr %data, align 8
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %return, label %if.end20

if.end20:                                         ; preds = %if.then16
  %9 = load i64, ptr %size, align 8
  store i64 %9, ptr %to_read, align 8
  %10 = load ptr, ptr %data, align 8
  store ptr %10, ptr %read_ptr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end26, %if.end20
  %11 = load i32, ptr %fd, align 4
  %12 = load ptr, ptr %read_ptr, align 8
  %13 = load i64, ptr %to_read, align 8
  %call21 = call i32 @read(i32 noundef %11, ptr noundef %12, i64 noundef %13) #4
  %conv = sext i32 %call21 to i64
  store i64 %conv, ptr %nb, align 8
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %do.body
  %14 = load i32, ptr %fd, align 4
  %call25 = call i32 @close(i32 noundef %14) #4
  br label %return

if.end26:                                         ; preds = %do.body
  %15 = load i64, ptr %nb, align 8
  %16 = load ptr, ptr %read_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %add.ptr, ptr %read_ptr, align 8
  %17 = load i64, ptr %to_read, align 8
  %sub = sub i64 %17, %15
  store i64 %sub, ptr %to_read, align 8
  %18 = load i64, ptr %to_read, align 8
  %cmp27.not = icmp eq i64 %18, 0
  br i1 %cmp27.not, label %do.end, label %do.body, !llvm.loop !6

do.end:                                           ; preds = %if.end26
  %19 = load i32, ptr %fd, align 4
  %call29 = call i32 @close(i32 noundef %19) #4
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end14
  %20 = load ptr, ptr %data, align 8
  %21 = load i32, ptr %20, align 4
  %cmp31.not = icmp eq i32 %21, -1794895138
  br i1 %cmp31.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %22 = load ptr, ptr %data, align 8
  %23 = load i32, ptr %22, align 4
  %cmp34.not = icmp eq i32 %23, -569244523
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %24) #4
  br label %return

if.end37:                                         ; preds = %land.lhs.true, %if.end30
  %call38 = call dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #5
  %25 = load ptr, ptr %domain_file.addr, align 8
  %data39 = getelementptr inbounds %struct.loaded_l10nfile, ptr %25, i64 0, i32 2
  store ptr %call38, ptr %data39, align 8
  %cmp41 = icmp eq ptr %call38, null
  br i1 %cmp41, label %return, label %if.end44

if.end44:                                         ; preds = %if.end37
  %26 = load ptr, ptr %domain_file.addr, align 8
  %data45 = getelementptr inbounds %struct.loaded_l10nfile, ptr %26, i64 0, i32 2
  %27 = load ptr, ptr %data45, align 8
  store ptr %27, ptr %domain, align 8
  %28 = load ptr, ptr %data, align 8
  store ptr %28, ptr %27, align 8
  %29 = load i64, ptr %size, align 8
  %mmap_size = getelementptr inbounds %struct.loaded_domain, ptr %27, i64 0, i32 2
  store i64 %29, ptr %mmap_size, align 8
  %30 = load i32, ptr %28, align 4
  %cmp48 = icmp ne i32 %30, -1794895138
  %conv49 = zext i1 %cmp48 to i32
  %31 = load ptr, ptr %domain, align 8
  %must_swap = getelementptr inbounds %struct.loaded_domain, ptr %31, i64 0, i32 3
  store i32 %conv49, ptr %must_swap, align 8
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end44
  %32 = load ptr, ptr %data, align 8
  %revision = getelementptr inbounds %struct.mo_file_header, ptr %32, i64 0, i32 1
  %33 = load i32, ptr %revision, align 4
  %call51 = call i32 @SWAP(i32 noundef %33)
  br label %cond.end

cond.false:                                       ; preds = %if.end44
  %34 = load ptr, ptr %data, align 8
  %revision52 = getelementptr inbounds %struct.mo_file_header, ptr %34, i64 0, i32 1
  %35 = load i32, ptr %revision52, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call51, %cond.true ], [ %35, %cond.false ]
  %cond1 = icmp eq i32 %cond, 0
  br i1 %cond1, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %cond.end
  %36 = load ptr, ptr %domain, align 8
  %must_swap53 = getelementptr inbounds %struct.loaded_domain, ptr %36, i64 0, i32 3
  %37 = load i32, ptr %must_swap53, align 8
  %tobool54.not = icmp eq i32 %37, 0
  br i1 %tobool54.not, label %cond.false57, label %cond.true55

cond.true55:                                      ; preds = %sw.bb
  %38 = load ptr, ptr %data, align 8
  %nstrings = getelementptr inbounds %struct.mo_file_header, ptr %38, i64 0, i32 2
  %39 = load i32, ptr %nstrings, align 4
  %call56 = call i32 @SWAP(i32 noundef %39)
  br label %cond.end59

cond.false57:                                     ; preds = %sw.bb
  %40 = load ptr, ptr %data, align 8
  %nstrings58 = getelementptr inbounds %struct.mo_file_header, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %nstrings58, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true55
  %cond60 = phi i32 [ %call56, %cond.true55 ], [ %41, %cond.false57 ]
  %42 = load ptr, ptr %domain, align 8
  %nstrings61 = getelementptr inbounds %struct.loaded_domain, ptr %42, i64 0, i32 4
  store i32 %cond60, ptr %nstrings61, align 4
  %43 = load ptr, ptr %data, align 8
  %must_swap62 = getelementptr inbounds %struct.loaded_domain, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %must_swap62, align 8
  %tobool63.not = icmp eq i32 %44, 0
  br i1 %tobool63.not, label %cond.false66, label %cond.true64

cond.true64:                                      ; preds = %cond.end59
  %45 = load ptr, ptr %data, align 8
  %orig_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %45, i64 0, i32 3
  %46 = load i32, ptr %orig_tab_offset, align 4
  %call65 = call i32 @SWAP(i32 noundef %46)
  br label %cond.end68

cond.false66:                                     ; preds = %cond.end59
  %47 = load ptr, ptr %data, align 8
  %orig_tab_offset67 = getelementptr inbounds %struct.mo_file_header, ptr %47, i64 0, i32 3
  %48 = load i32, ptr %orig_tab_offset67, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true64
  %cond69 = phi i32 [ %call65, %cond.true64 ], [ %48, %cond.false66 ]
  %idx.ext = zext i32 %cond69 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %43, i64 %idx.ext
  %49 = load ptr, ptr %domain, align 8
  %orig_tab = getelementptr inbounds %struct.loaded_domain, ptr %49, i64 0, i32 5
  store ptr %add.ptr70, ptr %orig_tab, align 8
  %50 = load ptr, ptr %data, align 8
  %must_swap71 = getelementptr inbounds %struct.loaded_domain, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %must_swap71, align 8
  %tobool72.not = icmp eq i32 %51, 0
  br i1 %tobool72.not, label %cond.false75, label %cond.true73

cond.true73:                                      ; preds = %cond.end68
  %52 = load ptr, ptr %data, align 8
  %trans_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %52, i64 0, i32 4
  %53 = load i32, ptr %trans_tab_offset, align 4
  %call74 = call i32 @SWAP(i32 noundef %53)
  br label %cond.end77

cond.false75:                                     ; preds = %cond.end68
  %54 = load ptr, ptr %data, align 8
  %trans_tab_offset76 = getelementptr inbounds %struct.mo_file_header, ptr %54, i64 0, i32 4
  %55 = load i32, ptr %trans_tab_offset76, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true73
  %cond78 = phi i32 [ %call74, %cond.true73 ], [ %55, %cond.false75 ]
  %idx.ext79 = zext i32 %cond78 to i64
  %add.ptr80 = getelementptr inbounds i8, ptr %50, i64 %idx.ext79
  %56 = load ptr, ptr %domain, align 8
  %trans_tab = getelementptr inbounds %struct.loaded_domain, ptr %56, i64 0, i32 6
  store ptr %add.ptr80, ptr %trans_tab, align 8
  %must_swap81 = getelementptr inbounds %struct.loaded_domain, ptr %56, i64 0, i32 3
  %57 = load i32, ptr %must_swap81, align 8
  %tobool82.not = icmp eq i32 %57, 0
  br i1 %tobool82.not, label %cond.false85, label %cond.true83

cond.true83:                                      ; preds = %cond.end77
  %58 = load ptr, ptr %data, align 8
  %hash_tab_size = getelementptr inbounds %struct.mo_file_header, ptr %58, i64 0, i32 5
  %59 = load i32, ptr %hash_tab_size, align 4
  %call84 = call i32 @SWAP(i32 noundef %59)
  br label %cond.end87

cond.false85:                                     ; preds = %cond.end77
  %60 = load ptr, ptr %data, align 8
  %hash_tab_size86 = getelementptr inbounds %struct.mo_file_header, ptr %60, i64 0, i32 5
  %61 = load i32, ptr %hash_tab_size86, align 4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false85, %cond.true83
  %cond88 = phi i32 [ %call84, %cond.true83 ], [ %61, %cond.false85 ]
  %62 = load ptr, ptr %domain, align 8
  %hash_size = getelementptr inbounds %struct.loaded_domain, ptr %62, i64 0, i32 7
  store i32 %cond88, ptr %hash_size, align 8
  %63 = load ptr, ptr %data, align 8
  %must_swap89 = getelementptr inbounds %struct.loaded_domain, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %must_swap89, align 8
  %tobool90.not = icmp eq i32 %64, 0
  br i1 %tobool90.not, label %cond.false93, label %cond.true91

cond.true91:                                      ; preds = %cond.end87
  %65 = load ptr, ptr %data, align 8
  %hash_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %65, i64 0, i32 6
  %66 = load i32, ptr %hash_tab_offset, align 4
  %call92 = call i32 @SWAP(i32 noundef %66)
  br label %cond.end95

cond.false93:                                     ; preds = %cond.end87
  %67 = load ptr, ptr %data, align 8
  %hash_tab_offset94 = getelementptr inbounds %struct.mo_file_header, ptr %67, i64 0, i32 6
  %68 = load i32, ptr %hash_tab_offset94, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false93, %cond.true91
  %cond96 = phi i32 [ %call92, %cond.true91 ], [ %68, %cond.false93 ]
  %idx.ext97 = zext i32 %cond96 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %63, i64 %idx.ext97
  %69 = load ptr, ptr %domain, align 8
  %hash_tab = getelementptr inbounds %struct.loaded_domain, ptr %69, i64 0, i32 8
  store ptr %add.ptr98, ptr %hash_tab, align 8
  %70 = load i32, ptr @_nl_msg_cat_cntr, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr @_nl_msg_cat_cntr, align 4
  br label %return

sw.default:                                       ; preds = %cond.end
  %71 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %71) #4
  %72 = load ptr, ptr %domain, align 8
  call void @free(ptr noundef %72) #4
  %73 = load ptr, ptr %domain_file.addr, align 8
  %data99 = getelementptr inbounds %struct.loaded_l10nfile, ptr %73, i64 0, i32 2
  store ptr null, ptr %data99, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then16, %if.end, %entry, %cond.end95, %sw.default, %if.then36, %if.then24, %if.then12
  ret void
}

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare i32 @"\01_fstat"(i32 noundef, ptr noundef) #1

declare i32 @close(...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @read(...) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @SWAP(i32 noundef %i) #0 {
entry:
  %or5 = call i32 @llvm.bswap.i32(i32 %i)
  ret i32 %or5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
