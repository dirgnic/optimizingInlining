; ModuleID = '<stdin>'
source_filename = "/local-ssd/llvm-hlbjdfztk2oj6lsozfyu32qyrtfayfcz-build/aidengro/spack-stage-llvm-16.0.6-hlbjdfztk2oj6lsozfyu32qyrtfayfcz/spack-src/llvm/lib/Target/WebAssembly/MCTargetDesc/WebAssemblyMCAsmInfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.llvm::cl::opt_storage" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::MCAsmInfo" = type <{ ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, [5 x i8], ptr, %"class.llvm::StringRef", i8, i8, i8, [5 x i8], ptr, i8, i8, i8, [5 x i8], %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, [3 x i8], i32, i8, [3 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], %"class.std::vector", %"struct.std::pair", i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvm::MCCFIInstruction, std::allocator<llvm::MCCFIInstruction>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::MCCFIInstruction, std::allocator<llvm::MCCFIInstruction>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::MCCFIInstruction, std::allocator<llvm::MCCFIInstruction>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::MCCFIInstruction, std::allocator<llvm::MCCFIInstruction>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair" = type { i32, i32 }

$_ZNK4llvm2cl11opt_storageIbLb0ELb0EEcvbEv = comdat any

$_ZNK4llvm9MCAsmInfo28getNonexecutableStackSectionERNS_9MCContextE = comdat any

$_ZNK4llvm9MCAsmInfo16getMaxInstLengthEPKNS_15MCSubtargetInfoE = comdat any

$_ZN4llvm9MCAsmInfo25setUseIntegratedAssemblerEb = comdat any

$_ZN4llvm9MCAsmInfo31setParseInlineAsmUsingAsmParserEb = comdat any

$_ZN4llvm9MCAsmInfo22setPreserveAsmCommentsEb = comdat any

$_ZNK4llvm2cl11opt_storageIbLb0ELb0EE8getValueEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm20WebAssemblyMCAsmInfoE = hidden unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4llvm20WebAssemblyMCAsmInfoE, ptr @_ZN4llvm20WebAssemblyMCAsmInfoD1Ev, ptr @_ZN4llvm20WebAssemblyMCAsmInfoD0Ev, ptr @_ZNK4llvm9MCAsmInfo28getNonexecutableStackSectionERNS_9MCContextE, ptr @_ZNK4llvm9MCAsmInfo28isSectionAtomizableBySymbolsERKNS_9MCSectionE, ptr @_ZNK4llvm9MCAsmInfo27getExprForPersonalitySymbolEPKNS_8MCSymbolEjRNS_10MCStreamerE, ptr @_ZNK4llvm9MCAsmInfo19getExprForFDESymbolEPKNS_8MCSymbolEjRNS_10MCStreamerE, ptr @_ZNK4llvm9MCAsmInfo16isAcceptableCharEc, ptr @_ZNK4llvm9MCAsmInfo19isValidUnquotedNameENS_9StringRefE, ptr @_ZNK4llvm9MCAsmInfo26shouldOmitSectionDirectiveENS_9StringRefE, ptr @_ZNK4llvm9MCAsmInfo16getMaxInstLengthEPKNS_15MCSubtargetInfoE, ptr @_ZN4llvm9MCAsmInfo25setUseIntegratedAssemblerEb, ptr @_ZN4llvm9MCAsmInfo31setParseInlineAsmUsingAsmParserEb, ptr @_ZN4llvm9MCAsmInfo22setPreserveAsmCommentsEb, ptr @_ZN4llvm13MCAsmInfoWasm6anchorEv] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"\09.skip\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\09.int8\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09.int16\09\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\09.int32\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\09.int64\09\00", align 1
@_ZN4llvm11WebAssembly12WasmEnableEHE = external global %"class.llvm::cl::opt", align 8
@_ZN4llvm11WebAssembly14WasmEnableSjLjE = external global %"class.llvm::cl::opt", align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN4llvm20WebAssemblyMCAsmInfoE = hidden constant [30 x i8] c"N4llvm20WebAssemblyMCAsmInfoE\00", align 1
@_ZTIN4llvm13MCAsmInfoWasmE = external constant ptr
@_ZTIN4llvm20WebAssemblyMCAsmInfoE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4llvm20WebAssemblyMCAsmInfoE, ptr @_ZTIN4llvm13MCAsmInfoWasmE }, align 8

@_ZN4llvm20WebAssemblyMCAsmInfoD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4llvm20WebAssemblyMCAsmInfoD2Ev
@_ZN4llvm20WebAssemblyMCAsmInfoC1ERKNS_6TripleERKNS_15MCTargetOptionsE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm20WebAssemblyMCAsmInfoC2ERKNS_6TripleERKNS_15MCTargetOptionsE

; Function Attrs: nounwind
declare void @_ZN4llvm9MCAsmInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(493)) unnamed_addr #0

; Function Attrs: nounwind uwtable
define hidden void @_ZN4llvm20WebAssemblyMCAsmInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(496) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN4llvm9MCAsmInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(493) %this1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZN4llvm20WebAssemblyMCAsmInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(496) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN4llvm20WebAssemblyMCAsmInfoD1Ev(ptr noundef nonnull align 8 dereferenceable(496) %this1) #7
  call void @_ZdlPv(ptr noundef %this1) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #2

; Function Attrs: uwtable
define hidden void @_ZN4llvm20WebAssemblyMCAsmInfoC2ERKNS_6TripleERKNS_15MCTargetOptionsE(ptr noundef nonnull align 8 dereferenceable(496) %this, ptr noundef nonnull align 8 dereferenceable(56) %T, ptr noundef nonnull align 8 dereferenceable(192) %Options) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %Options.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  store ptr %T, ptr %T.addr, align 8, !tbaa !4
  store ptr %Options, ptr %Options.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN4llvm13MCAsmInfoWasmC2Ev(ptr noundef nonnull align 8 dereferenceable(493) %this1)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN4llvm20WebAssemblyMCAsmInfoE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8, !tbaa !8
  %0 = load ptr, ptr %T.addr, align 8, !tbaa !4
  %call = invoke noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = zext i1 %call to i64
  %cond = select i1 %call, i32 8, i32 4
  %CalleeSaveStackSlotSize = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 2
  store i32 %cond, ptr %CalleeSaveStackSlotSize, align 4, !tbaa !10
  %CodePointerSize = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 1
  store i32 %cond, ptr %CodePointerSize, align 8, !tbaa !27
  %UseDataRegionDirectives = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 43
  store i8 1, ptr %UseDataRegionDirectives, align 2, !tbaa !28
  %ZeroDirective = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 47
  store ptr @.str, ptr %ZeroDirective, align 8, !tbaa !29
  %Data8bitsDirective = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 56
  store ptr @.str.1, ptr %Data8bitsDirective, align 8, !tbaa !30
  %Data16bitsDirective = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 57
  store ptr @.str.2, ptr %Data16bitsDirective, align 8, !tbaa !31
  %Data32bitsDirective = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 58
  store ptr @.str.3, ptr %Data32bitsDirective, align 8, !tbaa !32
  %Data64bitsDirective = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 59
  store ptr @.str.4, ptr %Data64bitsDirective, align 8, !tbaa !33
  %AlignmentIsInBytes = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 71
  store i8 0, ptr %AlignmentIsInBytes, align 1, !tbaa !34
  %COMMDirectiveAlignmentIsInBytes = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 76
  store i8 0, ptr %COMMDirectiveAlignmentIsInBytes, align 2, !tbaa !35
  %LCOMMDirectiveAlignmentType = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 78
  store i32 2, ptr %LCOMMDirectiveAlignmentType, align 4, !tbaa !36
  %SupportsDebugInformation = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 100
  store i8 1, ptr %SupportsDebugInformation, align 8, !tbaa !37
  %call3 = invoke noundef zeroext i1 @_ZNK4llvm2cl11opt_storageIbLb0ELb0EEcvbEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (i8, ptr @_ZN4llvm11WebAssembly12WasmEnableEHE, i64 128))
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %invoke.cont2
  %call5 = invoke noundef zeroext i1 @_ZNK4llvm2cl11opt_storageIbLb0ELb0EEcvbEv(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (i8, ptr @_ZN4llvm11WebAssembly14WasmEnableSjLjE, i64 128))
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %lor.lhs.false
  br i1 %call5, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont4, %invoke.cont2
  %ExceptionsType = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 102
  store i32 5, ptr %ExceptionsType, align 4, !tbaa !38
  br label %if.end

lpad:                                             ; preds = %lor.lhs.false, %invoke.cont, %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZN4llvm9MCAsmInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(493) %this1) #7
  br label %eh.resume

if.end:                                           ; preds = %if.then, %invoke.cont4
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

declare void @_ZN4llvm13MCAsmInfoWasmC2Ev(ptr noundef nonnull align 8 dereferenceable(493)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl11opt_storageIbLb0ELb0EEcvbEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNK4llvm2cl11opt_storageIbLb0ELb0EE8getValueEv(ptr noundef nonnull align 8 dereferenceable(24) %this1)
  ret i1 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm9MCAsmInfo28getNonexecutableStackSectionERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(493) %this, ptr noundef nonnull align 1 %Ctx) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %Ctx.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  store ptr %Ctx, ptr %Ctx.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr null
}

declare noundef zeroext i1 @_ZNK4llvm9MCAsmInfo28isSectionAtomizableBySymbolsERKNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(493), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef ptr @_ZNK4llvm9MCAsmInfo27getExprForPersonalitySymbolEPKNS_8MCSymbolEjRNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(493), ptr noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #4

declare noundef ptr @_ZNK4llvm9MCAsmInfo19getExprForFDESymbolEPKNS_8MCSymbolEjRNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(493), ptr noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm9MCAsmInfo16isAcceptableCharEc(ptr noundef nonnull align 8 dereferenceable(493), i8 noundef signext) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm9MCAsmInfo19isValidUnquotedNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(493), ptr, i64) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm9MCAsmInfo26shouldOmitSectionDirectiveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(493), ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm9MCAsmInfo16getMaxInstLengthEPKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(493) %this, ptr noundef %STI) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %STI.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  store ptr %STI, ptr %STI.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  %MaxInstLength = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 11
  %0 = load i32, ptr %MaxInstLength, align 8, !tbaa !39
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9MCAsmInfo25setUseIntegratedAssemblerEb(ptr noundef nonnull align 8 dereferenceable(493) %this, i1 noundef zeroext %Value) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %Value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %frombool = zext i1 %Value to i8
  store i8 %frombool, ptr %Value.addr, align 1, !tbaa !40
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %Value.addr, align 1, !tbaa !40, !range !41, !noundef !42
  %tobool = trunc i8 %0 to i1
  %UseIntegratedAssembler = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 118
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %UseIntegratedAssembler, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9MCAsmInfo31setParseInlineAsmUsingAsmParserEb(ptr noundef nonnull align 8 dereferenceable(493) %this, i1 noundef zeroext %Value) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %Value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %frombool = zext i1 %Value to i8
  store i8 %frombool, ptr %Value.addr, align 1, !tbaa !40
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %Value.addr, align 1, !tbaa !40, !range !41, !noundef !42
  %tobool = trunc i8 %0 to i1
  %ParseInlineAsmUsingAsmParser = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 119
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %ParseInlineAsmUsingAsmParser, align 1, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9MCAsmInfo22setPreserveAsmCommentsEb(ptr noundef nonnull align 8 dereferenceable(493) %this, i1 noundef zeroext %Value) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %Value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %frombool = zext i1 %Value to i8
  store i8 %frombool, ptr %Value.addr, align 1, !tbaa !40
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %Value.addr, align 1, !tbaa !40, !range !41, !noundef !42
  %tobool = trunc i8 %0 to i1
  %PreserveAsmComments = getelementptr inbounds %"class.llvm::MCAsmInfo", ptr %this1, i32 0, i32 120
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %PreserveAsmComments, align 2, !tbaa !45
  ret void
}

declare void @_ZN4llvm13MCAsmInfoWasm6anchorEv(ptr noundef nonnull align 8 dereferenceable(493)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl11opt_storageIbLb0ELb0EE8getValueEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  %this1 = load ptr, ptr %this.addr, align 8
  %Value = getelementptr inbounds %"class.llvm::cl::opt_storage", ptr %this1, i32 0, i32 0
  %0 = load i8, ptr %Value, align 8, !tbaa !46, !range !41, !noundef !42
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 12}
!11 = !{!"_ZTSN4llvm9MCAsmInfoE", !12, i64 8, !12, i64 12, !13, i64 16, !13, i64 17, !13, i64 18, !13, i64 19, !13, i64 20, !13, i64 21, !13, i64 22, !13, i64 23, !12, i64 24, !12, i64 28, !13, i64 32, !13, i64 33, !13, i64 34, !5, i64 40, !14, i64 48, !13, i64 64, !13, i64 65, !13, i64 66, !5, i64 72, !13, i64 80, !13, i64 81, !13, i64 82, !14, i64 88, !14, i64 104, !14, i64 120, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !12, i64 176, !13, i64 180, !13, i64 181, !13, i64 182, !13, i64 183, !13, i64 184, !13, i64 185, !13, i64 186, !13, i64 187, !13, i64 188, !5, i64 192, !13, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !16, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !13, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !13, i64 336, !13, i64 337, !13, i64 338, !13, i64 339, !12, i64 340, !5, i64 344, !13, i64 352, !13, i64 353, !13, i64 354, !17, i64 356, !13, i64 360, !13, i64 361, !13, i64 362, !13, i64 363, !13, i64 364, !13, i64 365, !13, i64 366, !13, i64 367, !13, i64 368, !5, i64 376, !5, i64 384, !13, i64 392, !13, i64 393, !13, i64 394, !18, i64 396, !18, i64 400, !18, i64 404, !18, i64 408, !18, i64 412, !13, i64 416, !19, i64 420, !13, i64 424, !20, i64 428, !13, i64 432, !13, i64 433, !13, i64 434, !13, i64 435, !13, i64 436, !13, i64 437, !13, i64 438, !13, i64 439, !13, i64 440, !21, i64 448, !25, i64 472, !13, i64 480, !13, i64 481, !13, i64 482, !26, i64 484, !13, i64 488, !13, i64 489, !13, i64 490, !13, i64 491, !13, i64 492}
!12 = !{!"int", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTSN4llvm9StringRefE", !5, i64 0, !15, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSN4llvm9MCAsmInfo20AsmCharLiteralSyntaxE", !6, i64 0}
!17 = !{!"_ZTSN4llvm5LCOMM9LCOMMTypeE", !6, i64 0}
!18 = !{!"_ZTSN4llvm12MCSymbolAttrE", !6, i64 0}
!19 = !{!"_ZTSN4llvm17ExceptionHandlingE", !6, i64 0}
!20 = !{!"_ZTSN4llvm5WinEH12EncodingTypeE", !6, i64 0}
!21 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !5, i64 0, !5, i64 8, !5, i64 16}
!25 = !{!"_ZTSSt4pairIiiE", !12, i64 0, !12, i64 4}
!26 = !{!"_ZTSN4llvm20DebugCompressionTypeE", !6, i64 0}
!27 = !{!11, !12, i64 8}
!28 = !{!11, !13, i64 186}
!29 = !{!11, !5, i64 192}
!30 = !{!11, !5, i64 248}
!31 = !{!11, !5, i64 256}
!32 = !{!11, !5, i64 264}
!33 = !{!11, !5, i64 272}
!34 = !{!11, !13, i64 339}
!35 = !{!11, !13, i64 354}
!36 = !{!11, !17, i64 356}
!37 = !{!11, !13, i64 416}
!38 = !{!11, !19, i64 420}
!39 = !{!11, !12, i64 24}
!40 = !{!13, !13, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!11, !13, i64 480}
!44 = !{!11, !13, i64 481}
!45 = !{!11, !13, i64 482}
!46 = !{!47, !13, i64 0}
!47 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !13, i64 0, !48, i64 8}
!48 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !49, i64 0}
!49 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !50, i64 0}
!50 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !51, i64 0, !13, i64 8, !13, i64 9}
!51 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
