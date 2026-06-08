; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_tiny-AES-c_test.prepared.ll'
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
@str.2 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.3 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.4 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.5 = private unnamed_addr constant [22 x i8] c"ECB encrypt verbose:\0A\00", align 1
@str.6 = private unnamed_addr constant [12 x i8] c"plain text:\00", align 1
@str.7 = private unnamed_addr constant [5 x i8] c"key:\00", align 1
@str.8 = private unnamed_addr constant [12 x i8] c"ciphertext:\00", align 1
@str.9 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.10 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.11 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.12 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1
@str.13 = private unnamed_addr constant [9 x i8] c"FAILURE!\00", align 1
@str.14 = private unnamed_addr constant [9 x i8] c"SUCCESS!\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %i.i = alloca i8, align 1
  %key.i39 = alloca [16 x i8], align 1
  %plain_text.i = alloca [64 x i8], align 1
  %ctx.i40 = alloca %struct.AES_ctx, align 1
  %key.i28 = alloca [16 x i8], align 1
  %out.i29 = alloca [16 x i8], align 1
  %in.i30 = alloca [16 x i8], align 1
  %ctx.i31 = alloca %struct.AES_ctx, align 1
  %key.i17 = alloca [16 x i8], align 1
  %in.i18 = alloca [16 x i8], align 1
  %out.i19 = alloca [16 x i8], align 1
  %ctx.i20 = alloca %struct.AES_ctx, align 1
  %key.i2 = alloca [16 x i8], align 1
  %in.i3 = alloca [64 x i8], align 1
  %iv.i4 = alloca [16 x i8], align 1
  %out.i5 = alloca [64 x i8], align 1
  %ctx.i6 = alloca %struct.AES_ctx, align 1
  %key.i = alloca [16 x i8], align 1
  %out.i = alloca [64 x i8], align 1
  %iv.i = alloca [16 x i8], align 1
  %in.i = alloca [64 x i8], align 1
  %ctx.i = alloca %struct.AES_ctx, align 1
  %exit = alloca i32, align 4
  %puts = call i32 @puts(ptr nonnull @str)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %ctx.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key.i, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %out.i, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_cbc.out, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %iv.i, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %in.i, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_cbc.in, i64 64, i1 false)
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx.i, ptr noundef nonnull %key.i, ptr noundef nonnull %iv.i) #5
  call void @AES_CBC_encrypt_buffer(ptr noundef nonnull %ctx.i, ptr noundef nonnull %in.i, i64 noundef 64) #5
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11) #5
  %call5.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out.i, ptr noundef nonnull dereferenceable(64) %in.i, i64 noundef 64) #5
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %puts64 = call i32 @puts(ptr nonnull @str.12)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0.exit

if.else.i:                                        ; preds = %entry
  %puts46 = call i32 @puts(ptr nonnull @str.1)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0.exit

pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0.exit: ; preds = %if.then.i, %if.else.i
  %storemerge = phi i32 [ 1, %if.else.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %ctx.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i2)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i4)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i5)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %ctx.i6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key.i2, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_cbc.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %in.i3, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_decrypt_cbc.in, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %iv.i4, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_cbc.iv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %out.i5, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_decrypt_cbc.out, i64 64, i1 false)
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx.i6, ptr noundef nonnull %key.i2, ptr noundef nonnull %iv.i4) #5
  call void @AES_CBC_decrypt_buffer(ptr noundef nonnull %ctx.i6, ptr noundef nonnull %in.i3, i64 noundef 64) #5
  %call.i7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10) #5
  %call5.i8 = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out.i5, ptr noundef nonnull dereferenceable(64) %in.i3, i64 noundef 64) #5
  %cmp.i9 = icmp eq i32 %call5.i8, 0
  br i1 %cmp.i9, label %if.then.i11, label %if.else.i13

if.then.i11:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0.exit
  %puts63 = call i32 @puts(ptr nonnull @str.11)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1.exit

if.else.i13:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_0.exit
  %puts47 = call i32 @puts(ptr nonnull @str.2)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1.exit

pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1.exit: ; preds = %if.then.i11, %if.else.i13
  %storemerge48 = phi i32 [ 1, %if.else.i13 ], [ 0, %if.then.i11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i2)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i4)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %ctx.i6)
  %add = add nuw nsw i32 %storemerge, %storemerge48
  %call.i14 = call i32 @test_xcrypt_ctr(ptr noundef nonnull @.str.12)
  %add4 = add nsw i32 %add, %call.i14
  %call.i15 = call i32 @test_xcrypt_ctr(ptr noundef nonnull @.str.14)
  %add6 = add nsw i32 %add4, %call.i15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i18)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i19)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %ctx.i20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key.i17, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %in.i18, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.in, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out.i19, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_decrypt_ecb.out, i64 16, i1 false)
  call void @AES_init_ctx(ptr noundef nonnull %ctx.i20, ptr noundef nonnull %key.i17) #5
  call void @AES_ECB_decrypt(ptr noundef nonnull %ctx.i20, ptr noundef nonnull %in.i18) #5
  %call.i21 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15) #5
  %call4.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %out.i19, ptr noundef nonnull dereferenceable(16) %in.i18, i64 noundef 16) #5
  %cmp.i22 = icmp eq i32 %call4.i, 0
  br i1 %cmp.i22, label %if.then.i24, label %if.else.i26

if.then.i24:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1.exit
  %puts62 = call i32 @puts(ptr nonnull @str.10)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4.exit

if.else.i26:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_1.exit
  %puts49 = call i32 @puts(ptr nonnull @str.3)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4.exit

pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4.exit: ; preds = %if.then.i24, %if.else.i26
  %storemerge50 = phi i32 [ 1, %if.else.i26 ], [ 0, %if.then.i24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i19)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %ctx.i20)
  %add8 = add nsw i32 %add6, %storemerge50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i29)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i30)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %ctx.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key.i28, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out.i29, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.out, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %in.i30, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb.in, i64 16, i1 false)
  call void @AES_init_ctx(ptr noundef nonnull %ctx.i31, ptr noundef nonnull %key.i28) #5
  call void @AES_ECB_encrypt(ptr noundef nonnull %ctx.i31, ptr noundef nonnull %in.i30) #5
  %call.i32 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7) #5
  %call4.i33 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %out.i29, ptr noundef nonnull dereferenceable(16) %in.i30, i64 noundef 16) #5
  %cmp.i34 = icmp eq i32 %call4.i33, 0
  br i1 %cmp.i34, label %if.then.i36, label %if.else.i38

if.then.i36:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4.exit
  %puts61 = call i32 @puts(ptr nonnull @str.9)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5.exit

if.else.i38:                                      ; preds = %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_4.exit
  %puts51 = call i32 @puts(ptr nonnull @str.4)
  br label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5.exit

pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5.exit: ; preds = %if.then.i36, %if.else.i38
  %storemerge52 = phi i32 [ 1, %if.else.i38 ], [ 0, %if.then.i36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i28)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i29)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i30)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %ctx.i31)
  %add10 = add nsw i32 %add8, %storemerge52
  store i32 %add10, ptr %exit, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i39)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %plain_text.i)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %ctx.i40)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %key.i39, ptr noundef nonnull align 1 dereferenceable(16) @__const.test_encrypt_ecb_verbose.key, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %plain_text.i, ptr noundef nonnull align 1 dereferenceable(64) @__const.test_encrypt_ecb_verbose.plain_text, i64 64, i1 false)
  %puts53 = call i32 @puts(ptr nonnull @str.5)
  %puts54 = call i32 @puts(ptr nonnull @str.6)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5.exit
  %storemerge55 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_5.exit ], [ %inc.i, %for.body.i ]
  store i8 %storemerge55, ptr %i.i, align 1
  %cmp.i42 = icmp ult i8 %storemerge55, 4
  br i1 %cmp.i42, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i8, ptr %i.i, align 1
  %conv3.i = zext i8 %0 to i64
  %mul.i = shl nuw nsw i64 %conv3.i, 4
  %add.ptr.i = getelementptr inbounds i8, ptr %plain_text.i, i64 %mul.i
  call void @phex(ptr noundef nonnull %add.ptr.i)
  %inc.i = add i8 %0, 1
  br label %for.cond.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.cond.i
  %putchar = call i32 @putchar(i32 10)
  %puts56 = call i32 @puts(ptr nonnull @str.7)
  call void @phex(ptr noundef nonnull %key.i39)
  %putchar57 = call i32 @putchar(i32 10)
  %puts58 = call i32 @puts(ptr nonnull @str.8)
  call void @AES_init_ctx(ptr noundef nonnull %ctx.i40, ptr noundef nonnull %key.i39) #5
  br label %for.cond10.i

for.cond10.i:                                     ; preds = %for.body14.i, %for.end.i
  %storemerge59 = phi i8 [ 0, %for.end.i ], [ %inc26.i, %for.body14.i ]
  store i8 %storemerge59, ptr %i.i, align 1
  %cmp12.i = icmp ult i8 %storemerge59, 4
  br i1 %cmp12.i, label %for.body14.i, label %pc_inline_source_snapshot_public_repos_tiny_AES_c_test_6.exit

for.body14.i:                                     ; preds = %for.cond10.i
  %1 = load i8, ptr %i.i, align 1
  %conv16.i = zext i8 %1 to i64
  %mul17.i = shl nuw nsw i64 %conv16.i, 4
  %add.ptr19.i = getelementptr inbounds i8, ptr %plain_text.i, i64 %mul17.i
  call void @AES_ECB_encrypt(ptr noundef nonnull %ctx.i40, ptr noundef nonnull %add.ptr19.i) #5
  %conv21.i = zext i8 %1 to i64
  %mul22.i = shl nuw nsw i64 %conv21.i, 4
  %add.ptr24.i = getelementptr inbounds i8, ptr %plain_text.i, i64 %mul22.i
  call void @phex(ptr noundef nonnull %add.ptr24.i)
  %2 = load i8, ptr %i.i, align 1
  %inc26.i = add i8 %2, 1
  br label %for.cond10.i, !llvm.loop !8

pc_inline_source_snapshot_public_repos_tiny_AES_c_test_6.exit: ; preds = %for.cond10.i
  %putchar60 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i39)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %plain_text.i)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %ctx.i40)
  %3 = load i32, ptr %exit, align 4
  ret i32 %3
}

declare i32 @printf(ptr noundef, ...) #1

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
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %conv3) #5
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
  call void @AES_init_ctx_iv(ptr noundef nonnull %ctx, ptr noundef nonnull %key, ptr noundef nonnull %iv) #5
  call void @AES_CTR_xcrypt_buffer(ptr noundef nonnull %ctx, ptr noundef nonnull %in, i64 noundef 64) #5
  %0 = load ptr, ptr %xcrypt.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, ptr noundef %0) #5
  %call5 = call i32 @memcmp(ptr noundef nonnull dereferenceable(64) %out, ptr noundef nonnull dereferenceable(64) %in, i64 noundef 64) #5
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
