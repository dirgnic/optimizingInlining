; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/main/FLA_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }

@fla_error_checking_level = internal global i32 2, align 4
@.str = private unnamed_addr constant [171 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/main/FLA_Check.c\00", align 1
@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_error_level() #0 {
entry:
  %0 = load i32, ptr @fla_error_checking_level, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_error_level_set(i32 noundef %new_level) #0 {
entry:
  %new_level.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  %old_level = alloca i32, align 4
  store i32 %new_level, ptr %new_level.addr, align 4
  %0 = load i32, ptr %new_level.addr, align 4
  %call = call i32 @FLA_Check_valid_error_level(i32 noundef %0)
  store i32 %call, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 29)
  %2 = load i32, ptr @fla_error_checking_level, align 4
  store i32 %2, ptr %old_level, align 4
  %3 = load i32, ptr %new_level.addr, align 4
  store i32 %3, ptr @fla_error_checking_level, align 4
  %4 = load i32, ptr %old_level, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_error_level(i32 noundef %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %level.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %level.addr, align 4
  %cmp3 = icmp ne i32 %2, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -89, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_error_code_helper(i32 noundef %code, ptr noundef %file, i32 noundef %line) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  store ptr %file, ptr %file.addr, align 8
  store i32 %line, ptr %line.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %code.addr, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %code.addr, align 4
  %cmp1 = icmp sle i32 -111, %2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %code.addr, align 4
  %cmp2 = icmp sle i32 %3, -10
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %4 = load i32, ptr %code.addr, align 4
  %call = call ptr @FLA_Error_string_for_code(i32 noundef %4)
  %5 = load ptr, ptr %file.addr, align 8
  %6 = load i32, ptr %line.addr, align 4
  call void @FLA_Print_message(ptr noundef %call, ptr noundef %5, i32 noundef %6)
  call void @FLA_Abort()
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call4 = call ptr @FLA_Error_string_for_code(i32 noundef -57)
  %7 = load ptr, ptr %file.addr, align 8
  %8 = load i32, ptr %line.addr, align 4
  call void @FLA_Print_message(ptr noundef %call4, ptr noundef %7, i32 noundef %8)
  call void @FLA_Abort()
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %9 = load i32, ptr %code.addr, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare void @FLA_Print_message(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @FLA_Error_string_for_code(i32 noundef) #1

declare void @FLA_Abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_side(i32 noundef %side) #0 {
entry:
  %side.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %side.addr, align 4
  %cmp = icmp ne i32 %0, 210
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %side.addr, align 4
  %cmp1 = icmp ne i32 %1, 211
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %side.addr, align 4
  %cmp3 = icmp ne i32 %2, 200
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %side.addr, align 4
  %cmp5 = icmp ne i32 %3, 201
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -10, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_uplo(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %uplo.addr, align 4
  %cmp = icmp ne i32 %0, 300
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %uplo.addr, align 4
  %cmp1 = icmp ne i32 %1, 301
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -11, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_trans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp ne i32 %0, 400
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp ne i32 %1, 401
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %trans.addr, align 4
  %cmp3 = icmp ne i32 %2, 402
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %trans.addr, align 4
  %cmp5 = icmp ne i32 %3, 403
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -12, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_diag(i32 noundef %diag) #0 {
entry:
  %diag.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %diag, ptr %diag.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %diag.addr, align 4
  %cmp = icmp ne i32 %0, 501
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %diag.addr, align 4
  %cmp1 = icmp ne i32 %1, 500
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %diag.addr, align 4
  %cmp3 = icmp ne i32 %2, 502
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -58, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_conj(i32 noundef %conj) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %conj.addr, align 4
  %cmp = icmp ne i32 %0, 450
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %conj.addr, align 4
  %cmp1 = icmp ne i32 %1, 451
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -14, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_direct(i32 noundef %direct) #0 {
entry:
  %direct.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %direct, ptr %direct.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %direct.addr, align 4
  %cmp = icmp ne i32 %0, 800
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %direct.addr, align 4
  %cmp1 = icmp ne i32 %1, 801
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -15, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_storev(i32 noundef %storev) #0 {
entry:
  %storev.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %storev, ptr %storev.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %storev.addr, align 4
  %cmp = icmp ne i32 %0, 900
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %storev.addr, align 4
  %cmp1 = icmp ne i32 %1, 901
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_inverse(i32 noundef %inv) #0 {
entry:
  %inv.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %inv, ptr %inv.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %inv.addr, align 4
  %cmp = icmp ne i32 %0, 1300
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %inv.addr, align 4
  %cmp1 = icmp ne i32 %1, 1301
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -100, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 104
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 100
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %2, 101
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %datatype.addr, align 4
  %cmp5 = icmp ne i32 %3, 102
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %datatype.addr, align 4
  %cmp7 = icmp ne i32 %4, 103
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %datatype.addr, align 4
  %cmp9 = icmp ne i32 %5, 105
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8
  store i32 -17, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %6 = load i32, ptr %e_val, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_valid_datatype(i32 noundef %0)
  store i32 %call1, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_floating_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 105
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 100
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %2, 101
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %datatype.addr, align 4
  %cmp5 = icmp ne i32 %3, 102
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %datatype.addr, align 4
  %cmp7 = icmp ne i32 %4, 103
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  store i32 -44, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %5 = load i32, ptr %e_val, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_int_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 105
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 104
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -18, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_real_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 105
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 100
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %2, 101
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -19, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_complex_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 105
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 102
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %2, 103
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -20, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_floating_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -45, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_int_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_int_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_real_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_real_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_comparable_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_int_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype, align 4
  %call2 = call i32 @FLA_Check_real_datatype(i32 noundef %1)
  %cmp3 = icmp ne i32 %call2, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -111, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_complex_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_complex_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -23, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_identical_object_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %retval = alloca i32, align 4
  %e_val = alloca i32, align 4
  %datatype_A = alloca i32, align 4
  %datatype_B = alloca i32, align 4
  %precision_A = alloca i64, align 8
  %precision_B = alloca i64, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype_A, align 4
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call1, ptr %datatype_B, align 4
  %0 = load i32, ptr %datatype_A, align 4
  %cmp = icmp eq i32 %0, 105
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %datatype_B, align 4
  %cmp2 = icmp eq i32 %1, 105
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp4 = icmp ne i32 %call3, -1
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = call i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -45, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  %call10 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call10, ptr %datatype_A, align 4
  %call11 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call11, ptr %datatype_B, align 4
  %2 = load i32, ptr %datatype_A, align 4
  %call12 = call i64 @FLA_Obj_datatype_size(i32 noundef %2)
  store i64 %call12, ptr %precision_A, align 8
  %3 = load i32, ptr %datatype_B, align 4
  %call13 = call i64 @FLA_Obj_datatype_size(i32 noundef %3)
  store i64 %call13, ptr %precision_B, align 8
  %call14 = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  %4 = load i64, ptr %precision_A, align 8
  %div = udiv i64 %4, 2
  store i64 %div, ptr %precision_A, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9
  %call17 = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %5 = load i64, ptr %precision_B, align 8
  %div20 = udiv i64 %5, 2
  store i64 %div20, ptr %precision_B, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %6 = load i64, ptr %precision_A, align 8
  %7 = load i64, ptr %precision_B, align 8
  %cmp22 = icmp ne i64 %6, %7
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  store i32 -59, ptr %e_val, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %8 = load i32, ptr %e_val, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then8, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i64 @FLA_Obj_datatype_size(i32 noundef) #1

declare i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i32 %call, 105
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp2 = icmp ne i32 %call1, 105
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call4 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp5 = icmp ne i32 %call3, %call4
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -27, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_consistent_datatype(i32 noundef %datatype, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i32 %call, 105
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %0, 105
  br i1 %cmp1, label %if.then, label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %call2, %1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -27, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_square(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp2 = icmp ne i64 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_if_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp2 = icmp ne i64 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -26, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_conformal_dims(i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp eq i32 %0, 400
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp eq i32 %1, 403
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp3 = icmp ne i64 %call, %call2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -28, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call5 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call6 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp7 = icmp ne i64 %call5, %call6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -28, ptr %e_val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %call10 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call11 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp12 = icmp ne i64 %call10, %call11
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i32 -28, ptr %e_val, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  %call15 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call16 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp17 = icmp ne i64 %call15, %call16
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 -28, ptr %e_val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end9
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_matrix_matrix_dims(i32 noundef %transa, i32 noundef %transb, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  %k_A = alloca i64, align 8
  %k_B = alloca i64, align 8
  %m_A = alloca i64, align 8
  %m_C = alloca i64, align 8
  %n_B = alloca i64, align 8
  %n_C = alloca i64, align 8
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %transa.addr, align 4
  %cmp = icmp eq i32 %0, 400
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %transa.addr, align 4
  %cmp1 = icmp eq i32 %1, 403
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call2, %cond.false ]
  store i64 %cond, ptr %m_A, align 8
  %2 = load i32, ptr %transa.addr, align 4
  %cmp3 = icmp eq i32 %2, 400
  br i1 %cmp3, label %cond.true6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %cond.end
  %3 = load i32, ptr %transa.addr, align 4
  %cmp5 = icmp eq i32 %3, 403
  br i1 %cmp5, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %lor.lhs.false4, %cond.end
  %call7 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %cond.end10

cond.false8:                                      ; preds = %lor.lhs.false4
  %call9 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true6
  %cond11 = phi i64 [ %call7, %cond.true6 ], [ %call9, %cond.false8 ]
  store i64 %cond11, ptr %k_A, align 8
  %4 = load i32, ptr %transb.addr, align 4
  %cmp12 = icmp eq i32 %4, 400
  br i1 %cmp12, label %cond.true15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %cond.end10
  %5 = load i32, ptr %transb.addr, align 4
  %cmp14 = icmp eq i32 %5, 403
  br i1 %cmp14, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %lor.lhs.false13, %cond.end10
  %call16 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %cond.end19

cond.false17:                                     ; preds = %lor.lhs.false13
  %call18 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true15
  %cond20 = phi i64 [ %call16, %cond.true15 ], [ %call18, %cond.false17 ]
  store i64 %cond20, ptr %k_B, align 8
  %6 = load i32, ptr %transb.addr, align 4
  %cmp21 = icmp eq i32 %6, 400
  br i1 %cmp21, label %cond.true24, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %cond.end19
  %7 = load i32, ptr %transb.addr, align 4
  %cmp23 = icmp eq i32 %7, 403
  br i1 %cmp23, label %cond.true24, label %cond.false26

cond.true24:                                      ; preds = %lor.lhs.false22, %cond.end19
  %call25 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %cond.end28

cond.false26:                                     ; preds = %lor.lhs.false22
  %call27 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %cond29 = phi i64 [ %call25, %cond.true24 ], [ %call27, %cond.false26 ]
  store i64 %cond29, ptr %n_B, align 8
  %call30 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i64 %call30, ptr %m_C, align 8
  %call31 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i64 %call31, ptr %n_C, align 8
  %8 = load i64, ptr %m_A, align 8
  %9 = load i64, ptr %m_C, align 8
  %cmp32 = icmp ne i64 %8, %9
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end28
  store i32 -28, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end28
  %10 = load i64, ptr %k_A, align 8
  %11 = load i64, ptr %k_B, align 8
  %cmp33 = icmp ne i64 %10, %11
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end
  store i32 -28, ptr %e_val, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end
  %12 = load i64, ptr %n_B, align 8
  %13 = load i64, ptr %n_C, align 8
  %cmp36 = icmp ne i64 %12, %13
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  store i32 -28, ptr %e_val, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  %14 = load i32, ptr %e_val, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_matrix_vector_dims(i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp eq i32 %0, 400
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp eq i32 %1, 403
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call2 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %cmp3 = icmp ne i64 %call, %call2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -28, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call5 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call6 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  %cmp7 = icmp ne i64 %call5, %call6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -28, ptr %e_val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %call10 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call11 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %cmp12 = icmp ne i64 %call10, %call11
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i32 -28, ptr %e_val, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  %call15 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call16 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  %cmp17 = icmp ne i64 %call15, %call16
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 -28, ptr %e_val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end9
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

declare i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_equal_vector_dims(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %call1 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -29, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_conj1_trans_and_datatype(i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp eq i32 %0, 402
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp eq i32 %1, 403
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -13, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %lor.lhs.false
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_hess_indices(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i32 noundef %ilo, i32 noundef %ihi) #0 {
entry:
  %ilo.addr = alloca i32, align 4
  %ihi.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %ilo, ptr %ilo.addr, align 4
  store i32 %ihi, ptr %ihi.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %ilo.addr, align 4
  %cmp1 = icmp ne i32 %0, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %1 = load i32, ptr %ihi.addr, align 4
  %cmp3 = icmp ne i32 %1, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -30, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %2 = load i32, ptr %ilo.addr, align 4
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %sub = sub i64 %call5, 1
  %3 = load i32, ptr %ilo.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp6 = icmp ult i64 %sub, %conv
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -30, ptr %e_val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %4 = load i32, ptr %ihi.addr, align 4
  %cmp10 = icmp slt i32 %4, 0
  br i1 %cmp10, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %call13 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %sub14 = sub i64 %call13, 1
  %5 = load i32, ptr %ihi.addr, align 4
  %conv15 = sext i32 %5 to i64
  %cmp16 = icmp ult i64 %sub14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false12, %if.end9
  store i32 -30, ptr %e_val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false12
  %6 = load i32, ptr %ihi.addr, align 4
  %7 = load i32, ptr %ilo.addr, align 4
  %cmp20 = icmp slt i32 %6, %7
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  store i32 -30, ptr %e_val, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %8 = load i32, ptr %e_val, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_null_pointer(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %e_val = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -32, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_dims(i32 noundef %trans, i64 noundef %m, i64 noundef %n, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i64 %m, ptr %m.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp eq i32 %0, 400
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp eq i32 %1, 403
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %2 = load i64, ptr %m.addr, align 8
  %cmp2 = icmp ne i64 %call, %2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -33, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %3 = load i64, ptr %n.addr, align 8
  %cmp5 = icmp ne i64 %call4, %3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -33, ptr %e_val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false
  %call8 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %4 = load i64, ptr %n.addr, align 8
  %cmp9 = icmp ne i64 %call8, %4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  store i32 -33, ptr %e_val, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  %call12 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %5 = load i64, ptr %m.addr, align 8
  %cmp13 = icmp ne i64 %call12, %5
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 -33, ptr %e_val, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end7
  %6 = load i32, ptr %e_val, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_pivot_type(i32 noundef %ptype) #0 {
entry:
  %ptype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %ptype, ptr %ptype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %ptype.addr, align 4
  %cmp = icmp ne i32 %0, 700
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %ptype.addr, align 4
  %cmp1 = icmp ne i32 %1, 701
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -35, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_malloc_pointer(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %e_val = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -37, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_base_buffer_mismatch(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %0 = load ptr, ptr %base, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %buffer, align 8
  %base1 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %2 = load ptr, ptr %base1, align 8
  %buffer2 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer2, align 8
  %cmp = icmp ne ptr %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -38, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_adjacent_objects_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL)
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %cmp4 = icmp ne i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call7 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL)
  %cmp8 = icmp ne i64 %call6, %call7
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %call11 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %cmp12 = icmp ne i64 %call10, %call11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 -41, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false9
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATL, i32 0, i32 0
  %0 = load i64, ptr %offm, align 8
  %offm13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABL, i32 0, i32 0
  %1 = load i64, ptr %offm13, align 8
  %call14 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL)
  %add = add i64 %1, %call14
  %cmp15 = icmp ne i64 %0, %add
  br i1 %cmp15, label %if.then22, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %offm17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATR, i32 0, i32 0
  %2 = load i64, ptr %offm17, align 8
  %offm18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABR, i32 0, i32 0
  %3 = load i64, ptr %offm18, align 8
  %call19 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL)
  %add20 = add i64 %3, %call19
  %cmp21 = icmp ne i64 %2, %add20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false16, %if.end
  store i32 -39, ptr %e_val, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %lor.lhs.false16
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATL, i32 0, i32 1
  %4 = load i64, ptr %offn, align 8
  %offn24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABL, i32 0, i32 1
  %5 = load i64, ptr %offn24, align 8
  %cmp25 = icmp ne i64 %4, %5
  br i1 %cmp25, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %offn27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATR, i32 0, i32 1
  %6 = load i64, ptr %offn27, align 8
  %offn28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABR, i32 0, i32 1
  %7 = load i64, ptr %offn28, align 8
  %cmp29 = icmp ne i64 %6, %7
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false26, %if.end23
  store i32 -42, ptr %e_val, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false26
  %offn32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATL, i32 0, i32 1
  %8 = load i64, ptr %offn32, align 8
  %offn33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATR, i32 0, i32 1
  %9 = load i64, ptr %offn33, align 8
  %call34 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %add35 = add i64 %9, %call34
  %cmp36 = icmp ne i64 %8, %add35
  br i1 %cmp36, label %if.then43, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end31
  %offn38 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABL, i32 0, i32 1
  %10 = load i64, ptr %offn38, align 8
  %offn39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABR, i32 0, i32 1
  %11 = load i64, ptr %offn39, align 8
  %call40 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %add41 = add i64 %11, %call40
  %cmp42 = icmp ne i64 %10, %add41
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false37, %if.end31
  store i32 -40, ptr %e_val, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false37
  %offm45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATL, i32 0, i32 0
  %12 = load i64, ptr %offm45, align 8
  %offm46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ATR, i32 0, i32 0
  %13 = load i64, ptr %offm46, align 8
  %cmp47 = icmp ne i64 %12, %13
  br i1 %cmp47, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %offm49 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABL, i32 0, i32 0
  %14 = load i64, ptr %offm49, align 8
  %offm50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %ABR, i32 0, i32 0
  %15 = load i64, ptr %offm50, align 8
  %cmp51 = icmp ne i64 %14, %15
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false48, %if.end44
  store i32 -43, ptr %e_val, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false48
  %16 = load i32, ptr %e_val, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_adjacent_objects_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT)
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB)
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -41, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %AB, i32 0, i32 0
  %0 = load i64, ptr %offm, align 8
  %offm2 = getelementptr inbounds %struct.FLA_Obj_view, ptr %AT, i32 0, i32 0
  %1 = load i64, ptr %offm2, align 8
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT)
  %add = add i64 %1, %call3
  %cmp4 = icmp ne i64 %0, %add
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -39, ptr %e_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %AB, i32 0, i32 1
  %2 = load i64, ptr %offn, align 8
  %offn7 = getelementptr inbounds %struct.FLA_Obj_view, ptr %AT, i32 0, i32 1
  %3 = load i64, ptr %offn7, align 8
  %cmp8 = icmp ne i64 %2, %3
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -42, ptr %e_val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_adjacent_objects_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL)
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR)
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -41, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %AR, i32 0, i32 1
  %0 = load i64, ptr %offn, align 8
  %offn2 = getelementptr inbounds %struct.FLA_Obj_view, ptr %AL, i32 0, i32 1
  %1 = load i64, ptr %offn2, align 8
  %call3 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL)
  %add = add i64 %1, %call3
  %cmp4 = icmp ne i64 %0, %add
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -40, ptr %e_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %AL, i32 0, i32 0
  %2 = load i64, ptr %offm, align 8
  %offm7 = getelementptr inbounds %struct.FLA_Obj_view, ptr %AR, i32 0, i32 0
  %3 = load i64, ptr %offm7, align 8
  %cmp8 = icmp ne i64 %2, %3
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -43, ptr %e_val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_blocksize_value(i64 noundef %b) #0 {
entry:
  %b.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %b, ptr %b.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i64, ptr %b.addr, align 8
  %cmp = icmp ule i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_blocksize_object(i32 noundef %datatype, ptr noundef %bp) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %e_val = alloca i32, align 4
  %b = alloca i64, align 8
  store i32 %datatype, ptr %datatype.addr, align 4
  store ptr %bp, ptr %bp.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %1 = load ptr, ptr %bp.addr, align 8
  %call = call i64 @FLA_Blocksize_extract(i32 noundef %0, ptr noundef %1)
  store i64 %call, ptr %b, align 8
  %2 = load i64, ptr %b, align 8
  %cmp = icmp ule i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -60, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

declare i64 @FLA_Blocksize_extract(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_file_descriptor(i32 noundef %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %fd.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -47, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_lseek_result(i32 noundef %requested_offset, i32 noundef %lseek_r_val) #0 {
entry:
  %requested_offset.addr = alloca i32, align 4
  %lseek_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %requested_offset, ptr %requested_offset.addr, align 4
  store i32 %lseek_r_val, ptr %lseek_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %lseek_r_val.addr, align 4
  %1 = load i32, ptr %requested_offset.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -48, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_close_result(i32 noundef %close_r_val) #0 {
entry:
  %close_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %close_r_val, ptr %close_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %close_r_val.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -49, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_unlink_result(i32 noundef %unlink_r_val) #0 {
entry:
  %unlink_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %unlink_r_val, ptr %unlink_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %unlink_r_val.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -50, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_read_result(i32 noundef %requested_size, i32 noundef %read_r_val) #0 {
entry:
  %requested_size.addr = alloca i32, align 4
  %read_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %requested_size, ptr %requested_size.addr, align 4
  store i32 %read_r_val, ptr %read_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %read_r_val.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -51, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_write_result(i32 noundef %requested_size, i32 noundef %write_r_val) #0 {
entry:
  %requested_size.addr = alloca i32, align 4
  %write_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %requested_size, ptr %requested_size.addr, align 4
  store i32 %write_r_val, ptr %write_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %write_r_val.addr, align 4
  %1 = load i32, ptr %requested_size.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -52, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_quadrant(i32 noundef %quad) #0 {
entry:
  %quad.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %quad, ptr %quad.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %quad.addr, align 4
  %cmp = icmp ne i32 %0, 11
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %quad.addr, align 4
  %cmp1 = icmp ne i32 %1, 12
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %quad.addr, align 4
  %cmp3 = icmp ne i32 %2, 21
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %quad.addr, align 4
  %cmp5 = icmp ne i32 %3, 22
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -53, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_vector_dim_min(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, i64 noundef %min_dim) #0 {
entry:
  %min_dim.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %min_dim, ptr %min_dim.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %0 = load i64, ptr %min_dim.addr, align 8
  %cmp = icmp ult i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -61, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_pthread_create_result(i32 noundef %pthread_create_r_val) #0 {
entry:
  %pthread_create_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %pthread_create_r_val, ptr %pthread_create_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %pthread_create_r_val.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -63, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_pthread_join_result(i32 noundef %pthread_join_r_val) #0 {
entry:
  %pthread_join_r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %pthread_join_r_val, ptr %pthread_join_r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %pthread_join_r_val.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -64, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_isgn_value(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_is(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @FLA_Obj_is(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -65, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

declare i32 @FLA_Obj_is(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_sylv_matrix_dims(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %e_val = alloca i32, align 4
  %m_A = alloca i64, align 8
  %m_C = alloca i64, align 8
  %n_B = alloca i64, align 8
  %n_C = alloca i64, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call, ptr %m_A, align 8
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call1, ptr %n_B, align 8
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i64 %call2, ptr %m_C, align 8
  %call3 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i64 %call3, ptr %n_C, align 8
  %0 = load i64, ptr %m_A, align 8
  %1 = load i64, ptr %m_C, align 8
  %cmp = icmp ne i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %n_B, align 8
  %3 = load i64, ptr %n_C, align 8
  %cmp4 = icmp ne i64 %2, %3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -28, ptr %e_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_chol_failure(i32 noundef %r_val) #0 {
entry:
  %r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %r_val, ptr %r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %r_val.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -67, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_elemtype(i32 noundef %elemtype) #0 {
entry:
  %elemtype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %elemtype, ptr %elemtype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %elemtype.addr, align 4
  %cmp = icmp ne i32 %0, 151
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %elemtype.addr, align 4
  %cmp1 = icmp ne i32 %1, 150
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -68, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_posix_memalign_failure(i32 noundef %r_val) #0 {
entry:
  %r_val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %r_val, ptr %r_val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %r_val.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -69, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_submatrix_dims_and_offset(i64 noundef %m, i64 noundef %n, i64 noundef %i, i64 noundef %j, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  %m_A = alloca i64, align 8
  %n_A = alloca i64, align 8
  store i64 %m, ptr %m.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  store i64 %j, ptr %j.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp eq i32 %call, 150
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @FLASH_Obj_scalar_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call1, ptr %m_A, align 8
  %call2 = call i64 @FLASH_Obj_scalar_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call2, ptr %n_A, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call3, ptr %m_A, align 8
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call4, ptr %n_A, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i64, ptr %i.addr, align 8
  %1 = load i64, ptr %m_A, align 8
  %cmp5 = icmp ugt i64 %0, %1
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, ptr %j.addr, align 8
  %3 = load i64, ptr %n_A, align 8
  %cmp6 = icmp ugt i64 %2, %3
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -71, ptr %e_val, align 4
  br label %if.end15

if.else8:                                         ; preds = %lor.lhs.false
  %4 = load i64, ptr %i.addr, align 8
  %5 = load i64, ptr %m.addr, align 8
  %add = add i64 %4, %5
  %6 = load i64, ptr %m_A, align 8
  %cmp9 = icmp ugt i64 %add, %6
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.else8
  %7 = load i64, ptr %j.addr, align 8
  %8 = load i64, ptr %n.addr, align 8
  %add11 = add i64 %7, %8
  %9 = load i64, ptr %n_A, align 8
  %cmp12 = icmp ugt i64 %add11, %9
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %if.else8
  store i32 -70, ptr %e_val, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  %10 = load i32, ptr %e_val, align 4
  ret i32 %10
}

declare i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLASH_Obj_scalar_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLASH_Obj_scalar_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_scalar_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %elemtype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %elemtype, align 4
  %0 = load i32, ptr %elemtype, align 4
  %cmp = icmp ne i32 %0, 151
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -72, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_matrix_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %elemtype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %elemtype, align 4
  %0 = load i32, ptr %elemtype, align 4
  %cmp = icmp ne i32 %0, 150
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -73, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_num_threads(i32 noundef %n_threads) #0 {
entry:
  %n_threads.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %n_threads, ptr %n_threads.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %n_threads.addr, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -74, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_conj_and_datatype(i32 noundef %conj, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %conj.addr, align 4
  %cmp = icmp eq i32 %0, 451
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -75, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_complex_trans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp ne i32 %0, 400
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp ne i32 %1, 402
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -76, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_real_trans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp ne i32 %0, 400
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp ne i32 %1, 401
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -77, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_blas_trans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %trans.addr, align 4
  %cmp = icmp ne i32 %0, 400
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %trans.addr, align 4
  %cmp1 = icmp ne i32 %1, 401
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %trans.addr, align 4
  %cmp3 = icmp ne i32 %2, 402
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -78, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_nonconstant_datatype(i32 noundef %datatype) #0 {
entry:
  %datatype.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %datatype, ptr %datatype.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %datatype.addr, align 4
  %cmp = icmp ne i32 %0, 104
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %datatype.addr, align 4
  %cmp1 = icmp ne i32 %1, 100
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %datatype.addr, align 4
  %cmp3 = icmp ne i32 %2, 101
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %datatype.addr, align 4
  %cmp5 = icmp ne i32 %3, 102
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %datatype.addr, align 4
  %cmp7 = icmp ne i32 %4, 103
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  store i32 -79, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %5 = load i32, ptr %e_val, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  %call1 = call i32 @FLA_Check_nonconstant_datatype(i32 noundef %0)
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -80, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -82, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_divide_by_zero(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -83, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

declare i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_identical_object_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call1 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -84, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_pivot_index_range(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, i64 noundef %k1, i64 noundef %k2) #0 {
entry:
  %retval = alloca i32, align 4
  %k1.addr = alloca i64, align 8
  %k2.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %k1, ptr %k1.addr, align 8
  store i64 %k2, ptr %k2.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %e_val, align 4
  store i32 %0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  %sub = sub i64 %call1, 1
  %1 = load i64, ptr %k1.addr, align 8
  %cmp = icmp ult i64 %sub, %1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -85, ptr %e_val, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  %sub5 = sub i64 %call4, 1
  %2 = load i64, ptr %k2.addr, align 8
  %cmp6 = icmp ult i64 %sub5, %2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  store i32 -85, ptr %e_val, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %3 = load i64, ptr %k2.addr, align 8
  %4 = load i64, ptr %k1.addr, align 8
  %cmp9 = icmp ult i64 %3, %4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 -85, ptr %e_val, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %5 = load i32, ptr %e_val, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_householder_panel_dims(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %e_val = alloca i32, align 4
  %nb_alg = alloca i64, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call1 = call i64 @FLA_Query_blocksize(i32 noundef %call, i32 noundef 603)
  store i64 %call1, ptr %nb_alg, align 8
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %0 = load i64, ptr %nb_alg, align 8
  %cmp = icmp ult i64 %call2, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -86, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call4 = call i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp5 = icmp ult i64 %call3, %call4
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -86, ptr %e_val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

declare i64 @FLA_Query_blocksize(i32 noundef, i32 noundef) #1

declare i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_length_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %m) #0 {
entry:
  %m.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %m, ptr %m.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %0 = load i64, ptr %m.addr, align 8
  %cmp = icmp ne i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -87, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_width_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp ne i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -88, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_length_min(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %m) #0 {
entry:
  %m.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %m, ptr %m.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %0 = load i64, ptr %m.addr, align 8
  %cmp = icmp ult i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -87, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_object_width_min(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -88, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_attempted_repart_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_quad, i64 noundef %b_m, i64 noundef %b_n) #0 {
entry:
  %b_m.addr = alloca i64, align 8
  %b_n.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %b_m, ptr %b_m.addr, align 8
  store i64 %b_n, ptr %b_n.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i64, ptr %b_m.addr, align 8
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_quad)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -90, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %b_n.addr, align 8
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_quad)
  %cmp2 = icmp ugt i64 %1, %call1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -90, ptr %e_val, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_attempted_repart_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_side, i64 noundef %b_m) #0 {
entry:
  %b_m.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %b_m, ptr %b_m.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i64, ptr %b_m.addr, align 8
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_side)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -91, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_attempted_repart_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_side, i64 noundef %b_n) #0 {
entry:
  %b_n.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %b_n, ptr %b_n.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i64, ptr %b_n.addr, align 8
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A_side)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -92, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_leftright_side(i32 noundef %side) #0 {
entry:
  %side.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %side.addr, align 4
  %cmp = icmp ne i32 %0, 210
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %side.addr, align 4
  %cmp1 = icmp ne i32 %1, 211
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -10, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_topbottom_side(i32 noundef %side) #0 {
entry:
  %side.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %side.addr, align 4
  %cmp = icmp ne i32 %0, 200
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %side.addr, align 4
  %cmp1 = icmp ne i32 %1, 201
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -10, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_matrix_strides(i64 noundef %m, i64 noundef %n, i64 noundef %rs, i64 noundef %cs) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %rs.addr = alloca i64, align 8
  %cs.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %m, ptr %m.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 %rs, ptr %rs.addr, align 8
  store i64 %cs, ptr %cs.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %0 = load i64, ptr %rs.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %cs.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -96, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %rs.addr, align 8
  %cmp2 = icmp ne i64 %2, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, ptr %cs.addr, align 8
  %cmp3 = icmp ne i64 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %land.lhs.true
  %4 = load i64, ptr %rs.addr, align 8
  %5 = load i64, ptr %cs.addr, align 8
  %cmp5 = icmp eq i64 %4, %5
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %6 = load i64, ptr %m.addr, align 8
  %cmp7 = icmp ne i64 %6, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.end11

land.lhs.true8:                                   ; preds = %if.then6
  %7 = load i64, ptr %n.addr, align 8
  %cmp9 = icmp ne i64 %7, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  store i32 -96, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true8, %if.then6
  br label %if.end26

if.else:                                          ; preds = %if.then4
  %8 = load i64, ptr %rs.addr, align 8
  %9 = load i64, ptr %cs.addr, align 8
  %cmp12 = icmp ult i64 %8, %9
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else
  %10 = load i64, ptr %m.addr, align 8
  %11 = load i64, ptr %rs.addr, align 8
  %mul = mul i64 %10, %11
  %12 = load i64, ptr %cs.addr, align 8
  %cmp14 = icmp ugt i64 %mul, %12
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  store i32 -96, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then13
  br label %if.end25

if.else17:                                        ; preds = %if.else
  %13 = load i64, ptr %cs.addr, align 8
  %14 = load i64, ptr %rs.addr, align 8
  %cmp18 = icmp ult i64 %13, %14
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.else17
  %15 = load i64, ptr %n.addr, align 8
  %16 = load i64, ptr %cs.addr, align 8
  %mul20 = mul i64 %15, %16
  %17 = load i64, ptr %rs.addr, align 8
  %cmp21 = icmp ugt i64 %mul20, %17
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i32 -96, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.else17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end16
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %if.end
  %18 = load i64, ptr %rs.addr, align 8
  %cmp28 = icmp eq i64 %18, 1
  br i1 %cmp28, label %land.lhs.true29, label %if.else41

land.lhs.true29:                                  ; preds = %if.end27
  %19 = load i64, ptr %cs.addr, align 8
  %cmp30 = icmp eq i64 %19, 1
  br i1 %cmp30, label %if.then31, label %if.else41

if.then31:                                        ; preds = %land.lhs.true29
  %20 = load i64, ptr %m.addr, align 8
  %cmp32 = icmp eq i64 %20, 1
  br i1 %cmp32, label %land.lhs.true33, label %land.lhs.true35

land.lhs.true33:                                  ; preds = %if.then31
  %21 = load i64, ptr %n.addr, align 8
  %cmp34 = icmp eq i64 %21, 1
  br i1 %cmp34, label %if.end40, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true33, %if.then31
  %22 = load i64, ptr %m.addr, align 8
  %cmp36 = icmp eq i64 %22, 0
  br i1 %cmp36, label %if.end40, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %23 = load i64, ptr %n.addr, align 8
  %cmp38 = icmp eq i64 %23, 0
  br i1 %cmp38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %land.lhs.true37
  store i32 -96, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %land.lhs.true37, %land.lhs.true35, %land.lhs.true33
  br label %if.end55

if.else41:                                        ; preds = %land.lhs.true29, %if.end27
  %24 = load i64, ptr %rs.addr, align 8
  %cmp42 = icmp eq i64 %24, 1
  br i1 %cmp42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.else41
  %25 = load i64, ptr %cs.addr, align 8
  %26 = load i64, ptr %m.addr, align 8
  %cmp44 = icmp ult i64 %25, %26
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then43
  store i32 -95, ptr %e_val, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then43
  br label %if.end54

if.else47:                                        ; preds = %if.else41
  %27 = load i64, ptr %cs.addr, align 8
  %cmp48 = icmp eq i64 %27, 1
  br i1 %cmp48, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.else47
  %28 = load i64, ptr %rs.addr, align 8
  %29 = load i64, ptr %n.addr, align 8
  %cmp50 = icmp ult i64 %28, %29
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then49
  store i32 -94, ptr %e_val, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then49
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.else47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end46
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end40
  %30 = load i32, ptr %e_val, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then39, %if.then22, %if.then15, %if.then10, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, i64 noundef %expected_length) #0 {
entry:
  %expected_length.addr = alloca i64, align 8
  %e_val = alloca i32, align 4
  store i64 %expected_length, ptr %expected_length.addr, align 8
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %0 = load i64, ptr %expected_length.addr, align 8
  %cmp = icmp ne i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -97, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %e_val, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_row_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -98, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_col_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -99, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_evd_type(i32 noundef %evd_type) #0 {
entry:
  %evd_type.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %evd_type, ptr %evd_type.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %evd_type.addr, align 4
  %cmp = icmp ne i32 %0, 1400
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %evd_type.addr, align 4
  %cmp1 = icmp ne i32 %1, 1401
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -102, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_svd_type(i32 noundef %svd_type) #0 {
entry:
  %svd_type.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %svd_type, ptr %svd_type.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %svd_type.addr, align 4
  %cmp = icmp ne i32 %0, 1500
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %svd_type.addr, align 4
  %cmp1 = icmp ne i32 %1, 1501
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %svd_type.addr, align 4
  %cmp3 = icmp ne i32 %2, 1502
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %svd_type.addr, align 4
  %cmp5 = icmp ne i32 %3, 1503
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -103, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, ptr %e_val, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_svd_type_combination(i32 noundef %svd_type_u, i32 noundef %svd_type_v) #0 {
entry:
  %svd_type_u.addr = alloca i32, align 4
  %svd_type_v.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %svd_type_u, ptr %svd_type_u.addr, align 4
  store i32 %svd_type_v, ptr %svd_type_v.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %svd_type_u.addr, align 4
  %cmp = icmp eq i32 %0, 1502
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %svd_type_v.addr, align 4
  %cmp1 = icmp eq i32 %1, 1502
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -109, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %e_val, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_svd_type_and_trans_combination(i32 noundef %svd_type_u, i32 noundef %transu, i32 noundef %svd_type_v, i32 noundef %transv) #0 {
entry:
  %svd_type_u.addr = alloca i32, align 4
  %transu.addr = alloca i32, align 4
  %svd_type_v.addr = alloca i32, align 4
  %transv.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %svd_type_u, ptr %svd_type_u.addr, align 4
  store i32 %transu, ptr %transu.addr, align 4
  store i32 %svd_type_v, ptr %svd_type_v.addr, align 4
  store i32 %transv, ptr %transv.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %svd_type_u.addr, align 4
  %cmp = icmp eq i32 %0, 1502
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %transu.addr, align 4
  %cmp1 = icmp eq i32 %1, 401
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr %transu.addr, align 4
  %cmp2 = icmp eq i32 %2, 402
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -110, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, ptr %svd_type_v.addr, align 4
  %cmp5 = icmp eq i32 %3, 1502
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %4 = load i32, ptr %transv.addr, align 4
  %cmp7 = icmp eq i32 %4, 400
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.then6
  %5 = load i32, ptr %transv.addr, align 4
  %cmp9 = icmp eq i32 %5, 403
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  store i32 -110, ptr %e_val, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %6 = load i32, ptr %e_val, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_machval(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %0 = load i32, ptr %val.addr, align 4
  %cmp = icmp ne i32 %0, 1600
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %val.addr, align 4
  %cmp1 = icmp ne i32 %1, 1601
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %val.addr, align 4
  %cmp3 = icmp ne i32 %2, 1602
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %val.addr, align 4
  %cmp5 = icmp ne i32 %3, 1603
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %val.addr, align 4
  %cmp7 = icmp ne i32 %4, 1604
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %val.addr, align 4
  %cmp9 = icmp ne i32 %5, 1605
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, ptr %val.addr, align 4
  %cmp11 = icmp ne i32 %6, 1606
  br i1 %cmp11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, ptr %val.addr, align 4
  %cmp13 = icmp ne i32 %7, 1607
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i32, ptr %val.addr, align 4
  %cmp15 = icmp ne i32 %8, 1608
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %9 = load i32, ptr %val.addr, align 4
  %cmp17 = icmp ne i32 %9, 1609
  br i1 %cmp17, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %10 = load i32, ptr %val.addr, align 4
  %cmp19 = icmp ne i32 %10, 1610
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true18
  store i32 -104, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %11 = load i32, ptr %e_val, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_valid_diag_offset(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i32 noundef %offset) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %0 = load i32, ptr %offset.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %offset.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %offset.addr, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %sub, %cond.false ]
  %conv = sext i32 %cond to i64
  %cmp1 = icmp ule i64 %call, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -105, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load i32, ptr %e_val, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_col_storage(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -106, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Check_row_storage(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %e_val = alloca i32, align 4
  store i32 -1, ptr %e_val, align 4
  %call = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -107, ptr %e_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %e_val, align 4
  ret i32 %0
}

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
