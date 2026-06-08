; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_inih_examples_INIReaderExample.prepared.ll'
source_filename = "./source_snapshot/public_repos/inih/examples/INIReaderExample.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%class.INIReader = type { i32, %"class.std::__1::map" }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { ptr, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__tree_end_node" = type { ptr }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { i64 }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"struct.std::__1::__compressed_pair_elem.11" }
%"struct.std::__1::__compressed_pair_elem.11" = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::__wrap_iter.16" = type { ptr }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8, [7 x i8] }>
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8 }>
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::pair" = type { %"class.std::__1::basic_string", %"class.std::__1::basic_string" }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::ostreambuf_iterator" = type { ptr }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::vector<std::__1::string>::__destroy_vector" = type { ptr }

@.str = private unnamed_addr constant [21 x i8] c"../examples/test.ini\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't load 'test.ini'\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Config loaded from 'test.ini': version=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c", unsigned version=\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c", trillion=\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"trillion\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c", unsigned trillion=\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c", name=\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c", email=\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c", pi=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c", active=\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Has values: user.name=\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c", user.nose=\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"nose\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Has sections: user=\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c", fizz=\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"fizz\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Sections:\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Keys in section [\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"]:\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress norecurse ssp uwtable
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %reader = alloca %class.INIReader, align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp11 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp14 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp25 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp28 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp39 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp42 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp53 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp56 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp67 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp68 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp71 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp75 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp86 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp87 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp90 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp94 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp105 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp108 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp119 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp122 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp193 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp196 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp207 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp210 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp235 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp245 = alloca %"class.std::__1::basic_string", align 8
  %sections = alloca %"class.std::__1::vector", align 8
  %it = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp264 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %ref.tmp267 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %it281 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp282 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %ref.tmp288 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %keys = alloca %"class.std::__1::vector", align 8
  %kit = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp303 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %ref.tmp309 = alloca %"class.std::__1::__wrap_iter.16", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull @.str)
  %call1 = invoke noundef ptr @_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #12
  %call6 = invoke noundef i32 @_ZNK9INIReader10ParseErrorEv(ptr noundef nonnull align 8 dereferenceable(32) %reader)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont5
  %call8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.1)
          to label %invoke.cont7 unwind label %lpad4

invoke.cont7:                                     ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %cleanup

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #12
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont261, %invoke.cont253, %invoke.cont233, %invoke.cont219, %invoke.cont191, %invoke.cont131, %invoke.cont9, %if.end, %if.then, %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  br label %ehcleanup336

if.end:                                           ; preds = %invoke.cont5
  %call10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.2)
          to label %invoke.cont9 unwind label %lpad4

invoke.cont9:                                     ; preds = %if.end
  %call13 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp11, ptr noundef nonnull @.str.3)
          to label %invoke.cont12 unwind label %lpad4

invoke.cont12:                                    ; preds = %invoke.cont9
  %call17 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp14, ptr noundef nonnull @.str.4)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %invoke.cont12
  %call20 = invoke noundef i64 @_ZNK9INIReader10GetIntegerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_l(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp11, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp14, i64 noundef -1)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont16
  %call22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8) %call10, i64 noundef %call20)
          to label %invoke.cont21 unwind label %lpad18

invoke.cont21:                                    ; preds = %invoke.cont19
  %call24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call22, ptr noundef nonnull @.str.5)
          to label %invoke.cont23 unwind label %lpad18

invoke.cont23:                                    ; preds = %invoke.cont21
  %call27 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp25, ptr noundef nonnull @.str.3)
          to label %invoke.cont26 unwind label %lpad18

invoke.cont26:                                    ; preds = %invoke.cont23
  %call31 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp28, ptr noundef nonnull @.str.4)
          to label %invoke.cont30 unwind label %lpad29

invoke.cont30:                                    ; preds = %invoke.cont26
  %call34 = invoke noundef i64 @_ZNK9INIReader11GetUnsignedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_m(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp25, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp28, i64 noundef -1)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %invoke.cont30
  %call36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %call24, i64 noundef %call34)
          to label %invoke.cont35 unwind label %lpad32

invoke.cont35:                                    ; preds = %invoke.cont33
  %call38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call36, ptr noundef nonnull @.str.6)
          to label %invoke.cont37 unwind label %lpad32

invoke.cont37:                                    ; preds = %invoke.cont35
  %call41 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp39, ptr noundef nonnull @.str.7)
          to label %invoke.cont40 unwind label %lpad32

invoke.cont40:                                    ; preds = %invoke.cont37
  %call45 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp42, ptr noundef nonnull @.str.8)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %invoke.cont40
  %call48 = invoke noundef i64 @_ZNK9INIReader12GetInteger64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_x(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp39, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp42, i64 noundef -1)
          to label %invoke.cont47 unwind label %lpad46

invoke.cont47:                                    ; preds = %invoke.cont44
  %call50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8) %call38, i64 noundef %call48)
          to label %invoke.cont49 unwind label %lpad46

invoke.cont49:                                    ; preds = %invoke.cont47
  %call52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call50, ptr noundef nonnull @.str.9)
          to label %invoke.cont51 unwind label %lpad46

invoke.cont51:                                    ; preds = %invoke.cont49
  %call55 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp53, ptr noundef nonnull @.str.7)
          to label %invoke.cont54 unwind label %lpad46

invoke.cont54:                                    ; preds = %invoke.cont51
  %call59 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56, ptr noundef nonnull @.str.8)
          to label %invoke.cont58 unwind label %lpad57

invoke.cont58:                                    ; preds = %invoke.cont54
  %call62 = invoke noundef i64 @_ZNK9INIReader13GetUnsigned64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_y(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp53, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56, i64 noundef -1)
          to label %invoke.cont61 unwind label %lpad60

invoke.cont61:                                    ; preds = %invoke.cont58
  %call64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy(ptr noundef nonnull align 8 dereferenceable(8) %call52, i64 noundef %call62)
          to label %invoke.cont63 unwind label %lpad60

invoke.cont63:                                    ; preds = %invoke.cont61
  %call66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call64, ptr noundef nonnull @.str.10)
          to label %invoke.cont65 unwind label %lpad60

invoke.cont65:                                    ; preds = %invoke.cont63
  %call70 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp68, ptr noundef nonnull @.str.7)
          to label %invoke.cont69 unwind label %lpad60

invoke.cont69:                                    ; preds = %invoke.cont65
  %call74 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp71, ptr noundef nonnull @.str.11)
          to label %invoke.cont73 unwind label %lpad72

invoke.cont73:                                    ; preds = %invoke.cont69
  %call78 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp75, ptr noundef nonnull @.str.12)
          to label %invoke.cont77 unwind label %lpad76

invoke.cont77:                                    ; preds = %invoke.cont73
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp67, ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp68, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp71, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp75)
          to label %invoke.cont80 unwind label %lpad79

invoke.cont80:                                    ; preds = %invoke.cont77
  %call83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call66, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp67)
          to label %invoke.cont82 unwind label %lpad81

invoke.cont82:                                    ; preds = %invoke.cont80
  %call85 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call83, ptr noundef nonnull @.str.13)
          to label %invoke.cont84 unwind label %lpad81

invoke.cont84:                                    ; preds = %invoke.cont82
  %call89 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp87, ptr noundef nonnull @.str.7)
          to label %invoke.cont88 unwind label %lpad81

invoke.cont88:                                    ; preds = %invoke.cont84
  %call93 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp90, ptr noundef nonnull @.str.14)
          to label %invoke.cont92 unwind label %lpad91

invoke.cont92:                                    ; preds = %invoke.cont88
  %call97 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp94, ptr noundef nonnull @.str.12)
          to label %invoke.cont96 unwind label %lpad95

invoke.cont96:                                    ; preds = %invoke.cont92
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr nonnull sret(%"class.std::__1::basic_string") align 8 %ref.tmp86, ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp87, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp90, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp94)
          to label %invoke.cont99 unwind label %lpad98

invoke.cont99:                                    ; preds = %invoke.cont96
  %call102 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp86)
          to label %invoke.cont101 unwind label %lpad100

invoke.cont101:                                   ; preds = %invoke.cont99
  %call104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call102, ptr noundef nonnull @.str.15)
          to label %invoke.cont103 unwind label %lpad100

invoke.cont103:                                   ; preds = %invoke.cont101
  %call107 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp105, ptr noundef nonnull @.str.7)
          to label %invoke.cont106 unwind label %lpad100

invoke.cont106:                                   ; preds = %invoke.cont103
  %call111 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp108, ptr noundef nonnull @.str.16)
          to label %invoke.cont110 unwind label %lpad109

invoke.cont110:                                   ; preds = %invoke.cont106
  %call114 = invoke noundef double @_ZNK9INIReader7GetRealERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_d(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp105, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp108, double noundef -1.000000e+00)
          to label %invoke.cont113 unwind label %lpad112

invoke.cont113:                                   ; preds = %invoke.cont110
  %call116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8) %call104, double noundef %call114)
          to label %invoke.cont115 unwind label %lpad112

invoke.cont115:                                   ; preds = %invoke.cont113
  %call118 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call116, ptr noundef nonnull @.str.17)
          to label %invoke.cont117 unwind label %lpad112

invoke.cont117:                                   ; preds = %invoke.cont115
  %call121 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp119, ptr noundef nonnull @.str.7)
          to label %invoke.cont120 unwind label %lpad112

invoke.cont120:                                   ; preds = %invoke.cont117
  %call125 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp122, ptr noundef nonnull @.str.18)
          to label %invoke.cont124 unwind label %lpad123

invoke.cont124:                                   ; preds = %invoke.cont120
  %call128 = invoke noundef zeroext i1 @_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp119, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp122, i1 noundef zeroext true)
          to label %invoke.cont127 unwind label %lpad126

invoke.cont127:                                   ; preds = %invoke.cont124
  %call130 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8) %call118, i1 noundef zeroext %call128)
          to label %invoke.cont129 unwind label %lpad126

invoke.cont129:                                   ; preds = %invoke.cont127
  %call132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call130, ptr noundef nonnull @.str.19)
          to label %invoke.cont131 unwind label %lpad126

invoke.cont131:                                   ; preds = %invoke.cont129
  %call133 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp122) #12
  %call135 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp119) #12
  %call137 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp108) #12
  %call140 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp105) #12
  %call143 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp86) #12
  %call146 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp94) #12
  %call149 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp90) #12
  %call152 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp87) #12
  %call155 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp67) #12
  %call158 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp75) #12
  %call161 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp71) #12
  %call164 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp68) #12
  %call167 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56) #12
  %call170 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp53) #12
  %call173 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp42) #12
  %call176 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp39) #12
  %call179 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp28) #12
  %call182 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp25) #12
  %call185 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp14) #12
  %call188 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp11) #12
  %call192 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.20)
          to label %invoke.cont191 unwind label %lpad4

invoke.cont191:                                   ; preds = %invoke.cont131
  %call195 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp193, ptr noundef nonnull @.str.7)
          to label %invoke.cont194 unwind label %lpad4

invoke.cont194:                                   ; preds = %invoke.cont191
  %call199 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp196, ptr noundef nonnull @.str.11)
          to label %invoke.cont198 unwind label %lpad197

invoke.cont198:                                   ; preds = %invoke.cont194
  %call202 = invoke noundef zeroext i1 @_ZNK9INIReader8HasValueERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp193, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp196)
          to label %invoke.cont201 unwind label %lpad200

invoke.cont201:                                   ; preds = %invoke.cont198
  %call204 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8) %call192, i1 noundef zeroext %call202)
          to label %invoke.cont203 unwind label %lpad200

invoke.cont203:                                   ; preds = %invoke.cont201
  %call206 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call204, ptr noundef nonnull @.str.21)
          to label %invoke.cont205 unwind label %lpad200

invoke.cont205:                                   ; preds = %invoke.cont203
  %call209 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp207, ptr noundef nonnull @.str.7)
          to label %invoke.cont208 unwind label %lpad200

invoke.cont208:                                   ; preds = %invoke.cont205
  %call213 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp210, ptr noundef nonnull @.str.22)
          to label %invoke.cont212 unwind label %lpad211

invoke.cont212:                                   ; preds = %invoke.cont208
  %call216 = invoke noundef zeroext i1 @_ZNK9INIReader8HasValueERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp207, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp210)
          to label %invoke.cont215 unwind label %lpad214

invoke.cont215:                                   ; preds = %invoke.cont212
  %call218 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8) %call206, i1 noundef zeroext %call216)
          to label %invoke.cont217 unwind label %lpad214

invoke.cont217:                                   ; preds = %invoke.cont215
  %call220 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call218, ptr noundef nonnull @.str.19)
          to label %invoke.cont219 unwind label %lpad214

invoke.cont219:                                   ; preds = %invoke.cont217
  %call221 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp210) #12
  %call224 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp207) #12
  %call227 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp196) #12
  %call230 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp193) #12
  %call234 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.23)
          to label %invoke.cont233 unwind label %lpad4

invoke.cont233:                                   ; preds = %invoke.cont219
  %call237 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp235, ptr noundef nonnull @.str.7)
          to label %invoke.cont236 unwind label %lpad4

invoke.cont236:                                   ; preds = %invoke.cont233
  %call240 = invoke noundef zeroext i1 @_ZNK9INIReader10HasSectionERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp235)
          to label %invoke.cont239 unwind label %lpad238

invoke.cont239:                                   ; preds = %invoke.cont236
  %call242 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8) %call234, i1 noundef zeroext %call240)
          to label %invoke.cont241 unwind label %lpad238

invoke.cont241:                                   ; preds = %invoke.cont239
  %call244 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call242, ptr noundef nonnull @.str.24)
          to label %invoke.cont243 unwind label %lpad238

invoke.cont243:                                   ; preds = %invoke.cont241
  %call247 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp245, ptr noundef nonnull @.str.25)
          to label %invoke.cont246 unwind label %lpad238

invoke.cont246:                                   ; preds = %invoke.cont243
  %call250 = invoke noundef zeroext i1 @_ZNK9INIReader10HasSectionERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp245)
          to label %invoke.cont249 unwind label %lpad248

invoke.cont249:                                   ; preds = %invoke.cont246
  %call252 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8) %call244, i1 noundef zeroext %call250)
          to label %invoke.cont251 unwind label %lpad248

invoke.cont251:                                   ; preds = %invoke.cont249
  %call254 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call252, ptr noundef nonnull @.str.19)
          to label %invoke.cont253 unwind label %lpad248

invoke.cont253:                                   ; preds = %invoke.cont251
  %call255 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp245) #12
  %call258 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp235) #12
  %call262 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.26)
          to label %invoke.cont261 unwind label %lpad4

invoke.cont261:                                   ; preds = %invoke.cont253
  invoke void @_ZNK9INIReader8SectionsEv(ptr nonnull sret(%"class.std::__1::vector") align 8 %sections, ptr noundef nonnull align 8 dereferenceable(32) %reader)
          to label %invoke.cont263 unwind label %lpad4

invoke.cont263:                                   ; preds = %invoke.cont261
  %call265 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  %coerce.val.ip = inttoptr i64 %call265 to ptr
  store ptr %coerce.val.ip, ptr %ref.tmp264, align 8
  %call266 = call noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp264, ptr noundef null) #12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont263
  %call268 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  %coerce.val.ip270 = inttoptr i64 %call268 to ptr
  store ptr %coerce.val.ip270, ptr %ref.tmp267, align 8
  %call271 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp267) #12
  br i1 %call271, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call274 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.27)
          to label %invoke.cont273 unwind label %lpad272

invoke.cont273:                                   ; preds = %for.body
  %call275 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it) #12
  %call277 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call274, ptr noundef nonnull align 8 dereferenceable(24) %call275)
          to label %invoke.cont276 unwind label %lpad272

invoke.cont276:                                   ; preds = %invoke.cont273
  %call279 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call277, ptr noundef nonnull @.str.19)
          to label %for.inc unwind label %lpad272

for.inc:                                          ; preds = %invoke.cont276
  %call280 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it) #12
  br label %for.cond, !llvm.loop !6

lpad15:                                           ; preds = %invoke.cont12
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup189

lpad18:                                           ; preds = %invoke.cont23, %invoke.cont21, %invoke.cont19, %invoke.cont16
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  br label %ehcleanup186

lpad29:                                           ; preds = %invoke.cont26
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  store ptr %13, ptr %exn.slot, align 8
  %14 = extractvalue { ptr, i32 } %12, 1
  store i32 %14, ptr %ehselector.slot, align 4
  br label %ehcleanup183

lpad32:                                           ; preds = %invoke.cont37, %invoke.cont35, %invoke.cont33, %invoke.cont30
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  store ptr %16, ptr %exn.slot, align 8
  %17 = extractvalue { ptr, i32 } %15, 1
  store i32 %17, ptr %ehselector.slot, align 4
  br label %ehcleanup180

lpad43:                                           ; preds = %invoke.cont40
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  store ptr %19, ptr %exn.slot, align 8
  %20 = extractvalue { ptr, i32 } %18, 1
  store i32 %20, ptr %ehselector.slot, align 4
  br label %ehcleanup177

lpad46:                                           ; preds = %invoke.cont51, %invoke.cont49, %invoke.cont47, %invoke.cont44
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %exn.slot, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %ehselector.slot, align 4
  br label %ehcleanup174

lpad57:                                           ; preds = %invoke.cont54
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  store ptr %25, ptr %exn.slot, align 8
  %26 = extractvalue { ptr, i32 } %24, 1
  store i32 %26, ptr %ehselector.slot, align 4
  br label %ehcleanup171

lpad60:                                           ; preds = %invoke.cont65, %invoke.cont63, %invoke.cont61, %invoke.cont58
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  store ptr %28, ptr %exn.slot, align 8
  %29 = extractvalue { ptr, i32 } %27, 1
  store i32 %29, ptr %ehselector.slot, align 4
  br label %ehcleanup168

lpad72:                                           ; preds = %invoke.cont69
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = extractvalue { ptr, i32 } %30, 0
  store ptr %31, ptr %exn.slot, align 8
  %32 = extractvalue { ptr, i32 } %30, 1
  store i32 %32, ptr %ehselector.slot, align 4
  br label %ehcleanup165

lpad76:                                           ; preds = %invoke.cont73
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  store ptr %34, ptr %exn.slot, align 8
  %35 = extractvalue { ptr, i32 } %33, 1
  store i32 %35, ptr %ehselector.slot, align 4
  br label %ehcleanup162

lpad79:                                           ; preds = %invoke.cont77
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = extractvalue { ptr, i32 } %36, 0
  store ptr %37, ptr %exn.slot, align 8
  %38 = extractvalue { ptr, i32 } %36, 1
  store i32 %38, ptr %ehselector.slot, align 4
  br label %ehcleanup159

lpad81:                                           ; preds = %invoke.cont84, %invoke.cont82, %invoke.cont80
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = extractvalue { ptr, i32 } %39, 0
  store ptr %40, ptr %exn.slot, align 8
  %41 = extractvalue { ptr, i32 } %39, 1
  store i32 %41, ptr %ehselector.slot, align 4
  br label %ehcleanup156

lpad91:                                           ; preds = %invoke.cont88
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = extractvalue { ptr, i32 } %42, 0
  store ptr %43, ptr %exn.slot, align 8
  %44 = extractvalue { ptr, i32 } %42, 1
  store i32 %44, ptr %ehselector.slot, align 4
  br label %ehcleanup153

lpad95:                                           ; preds = %invoke.cont92
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  store ptr %46, ptr %exn.slot, align 8
  %47 = extractvalue { ptr, i32 } %45, 1
  store i32 %47, ptr %ehselector.slot, align 4
  br label %ehcleanup150

lpad98:                                           ; preds = %invoke.cont96
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  store ptr %49, ptr %exn.slot, align 8
  %50 = extractvalue { ptr, i32 } %48, 1
  store i32 %50, ptr %ehselector.slot, align 4
  br label %ehcleanup147

lpad100:                                          ; preds = %invoke.cont103, %invoke.cont101, %invoke.cont99
  %51 = landingpad { ptr, i32 }
          cleanup
  %52 = extractvalue { ptr, i32 } %51, 0
  store ptr %52, ptr %exn.slot, align 8
  %53 = extractvalue { ptr, i32 } %51, 1
  store i32 %53, ptr %ehselector.slot, align 4
  br label %ehcleanup144

lpad109:                                          ; preds = %invoke.cont106
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = extractvalue { ptr, i32 } %54, 0
  store ptr %55, ptr %exn.slot, align 8
  %56 = extractvalue { ptr, i32 } %54, 1
  store i32 %56, ptr %ehselector.slot, align 4
  br label %ehcleanup141

lpad112:                                          ; preds = %invoke.cont117, %invoke.cont115, %invoke.cont113, %invoke.cont110
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  store ptr %58, ptr %exn.slot, align 8
  %59 = extractvalue { ptr, i32 } %57, 1
  store i32 %59, ptr %ehselector.slot, align 4
  br label %ehcleanup138

lpad123:                                          ; preds = %invoke.cont120
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = extractvalue { ptr, i32 } %60, 0
  store ptr %61, ptr %exn.slot, align 8
  %62 = extractvalue { ptr, i32 } %60, 1
  store i32 %62, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad126:                                          ; preds = %invoke.cont129, %invoke.cont127, %invoke.cont124
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  store ptr %64, ptr %exn.slot, align 8
  %65 = extractvalue { ptr, i32 } %63, 1
  store i32 %65, ptr %ehselector.slot, align 4
  %call134 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp122) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad126, %lpad123
  %call136 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp119) #12
  br label %ehcleanup138

ehcleanup138:                                     ; preds = %ehcleanup, %lpad112
  %call139 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp108) #12
  br label %ehcleanup141

ehcleanup141:                                     ; preds = %ehcleanup138, %lpad109
  %call142 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp105) #12
  br label %ehcleanup144

ehcleanup144:                                     ; preds = %ehcleanup141, %lpad100
  %call145 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp86) #12
  br label %ehcleanup147

ehcleanup147:                                     ; preds = %ehcleanup144, %lpad98
  %call148 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp94) #12
  br label %ehcleanup150

ehcleanup150:                                     ; preds = %ehcleanup147, %lpad95
  %call151 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp90) #12
  br label %ehcleanup153

ehcleanup153:                                     ; preds = %ehcleanup150, %lpad91
  %call154 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp87) #12
  br label %ehcleanup156

ehcleanup156:                                     ; preds = %ehcleanup153, %lpad81
  %call157 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp67) #12
  br label %ehcleanup159

ehcleanup159:                                     ; preds = %ehcleanup156, %lpad79
  %call160 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp75) #12
  br label %ehcleanup162

ehcleanup162:                                     ; preds = %ehcleanup159, %lpad76
  %call163 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp71) #12
  br label %ehcleanup165

ehcleanup165:                                     ; preds = %ehcleanup162, %lpad72
  %call166 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp68) #12
  br label %ehcleanup168

ehcleanup168:                                     ; preds = %ehcleanup165, %lpad60
  %call169 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp56) #12
  br label %ehcleanup171

ehcleanup171:                                     ; preds = %ehcleanup168, %lpad57
  %call172 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp53) #12
  br label %ehcleanup174

ehcleanup174:                                     ; preds = %ehcleanup171, %lpad46
  %call175 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp42) #12
  br label %ehcleanup177

ehcleanup177:                                     ; preds = %ehcleanup174, %lpad43
  %call178 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp39) #12
  br label %ehcleanup180

ehcleanup180:                                     ; preds = %ehcleanup177, %lpad32
  %call181 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp28) #12
  br label %ehcleanup183

ehcleanup183:                                     ; preds = %ehcleanup180, %lpad29
  %call184 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp25) #12
  br label %ehcleanup186

ehcleanup186:                                     ; preds = %ehcleanup183, %lpad18
  %call187 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp14) #12
  br label %ehcleanup189

ehcleanup189:                                     ; preds = %ehcleanup186, %lpad15
  %call190 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp11) #12
  br label %ehcleanup336

lpad197:                                          ; preds = %invoke.cont194
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = extractvalue { ptr, i32 } %66, 0
  store ptr %67, ptr %exn.slot, align 8
  %68 = extractvalue { ptr, i32 } %66, 1
  store i32 %68, ptr %ehselector.slot, align 4
  br label %ehcleanup231

lpad200:                                          ; preds = %invoke.cont205, %invoke.cont203, %invoke.cont201, %invoke.cont198
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %exn.slot, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %ehselector.slot, align 4
  br label %ehcleanup228

lpad211:                                          ; preds = %invoke.cont208
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = extractvalue { ptr, i32 } %72, 0
  store ptr %73, ptr %exn.slot, align 8
  %74 = extractvalue { ptr, i32 } %72, 1
  store i32 %74, ptr %ehselector.slot, align 4
  br label %ehcleanup225

lpad214:                                          ; preds = %invoke.cont217, %invoke.cont215, %invoke.cont212
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = extractvalue { ptr, i32 } %75, 0
  store ptr %76, ptr %exn.slot, align 8
  %77 = extractvalue { ptr, i32 } %75, 1
  store i32 %77, ptr %ehselector.slot, align 4
  %call223 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp210) #12
  br label %ehcleanup225

ehcleanup225:                                     ; preds = %lpad214, %lpad211
  %call226 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp207) #12
  br label %ehcleanup228

ehcleanup228:                                     ; preds = %ehcleanup225, %lpad200
  %call229 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp196) #12
  br label %ehcleanup231

ehcleanup231:                                     ; preds = %ehcleanup228, %lpad197
  %call232 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp193) #12
  br label %ehcleanup336

lpad238:                                          ; preds = %invoke.cont243, %invoke.cont241, %invoke.cont239, %invoke.cont236
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = extractvalue { ptr, i32 } %78, 0
  store ptr %79, ptr %exn.slot, align 8
  %80 = extractvalue { ptr, i32 } %78, 1
  store i32 %80, ptr %ehselector.slot, align 4
  br label %ehcleanup259

lpad248:                                          ; preds = %invoke.cont251, %invoke.cont249, %invoke.cont246
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = extractvalue { ptr, i32 } %81, 0
  store ptr %82, ptr %exn.slot, align 8
  %83 = extractvalue { ptr, i32 } %81, 1
  store i32 %83, ptr %ehselector.slot, align 4
  %call257 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp245) #12
  br label %ehcleanup259

ehcleanup259:                                     ; preds = %lpad248, %lpad238
  %call260 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp235) #12
  br label %ehcleanup336

lpad272:                                          ; preds = %invoke.cont299, %invoke.cont297, %invoke.cont294, %for.body293, %invoke.cont276, %invoke.cont273, %for.body
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = extractvalue { ptr, i32 } %84, 0
  store ptr %85, ptr %exn.slot, align 8
  %86 = extractvalue { ptr, i32 } %84, 1
  store i32 %86, ptr %ehselector.slot, align 4
  br label %ehcleanup333

for.end:                                          ; preds = %for.cond
  %call283 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  %coerce.val.ip285 = inttoptr i64 %call283 to ptr
  store ptr %coerce.val.ip285, ptr %ref.tmp282, align 8
  %call286 = call noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %it281, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp282, ptr noundef null) #12
  br label %for.cond287

for.cond287:                                      ; preds = %for.end325, %for.end
  %call289 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  %coerce.val.ip291 = inttoptr i64 %call289 to ptr
  store ptr %coerce.val.ip291, ptr %ref.tmp288, align 8
  %call292 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %it281, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp288) #12
  br i1 %call292, label %for.body293, label %for.end331

for.body293:                                      ; preds = %for.cond287
  %call295 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.28)
          to label %invoke.cont294 unwind label %lpad272

invoke.cont294:                                   ; preds = %for.body293
  %call296 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it281) #12
  %call298 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call295, ptr noundef nonnull align 8 dereferenceable(24) %call296)
          to label %invoke.cont297 unwind label %lpad272

invoke.cont297:                                   ; preds = %invoke.cont294
  %call300 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call298, ptr noundef nonnull @.str.29)
          to label %invoke.cont299 unwind label %lpad272

invoke.cont299:                                   ; preds = %invoke.cont297
  %call301 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it281) #12
  invoke void @_ZNK9INIReader4KeysERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr nonnull sret(%"class.std::__1::vector") align 8 %keys, ptr noundef nonnull align 8 dereferenceable(32) %reader, ptr noundef nonnull align 8 dereferenceable(24) %call301)
          to label %invoke.cont302 unwind label %lpad272

invoke.cont302:                                   ; preds = %invoke.cont299
  %call304 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keys) #12
  %coerce.val.ip306 = inttoptr i64 %call304 to ptr
  store ptr %coerce.val.ip306, ptr %ref.tmp303, align 8
  %call307 = call noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %kit, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp303, ptr noundef null) #12
  br label %for.cond308

for.cond308:                                      ; preds = %for.inc323, %invoke.cont302
  %call310 = call i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keys) #12
  %coerce.val.ip312 = inttoptr i64 %call310 to ptr
  store ptr %coerce.val.ip312, ptr %ref.tmp309, align 8
  %call313 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %kit, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp309) #12
  br i1 %call313, label %for.body314, label %for.end325

for.body314:                                      ; preds = %for.cond308
  %call317 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef nonnull @.str.27)
          to label %invoke.cont316 unwind label %lpad315

invoke.cont316:                                   ; preds = %for.body314
  %call318 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %kit) #12
  %call320 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %call317, ptr noundef nonnull align 8 dereferenceable(24) %call318)
          to label %invoke.cont319 unwind label %lpad315

invoke.cont319:                                   ; preds = %invoke.cont316
  %call322 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call320, ptr noundef nonnull @.str.19)
          to label %for.inc323 unwind label %lpad315

for.inc323:                                       ; preds = %invoke.cont319
  %call324 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %kit) #12
  br label %for.cond308, !llvm.loop !8

lpad315:                                          ; preds = %invoke.cont319, %invoke.cont316, %for.body314
  %87 = landingpad { ptr, i32 }
          cleanup
  %88 = extractvalue { ptr, i32 } %87, 0
  store ptr %88, ptr %exn.slot, align 8
  %89 = extractvalue { ptr, i32 } %87, 1
  store i32 %89, ptr %ehselector.slot, align 4
  %call328 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keys) #12
  br label %ehcleanup333

for.end325:                                       ; preds = %for.cond308
  %call326 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keys) #12
  %call330 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it281) #12
  br label %for.cond287, !llvm.loop !9

for.end331:                                       ; preds = %for.cond287
  store i32 0, ptr %retval, align 4
  %call332 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  br label %cleanup

ehcleanup333:                                     ; preds = %lpad315, %lpad272
  %call334 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sections) #12
  br label %ehcleanup336

cleanup:                                          ; preds = %for.end331, %invoke.cont7
  %call335 = call noundef ptr @_ZN9INIReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %reader) #12
  %90 = load i32, ptr %retval, align 4
  ret i32 %90

ehcleanup336:                                     ; preds = %ehcleanup333, %ehcleanup259, %ehcleanup231, %ehcleanup189, %lpad4
  %call337 = call noundef ptr @_ZN9INIReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %reader) #12
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup336, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val338 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val338
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s)
  ret ptr %this
}

declare noundef ptr @_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull returned align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #3

declare noundef i32 @_ZNK9INIReader10ParseErrorEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str) #4 {
entry:
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__str) #12
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef nonnull align 8 dereferenceable(24) %__str) #4 {
entry:
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str) #12
  %call1 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__str) #12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %call, i64 noundef %call1)
  ret ptr %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #2

declare noundef i64 @_ZNK9INIReader10GetIntegerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_l(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #2

declare noundef i64 @_ZNK9INIReader11GetUnsignedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #2

declare noundef i64 @_ZNK9INIReader12GetInteger64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_x(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #2

declare noundef i64 @_ZNK9INIReader13GetUnsigned64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_y(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #2

declare void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #2

declare noundef double @_ZNK9INIReader7GetRealERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_d(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) #2

declare noundef zeroext i1 @_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) #2

declare noundef zeroext i1 @_ZNK9INIReader8HasValueERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) #2

declare noundef zeroext i1 @_ZNK9INIReader10HasSectionERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) #2

declare void @_ZNK9INIReader8SectionsEv(ptr sret(%"class.std::__1::vector") align 8, ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.16", align 8
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007EPKvS7_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #12
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) #12
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #5 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #12
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.16", align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007EPKvS7_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #12
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 1
  store ptr %incdec.ptr, ptr %this, align 8
  ret ptr %this
}

declare void @_ZNK9INIReader4KeysERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr sret(%"class.std::__1::vector") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN9INIReaderD1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #6 align 2 {
entry:
  %_values.i = getelementptr inbounds %class.INIReader, ptr %this, i64 0, i32 1
  %call.i = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values.i) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007IPS6_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleISC_S8_EE5valueEvE4typeE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #12
  store ptr %call, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPS6_EEbRKNS_11__wrap_iterIT_EERKNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #5 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #12
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #12
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call) #12
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__nd) #5 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__nd.addr = alloca ptr, align 8
  %__na = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__nd, ptr %__nd.addr, align 8
  %cmp.not = icmp eq ptr %__nd, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__nd.addr, align 8
  %1 = load ptr, ptr %0, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %1) #12
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %__right_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2) #12
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call, ptr %__na, align 8
  %3 = load ptr, ptr %__nd.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %3, i64 0, i32 1
  %call2 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB6v15007INS_4pairIKS8_S8_EEvvEEvRSC_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
  %4 = load ptr, ptr %__na, align 8
  %5 = load ptr, ptr %__nd.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE10deallocateB6v15007ERSC_PSB_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, i64 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this, i64 0, i32 1
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB6v15007INS_4pairIKS8_S8_EEvvEEvRSC_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %__p) #12
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__n) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %__n)
  ret ptr %call
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #7 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE10deallocateB6v15007ERSC_PSB_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #5 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE10deallocateB6v15007EPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #12
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED1Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #6 align 2 {
entry:
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %second) #12
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef nonnull %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__p) #5 {
entry:
  %call = call noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__p) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__p) #5 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE10deallocateB6v15007EPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #5 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = mul i64 %__n, 80
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #4 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #12
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__align.addr, align 8
  %1 = load ptr, ptr %__ptr.addr, align 8
  %2 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %1, i64 noundef %2, i64 noundef %0)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %3, i64 noundef %4)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #5 {
entry:
  %cmp = icmp ugt i64 %__align, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #4 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__ptr, i64 noundef %__args)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #4 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__ptr)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #5 {
entry:
  call void @_ZdlPvSt11align_val_t(ptr noundef %__args, i64 noundef %__args1) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #5 {
entry:
  call void @_ZdlPv(ptr noundef %__args) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this, i64 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #12
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__r) #5 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #1 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  %cmp = icmp ne ptr %__s, null
  call void @llvm.assume(i1 %cmp)
  %call3 = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef nonnull %__s) #12
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %__s, i64 noundef %call3)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 align 2 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %__s) #12
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #5 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #6 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %__os, ptr noundef %__str, i64 noundef %__len) #4 personality ptr @__gxx_personality_v0 {
entry:
  %__os.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store ptr %__os, ptr %__os.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %__s, ptr noundef nonnull align 8 dereferenceable(8) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s)
  br i1 %call3, label %if.then, label %if.end29

if.then:                                          ; preds = %invoke.cont
  %0 = load ptr, ptr %__os.addr, align 8
  %call4 = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  %1 = load ptr, ptr %__str.addr, align 8
  %vtable = load ptr, ptr %0, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call6 = call noundef i32 @_ZNKSt3__18ios_base5flagsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr)
  %and = and i32 %call6, 176
  %cmp = icmp eq i32 %and, 32
  %2 = load ptr, ptr %__str.addr, align 8
  %3 = load i64, ptr %__len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load ptr, ptr %__str.addr, align 8
  %cond = select i1 %cmp, ptr %add.ptr7, ptr %4
  %5 = load ptr, ptr %__str.addr, align 8
  %6 = load i64, ptr %__len.addr, align 8
  %7 = load ptr, ptr %__os.addr, align 8
  %vtable9 = load ptr, ptr %7, align 8
  %vbase.offset.ptr10 = getelementptr i8, ptr %vtable9, i64 -24
  %vbase.offset11 = load i64, ptr %vbase.offset.ptr10, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset11
  %call18 = invoke noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr16)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %if.then
  %add.ptr12 = getelementptr inbounds i8, ptr %7, i64 %vbase.offset11
  %add.ptr8 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = load ptr, ptr %agg.tmp, align 8
  %coerce.val.pi = ptrtoint ptr %8 to i64
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, ptr noundef %1, ptr noundef %cond, ptr noundef %add.ptr8, ptr noundef nonnull align 8 dereferenceable(136) %add.ptr12, i8 noundef signext %call18)
          to label %invoke.cont19 unwind label %lpad1

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.val.ip = inttoptr i64 %call20 to ptr
  store ptr %coerce.val.ip, ptr %ref.tmp, align 8
  %call22 = call noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #12
  br i1 %call22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %invoke.cont19
  %9 = load ptr, ptr %__os.addr, align 8
  %vtable24 = load ptr, ptr %9, align 8
  %vbase.offset.ptr25 = getelementptr i8, ptr %vtable24, i64 -24
  %vbase.offset26 = load i64, ptr %vbase.offset.ptr25, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %9, i64 %vbase.offset26
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr27, i32 noundef 5)
          to label %if.end29 unwind label %lpad1

lpad:                                             ; preds = %entry
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %if.then
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  %call31 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #12
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %16 = call ptr @__cxa_begin_catch(ptr %exn) #12
  %17 = load ptr, ptr %__os.addr, align 8
  %vtable32 = load ptr, ptr %17, align 8
  %vbase.offset.ptr33 = getelementptr i8, ptr %vtable32, i64 -24
  %vbase.offset34 = load i64, ptr %vbase.offset.ptr33, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %17, i64 %vbase.offset34
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %add.ptr35)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %if.end29, %invoke.cont37
  %18 = load ptr, ptr %__os.addr, align 8
  ret ptr %18

if.end29:                                         ; preds = %invoke.cont19, %if.then23, %invoke.cont
  %call30 = call noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %__s) #12
  br label %try.cont

lpad36:                                           ; preds = %catch
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = extractvalue { ptr, i32 } %19, 0
  store ptr %20, ptr %exn.slot, align 8
  %21 = extractvalue { ptr, i32 } %19, 1
  store i32 %21, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        ; preds = %lpad36
  %exn39 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn39, 0
  %lpad.val40 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val40

terminate.lpad:                                   ; preds = %lpad36
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #7
  unreachable
}

declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #5 align 2 {
entry:
  %0 = load i8, ptr %this, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, ptr noundef %__ob, ptr noundef %__op, ptr noundef %__oe, ptr noundef nonnull align 8 dereferenceable(136) %__iob, i8 noundef signext %__fl) #4 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca ptr, align 8
  %__op.addr = alloca ptr, align 8
  %__oe.addr = alloca ptr, align 8
  %__iob.addr = alloca ptr, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.val.ip = inttoptr i64 %__s.coerce to ptr
  store ptr %coerce.val.ip, ptr %__s, align 8
  store ptr %__ob, ptr %__ob.addr, align 8
  store ptr %__op, ptr %__op.addr, align 8
  store ptr %__oe, ptr %__oe.addr, align 8
  store ptr %__iob, ptr %__iob.addr, align 8
  store i8 %__fl, ptr %__fl.addr, align 1
  %cmp = icmp eq i64 %__s.coerce, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__s, align 8
  store i64 %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__oe.addr, align 8
  %2 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %__sz, align 8
  %3 = load ptr, ptr %__iob.addr, align 8
  %call = call noundef i64 @_ZNKSt3__18ios_base5widthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %3)
  store i64 %call, ptr %__ns, align 8
  %cmp1 = icmp sgt i64 %call, %sub.ptr.sub
  %4 = load i64, ptr %__sz, align 8
  %5 = load i64, ptr %__ns, align 8
  %sub = sub nsw i64 %5, %4
  %storemerge = select i1 %cmp1, i64 %sub, i64 0
  store i64 %storemerge, ptr %__ns, align 8
  %6 = load ptr, ptr %__op.addr, align 8
  %7 = load ptr, ptr %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast5 = ptrtoint ptr %7 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, ptr %__np, align 8
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %8 = load ptr, ptr %__s, align 8
  %9 = load ptr, ptr %__ob.addr, align 8
  %10 = load i64, ptr %__np, align 8
  %call10 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %9, i64 noundef %10)
  %cmp11.not = icmp eq i64 %call10, %10
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.then8
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.then8, %if.end
  %11 = load i64, ptr %__ns, align 8
  %cmp16 = icmp sgt i64 %11, 0
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end15
  %12 = load i64, ptr %__ns, align 8
  %13 = load i8, ptr %__fl.addr, align 1
  %call18 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc(ptr noundef nonnull align 8 dereferenceable(24) %__sp, i64 noundef %12, i8 noundef signext %13)
  %14 = load ptr, ptr %__s, align 8
  %call20 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #12
  %call21 = invoke noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef %call20, i64 noundef %12)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %15 = load i64, ptr %__ns, align 8
  %cmp22.not = icmp eq i64 %call21, %15
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %invoke.cont
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %exn.slot, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %ehselector.slot, align 4
  %call27 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val43 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val43

cleanup:                                          ; preds = %invoke.cont, %if.then23
  %19 = xor i1 %cmp22.not, true
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__sp) #12
  switch i1 %19, label %unreachable [
    i1 false, label %if.end28
    i1 true, label %return
  ]

if.end28:                                         ; preds = %cleanup, %if.end15
  %20 = load ptr, ptr %__oe.addr, align 8
  %21 = load ptr, ptr %__op.addr, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %21 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  store i64 %sub.ptr.sub31, ptr %__np, align 8
  %cmp32 = icmp sgt i64 %sub.ptr.sub31, 0
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end28
  %22 = load ptr, ptr %__s, align 8
  %23 = load ptr, ptr %__op.addr, align 8
  %24 = load i64, ptr %__np, align 8
  %call35 = call noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef %23, i64 noundef %24)
  %cmp36.not = icmp eq i64 %call35, %24
  br i1 %cmp36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.then33
  store ptr null, ptr %__s, align 8
  store i64 0, ptr %retval, align 8
  br label %return

if.end40:                                         ; preds = %if.then33, %if.end28
  %25 = load ptr, ptr %__iob.addr, align 8
  %call41 = call noundef i64 @_ZNSt3__18ios_base5widthB6v15007El(ptr noundef nonnull align 8 dereferenceable(136) %25, i64 noundef 0)
  %26 = load i64, ptr %__s, align 8
  store i64 %26, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end40, %if.then37, %cleanup, %if.then12, %if.then
  %27 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %27 to i64
  ret i64 %coerce.val.pi

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) #12
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__18ios_base5flagsB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #5 align 2 {
entry:
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 1
  %0 = load i32, ptr %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #4 align 2 {
entry:
  %call = call noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  %0 = load i32, ptr %__fill_, align 8
  %call2 = call noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %call, i32 noundef %0) #12
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext 32)
  %conv = sext i8 %call3 to i32
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  store i32 %conv, ptr %__fill_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %__fill_5, align 8
  %conv6 = trunc i32 %1 to i8
  ret i8 %conv6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %cmp = icmp eq ptr %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(148) %this, i32 noundef %__state) #4 align 2 {
entry:
  call void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state)
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) #2

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__18ios_base5widthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #5 align 2 {
entry:
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15007EPKcl(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n) #4 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 12
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef i64 %0(ptr noundef nonnull align 8 dereferenceable(64) %this, ptr noundef %__s, i64 noundef %__n)
  ret i64 %call
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__18ios_base5widthB6v15007El(ptr noundef nonnull align 8 dereferenceable(136) %this, i64 noundef %__wide) #5 align 2 {
entry:
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  %0 = load i64, ptr %__width_, align 8
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 3
  store i64 %__wide, ptr %__width_2, align 8
  ret i64 %0
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Emc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c) unnamed_addr #1 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, i8 noundef signext %__c)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef signext) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %__p) #5 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__is_long_, align 1
  %tobool = icmp slt i8 %bf.load, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %__r) #5 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15007ERNS_13basic_ostreamIcS2_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__s) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %vtable = load ptr, ptr %__s, align 8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__s, i64 %vbase.offset
  %call = invoke noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %add.ptr)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store ptr %call, ptr %this, align 8
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(148) %this) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__18ios_base5rdbufB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(136) %this) #5 align 2 {
entry:
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 6
  %0 = load ptr, ptr %__rdbuf_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 noundef %__c1, i32 noundef %__c2) #5 align 2 {
entry:
  %cmp = icmp eq i32 %__c1, %__c2
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE3eofEv() #5 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(148) %this, i8 noundef signext %__c) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i8 %__c, ptr %__c.addr, align 1
  call void @_ZNKSt3__18ios_base6getlocEv(ptr nonnull sret(%"class.std::__1::locale") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(136) %this)
  %call = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1
  %call3 = invoke noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(25) %call, i8 noundef signext %0)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #12
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #12
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB6v15007INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %__l) #4 {
entry:
  %call = call noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %__l, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %call
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15007Ec(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 7
  %0 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %0(ptr noundef nonnull align 8 dereferenceable(25) %this, i8 noundef signext %__c)
  ret i8 %call
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16localeD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15007Ej(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %__state) #4 align 2 {
entry:
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", ptr %this, i64 0, i32 4
  %0 = load i32, ptr %__rdstate_, align 8
  %or = or i32 %0, %__state
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136) %this, i32 noundef %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %__p) #5 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %__r) #5 align 2 {
entry:
  ret ptr %__r
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %call, i64 0, i32 1
  %0 = load i64, ptr %__size_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %call, i64 0, i32 2
  %bf.load = load i8, ptr %__size_, align 1
  %bf.clear = and i8 %bf.load, 127
  %conv = zext i8 %bf.clear to i64
  ret i64 %conv
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC1ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC1ERS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2ERS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #6 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %add.ptr6 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %add.ptr9 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerB6v15007EPKvSA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #12
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %__c) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #5 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #12
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerB6v15007EPKvSA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %0) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %__p) #5 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #5 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #12
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef nonnull %incdec.ptr) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #7
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #4 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB6v15007EPS5_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB6v15007EPS5_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #5 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__p) #12
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #5 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = mul i64 %__n, 24
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #7
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #5 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #12
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #5 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007EPKvS7_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #6 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007EPKvS7_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) #12
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007EPKvS7_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #6 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nocallback nofree nounwind willreturn }
attributes #11 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

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
!10 = distinct !{!10, !7}
