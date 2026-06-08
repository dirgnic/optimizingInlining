; ModuleID = './source_snapshot/public_repos/tiny-AES-c/test.c'
source_filename = "./source_snapshot/public_repos/tiny-AES-c/test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.AES_ctx = type { [176 x i8], [16 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"\0ATesting AES128\0A\0A\00", align 1
@__const.test_encrypt_ecb_verbose.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_encrypt_ecb_verbose.plain_text = private unnamed_addr constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ECB encrypt verbose:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"plain text:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"key:\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ciphertext:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@__const.test_encrypt_ecb.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_encrypt_ecb.out = private unnamed_addr constant [16 x i8] c":\D7{\B4\0Dz6`\A8\9E\CA\F3$f\EF\97", align 1
@__const.test_encrypt_ecb.in = private unnamed_addr constant [16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ECB encrypt: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SUCCESS!\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"FAILURE!\0A\00", align 1
@__const.test_decrypt_cbc.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_decrypt_cbc.in = private unnamed_addr constant [64 x i8] c"vI\AB\AC\81\19\B2F\CE\E9\8E\9B\12\E9\19}P\86\CB\9BPr\19\EE\95\DB\11:\91vx\B2s\BE\D6\B8\E3\C1t;q\16\E6\9E\22\22\95\16?\F1\CA\A1h\1F\AC\09\12\0E\CA0u\86\E1\A7", align 1
@__const.test_decrypt_cbc.iv = private unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@__const.test_decrypt_cbc.out = private unnamed_addr constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"CBC decrypt: \00", align 1
@__const.test_encrypt_cbc.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_encrypt_cbc.out = private unnamed_addr constant [64 x i8] c"vI\AB\AC\81\19\B2F\CE\E9\8E\9B\12\E9\19}P\86\CB\9BPr\19\EE\95\DB\11:\91vx\B2s\BE\D6\B8\E3\C1t;q\16\E6\9E\22\22\95\16?\F1\CA\A1h\1F\AC\09\12\0E\CA0u\86\E1\A7", align 1
@__const.test_encrypt_cbc.iv = private unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@__const.test_encrypt_cbc.in = private unnamed_addr constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"CBC encrypt: \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@__const.test_xcrypt_ctr.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_xcrypt_ctr.in = private unnamed_addr constant [64 x i8] c"\87Ma\91\B6 \E3&\1B\EFhd\99\0D\B6\CE\98\06\F6kyp\FD\FF\86\17\18{\B9\FF\FD\FFZ\E4\DF>\DB\D5\D3^[O\09\02\0D\B0>\AB\1E\03\1D\DA/\BE\03\D1y!p\A0\F3\00\9C\EE", align 1
@__const.test_xcrypt_ctr.iv = private unnamed_addr constant [16 x i8] c"\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@__const.test_xcrypt_ctr.out = private unnamed_addr constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"CTR %s: \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@__const.test_decrypt_ecb.key = private unnamed_addr constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 1
@__const.test_decrypt_ecb.in = private unnamed_addr constant [16 x i8] c":\D7{\B4\0Dz6`\A8\9E\CA\F3$f\EF\97", align 1
@__const.test_decrypt_ecb.out = private unnamed_addr constant [16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ECB decrypt: \00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %exit = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0()
  %call2 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1()
  %add = add nsw i32 %call1, %call2
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_2()
  %add4 = add nsw i32 %add, %call3
  %call5 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_3()
  %add6 = add nsw i32 %add4, %call5
  %call7 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4()
  %add8 = add nsw i32 %add6, %call7
  %call9 = call i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5()
  %add10 = add nsw i32 %add8, %call9
  store i32 %add10, ptr %exit, align 4
  call void @test_encrypt_ecb_verbose()
  %0 = load i32, ptr %exit, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_encrypt_cbc() #0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_encrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_encrypt_cbc.out, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %iv, ptr align 1 @__const.test_encrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_encrypt_cbc.in, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  call void @AES_init_ctx_iv(ptr noundef %ctx, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  call void @AES_CBC_encrypt_buffer(ptr noundef %ctx, ptr noundef %arraydecay2, i64 noundef 64)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %out, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 64)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_decrypt_cbc() #0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_decrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_decrypt_cbc.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %iv, ptr align 1 @__const.test_decrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_decrypt_cbc.out, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  call void @AES_init_ctx_iv(ptr noundef %ctx, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  call void @AES_CBC_decrypt_buffer(ptr noundef %ctx, ptr noundef %arraydecay2, i64 noundef 64)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %out, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 64)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_encrypt_ctr() #0 {
entry:
  %call = call i32 @test_xcrypt_ctr(ptr noundef @.str.12)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_decrypt_ctr() #0 {
entry:
  %call = call i32 @test_xcrypt_ctr(ptr noundef @.str.14)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_decrypt_ecb() #0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_decrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_decrypt_ecb.in, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_decrypt_ecb.out, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @AES_init_ctx(ptr noundef %ctx, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  call void @AES_ECB_decrypt(ptr noundef %ctx, ptr noundef %arraydecay1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay2, ptr noundef %arraydecay3, i64 noundef 16)
  %cmp = icmp eq i32 0, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_encrypt_ecb() #0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_encrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_encrypt_ecb.out, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_encrypt_ecb.in, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @AES_init_ctx(ptr noundef %ctx, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  call void @AES_ECB_encrypt(ptr noundef %ctx, ptr noundef %arraydecay1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay2, ptr noundef %arraydecay3, i64 noundef 16)
  %cmp = icmp eq i32 0, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define internal void @test_encrypt_ecb_verbose() #0 {
entry:
  %i = alloca i8, align 1
  %key = alloca [16 x i8], align 1
  %plain_text = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_encrypt_ecb_verbose.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %plain_text, ptr align 1 @__const.test_encrypt_ecb_verbose.plain_text, i64 64, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i8], ptr %plain_text, i64 0, i64 0
  %1 = load i8, ptr %i, align 1
  %conv3 = zext i8 %1 to i32
  %mul = mul nsw i32 %conv3, 16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  call void @phex(ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i8, ptr %i, align 1
  %inc = add i8 %2, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @phex(ptr noundef %arraydecay6)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @AES_init_ctx(ptr noundef %ctx, ptr noundef %arraydecay9)
  store i8 0, ptr %i, align 1
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end
  %3 = load i8, ptr %i, align 1
  %conv11 = zext i8 %3 to i32
  %cmp12 = icmp slt i32 %conv11, 4
  br i1 %cmp12, label %for.body14, label %for.end27

for.body14:                                       ; preds = %for.cond10
  %arraydecay15 = getelementptr inbounds [64 x i8], ptr %plain_text, i64 0, i64 0
  %4 = load i8, ptr %i, align 1
  %conv16 = zext i8 %4 to i32
  %mul17 = mul nsw i32 %conv16, 16
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay15, i64 %idx.ext18
  call void @AES_ECB_encrypt(ptr noundef %ctx, ptr noundef %add.ptr19)
  %arraydecay20 = getelementptr inbounds [64 x i8], ptr %plain_text, i64 0, i64 0
  %5 = load i8, ptr %i, align 1
  %conv21 = zext i8 %5 to i32
  %mul22 = mul nsw i32 %conv21, 16
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %arraydecay20, i64 %idx.ext23
  call void @phex(ptr noundef %add.ptr24)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body14
  %6 = load i8, ptr %i, align 1
  %inc26 = add i8 %6, 1
  store i8 %inc26, ptr %i, align 1
  br label %for.cond10, !llvm.loop !8

for.end27:                                        ; preds = %for.cond10
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal void @phex(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len = alloca i8, align 1
  %i = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  store i8 16, ptr %len, align 1
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %len, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8, ptr %i, align 1
  %inc = add i8 %5, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

declare void @AES_init_ctx(ptr noundef, ptr noundef) #1

declare void @AES_ECB_encrypt(ptr noundef, ptr noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

declare void @AES_init_ctx_iv(ptr noundef, ptr noundef, ptr noundef) #1

declare void @AES_CBC_decrypt_buffer(ptr noundef, ptr noundef, i64 noundef) #1

declare void @AES_CBC_encrypt_buffer(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_xcrypt_ctr(ptr noundef %xcrypt) #0 {
entry:
  %retval = alloca i32, align 4
  %xcrypt.addr = alloca ptr, align 8
  %key = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  store ptr %xcrypt, ptr %xcrypt.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_xcrypt_ctr.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_xcrypt_ctr.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %iv, ptr align 1 @__const.test_xcrypt_ctr.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_xcrypt_ctr.out, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  call void @AES_init_ctx_iv(ptr noundef %ctx, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  call void @AES_CTR_xcrypt_buffer(ptr noundef %ctx, ptr noundef %arraydecay2, i64 noundef 64)
  %0 = load ptr, ptr %xcrypt.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef %0)
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %out, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 64)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare void @AES_CTR_xcrypt_buffer(ptr noundef, ptr noundef, i64 noundef) #1

declare void @AES_ECB_decrypt(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0()  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_encrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_encrypt_cbc.out, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %iv, ptr align 1 @__const.test_encrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_encrypt_cbc.in, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  call void @AES_init_ctx_iv(ptr noundef %ctx, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  call void @AES_CBC_encrypt_buffer(ptr noundef %ctx, ptr noundef %arraydecay2, i64 noundef 64)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %out, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 64)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1()  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_decrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_decrypt_cbc.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %iv, ptr align 1 @__const.test_decrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_decrypt_cbc.out, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  call void @AES_init_ctx_iv(ptr noundef %ctx, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  call void @AES_CBC_decrypt_buffer(ptr noundef %ctx, ptr noundef %arraydecay2, i64 noundef 64)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %out, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 64)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_2()  alwaysinline#0 {
entry:
  %call = call i32 @test_xcrypt_ctr(ptr noundef @.str.12)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_3()  alwaysinline#0 {
entry:
  %call = call i32 @test_xcrypt_ctr(ptr noundef @.str.14)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4()  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_decrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_decrypt_ecb.in, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_decrypt_ecb.out, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @AES_init_ctx(ptr noundef %ctx, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  call void @AES_ECB_decrypt(ptr noundef %ctx, ptr noundef %arraydecay1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay2, ptr noundef %arraydecay3, i64 noundef 16)
  %cmp = icmp eq i32 0, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

define internal i32 @pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5()  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %key = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %key, ptr align 1 @__const.test_encrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 @__const.test_encrypt_ecb.out, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %in, ptr align 1 @__const.test_encrypt_ecb.in, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0
  call void @AES_init_ctx(ptr noundef %ctx, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  call void @AES_ECB_encrypt(ptr noundef %ctx, ptr noundef %arraydecay1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay2, ptr noundef %arraydecay3, i64 noundef 16)
  %cmp = icmp eq i32 0, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
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
