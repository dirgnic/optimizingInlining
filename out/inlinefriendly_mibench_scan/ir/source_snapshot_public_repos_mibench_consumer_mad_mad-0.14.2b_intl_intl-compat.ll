; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/intl-compat.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/intl-compat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @bindtextdomain(ptr noundef %domainname, ptr noundef %dirname) #0 {
entry:
  %domainname.addr = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  store ptr %dirname, ptr %dirname.addr, align 8
  %0 = load ptr, ptr %domainname.addr, align 8
  %1 = load ptr, ptr %dirname.addr, align 8
  %call = call ptr @bindtextdomain__(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @bindtextdomain__(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @dcgettext(ptr noundef %domainname, ptr noundef %msgid, i32 noundef %category) #0 {
entry:
  %domainname.addr = alloca ptr, align 8
  %msgid.addr = alloca ptr, align 8
  %category.addr = alloca i32, align 4
  store ptr %domainname, ptr %domainname.addr, align 8
  store ptr %msgid, ptr %msgid.addr, align 8
  store i32 %category, ptr %category.addr, align 4
  %0 = load ptr, ptr %domainname.addr, align 8
  %1 = load ptr, ptr %msgid.addr, align 8
  %2 = load i32, ptr %category.addr, align 4
  %call = call ptr @dcgettext__(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret ptr %call
}

declare ptr @dcgettext__(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @dgettext(ptr noundef %domainname, ptr noundef %msgid) #0 {
entry:
  %domainname.addr = alloca ptr, align 8
  %msgid.addr = alloca ptr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  store ptr %msgid, ptr %msgid.addr, align 8
  %0 = load ptr, ptr %domainname.addr, align 8
  %1 = load ptr, ptr %msgid.addr, align 8
  %call = call ptr @dgettext__(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @dgettext__(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @gettext(ptr noundef %msgid) #0 {
entry:
  %msgid.addr = alloca ptr, align 8
  store ptr %msgid, ptr %msgid.addr, align 8
  %0 = load ptr, ptr %msgid.addr, align 8
  %call = call ptr @gettext__(ptr noundef %0)
  ret ptr %call
}

declare ptr @gettext__(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @textdomain(ptr noundef %domainname) #0 {
entry:
  %domainname.addr = alloca ptr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  %0 = load ptr, ptr %domainname.addr, align 8
  %call = call ptr @textdomain__(ptr noundef %0)
  ret ptr %call
}

declare ptr @textdomain__(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
