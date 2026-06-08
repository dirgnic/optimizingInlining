; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/finddomain.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/finddomain.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.loaded_l10nfile = type { ptr, i32, ptr, ptr, [1 x ptr] }

@_nl_loaded_domains = internal global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @_nl_find_domain(ptr noundef %dirname, ptr noundef %locale, ptr noundef %domainname) #0 {
entry:
  %retval = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  %locale.addr = alloca ptr, align 8
  %domainname.addr = alloca ptr, align 8
  %retval1 = alloca ptr, align 8
  %language = alloca ptr, align 8
  %modifier = alloca ptr, align 8
  %territory = alloca ptr, align 8
  %codeset = alloca ptr, align 8
  %normalized_codeset = alloca ptr, align 8
  %special = alloca ptr, align 8
  %sponsor = alloca ptr, align 8
  %revision = alloca ptr, align 8
  %alias_value = alloca ptr, align 8
  %mask = alloca i32, align 4
  %cnt = alloca i32, align 4
  %len = alloca i64, align 8
  %cnt53 = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  store ptr %locale, ptr %locale.addr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  %0 = load ptr, ptr %dirname.addr, align 8
  %1 = load ptr, ptr %dirname.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add = add i64 %call, 1
  %2 = load ptr, ptr %locale.addr, align 8
  %3 = load ptr, ptr %domainname.addr, align 8
  %call2 = call ptr @_nl_make_l10nflist(ptr noundef @_nl_loaded_domains, ptr noundef %0, i64 noundef %add, i32 noundef 0, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef 0)
  store ptr %call2, ptr %retval1, align 8
  %4 = load ptr, ptr %retval1, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %retval1, align 8
  %decided = getelementptr inbounds %struct.loaded_l10nfile, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %decided, align 8
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %retval1, align 8
  call void @_nl_load_domain(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load ptr, ptr %retval1, align 8
  %data = getelementptr inbounds %struct.loaded_l10nfile, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %data, align 8
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %retval1, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load ptr, ptr %retval1, align 8
  %successor = getelementptr inbounds %struct.loaded_l10nfile, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %cnt, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %successor, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %retval1, align 8
  %successor9 = getelementptr inbounds %struct.loaded_l10nfile, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %cnt, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [1 x ptr], ptr %successor9, i64 0, i64 %idxprom10
  %16 = load ptr, ptr %arrayidx11, align 8
  %decided12 = getelementptr inbounds %struct.loaded_l10nfile, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %decided12, align 8
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %for.body
  %18 = load ptr, ptr %retval1, align 8
  %successor15 = getelementptr inbounds %struct.loaded_l10nfile, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %cnt, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [1 x ptr], ptr %successor15, i64 0, i64 %idxprom16
  %20 = load ptr, ptr %arrayidx17, align 8
  call void @_nl_load_domain(ptr noundef %20)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.body
  %21 = load ptr, ptr %retval1, align 8
  %successor19 = getelementptr inbounds %struct.loaded_l10nfile, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %cnt, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [1 x ptr], ptr %successor19, i64 0, i64 %idxprom20
  %23 = load ptr, ptr %arrayidx21, align 8
  %data22 = getelementptr inbounds %struct.loaded_l10nfile, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data22, align 8
  %cmp23 = icmp ne ptr %24, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  br label %for.end

if.end25:                                         ; preds = %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %25 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %cnt, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then24, %for.cond
  %26 = load i32, ptr %cnt, align 4
  %cmp26 = icmp sge i32 %26, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %27 = load ptr, ptr %retval1, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %27, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

if.end27:                                         ; preds = %entry
  %28 = load ptr, ptr %locale.addr, align 8
  %call28 = call ptr @_nl_expand_alias(ptr noundef %28)
  store ptr %call28, ptr %alias_value, align 8
  %29 = load ptr, ptr %alias_value, align 8
  %cmp29 = icmp ne ptr %29, null
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end27
  %30 = load ptr, ptr %alias_value, align 8
  %call31 = call i64 @strlen(ptr noundef %30)
  %add32 = add i64 %call31, 1
  store i64 %add32, ptr %len, align 8
  %31 = load i64, ptr %len, align 8
  %call33 = call ptr @malloc(i64 noundef %31) #5
  store ptr %call33, ptr %locale.addr, align 8
  %32 = load ptr, ptr %locale.addr, align 8
  %cmp34 = icmp eq ptr %32, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  store ptr null, ptr %retval, align 8
  br label %return

if.end36:                                         ; preds = %if.then30
  %33 = load ptr, ptr %locale.addr, align 8
  %34 = load ptr, ptr %alias_value, align 8
  %35 = load i64, ptr %len, align 8
  %36 = load ptr, ptr %locale.addr, align 8
  %37 = call i64 @llvm.objectsize.i64.p0(ptr %36, i1 false, i1 true, i1 false)
  %call37 = call ptr @__memcpy_chk(ptr noundef %33, ptr noundef %34, i64 noundef %35, i64 noundef %37) #6
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end27
  %38 = load ptr, ptr %locale.addr, align 8
  %call39 = call i32 @_nl_explode_name(ptr noundef %38, ptr noundef %language, ptr noundef %modifier, ptr noundef %territory, ptr noundef %codeset, ptr noundef %normalized_codeset, ptr noundef %special, ptr noundef %sponsor, ptr noundef %revision)
  store i32 %call39, ptr %mask, align 4
  %39 = load ptr, ptr %dirname.addr, align 8
  %40 = load ptr, ptr %dirname.addr, align 8
  %call40 = call i64 @strlen(ptr noundef %40)
  %add41 = add i64 %call40, 1
  %41 = load i32, ptr %mask, align 4
  %42 = load ptr, ptr %language, align 8
  %43 = load ptr, ptr %territory, align 8
  %44 = load ptr, ptr %codeset, align 8
  %45 = load ptr, ptr %normalized_codeset, align 8
  %46 = load ptr, ptr %modifier, align 8
  %47 = load ptr, ptr %special, align 8
  %48 = load ptr, ptr %sponsor, align 8
  %49 = load ptr, ptr %revision, align 8
  %50 = load ptr, ptr %domainname.addr, align 8
  %call42 = call ptr @_nl_make_l10nflist(ptr noundef @_nl_loaded_domains, ptr noundef %39, i64 noundef %add41, i32 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef 1)
  store ptr %call42, ptr %retval1, align 8
  %51 = load ptr, ptr %retval1, align 8
  %cmp43 = icmp eq ptr %51, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end38
  store ptr null, ptr %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.end38
  %52 = load ptr, ptr %retval1, align 8
  %decided46 = getelementptr inbounds %struct.loaded_l10nfile, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %decided46, align 8
  %cmp47 = icmp eq i32 %53, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  %54 = load ptr, ptr %retval1, align 8
  call void @_nl_load_domain(ptr noundef %54)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %55 = load ptr, ptr %retval1, align 8
  %data50 = getelementptr inbounds %struct.loaded_l10nfile, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %data50, align 8
  %cmp51 = icmp eq ptr %56, null
  br i1 %cmp51, label %if.then52, label %if.end80

if.then52:                                        ; preds = %if.end49
  store i32 0, ptr %cnt53, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc77, %if.then52
  %57 = load ptr, ptr %retval1, align 8
  %successor55 = getelementptr inbounds %struct.loaded_l10nfile, ptr %57, i32 0, i32 4
  %58 = load i32, ptr %cnt53, align 4
  %idxprom56 = sext i32 %58 to i64
  %arrayidx57 = getelementptr inbounds [1 x ptr], ptr %successor55, i64 0, i64 %idxprom56
  %59 = load ptr, ptr %arrayidx57, align 8
  %cmp58 = icmp ne ptr %59, null
  br i1 %cmp58, label %for.body59, label %for.end79

for.body59:                                       ; preds = %for.cond54
  %60 = load ptr, ptr %retval1, align 8
  %successor60 = getelementptr inbounds %struct.loaded_l10nfile, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %cnt53, align 4
  %idxprom61 = sext i32 %61 to i64
  %arrayidx62 = getelementptr inbounds [1 x ptr], ptr %successor60, i64 0, i64 %idxprom61
  %62 = load ptr, ptr %arrayidx62, align 8
  %decided63 = getelementptr inbounds %struct.loaded_l10nfile, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %decided63, align 8
  %cmp64 = icmp eq i32 %63, 0
  br i1 %cmp64, label %if.then65, label %if.end69

if.then65:                                        ; preds = %for.body59
  %64 = load ptr, ptr %retval1, align 8
  %successor66 = getelementptr inbounds %struct.loaded_l10nfile, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %cnt53, align 4
  %idxprom67 = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds [1 x ptr], ptr %successor66, i64 0, i64 %idxprom67
  %66 = load ptr, ptr %arrayidx68, align 8
  call void @_nl_load_domain(ptr noundef %66)
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %for.body59
  %67 = load ptr, ptr %retval1, align 8
  %successor70 = getelementptr inbounds %struct.loaded_l10nfile, ptr %67, i32 0, i32 4
  %68 = load i32, ptr %cnt53, align 4
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds [1 x ptr], ptr %successor70, i64 0, i64 %idxprom71
  %69 = load ptr, ptr %arrayidx72, align 8
  %data73 = getelementptr inbounds %struct.loaded_l10nfile, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %data73, align 8
  %cmp74 = icmp ne ptr %70, null
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end69
  br label %for.end79

if.end76:                                         ; preds = %if.end69
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %71 = load i32, ptr %cnt53, align 4
  %inc78 = add nsw i32 %71, 1
  store i32 %inc78, ptr %cnt53, align 4
  br label %for.cond54, !llvm.loop !8

for.end79:                                        ; preds = %if.then75, %for.cond54
  br label %if.end80

if.end80:                                         ; preds = %for.end79, %if.end49
  %72 = load ptr, ptr %alias_value, align 8
  %cmp81 = icmp ne ptr %72, null
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end80
  %73 = load ptr, ptr %locale.addr, align 8
  call void @free(ptr noundef %73)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end80
  %74 = load ptr, ptr %retval1, align 8
  store ptr %74, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end83, %if.then44, %if.then35, %cond.end, %if.then6
  %75 = load ptr, ptr %retval, align 8
  ret ptr %75
}

declare ptr @_nl_make_l10nflist(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare void @_nl_load_domain(ptr noundef) #1

declare ptr @_nl_expand_alias(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @_nl_explode_name(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
