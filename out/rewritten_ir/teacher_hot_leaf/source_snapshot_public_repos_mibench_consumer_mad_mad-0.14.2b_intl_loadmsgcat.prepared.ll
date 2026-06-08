; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/loadmsgcat.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/loadmsgcat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.loaded_l10nfile = type { ptr, i32, ptr, ptr, [1 x ptr] }
%struct.mo_file_header = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.loaded_domain = type { ptr, i32, i64, i32, i32, ptr, ptr, i32, ptr }

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
  %0 = load ptr, ptr %domain_file.addr, align 8
  %decided = getelementptr inbounds %struct.loaded_l10nfile, ptr %0, i32 0, i32 1
  store i32 1, ptr %decided, align 8
  %1 = load ptr, ptr %domain_file.addr, align 8
  %data1 = getelementptr inbounds %struct.loaded_l10nfile, ptr %1, i32 0, i32 2
  store ptr null, ptr %data1, align 8
  %2 = load ptr, ptr %domain_file.addr, align 8
  %filename = getelementptr inbounds %struct.loaded_l10nfile, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %filename, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %domain_file.addr, align 8
  %filename2 = getelementptr inbounds %struct.loaded_l10nfile, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %filename2, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %5, i32 noundef 0)
  store i32 %call, ptr %fd, align 4
  %6 = load i32, ptr %fd, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i32, ptr %fd, align 4
  %call6 = call i32 @"\01_fstat"(i32 noundef %7, ptr noundef %st)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 11
  %8 = load i64, ptr %st_size, align 8
  store i64 %8, ptr %size, align 8
  %st_size8 = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 11
  %9 = load i64, ptr %st_size8, align 8
  %cmp9 = icmp ne i64 %8, %9
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %10 = load i64, ptr %size, align 8
  %cmp11 = icmp ult i64 %10, 28
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end5
  %11 = load i32, ptr %fd, align 4
  %call13 = call i32 @close(i32 noundef %11)
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %12 = load ptr, ptr %data, align 8
  %cmp15 = icmp eq ptr %12, inttoptr (i64 -1 to ptr)
  br i1 %cmp15, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end14
  %13 = load i64, ptr %size, align 8
  %call17 = call ptr @malloc(i64 noundef %13) #3
  store ptr %call17, ptr %data, align 8
  %14 = load ptr, ptr %data, align 8
  %cmp18 = icmp eq ptr %14, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  br label %return

if.end20:                                         ; preds = %if.then16
  %15 = load i64, ptr %size, align 8
  store i64 %15, ptr %to_read, align 8
  %16 = load ptr, ptr %data, align 8
  store ptr %16, ptr %read_ptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end20
  %17 = load i32, ptr %fd, align 4
  %18 = load ptr, ptr %read_ptr, align 8
  %19 = load i64, ptr %to_read, align 8
  %call21 = call i32 @read(i32 noundef %17, ptr noundef %18, i64 noundef %19)
  %conv = sext i32 %call21 to i64
  store i64 %conv, ptr %nb, align 8
  %20 = load i64, ptr %nb, align 8
  %cmp22 = icmp eq i64 %20, -1
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %do.body
  %21 = load i32, ptr %fd, align 4
  %call25 = call i32 @close(i32 noundef %21)
  br label %return

if.end26:                                         ; preds = %do.body
  %22 = load i64, ptr %nb, align 8
  %23 = load ptr, ptr %read_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr, ptr %read_ptr, align 8
  %24 = load i64, ptr %nb, align 8
  %25 = load i64, ptr %to_read, align 8
  %sub = sub i64 %25, %24
  store i64 %sub, ptr %to_read, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end26
  %26 = load i64, ptr %to_read, align 8
  %cmp27 = icmp ugt i64 %26, 0
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %27 = load i32, ptr %fd, align 4
  %call29 = call i32 @close(i32 noundef %27)
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end14
  %28 = load ptr, ptr %data, align 8
  %magic = getelementptr inbounds %struct.mo_file_header, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %magic, align 4
  %cmp31 = icmp ne i32 %29, -1794895138
  br i1 %cmp31, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end30
  %30 = load ptr, ptr %data, align 8
  %magic33 = getelementptr inbounds %struct.mo_file_header, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %magic33, align 4
  %cmp34 = icmp ne i32 %31, -569244523
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %32)
  br label %return

if.end37:                                         ; preds = %land.lhs.true, %if.end30
  %call38 = call ptr @malloc(i64 noundef 64) #3
  %33 = load ptr, ptr %domain_file.addr, align 8
  %data39 = getelementptr inbounds %struct.loaded_l10nfile, ptr %33, i32 0, i32 2
  store ptr %call38, ptr %data39, align 8
  %34 = load ptr, ptr %domain_file.addr, align 8
  %data40 = getelementptr inbounds %struct.loaded_l10nfile, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %data40, align 8
  %cmp41 = icmp eq ptr %35, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  br label %return

if.end44:                                         ; preds = %if.end37
  %36 = load ptr, ptr %domain_file.addr, align 8
  %data45 = getelementptr inbounds %struct.loaded_l10nfile, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %data45, align 8
  store ptr %37, ptr %domain, align 8
  %38 = load ptr, ptr %data, align 8
  %39 = load ptr, ptr %domain, align 8
  %data46 = getelementptr inbounds %struct.loaded_domain, ptr %39, i32 0, i32 0
  store ptr %38, ptr %data46, align 8
  %40 = load i64, ptr %size, align 8
  %41 = load ptr, ptr %domain, align 8
  %mmap_size = getelementptr inbounds %struct.loaded_domain, ptr %41, i32 0, i32 2
  store i64 %40, ptr %mmap_size, align 8
  %42 = load ptr, ptr %data, align 8
  %magic47 = getelementptr inbounds %struct.mo_file_header, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %magic47, align 4
  %cmp48 = icmp ne i32 %43, -1794895138
  %conv49 = zext i1 %cmp48 to i32
  %44 = load ptr, ptr %domain, align 8
  %must_swap = getelementptr inbounds %struct.loaded_domain, ptr %44, i32 0, i32 3
  store i32 %conv49, ptr %must_swap, align 8
  %45 = load ptr, ptr %domain, align 8
  %must_swap50 = getelementptr inbounds %struct.loaded_domain, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %must_swap50, align 8
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end44
  %47 = load ptr, ptr %data, align 8
  %revision = getelementptr inbounds %struct.mo_file_header, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %revision, align 4
  %call51 = call i32 @SWAP(i32 noundef %48)
  br label %cond.end

cond.false:                                       ; preds = %if.end44
  %49 = load ptr, ptr %data, align 8
  %revision52 = getelementptr inbounds %struct.mo_file_header, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %revision52, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call51, %cond.true ], [ %50, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end
  %51 = load ptr, ptr %domain, align 8
  %must_swap53 = getelementptr inbounds %struct.loaded_domain, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %must_swap53, align 8
  %tobool54 = icmp ne i32 %52, 0
  br i1 %tobool54, label %cond.true55, label %cond.false57

cond.true55:                                      ; preds = %sw.bb
  %53 = load ptr, ptr %data, align 8
  %nstrings = getelementptr inbounds %struct.mo_file_header, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %nstrings, align 4
  %call56 = call i32 @SWAP(i32 noundef %54)
  br label %cond.end59

cond.false57:                                     ; preds = %sw.bb
  %55 = load ptr, ptr %data, align 8
  %nstrings58 = getelementptr inbounds %struct.mo_file_header, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %nstrings58, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true55
  %cond60 = phi i32 [ %call56, %cond.true55 ], [ %56, %cond.false57 ]
  %57 = load ptr, ptr %domain, align 8
  %nstrings61 = getelementptr inbounds %struct.loaded_domain, ptr %57, i32 0, i32 4
  store i32 %cond60, ptr %nstrings61, align 4
  %58 = load ptr, ptr %data, align 8
  %59 = load ptr, ptr %domain, align 8
  %must_swap62 = getelementptr inbounds %struct.loaded_domain, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %must_swap62, align 8
  %tobool63 = icmp ne i32 %60, 0
  br i1 %tobool63, label %cond.true64, label %cond.false66

cond.true64:                                      ; preds = %cond.end59
  %61 = load ptr, ptr %data, align 8
  %orig_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %61, i32 0, i32 3
  %62 = load i32, ptr %orig_tab_offset, align 4
  %call65 = call i32 @SWAP(i32 noundef %62)
  br label %cond.end68

cond.false66:                                     ; preds = %cond.end59
  %63 = load ptr, ptr %data, align 8
  %orig_tab_offset67 = getelementptr inbounds %struct.mo_file_header, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %orig_tab_offset67, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true64
  %cond69 = phi i32 [ %call65, %cond.true64 ], [ %64, %cond.false66 ]
  %idx.ext = zext i32 %cond69 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %58, i64 %idx.ext
  %65 = load ptr, ptr %domain, align 8
  %orig_tab = getelementptr inbounds %struct.loaded_domain, ptr %65, i32 0, i32 5
  store ptr %add.ptr70, ptr %orig_tab, align 8
  %66 = load ptr, ptr %data, align 8
  %67 = load ptr, ptr %domain, align 8
  %must_swap71 = getelementptr inbounds %struct.loaded_domain, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %must_swap71, align 8
  %tobool72 = icmp ne i32 %68, 0
  br i1 %tobool72, label %cond.true73, label %cond.false75

cond.true73:                                      ; preds = %cond.end68
  %69 = load ptr, ptr %data, align 8
  %trans_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %69, i32 0, i32 4
  %70 = load i32, ptr %trans_tab_offset, align 4
  %call74 = call i32 @SWAP(i32 noundef %70)
  br label %cond.end77

cond.false75:                                     ; preds = %cond.end68
  %71 = load ptr, ptr %data, align 8
  %trans_tab_offset76 = getelementptr inbounds %struct.mo_file_header, ptr %71, i32 0, i32 4
  %72 = load i32, ptr %trans_tab_offset76, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true73
  %cond78 = phi i32 [ %call74, %cond.true73 ], [ %72, %cond.false75 ]
  %idx.ext79 = zext i32 %cond78 to i64
  %add.ptr80 = getelementptr inbounds i8, ptr %66, i64 %idx.ext79
  %73 = load ptr, ptr %domain, align 8
  %trans_tab = getelementptr inbounds %struct.loaded_domain, ptr %73, i32 0, i32 6
  store ptr %add.ptr80, ptr %trans_tab, align 8
  %74 = load ptr, ptr %domain, align 8
  %must_swap81 = getelementptr inbounds %struct.loaded_domain, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %must_swap81, align 8
  %tobool82 = icmp ne i32 %75, 0
  br i1 %tobool82, label %cond.true83, label %cond.false85

cond.true83:                                      ; preds = %cond.end77
  %76 = load ptr, ptr %data, align 8
  %hash_tab_size = getelementptr inbounds %struct.mo_file_header, ptr %76, i32 0, i32 5
  %77 = load i32, ptr %hash_tab_size, align 4
  %call84 = call i32 @SWAP(i32 noundef %77)
  br label %cond.end87

cond.false85:                                     ; preds = %cond.end77
  %78 = load ptr, ptr %data, align 8
  %hash_tab_size86 = getelementptr inbounds %struct.mo_file_header, ptr %78, i32 0, i32 5
  %79 = load i32, ptr %hash_tab_size86, align 4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false85, %cond.true83
  %cond88 = phi i32 [ %call84, %cond.true83 ], [ %79, %cond.false85 ]
  %80 = load ptr, ptr %domain, align 8
  %hash_size = getelementptr inbounds %struct.loaded_domain, ptr %80, i32 0, i32 7
  store i32 %cond88, ptr %hash_size, align 8
  %81 = load ptr, ptr %data, align 8
  %82 = load ptr, ptr %domain, align 8
  %must_swap89 = getelementptr inbounds %struct.loaded_domain, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %must_swap89, align 8
  %tobool90 = icmp ne i32 %83, 0
  br i1 %tobool90, label %cond.true91, label %cond.false93

cond.true91:                                      ; preds = %cond.end87
  %84 = load ptr, ptr %data, align 8
  %hash_tab_offset = getelementptr inbounds %struct.mo_file_header, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %hash_tab_offset, align 4
  %call92 = call i32 @SWAP(i32 noundef %85)
  br label %cond.end95

cond.false93:                                     ; preds = %cond.end87
  %86 = load ptr, ptr %data, align 8
  %hash_tab_offset94 = getelementptr inbounds %struct.mo_file_header, ptr %86, i32 0, i32 6
  %87 = load i32, ptr %hash_tab_offset94, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false93, %cond.true91
  %cond96 = phi i32 [ %call92, %cond.true91 ], [ %87, %cond.false93 ]
  %idx.ext97 = zext i32 %cond96 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %81, i64 %idx.ext97
  %88 = load ptr, ptr %domain, align 8
  %hash_tab = getelementptr inbounds %struct.loaded_domain, ptr %88, i32 0, i32 8
  store ptr %add.ptr98, ptr %hash_tab, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %89 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %89)
  %90 = load ptr, ptr %domain, align 8
  call void @free(ptr noundef %90)
  %91 = load ptr, ptr %domain_file.addr, align 8
  %data99 = getelementptr inbounds %struct.loaded_l10nfile, ptr %91, i32 0, i32 2
  store ptr null, ptr %data99, align 8
  br label %return

sw.epilog:                                        ; preds = %cond.end95
  %92 = load i32, ptr @_nl_msg_cat_cntr, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr @_nl_msg_cat_cntr, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then43, %if.then36, %if.then24, %if.then19, %if.then12, %if.then4, %if.then
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
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %shl = shl i32 %0, 24
  %1 = load i32, ptr %i.addr, align 4
  %and = and i32 %1, 65280
  %shl1 = shl i32 %and, 8
  %or = or i32 %shl, %shl1
  %2 = load i32, ptr %i.addr, align 4
  %shr = lshr i32 %2, 8
  %and2 = and i32 %shr, 65280
  %or3 = or i32 %or, %and2
  %3 = load i32, ptr %i.addr, align 4
  %shr4 = lshr i32 %3, 24
  %or5 = or i32 %or3, %shr4
  ret i32 %or5
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
