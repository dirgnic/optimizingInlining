; ModuleID = './out/real_signal_run/rewritten_ir/student_random_forest/source_snapshot_public_repos_tiny-AES-c_test.prepared.ll'
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
@str = private unnamed_addr constant [17 x i8] c"\0ATesting AES128\0A\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.2 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.3 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.4 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.5 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.6 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.7 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.8 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.9 = private unnamed_addr constant [22 x i8] c"ECB encrypt verbose:\0A\00", align 1
@str.10 = private unnamed_addr constant [12 x i8] c"plain text:\00", align 1
@str.11 = private unnamed_addr constant [5 x i8] c"key:\00", align 1
@str.12 = private unnamed_addr constant [12 x i8] c"ciphertext:\00", align 1
@str.13 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.14 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %puts = call i32 @puts(ptr nonnull @str)
  %call1 = call i32 @test_encrypt_cbc()
  %call2 = call i32 @test_decrypt_cbc()
  %add = add nsw i32 %call1, %call2
  %call.i = call i32 @test_xcrypt_ctr(ptr noundef nonnull @.str.12)
  %add4 = add nsw i32 %add, %call.i
  %call.i1 = call i32 @test_xcrypt_ctr(ptr noundef nonnull @.str.14)
  %add6 = add nsw i32 %add4, %call.i1
  %call7 = call i32 @test_decrypt_ecb()
  %add8 = add nsw i32 %add6, %call7
  %call9 = call i32 @test_encrypt_ecb()
  %add10 = add nsw i32 %add8, %call9
  call void @test_encrypt_ecb_verbose()
  ret i32 %add10
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_encrypt_cbc() #0 {
entry:
  %key = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %out, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_cbc.out, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %iv, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %in, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_cbc.in, i64 64, i1 false)
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx, ptr noundef nonnull %key, ptr noundef nonnull %iv) #4
  call void @AES_CBC_encrypt_buffer(ptr noundef nonnull %ctx, ptr noundef nonnull %in, i64 noundef 64) #4
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11) #4
  %call5 = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out, ptr noundef nonnull dereferenceable(64) %in, i64 noundef 64) #4
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts1 = call i32 @puts(ptr nonnull @str.2)
  br label %return

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.1)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_decrypt_cbc() #0 {
entry:
  %key = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %in, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_decrypt_cbc.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %iv, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %out, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_decrypt_cbc.out, i64 64, i1 false)
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx, ptr noundef nonnull %key, ptr noundef nonnull %iv) #4
  call void @AES_CBC_decrypt_buffer(ptr noundef nonnull %ctx, ptr noundef nonnull %in, i64 noundef 64) #4
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10) #4
  %call5 = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out, ptr noundef nonnull dereferenceable(64) %in, i64 noundef 64) #4
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts1 = call i32 @puts(ptr nonnull @str.4)
  br label %return

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.3)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_decrypt_ecb() #0 {
entry:
  %key = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %in, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.in, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.out, i64 16, i1 false)
  call void @AES_init_ctx(ptr noundef nonnull %ctx, ptr noundef nonnull %key) #4
  call void @AES_ECB_decrypt(ptr noundef nonnull %ctx, ptr noundef nonnull %in) #4
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15) #4
  %call4 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %out, ptr noundef nonnull dereferenceable(16) %in, i64 noundef 16) #4
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts1 = call i32 @puts(ptr nonnull @str.6)
  br label %return

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.5)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @test_encrypt_ecb() #0 {
entry:
  %key = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %in = alloca [16 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.out, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %in, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.in, i64 16, i1 false)
  call void @AES_init_ctx(ptr noundef nonnull %ctx, ptr noundef nonnull %key) #4
  call void @AES_ECB_encrypt(ptr noundef nonnull %ctx, ptr noundef nonnull %in) #4
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7) #4
  %call4 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %out, ptr noundef nonnull dereferenceable(16) %in, i64 noundef 16) #4
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts1 = call i32 @puts(ptr nonnull @str.8)
  br label %return

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.7)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @test_encrypt_ecb_verbose() #0 {
entry:
  %i = alloca i8, align 1
  %key = alloca [16 x i8], align 1
  %plain_text = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb_verbose.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %plain_text, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_ecb_verbose.plain_text, i64 64, i1 false)
  %puts = call i32 @puts(ptr nonnull @str.9)
  %puts1 = call i32 @puts(ptr nonnull @str.10)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp = icmp ult i8 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %i, align 1
  %conv3 = zext i8 %0 to i64
  %mul = shl nuw nsw i64 %conv3, 4
  %add.ptr = getelementptr inbounds i8, ptr %plain_text, i64 %mul
  call void @phex(ptr noundef nonnull %add.ptr)
  %1 = load i8, ptr %i, align 1
  %inc = add i8 %1, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %putchar = call i32 @putchar(i32 10)
  %puts2 = call i32 @puts(ptr nonnull @str.11)
  call void @phex(ptr noundef nonnull %key)
  %putchar3 = call i32 @putchar(i32 10)
  %puts4 = call i32 @puts(ptr nonnull @str.12)
  call void @AES_init_ctx(ptr noundef nonnull %ctx, ptr noundef nonnull %key) #4
  br label %for.cond10

for.cond10:                                       ; preds = %for.body14, %for.end
  %storemerge5 = phi i8 [ 0, %for.end ], [ %inc26, %for.body14 ]
  store i8 %storemerge5, ptr %i, align 1
  %cmp12 = icmp ult i8 %storemerge5, 4
  br i1 %cmp12, label %for.body14, label %for.end27

for.body14:                                       ; preds = %for.cond10
  %2 = load i8, ptr %i, align 1
  %conv16 = zext i8 %2 to i64
  %mul17 = shl nuw nsw i64 %conv16, 4
  %add.ptr19 = getelementptr inbounds i8, ptr %plain_text, i64 %mul17
  call void @AES_ECB_encrypt(ptr noundef nonnull %ctx, ptr noundef nonnull %add.ptr19) #4
  %conv21 = zext i8 %2 to i64
  %mul22 = shl nuw nsw i64 %conv21, 4
  %add.ptr24 = getelementptr inbounds i8, ptr %plain_text, i64 %mul22
  call void @phex(ptr noundef nonnull %add.ptr24)
  %3 = load i8, ptr %i, align 1
  %inc26 = add i8 %3, 1
  br label %for.cond10, !llvm.loop !8

for.end27:                                        ; preds = %for.cond10
  %putchar6 = call i32 @putchar(i32 10)
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %0 = load i8, ptr %len, align 1
  %cmp = icmp ult i8 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %3 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %conv3) #4
  %4 = load i8, ptr %i, align 1
  %inc = add i8 %4, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %putchar = call i32 @putchar(i32 10)
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
  %xcrypt.addr = alloca ptr, align 8
  %key = alloca [16 x i8], align 1
  %in = alloca [64 x i8], align 1
  %iv = alloca [16 x i8], align 1
  %out = alloca [64 x i8], align 1
  %ctx = alloca %struct.AES_ctx, align 1
  store ptr %xcrypt, ptr %xcrypt.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_xcrypt_ctr.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %in, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_xcrypt_ctr.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %iv, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_xcrypt_ctr.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %out, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_xcrypt_ctr.out, i64 64, i1 false)
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx, ptr noundef nonnull %key, ptr noundef nonnull %iv) #4
  call void @AES_CTR_xcrypt_buffer(ptr noundef nonnull %ctx, ptr noundef nonnull %in, i64 noundef 64) #4
  %0 = load ptr, ptr %xcrypt.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, ptr noundef %0) #4
  %call5 = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out, ptr noundef nonnull dereferenceable(64) %in, i64 noundef 64) #4
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts1 = call i32 @puts(ptr nonnull @str.14)
  br label %return

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.13)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %storemerge
}

declare void @AES_CTR_xcrypt_buffer(ptr noundef, ptr noundef, i64 noundef) #1

declare void @AES_ECB_decrypt(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
