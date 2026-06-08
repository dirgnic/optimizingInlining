; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/gsm_explode.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/gsm_explode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gsm_explode(ptr noundef %s, ptr noundef %c, ptr noundef %target) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  %0 = load ptr, ptr %c.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %c.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 15
  %shl = shl i32 %and3, 2
  %conv4 = trunc i32 %shl to i16
  %4 = load ptr, ptr %target.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 0
  store i16 %conv4, ptr %arrayidx, align 2
  %5 = load ptr, ptr %c.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv5 = zext i8 %6 to i32
  %shr6 = ashr i32 %conv5, 6
  %and7 = and i32 %shr6, 3
  %7 = load ptr, ptr %target.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %7, i64 0
  %8 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %8 to i32
  %or = or i32 %conv9, %and7
  %conv10 = trunc i32 %or to i16
  store i16 %conv10, ptr %arrayidx8, align 2
  %9 = load ptr, ptr %c.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr11, ptr %c.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv12 = zext i8 %10 to i32
  %and13 = and i32 %conv12, 63
  %conv14 = trunc i32 %and13 to i16
  %11 = load ptr, ptr %target.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %11, i64 1
  store i16 %conv14, ptr %arrayidx15, align 2
  %12 = load ptr, ptr %c.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv16 = zext i8 %13 to i32
  %shr17 = ashr i32 %conv16, 3
  %and18 = and i32 %shr17, 31
  %conv19 = trunc i32 %and18 to i16
  %14 = load ptr, ptr %target.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %14, i64 2
  store i16 %conv19, ptr %arrayidx20, align 2
  %15 = load ptr, ptr %c.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr21, ptr %c.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv22 = zext i8 %16 to i32
  %and23 = and i32 %conv22, 7
  %shl24 = shl i32 %and23, 2
  %conv25 = trunc i32 %shl24 to i16
  %17 = load ptr, ptr %target.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, ptr %17, i64 3
  store i16 %conv25, ptr %arrayidx26, align 2
  %18 = load ptr, ptr %c.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv27 = zext i8 %19 to i32
  %shr28 = ashr i32 %conv27, 6
  %and29 = and i32 %shr28, 3
  %20 = load ptr, ptr %target.addr, align 8
  %arrayidx30 = getelementptr inbounds i16, ptr %20, i64 3
  %21 = load i16, ptr %arrayidx30, align 2
  %conv31 = sext i16 %21 to i32
  %or32 = or i32 %conv31, %and29
  %conv33 = trunc i32 %or32 to i16
  store i16 %conv33, ptr %arrayidx30, align 2
  %22 = load ptr, ptr %c.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv34 = zext i8 %23 to i32
  %shr35 = ashr i32 %conv34, 2
  %and36 = and i32 %shr35, 15
  %conv37 = trunc i32 %and36 to i16
  %24 = load ptr, ptr %target.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, ptr %24, i64 4
  store i16 %conv37, ptr %arrayidx38, align 2
  %25 = load ptr, ptr %c.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr39, ptr %c.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv40 = zext i8 %26 to i32
  %and41 = and i32 %conv40, 3
  %shl42 = shl i32 %and41, 2
  %conv43 = trunc i32 %shl42 to i16
  %27 = load ptr, ptr %target.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, ptr %27, i64 5
  store i16 %conv43, ptr %arrayidx44, align 2
  %28 = load ptr, ptr %c.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv45 = zext i8 %29 to i32
  %shr46 = ashr i32 %conv45, 6
  %and47 = and i32 %shr46, 3
  %30 = load ptr, ptr %target.addr, align 8
  %arrayidx48 = getelementptr inbounds i16, ptr %30, i64 5
  %31 = load i16, ptr %arrayidx48, align 2
  %conv49 = sext i16 %31 to i32
  %or50 = or i32 %conv49, %and47
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, ptr %arrayidx48, align 2
  %32 = load ptr, ptr %c.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv52 = zext i8 %33 to i32
  %shr53 = ashr i32 %conv52, 3
  %and54 = and i32 %shr53, 7
  %conv55 = trunc i32 %and54 to i16
  %34 = load ptr, ptr %target.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, ptr %34, i64 6
  store i16 %conv55, ptr %arrayidx56, align 2
  %35 = load ptr, ptr %c.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr57, ptr %c.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv58 = zext i8 %36 to i32
  %and59 = and i32 %conv58, 7
  %conv60 = trunc i32 %and59 to i16
  %37 = load ptr, ptr %target.addr, align 8
  %arrayidx61 = getelementptr inbounds i16, ptr %37, i64 7
  store i16 %conv60, ptr %arrayidx61, align 2
  %38 = load ptr, ptr %c.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv62 = zext i8 %39 to i32
  %shr63 = ashr i32 %conv62, 1
  %and64 = and i32 %shr63, 127
  %conv65 = trunc i32 %and64 to i16
  %40 = load ptr, ptr %target.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %40, i64 8
  %arrayidx66 = getelementptr inbounds i16, ptr %add.ptr, i64 0
  store i16 %conv65, ptr %arrayidx66, align 2
  %41 = load ptr, ptr %c.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr67, ptr %c.addr, align 8
  %42 = load i8, ptr %41, align 1
  %conv68 = zext i8 %42 to i32
  %and69 = and i32 %conv68, 1
  %shl70 = shl i32 %and69, 1
  %conv71 = trunc i32 %shl70 to i16
  %43 = load ptr, ptr %target.addr, align 8
  %add.ptr72 = getelementptr inbounds i16, ptr %43, i64 9
  %arrayidx73 = getelementptr inbounds i16, ptr %add.ptr72, i64 0
  store i16 %conv71, ptr %arrayidx73, align 2
  %44 = load ptr, ptr %c.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv74 = zext i8 %45 to i32
  %shr75 = ashr i32 %conv74, 7
  %and76 = and i32 %shr75, 1
  %46 = load ptr, ptr %target.addr, align 8
  %add.ptr77 = getelementptr inbounds i16, ptr %46, i64 9
  %arrayidx78 = getelementptr inbounds i16, ptr %add.ptr77, i64 0
  %47 = load i16, ptr %arrayidx78, align 2
  %conv79 = sext i16 %47 to i32
  %or80 = or i32 %conv79, %and76
  %conv81 = trunc i32 %or80 to i16
  store i16 %conv81, ptr %arrayidx78, align 2
  %48 = load ptr, ptr %c.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv82 = zext i8 %49 to i32
  %shr83 = ashr i32 %conv82, 5
  %and84 = and i32 %shr83, 3
  %conv85 = trunc i32 %and84 to i16
  %50 = load ptr, ptr %target.addr, align 8
  %add.ptr86 = getelementptr inbounds i16, ptr %50, i64 10
  %arrayidx87 = getelementptr inbounds i16, ptr %add.ptr86, i64 0
  store i16 %conv85, ptr %arrayidx87, align 2
  %51 = load ptr, ptr %c.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr88, ptr %c.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv89 = zext i8 %52 to i32
  %and90 = and i32 %conv89, 31
  %shl91 = shl i32 %and90, 1
  %conv92 = trunc i32 %shl91 to i16
  %53 = load ptr, ptr %target.addr, align 8
  %add.ptr93 = getelementptr inbounds i16, ptr %53, i64 11
  %arrayidx94 = getelementptr inbounds i16, ptr %add.ptr93, i64 0
  store i16 %conv92, ptr %arrayidx94, align 2
  %54 = load ptr, ptr %c.addr, align 8
  %55 = load i8, ptr %54, align 1
  %conv95 = zext i8 %55 to i32
  %shr96 = ashr i32 %conv95, 7
  %and97 = and i32 %shr96, 1
  %56 = load ptr, ptr %target.addr, align 8
  %add.ptr98 = getelementptr inbounds i16, ptr %56, i64 11
  %arrayidx99 = getelementptr inbounds i16, ptr %add.ptr98, i64 0
  %57 = load i16, ptr %arrayidx99, align 2
  %conv100 = sext i16 %57 to i32
  %or101 = or i32 %conv100, %and97
  %conv102 = trunc i32 %or101 to i16
  store i16 %conv102, ptr %arrayidx99, align 2
  %58 = load ptr, ptr %c.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv103 = zext i8 %59 to i32
  %shr104 = ashr i32 %conv103, 4
  %and105 = and i32 %shr104, 7
  %conv106 = trunc i32 %and105 to i16
  %60 = load ptr, ptr %target.addr, align 8
  %add.ptr107 = getelementptr inbounds i16, ptr %60, i64 12
  %arrayidx108 = getelementptr inbounds i16, ptr %add.ptr107, i64 0
  store i16 %conv106, ptr %arrayidx108, align 2
  %61 = load ptr, ptr %c.addr, align 8
  %62 = load i8, ptr %61, align 1
  %conv109 = zext i8 %62 to i32
  %shr110 = ashr i32 %conv109, 1
  %and111 = and i32 %shr110, 7
  %conv112 = trunc i32 %and111 to i16
  %63 = load ptr, ptr %target.addr, align 8
  %add.ptr113 = getelementptr inbounds i16, ptr %63, i64 12
  %arrayidx114 = getelementptr inbounds i16, ptr %add.ptr113, i64 1
  store i16 %conv112, ptr %arrayidx114, align 2
  %64 = load ptr, ptr %c.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr115, ptr %c.addr, align 8
  %65 = load i8, ptr %64, align 1
  %conv116 = zext i8 %65 to i32
  %and117 = and i32 %conv116, 1
  %shl118 = shl i32 %and117, 2
  %conv119 = trunc i32 %shl118 to i16
  %66 = load ptr, ptr %target.addr, align 8
  %add.ptr120 = getelementptr inbounds i16, ptr %66, i64 12
  %arrayidx121 = getelementptr inbounds i16, ptr %add.ptr120, i64 2
  store i16 %conv119, ptr %arrayidx121, align 2
  %67 = load ptr, ptr %c.addr, align 8
  %68 = load i8, ptr %67, align 1
  %conv122 = zext i8 %68 to i32
  %shr123 = ashr i32 %conv122, 6
  %and124 = and i32 %shr123, 3
  %69 = load ptr, ptr %target.addr, align 8
  %add.ptr125 = getelementptr inbounds i16, ptr %69, i64 12
  %arrayidx126 = getelementptr inbounds i16, ptr %add.ptr125, i64 2
  %70 = load i16, ptr %arrayidx126, align 2
  %conv127 = sext i16 %70 to i32
  %or128 = or i32 %conv127, %and124
  %conv129 = trunc i32 %or128 to i16
  store i16 %conv129, ptr %arrayidx126, align 2
  %71 = load ptr, ptr %c.addr, align 8
  %72 = load i8, ptr %71, align 1
  %conv130 = zext i8 %72 to i32
  %shr131 = ashr i32 %conv130, 3
  %and132 = and i32 %shr131, 7
  %conv133 = trunc i32 %and132 to i16
  %73 = load ptr, ptr %target.addr, align 8
  %add.ptr134 = getelementptr inbounds i16, ptr %73, i64 12
  %arrayidx135 = getelementptr inbounds i16, ptr %add.ptr134, i64 3
  store i16 %conv133, ptr %arrayidx135, align 2
  %74 = load ptr, ptr %c.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr136, ptr %c.addr, align 8
  %75 = load i8, ptr %74, align 1
  %conv137 = zext i8 %75 to i32
  %and138 = and i32 %conv137, 7
  %conv139 = trunc i32 %and138 to i16
  %76 = load ptr, ptr %target.addr, align 8
  %add.ptr140 = getelementptr inbounds i16, ptr %76, i64 12
  %arrayidx141 = getelementptr inbounds i16, ptr %add.ptr140, i64 4
  store i16 %conv139, ptr %arrayidx141, align 2
  %77 = load ptr, ptr %c.addr, align 8
  %78 = load i8, ptr %77, align 1
  %conv142 = zext i8 %78 to i32
  %shr143 = ashr i32 %conv142, 5
  %and144 = and i32 %shr143, 7
  %conv145 = trunc i32 %and144 to i16
  %79 = load ptr, ptr %target.addr, align 8
  %add.ptr146 = getelementptr inbounds i16, ptr %79, i64 12
  %arrayidx147 = getelementptr inbounds i16, ptr %add.ptr146, i64 5
  store i16 %conv145, ptr %arrayidx147, align 2
  %80 = load ptr, ptr %c.addr, align 8
  %81 = load i8, ptr %80, align 1
  %conv148 = zext i8 %81 to i32
  %shr149 = ashr i32 %conv148, 2
  %and150 = and i32 %shr149, 7
  %conv151 = trunc i32 %and150 to i16
  %82 = load ptr, ptr %target.addr, align 8
  %add.ptr152 = getelementptr inbounds i16, ptr %82, i64 12
  %arrayidx153 = getelementptr inbounds i16, ptr %add.ptr152, i64 6
  store i16 %conv151, ptr %arrayidx153, align 2
  %83 = load ptr, ptr %c.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr154, ptr %c.addr, align 8
  %84 = load i8, ptr %83, align 1
  %conv155 = zext i8 %84 to i32
  %and156 = and i32 %conv155, 3
  %shl157 = shl i32 %and156, 1
  %conv158 = trunc i32 %shl157 to i16
  %85 = load ptr, ptr %target.addr, align 8
  %add.ptr159 = getelementptr inbounds i16, ptr %85, i64 12
  %arrayidx160 = getelementptr inbounds i16, ptr %add.ptr159, i64 7
  store i16 %conv158, ptr %arrayidx160, align 2
  %86 = load ptr, ptr %c.addr, align 8
  %87 = load i8, ptr %86, align 1
  %conv161 = zext i8 %87 to i32
  %shr162 = ashr i32 %conv161, 7
  %and163 = and i32 %shr162, 1
  %88 = load ptr, ptr %target.addr, align 8
  %add.ptr164 = getelementptr inbounds i16, ptr %88, i64 12
  %arrayidx165 = getelementptr inbounds i16, ptr %add.ptr164, i64 7
  %89 = load i16, ptr %arrayidx165, align 2
  %conv166 = sext i16 %89 to i32
  %or167 = or i32 %conv166, %and163
  %conv168 = trunc i32 %or167 to i16
  store i16 %conv168, ptr %arrayidx165, align 2
  %90 = load ptr, ptr %c.addr, align 8
  %91 = load i8, ptr %90, align 1
  %conv169 = zext i8 %91 to i32
  %shr170 = ashr i32 %conv169, 4
  %and171 = and i32 %shr170, 7
  %conv172 = trunc i32 %and171 to i16
  %92 = load ptr, ptr %target.addr, align 8
  %add.ptr173 = getelementptr inbounds i16, ptr %92, i64 12
  %arrayidx174 = getelementptr inbounds i16, ptr %add.ptr173, i64 8
  store i16 %conv172, ptr %arrayidx174, align 2
  %93 = load ptr, ptr %c.addr, align 8
  %94 = load i8, ptr %93, align 1
  %conv175 = zext i8 %94 to i32
  %shr176 = ashr i32 %conv175, 1
  %and177 = and i32 %shr176, 7
  %conv178 = trunc i32 %and177 to i16
  %95 = load ptr, ptr %target.addr, align 8
  %add.ptr179 = getelementptr inbounds i16, ptr %95, i64 12
  %arrayidx180 = getelementptr inbounds i16, ptr %add.ptr179, i64 9
  store i16 %conv178, ptr %arrayidx180, align 2
  %96 = load ptr, ptr %c.addr, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr181, ptr %c.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv182 = zext i8 %97 to i32
  %and183 = and i32 %conv182, 1
  %shl184 = shl i32 %and183, 2
  %conv185 = trunc i32 %shl184 to i16
  %98 = load ptr, ptr %target.addr, align 8
  %add.ptr186 = getelementptr inbounds i16, ptr %98, i64 12
  %arrayidx187 = getelementptr inbounds i16, ptr %add.ptr186, i64 10
  store i16 %conv185, ptr %arrayidx187, align 2
  %99 = load ptr, ptr %c.addr, align 8
  %100 = load i8, ptr %99, align 1
  %conv188 = zext i8 %100 to i32
  %shr189 = ashr i32 %conv188, 6
  %and190 = and i32 %shr189, 3
  %101 = load ptr, ptr %target.addr, align 8
  %add.ptr191 = getelementptr inbounds i16, ptr %101, i64 12
  %arrayidx192 = getelementptr inbounds i16, ptr %add.ptr191, i64 10
  %102 = load i16, ptr %arrayidx192, align 2
  %conv193 = sext i16 %102 to i32
  %or194 = or i32 %conv193, %and190
  %conv195 = trunc i32 %or194 to i16
  store i16 %conv195, ptr %arrayidx192, align 2
  %103 = load ptr, ptr %c.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv196 = zext i8 %104 to i32
  %shr197 = ashr i32 %conv196, 3
  %and198 = and i32 %shr197, 7
  %conv199 = trunc i32 %and198 to i16
  %105 = load ptr, ptr %target.addr, align 8
  %add.ptr200 = getelementptr inbounds i16, ptr %105, i64 12
  %arrayidx201 = getelementptr inbounds i16, ptr %add.ptr200, i64 11
  store i16 %conv199, ptr %arrayidx201, align 2
  %106 = load ptr, ptr %c.addr, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr202, ptr %c.addr, align 8
  %107 = load i8, ptr %106, align 1
  %conv203 = zext i8 %107 to i32
  %and204 = and i32 %conv203, 7
  %conv205 = trunc i32 %and204 to i16
  %108 = load ptr, ptr %target.addr, align 8
  %add.ptr206 = getelementptr inbounds i16, ptr %108, i64 12
  %arrayidx207 = getelementptr inbounds i16, ptr %add.ptr206, i64 12
  store i16 %conv205, ptr %arrayidx207, align 2
  %109 = load ptr, ptr %c.addr, align 8
  %110 = load i8, ptr %109, align 1
  %conv208 = zext i8 %110 to i32
  %shr209 = ashr i32 %conv208, 1
  %and210 = and i32 %shr209, 127
  %conv211 = trunc i32 %and210 to i16
  %111 = load ptr, ptr %target.addr, align 8
  %add.ptr212 = getelementptr inbounds i16, ptr %111, i64 25
  %add.ptr213 = getelementptr inbounds i16, ptr %add.ptr212, i64 -1
  %arrayidx214 = getelementptr inbounds i16, ptr %add.ptr213, i64 1
  store i16 %conv211, ptr %arrayidx214, align 2
  %112 = load ptr, ptr %c.addr, align 8
  %incdec.ptr215 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr215, ptr %c.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv216 = zext i8 %113 to i32
  %and217 = and i32 %conv216, 1
  %shl218 = shl i32 %and217, 1
  %conv219 = trunc i32 %shl218 to i16
  %114 = load ptr, ptr %target.addr, align 8
  %add.ptr220 = getelementptr inbounds i16, ptr %114, i64 26
  %add.ptr221 = getelementptr inbounds i16, ptr %add.ptr220, i64 -1
  %arrayidx222 = getelementptr inbounds i16, ptr %add.ptr221, i64 1
  store i16 %conv219, ptr %arrayidx222, align 2
  %115 = load ptr, ptr %c.addr, align 8
  %116 = load i8, ptr %115, align 1
  %conv223 = zext i8 %116 to i32
  %shr224 = ashr i32 %conv223, 7
  %and225 = and i32 %shr224, 1
  %117 = load ptr, ptr %target.addr, align 8
  %add.ptr226 = getelementptr inbounds i16, ptr %117, i64 26
  %add.ptr227 = getelementptr inbounds i16, ptr %add.ptr226, i64 -1
  %arrayidx228 = getelementptr inbounds i16, ptr %add.ptr227, i64 1
  %118 = load i16, ptr %arrayidx228, align 2
  %conv229 = sext i16 %118 to i32
  %or230 = or i32 %conv229, %and225
  %conv231 = trunc i32 %or230 to i16
  store i16 %conv231, ptr %arrayidx228, align 2
  %119 = load ptr, ptr %c.addr, align 8
  %120 = load i8, ptr %119, align 1
  %conv232 = zext i8 %120 to i32
  %shr233 = ashr i32 %conv232, 5
  %and234 = and i32 %shr233, 3
  %conv235 = trunc i32 %and234 to i16
  %121 = load ptr, ptr %target.addr, align 8
  %add.ptr236 = getelementptr inbounds i16, ptr %121, i64 27
  %add.ptr237 = getelementptr inbounds i16, ptr %add.ptr236, i64 -1
  %arrayidx238 = getelementptr inbounds i16, ptr %add.ptr237, i64 1
  store i16 %conv235, ptr %arrayidx238, align 2
  %122 = load ptr, ptr %c.addr, align 8
  %incdec.ptr239 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr239, ptr %c.addr, align 8
  %123 = load i8, ptr %122, align 1
  %conv240 = zext i8 %123 to i32
  %and241 = and i32 %conv240, 31
  %shl242 = shl i32 %and241, 1
  %conv243 = trunc i32 %shl242 to i16
  %124 = load ptr, ptr %target.addr, align 8
  %add.ptr244 = getelementptr inbounds i16, ptr %124, i64 28
  %add.ptr245 = getelementptr inbounds i16, ptr %add.ptr244, i64 -1
  %arrayidx246 = getelementptr inbounds i16, ptr %add.ptr245, i64 1
  store i16 %conv243, ptr %arrayidx246, align 2
  %125 = load ptr, ptr %c.addr, align 8
  %126 = load i8, ptr %125, align 1
  %conv247 = zext i8 %126 to i32
  %shr248 = ashr i32 %conv247, 7
  %and249 = and i32 %shr248, 1
  %127 = load ptr, ptr %target.addr, align 8
  %add.ptr250 = getelementptr inbounds i16, ptr %127, i64 28
  %add.ptr251 = getelementptr inbounds i16, ptr %add.ptr250, i64 -1
  %arrayidx252 = getelementptr inbounds i16, ptr %add.ptr251, i64 1
  %128 = load i16, ptr %arrayidx252, align 2
  %conv253 = sext i16 %128 to i32
  %or254 = or i32 %conv253, %and249
  %conv255 = trunc i32 %or254 to i16
  store i16 %conv255, ptr %arrayidx252, align 2
  %129 = load ptr, ptr %c.addr, align 8
  %130 = load i8, ptr %129, align 1
  %conv256 = zext i8 %130 to i32
  %shr257 = ashr i32 %conv256, 4
  %and258 = and i32 %shr257, 7
  %conv259 = trunc i32 %and258 to i16
  %131 = load ptr, ptr %target.addr, align 8
  %add.ptr260 = getelementptr inbounds i16, ptr %131, i64 29
  %add.ptr261 = getelementptr inbounds i16, ptr %add.ptr260, i64 -13
  %arrayidx262 = getelementptr inbounds i16, ptr %add.ptr261, i64 13
  store i16 %conv259, ptr %arrayidx262, align 2
  %132 = load ptr, ptr %c.addr, align 8
  %133 = load i8, ptr %132, align 1
  %conv263 = zext i8 %133 to i32
  %shr264 = ashr i32 %conv263, 1
  %and265 = and i32 %shr264, 7
  %conv266 = trunc i32 %and265 to i16
  %134 = load ptr, ptr %target.addr, align 8
  %add.ptr267 = getelementptr inbounds i16, ptr %134, i64 29
  %add.ptr268 = getelementptr inbounds i16, ptr %add.ptr267, i64 -13
  %arrayidx269 = getelementptr inbounds i16, ptr %add.ptr268, i64 14
  store i16 %conv266, ptr %arrayidx269, align 2
  %135 = load ptr, ptr %c.addr, align 8
  %incdec.ptr270 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr270, ptr %c.addr, align 8
  %136 = load i8, ptr %135, align 1
  %conv271 = zext i8 %136 to i32
  %and272 = and i32 %conv271, 1
  %shl273 = shl i32 %and272, 2
  %conv274 = trunc i32 %shl273 to i16
  %137 = load ptr, ptr %target.addr, align 8
  %add.ptr275 = getelementptr inbounds i16, ptr %137, i64 29
  %add.ptr276 = getelementptr inbounds i16, ptr %add.ptr275, i64 -13
  %arrayidx277 = getelementptr inbounds i16, ptr %add.ptr276, i64 15
  store i16 %conv274, ptr %arrayidx277, align 2
  %138 = load ptr, ptr %c.addr, align 8
  %139 = load i8, ptr %138, align 1
  %conv278 = zext i8 %139 to i32
  %shr279 = ashr i32 %conv278, 6
  %and280 = and i32 %shr279, 3
  %140 = load ptr, ptr %target.addr, align 8
  %add.ptr281 = getelementptr inbounds i16, ptr %140, i64 29
  %add.ptr282 = getelementptr inbounds i16, ptr %add.ptr281, i64 -13
  %arrayidx283 = getelementptr inbounds i16, ptr %add.ptr282, i64 15
  %141 = load i16, ptr %arrayidx283, align 2
  %conv284 = sext i16 %141 to i32
  %or285 = or i32 %conv284, %and280
  %conv286 = trunc i32 %or285 to i16
  store i16 %conv286, ptr %arrayidx283, align 2
  %142 = load ptr, ptr %c.addr, align 8
  %143 = load i8, ptr %142, align 1
  %conv287 = zext i8 %143 to i32
  %shr288 = ashr i32 %conv287, 3
  %and289 = and i32 %shr288, 7
  %conv290 = trunc i32 %and289 to i16
  %144 = load ptr, ptr %target.addr, align 8
  %add.ptr291 = getelementptr inbounds i16, ptr %144, i64 29
  %add.ptr292 = getelementptr inbounds i16, ptr %add.ptr291, i64 -13
  %arrayidx293 = getelementptr inbounds i16, ptr %add.ptr292, i64 16
  store i16 %conv290, ptr %arrayidx293, align 2
  %145 = load ptr, ptr %c.addr, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %145, i32 1
  store ptr %incdec.ptr294, ptr %c.addr, align 8
  %146 = load i8, ptr %145, align 1
  %conv295 = zext i8 %146 to i32
  %and296 = and i32 %conv295, 7
  %conv297 = trunc i32 %and296 to i16
  %147 = load ptr, ptr %target.addr, align 8
  %add.ptr298 = getelementptr inbounds i16, ptr %147, i64 29
  %add.ptr299 = getelementptr inbounds i16, ptr %add.ptr298, i64 -13
  %arrayidx300 = getelementptr inbounds i16, ptr %add.ptr299, i64 17
  store i16 %conv297, ptr %arrayidx300, align 2
  %148 = load ptr, ptr %c.addr, align 8
  %149 = load i8, ptr %148, align 1
  %conv301 = zext i8 %149 to i32
  %shr302 = ashr i32 %conv301, 5
  %and303 = and i32 %shr302, 7
  %conv304 = trunc i32 %and303 to i16
  %150 = load ptr, ptr %target.addr, align 8
  %add.ptr305 = getelementptr inbounds i16, ptr %150, i64 29
  %add.ptr306 = getelementptr inbounds i16, ptr %add.ptr305, i64 -13
  %arrayidx307 = getelementptr inbounds i16, ptr %add.ptr306, i64 18
  store i16 %conv304, ptr %arrayidx307, align 2
  %151 = load ptr, ptr %c.addr, align 8
  %152 = load i8, ptr %151, align 1
  %conv308 = zext i8 %152 to i32
  %shr309 = ashr i32 %conv308, 2
  %and310 = and i32 %shr309, 7
  %conv311 = trunc i32 %and310 to i16
  %153 = load ptr, ptr %target.addr, align 8
  %add.ptr312 = getelementptr inbounds i16, ptr %153, i64 29
  %add.ptr313 = getelementptr inbounds i16, ptr %add.ptr312, i64 -13
  %arrayidx314 = getelementptr inbounds i16, ptr %add.ptr313, i64 19
  store i16 %conv311, ptr %arrayidx314, align 2
  %154 = load ptr, ptr %c.addr, align 8
  %incdec.ptr315 = getelementptr inbounds i8, ptr %154, i32 1
  store ptr %incdec.ptr315, ptr %c.addr, align 8
  %155 = load i8, ptr %154, align 1
  %conv316 = zext i8 %155 to i32
  %and317 = and i32 %conv316, 3
  %shl318 = shl i32 %and317, 1
  %conv319 = trunc i32 %shl318 to i16
  %156 = load ptr, ptr %target.addr, align 8
  %add.ptr320 = getelementptr inbounds i16, ptr %156, i64 29
  %add.ptr321 = getelementptr inbounds i16, ptr %add.ptr320, i64 -13
  %arrayidx322 = getelementptr inbounds i16, ptr %add.ptr321, i64 20
  store i16 %conv319, ptr %arrayidx322, align 2
  %157 = load ptr, ptr %c.addr, align 8
  %158 = load i8, ptr %157, align 1
  %conv323 = zext i8 %158 to i32
  %shr324 = ashr i32 %conv323, 7
  %and325 = and i32 %shr324, 1
  %159 = load ptr, ptr %target.addr, align 8
  %add.ptr326 = getelementptr inbounds i16, ptr %159, i64 29
  %add.ptr327 = getelementptr inbounds i16, ptr %add.ptr326, i64 -13
  %arrayidx328 = getelementptr inbounds i16, ptr %add.ptr327, i64 20
  %160 = load i16, ptr %arrayidx328, align 2
  %conv329 = sext i16 %160 to i32
  %or330 = or i32 %conv329, %and325
  %conv331 = trunc i32 %or330 to i16
  store i16 %conv331, ptr %arrayidx328, align 2
  %161 = load ptr, ptr %c.addr, align 8
  %162 = load i8, ptr %161, align 1
  %conv332 = zext i8 %162 to i32
  %shr333 = ashr i32 %conv332, 4
  %and334 = and i32 %shr333, 7
  %conv335 = trunc i32 %and334 to i16
  %163 = load ptr, ptr %target.addr, align 8
  %add.ptr336 = getelementptr inbounds i16, ptr %163, i64 29
  %add.ptr337 = getelementptr inbounds i16, ptr %add.ptr336, i64 -13
  %arrayidx338 = getelementptr inbounds i16, ptr %add.ptr337, i64 21
  store i16 %conv335, ptr %arrayidx338, align 2
  %164 = load ptr, ptr %c.addr, align 8
  %165 = load i8, ptr %164, align 1
  %conv339 = zext i8 %165 to i32
  %shr340 = ashr i32 %conv339, 1
  %and341 = and i32 %shr340, 7
  %conv342 = trunc i32 %and341 to i16
  %166 = load ptr, ptr %target.addr, align 8
  %add.ptr343 = getelementptr inbounds i16, ptr %166, i64 29
  %add.ptr344 = getelementptr inbounds i16, ptr %add.ptr343, i64 -13
  %arrayidx345 = getelementptr inbounds i16, ptr %add.ptr344, i64 22
  store i16 %conv342, ptr %arrayidx345, align 2
  %167 = load ptr, ptr %c.addr, align 8
  %incdec.ptr346 = getelementptr inbounds i8, ptr %167, i32 1
  store ptr %incdec.ptr346, ptr %c.addr, align 8
  %168 = load i8, ptr %167, align 1
  %conv347 = zext i8 %168 to i32
  %and348 = and i32 %conv347, 1
  %shl349 = shl i32 %and348, 2
  %conv350 = trunc i32 %shl349 to i16
  %169 = load ptr, ptr %target.addr, align 8
  %add.ptr351 = getelementptr inbounds i16, ptr %169, i64 29
  %add.ptr352 = getelementptr inbounds i16, ptr %add.ptr351, i64 -13
  %arrayidx353 = getelementptr inbounds i16, ptr %add.ptr352, i64 23
  store i16 %conv350, ptr %arrayidx353, align 2
  %170 = load ptr, ptr %c.addr, align 8
  %171 = load i8, ptr %170, align 1
  %conv354 = zext i8 %171 to i32
  %shr355 = ashr i32 %conv354, 6
  %and356 = and i32 %shr355, 3
  %172 = load ptr, ptr %target.addr, align 8
  %add.ptr357 = getelementptr inbounds i16, ptr %172, i64 29
  %add.ptr358 = getelementptr inbounds i16, ptr %add.ptr357, i64 -13
  %arrayidx359 = getelementptr inbounds i16, ptr %add.ptr358, i64 23
  %173 = load i16, ptr %arrayidx359, align 2
  %conv360 = sext i16 %173 to i32
  %or361 = or i32 %conv360, %and356
  %conv362 = trunc i32 %or361 to i16
  store i16 %conv362, ptr %arrayidx359, align 2
  %174 = load ptr, ptr %c.addr, align 8
  %175 = load i8, ptr %174, align 1
  %conv363 = zext i8 %175 to i32
  %shr364 = ashr i32 %conv363, 3
  %and365 = and i32 %shr364, 7
  %conv366 = trunc i32 %and365 to i16
  %176 = load ptr, ptr %target.addr, align 8
  %add.ptr367 = getelementptr inbounds i16, ptr %176, i64 29
  %add.ptr368 = getelementptr inbounds i16, ptr %add.ptr367, i64 -13
  %arrayidx369 = getelementptr inbounds i16, ptr %add.ptr368, i64 24
  store i16 %conv366, ptr %arrayidx369, align 2
  %177 = load ptr, ptr %c.addr, align 8
  %incdec.ptr370 = getelementptr inbounds i8, ptr %177, i32 1
  store ptr %incdec.ptr370, ptr %c.addr, align 8
  %178 = load i8, ptr %177, align 1
  %conv371 = zext i8 %178 to i32
  %and372 = and i32 %conv371, 7
  %conv373 = trunc i32 %and372 to i16
  %179 = load ptr, ptr %target.addr, align 8
  %add.ptr374 = getelementptr inbounds i16, ptr %179, i64 29
  %add.ptr375 = getelementptr inbounds i16, ptr %add.ptr374, i64 -13
  %arrayidx376 = getelementptr inbounds i16, ptr %add.ptr375, i64 25
  store i16 %conv373, ptr %arrayidx376, align 2
  %180 = load ptr, ptr %c.addr, align 8
  %181 = load i8, ptr %180, align 1
  %conv377 = zext i8 %181 to i32
  %shr378 = ashr i32 %conv377, 1
  %and379 = and i32 %shr378, 127
  %conv380 = trunc i32 %and379 to i16
  %182 = load ptr, ptr %target.addr, align 8
  %add.ptr381 = getelementptr inbounds i16, ptr %182, i64 42
  %add.ptr382 = getelementptr inbounds i16, ptr %add.ptr381, i64 -2
  %arrayidx383 = getelementptr inbounds i16, ptr %add.ptr382, i64 2
  store i16 %conv380, ptr %arrayidx383, align 2
  %183 = load ptr, ptr %c.addr, align 8
  %incdec.ptr384 = getelementptr inbounds i8, ptr %183, i32 1
  store ptr %incdec.ptr384, ptr %c.addr, align 8
  %184 = load i8, ptr %183, align 1
  %conv385 = zext i8 %184 to i32
  %and386 = and i32 %conv385, 1
  %shl387 = shl i32 %and386, 1
  %conv388 = trunc i32 %shl387 to i16
  %185 = load ptr, ptr %target.addr, align 8
  %add.ptr389 = getelementptr inbounds i16, ptr %185, i64 43
  %add.ptr390 = getelementptr inbounds i16, ptr %add.ptr389, i64 -2
  %arrayidx391 = getelementptr inbounds i16, ptr %add.ptr390, i64 2
  store i16 %conv388, ptr %arrayidx391, align 2
  %186 = load ptr, ptr %c.addr, align 8
  %187 = load i8, ptr %186, align 1
  %conv392 = zext i8 %187 to i32
  %shr393 = ashr i32 %conv392, 7
  %and394 = and i32 %shr393, 1
  %188 = load ptr, ptr %target.addr, align 8
  %add.ptr395 = getelementptr inbounds i16, ptr %188, i64 43
  %add.ptr396 = getelementptr inbounds i16, ptr %add.ptr395, i64 -2
  %arrayidx397 = getelementptr inbounds i16, ptr %add.ptr396, i64 2
  %189 = load i16, ptr %arrayidx397, align 2
  %conv398 = sext i16 %189 to i32
  %or399 = or i32 %conv398, %and394
  %conv400 = trunc i32 %or399 to i16
  store i16 %conv400, ptr %arrayidx397, align 2
  %190 = load ptr, ptr %c.addr, align 8
  %191 = load i8, ptr %190, align 1
  %conv401 = zext i8 %191 to i32
  %shr402 = ashr i32 %conv401, 5
  %and403 = and i32 %shr402, 3
  %conv404 = trunc i32 %and403 to i16
  %192 = load ptr, ptr %target.addr, align 8
  %add.ptr405 = getelementptr inbounds i16, ptr %192, i64 44
  %add.ptr406 = getelementptr inbounds i16, ptr %add.ptr405, i64 -2
  %arrayidx407 = getelementptr inbounds i16, ptr %add.ptr406, i64 2
  store i16 %conv404, ptr %arrayidx407, align 2
  %193 = load ptr, ptr %c.addr, align 8
  %incdec.ptr408 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %incdec.ptr408, ptr %c.addr, align 8
  %194 = load i8, ptr %193, align 1
  %conv409 = zext i8 %194 to i32
  %and410 = and i32 %conv409, 31
  %shl411 = shl i32 %and410, 1
  %conv412 = trunc i32 %shl411 to i16
  %195 = load ptr, ptr %target.addr, align 8
  %add.ptr413 = getelementptr inbounds i16, ptr %195, i64 45
  %add.ptr414 = getelementptr inbounds i16, ptr %add.ptr413, i64 -2
  %arrayidx415 = getelementptr inbounds i16, ptr %add.ptr414, i64 2
  store i16 %conv412, ptr %arrayidx415, align 2
  %196 = load ptr, ptr %c.addr, align 8
  %197 = load i8, ptr %196, align 1
  %conv416 = zext i8 %197 to i32
  %shr417 = ashr i32 %conv416, 7
  %and418 = and i32 %shr417, 1
  %198 = load ptr, ptr %target.addr, align 8
  %add.ptr419 = getelementptr inbounds i16, ptr %198, i64 45
  %add.ptr420 = getelementptr inbounds i16, ptr %add.ptr419, i64 -2
  %arrayidx421 = getelementptr inbounds i16, ptr %add.ptr420, i64 2
  %199 = load i16, ptr %arrayidx421, align 2
  %conv422 = sext i16 %199 to i32
  %or423 = or i32 %conv422, %and418
  %conv424 = trunc i32 %or423 to i16
  store i16 %conv424, ptr %arrayidx421, align 2
  %200 = load ptr, ptr %c.addr, align 8
  %201 = load i8, ptr %200, align 1
  %conv425 = zext i8 %201 to i32
  %shr426 = ashr i32 %conv425, 4
  %and427 = and i32 %shr426, 7
  %conv428 = trunc i32 %and427 to i16
  %202 = load ptr, ptr %target.addr, align 8
  %add.ptr429 = getelementptr inbounds i16, ptr %202, i64 46
  %add.ptr430 = getelementptr inbounds i16, ptr %add.ptr429, i64 -26
  %arrayidx431 = getelementptr inbounds i16, ptr %add.ptr430, i64 26
  store i16 %conv428, ptr %arrayidx431, align 2
  %203 = load ptr, ptr %c.addr, align 8
  %204 = load i8, ptr %203, align 1
  %conv432 = zext i8 %204 to i32
  %shr433 = ashr i32 %conv432, 1
  %and434 = and i32 %shr433, 7
  %conv435 = trunc i32 %and434 to i16
  %205 = load ptr, ptr %target.addr, align 8
  %add.ptr436 = getelementptr inbounds i16, ptr %205, i64 46
  %add.ptr437 = getelementptr inbounds i16, ptr %add.ptr436, i64 -26
  %arrayidx438 = getelementptr inbounds i16, ptr %add.ptr437, i64 27
  store i16 %conv435, ptr %arrayidx438, align 2
  %206 = load ptr, ptr %c.addr, align 8
  %incdec.ptr439 = getelementptr inbounds i8, ptr %206, i32 1
  store ptr %incdec.ptr439, ptr %c.addr, align 8
  %207 = load i8, ptr %206, align 1
  %conv440 = zext i8 %207 to i32
  %and441 = and i32 %conv440, 1
  %shl442 = shl i32 %and441, 2
  %conv443 = trunc i32 %shl442 to i16
  %208 = load ptr, ptr %target.addr, align 8
  %add.ptr444 = getelementptr inbounds i16, ptr %208, i64 46
  %add.ptr445 = getelementptr inbounds i16, ptr %add.ptr444, i64 -26
  %arrayidx446 = getelementptr inbounds i16, ptr %add.ptr445, i64 28
  store i16 %conv443, ptr %arrayidx446, align 2
  %209 = load ptr, ptr %c.addr, align 8
  %210 = load i8, ptr %209, align 1
  %conv447 = zext i8 %210 to i32
  %shr448 = ashr i32 %conv447, 6
  %and449 = and i32 %shr448, 3
  %211 = load ptr, ptr %target.addr, align 8
  %add.ptr450 = getelementptr inbounds i16, ptr %211, i64 46
  %add.ptr451 = getelementptr inbounds i16, ptr %add.ptr450, i64 -26
  %arrayidx452 = getelementptr inbounds i16, ptr %add.ptr451, i64 28
  %212 = load i16, ptr %arrayidx452, align 2
  %conv453 = sext i16 %212 to i32
  %or454 = or i32 %conv453, %and449
  %conv455 = trunc i32 %or454 to i16
  store i16 %conv455, ptr %arrayidx452, align 2
  %213 = load ptr, ptr %c.addr, align 8
  %214 = load i8, ptr %213, align 1
  %conv456 = zext i8 %214 to i32
  %shr457 = ashr i32 %conv456, 3
  %and458 = and i32 %shr457, 7
  %conv459 = trunc i32 %and458 to i16
  %215 = load ptr, ptr %target.addr, align 8
  %add.ptr460 = getelementptr inbounds i16, ptr %215, i64 46
  %add.ptr461 = getelementptr inbounds i16, ptr %add.ptr460, i64 -26
  %arrayidx462 = getelementptr inbounds i16, ptr %add.ptr461, i64 29
  store i16 %conv459, ptr %arrayidx462, align 2
  %216 = load ptr, ptr %c.addr, align 8
  %incdec.ptr463 = getelementptr inbounds i8, ptr %216, i32 1
  store ptr %incdec.ptr463, ptr %c.addr, align 8
  %217 = load i8, ptr %216, align 1
  %conv464 = zext i8 %217 to i32
  %and465 = and i32 %conv464, 7
  %conv466 = trunc i32 %and465 to i16
  %218 = load ptr, ptr %target.addr, align 8
  %add.ptr467 = getelementptr inbounds i16, ptr %218, i64 46
  %add.ptr468 = getelementptr inbounds i16, ptr %add.ptr467, i64 -26
  %arrayidx469 = getelementptr inbounds i16, ptr %add.ptr468, i64 30
  store i16 %conv466, ptr %arrayidx469, align 2
  %219 = load ptr, ptr %c.addr, align 8
  %220 = load i8, ptr %219, align 1
  %conv470 = zext i8 %220 to i32
  %shr471 = ashr i32 %conv470, 5
  %and472 = and i32 %shr471, 7
  %conv473 = trunc i32 %and472 to i16
  %221 = load ptr, ptr %target.addr, align 8
  %add.ptr474 = getelementptr inbounds i16, ptr %221, i64 46
  %add.ptr475 = getelementptr inbounds i16, ptr %add.ptr474, i64 -26
  %arrayidx476 = getelementptr inbounds i16, ptr %add.ptr475, i64 31
  store i16 %conv473, ptr %arrayidx476, align 2
  %222 = load ptr, ptr %c.addr, align 8
  %223 = load i8, ptr %222, align 1
  %conv477 = zext i8 %223 to i32
  %shr478 = ashr i32 %conv477, 2
  %and479 = and i32 %shr478, 7
  %conv480 = trunc i32 %and479 to i16
  %224 = load ptr, ptr %target.addr, align 8
  %add.ptr481 = getelementptr inbounds i16, ptr %224, i64 46
  %add.ptr482 = getelementptr inbounds i16, ptr %add.ptr481, i64 -26
  %arrayidx483 = getelementptr inbounds i16, ptr %add.ptr482, i64 32
  store i16 %conv480, ptr %arrayidx483, align 2
  %225 = load ptr, ptr %c.addr, align 8
  %incdec.ptr484 = getelementptr inbounds i8, ptr %225, i32 1
  store ptr %incdec.ptr484, ptr %c.addr, align 8
  %226 = load i8, ptr %225, align 1
  %conv485 = zext i8 %226 to i32
  %and486 = and i32 %conv485, 3
  %shl487 = shl i32 %and486, 1
  %conv488 = trunc i32 %shl487 to i16
  %227 = load ptr, ptr %target.addr, align 8
  %add.ptr489 = getelementptr inbounds i16, ptr %227, i64 46
  %add.ptr490 = getelementptr inbounds i16, ptr %add.ptr489, i64 -26
  %arrayidx491 = getelementptr inbounds i16, ptr %add.ptr490, i64 33
  store i16 %conv488, ptr %arrayidx491, align 2
  %228 = load ptr, ptr %c.addr, align 8
  %229 = load i8, ptr %228, align 1
  %conv492 = zext i8 %229 to i32
  %shr493 = ashr i32 %conv492, 7
  %and494 = and i32 %shr493, 1
  %230 = load ptr, ptr %target.addr, align 8
  %add.ptr495 = getelementptr inbounds i16, ptr %230, i64 46
  %add.ptr496 = getelementptr inbounds i16, ptr %add.ptr495, i64 -26
  %arrayidx497 = getelementptr inbounds i16, ptr %add.ptr496, i64 33
  %231 = load i16, ptr %arrayidx497, align 2
  %conv498 = sext i16 %231 to i32
  %or499 = or i32 %conv498, %and494
  %conv500 = trunc i32 %or499 to i16
  store i16 %conv500, ptr %arrayidx497, align 2
  %232 = load ptr, ptr %c.addr, align 8
  %233 = load i8, ptr %232, align 1
  %conv501 = zext i8 %233 to i32
  %shr502 = ashr i32 %conv501, 4
  %and503 = and i32 %shr502, 7
  %conv504 = trunc i32 %and503 to i16
  %234 = load ptr, ptr %target.addr, align 8
  %add.ptr505 = getelementptr inbounds i16, ptr %234, i64 46
  %add.ptr506 = getelementptr inbounds i16, ptr %add.ptr505, i64 -26
  %arrayidx507 = getelementptr inbounds i16, ptr %add.ptr506, i64 34
  store i16 %conv504, ptr %arrayidx507, align 2
  %235 = load ptr, ptr %c.addr, align 8
  %236 = load i8, ptr %235, align 1
  %conv508 = zext i8 %236 to i32
  %shr509 = ashr i32 %conv508, 1
  %and510 = and i32 %shr509, 7
  %conv511 = trunc i32 %and510 to i16
  %237 = load ptr, ptr %target.addr, align 8
  %add.ptr512 = getelementptr inbounds i16, ptr %237, i64 46
  %add.ptr513 = getelementptr inbounds i16, ptr %add.ptr512, i64 -26
  %arrayidx514 = getelementptr inbounds i16, ptr %add.ptr513, i64 35
  store i16 %conv511, ptr %arrayidx514, align 2
  %238 = load ptr, ptr %c.addr, align 8
  %incdec.ptr515 = getelementptr inbounds i8, ptr %238, i32 1
  store ptr %incdec.ptr515, ptr %c.addr, align 8
  %239 = load i8, ptr %238, align 1
  %conv516 = zext i8 %239 to i32
  %and517 = and i32 %conv516, 1
  %shl518 = shl i32 %and517, 2
  %conv519 = trunc i32 %shl518 to i16
  %240 = load ptr, ptr %target.addr, align 8
  %add.ptr520 = getelementptr inbounds i16, ptr %240, i64 46
  %add.ptr521 = getelementptr inbounds i16, ptr %add.ptr520, i64 -26
  %arrayidx522 = getelementptr inbounds i16, ptr %add.ptr521, i64 36
  store i16 %conv519, ptr %arrayidx522, align 2
  %241 = load ptr, ptr %c.addr, align 8
  %242 = load i8, ptr %241, align 1
  %conv523 = zext i8 %242 to i32
  %shr524 = ashr i32 %conv523, 6
  %and525 = and i32 %shr524, 3
  %243 = load ptr, ptr %target.addr, align 8
  %add.ptr526 = getelementptr inbounds i16, ptr %243, i64 46
  %add.ptr527 = getelementptr inbounds i16, ptr %add.ptr526, i64 -26
  %arrayidx528 = getelementptr inbounds i16, ptr %add.ptr527, i64 36
  %244 = load i16, ptr %arrayidx528, align 2
  %conv529 = sext i16 %244 to i32
  %or530 = or i32 %conv529, %and525
  %conv531 = trunc i32 %or530 to i16
  store i16 %conv531, ptr %arrayidx528, align 2
  %245 = load ptr, ptr %c.addr, align 8
  %246 = load i8, ptr %245, align 1
  %conv532 = zext i8 %246 to i32
  %shr533 = ashr i32 %conv532, 3
  %and534 = and i32 %shr533, 7
  %conv535 = trunc i32 %and534 to i16
  %247 = load ptr, ptr %target.addr, align 8
  %add.ptr536 = getelementptr inbounds i16, ptr %247, i64 46
  %add.ptr537 = getelementptr inbounds i16, ptr %add.ptr536, i64 -26
  %arrayidx538 = getelementptr inbounds i16, ptr %add.ptr537, i64 37
  store i16 %conv535, ptr %arrayidx538, align 2
  %248 = load ptr, ptr %c.addr, align 8
  %incdec.ptr539 = getelementptr inbounds i8, ptr %248, i32 1
  store ptr %incdec.ptr539, ptr %c.addr, align 8
  %249 = load i8, ptr %248, align 1
  %conv540 = zext i8 %249 to i32
  %and541 = and i32 %conv540, 7
  %conv542 = trunc i32 %and541 to i16
  %250 = load ptr, ptr %target.addr, align 8
  %add.ptr543 = getelementptr inbounds i16, ptr %250, i64 46
  %add.ptr544 = getelementptr inbounds i16, ptr %add.ptr543, i64 -26
  %arrayidx545 = getelementptr inbounds i16, ptr %add.ptr544, i64 38
  store i16 %conv542, ptr %arrayidx545, align 2
  %251 = load ptr, ptr %c.addr, align 8
  %252 = load i8, ptr %251, align 1
  %conv546 = zext i8 %252 to i32
  %shr547 = ashr i32 %conv546, 1
  %and548 = and i32 %shr547, 127
  %conv549 = trunc i32 %and548 to i16
  %253 = load ptr, ptr %target.addr, align 8
  %add.ptr550 = getelementptr inbounds i16, ptr %253, i64 59
  %add.ptr551 = getelementptr inbounds i16, ptr %add.ptr550, i64 -3
  %arrayidx552 = getelementptr inbounds i16, ptr %add.ptr551, i64 3
  store i16 %conv549, ptr %arrayidx552, align 2
  %254 = load ptr, ptr %c.addr, align 8
  %incdec.ptr553 = getelementptr inbounds i8, ptr %254, i32 1
  store ptr %incdec.ptr553, ptr %c.addr, align 8
  %255 = load i8, ptr %254, align 1
  %conv554 = zext i8 %255 to i32
  %and555 = and i32 %conv554, 1
  %shl556 = shl i32 %and555, 1
  %conv557 = trunc i32 %shl556 to i16
  %256 = load ptr, ptr %target.addr, align 8
  %add.ptr558 = getelementptr inbounds i16, ptr %256, i64 60
  %add.ptr559 = getelementptr inbounds i16, ptr %add.ptr558, i64 -3
  %arrayidx560 = getelementptr inbounds i16, ptr %add.ptr559, i64 3
  store i16 %conv557, ptr %arrayidx560, align 2
  %257 = load ptr, ptr %c.addr, align 8
  %258 = load i8, ptr %257, align 1
  %conv561 = zext i8 %258 to i32
  %shr562 = ashr i32 %conv561, 7
  %and563 = and i32 %shr562, 1
  %259 = load ptr, ptr %target.addr, align 8
  %add.ptr564 = getelementptr inbounds i16, ptr %259, i64 60
  %add.ptr565 = getelementptr inbounds i16, ptr %add.ptr564, i64 -3
  %arrayidx566 = getelementptr inbounds i16, ptr %add.ptr565, i64 3
  %260 = load i16, ptr %arrayidx566, align 2
  %conv567 = sext i16 %260 to i32
  %or568 = or i32 %conv567, %and563
  %conv569 = trunc i32 %or568 to i16
  store i16 %conv569, ptr %arrayidx566, align 2
  %261 = load ptr, ptr %c.addr, align 8
  %262 = load i8, ptr %261, align 1
  %conv570 = zext i8 %262 to i32
  %shr571 = ashr i32 %conv570, 5
  %and572 = and i32 %shr571, 3
  %conv573 = trunc i32 %and572 to i16
  %263 = load ptr, ptr %target.addr, align 8
  %add.ptr574 = getelementptr inbounds i16, ptr %263, i64 61
  %add.ptr575 = getelementptr inbounds i16, ptr %add.ptr574, i64 -3
  %arrayidx576 = getelementptr inbounds i16, ptr %add.ptr575, i64 3
  store i16 %conv573, ptr %arrayidx576, align 2
  %264 = load ptr, ptr %c.addr, align 8
  %incdec.ptr577 = getelementptr inbounds i8, ptr %264, i32 1
  store ptr %incdec.ptr577, ptr %c.addr, align 8
  %265 = load i8, ptr %264, align 1
  %conv578 = zext i8 %265 to i32
  %and579 = and i32 %conv578, 31
  %shl580 = shl i32 %and579, 1
  %conv581 = trunc i32 %shl580 to i16
  %266 = load ptr, ptr %target.addr, align 8
  %add.ptr582 = getelementptr inbounds i16, ptr %266, i64 62
  %add.ptr583 = getelementptr inbounds i16, ptr %add.ptr582, i64 -3
  %arrayidx584 = getelementptr inbounds i16, ptr %add.ptr583, i64 3
  store i16 %conv581, ptr %arrayidx584, align 2
  %267 = load ptr, ptr %c.addr, align 8
  %268 = load i8, ptr %267, align 1
  %conv585 = zext i8 %268 to i32
  %shr586 = ashr i32 %conv585, 7
  %and587 = and i32 %shr586, 1
  %269 = load ptr, ptr %target.addr, align 8
  %add.ptr588 = getelementptr inbounds i16, ptr %269, i64 62
  %add.ptr589 = getelementptr inbounds i16, ptr %add.ptr588, i64 -3
  %arrayidx590 = getelementptr inbounds i16, ptr %add.ptr589, i64 3
  %270 = load i16, ptr %arrayidx590, align 2
  %conv591 = sext i16 %270 to i32
  %or592 = or i32 %conv591, %and587
  %conv593 = trunc i32 %or592 to i16
  store i16 %conv593, ptr %arrayidx590, align 2
  %271 = load ptr, ptr %c.addr, align 8
  %272 = load i8, ptr %271, align 1
  %conv594 = zext i8 %272 to i32
  %shr595 = ashr i32 %conv594, 4
  %and596 = and i32 %shr595, 7
  %conv597 = trunc i32 %and596 to i16
  %273 = load ptr, ptr %target.addr, align 8
  %add.ptr598 = getelementptr inbounds i16, ptr %273, i64 63
  %add.ptr599 = getelementptr inbounds i16, ptr %add.ptr598, i64 -39
  %arrayidx600 = getelementptr inbounds i16, ptr %add.ptr599, i64 39
  store i16 %conv597, ptr %arrayidx600, align 2
  %274 = load ptr, ptr %c.addr, align 8
  %275 = load i8, ptr %274, align 1
  %conv601 = zext i8 %275 to i32
  %shr602 = ashr i32 %conv601, 1
  %and603 = and i32 %shr602, 7
  %conv604 = trunc i32 %and603 to i16
  %276 = load ptr, ptr %target.addr, align 8
  %add.ptr605 = getelementptr inbounds i16, ptr %276, i64 63
  %add.ptr606 = getelementptr inbounds i16, ptr %add.ptr605, i64 -39
  %arrayidx607 = getelementptr inbounds i16, ptr %add.ptr606, i64 40
  store i16 %conv604, ptr %arrayidx607, align 2
  %277 = load ptr, ptr %c.addr, align 8
  %incdec.ptr608 = getelementptr inbounds i8, ptr %277, i32 1
  store ptr %incdec.ptr608, ptr %c.addr, align 8
  %278 = load i8, ptr %277, align 1
  %conv609 = zext i8 %278 to i32
  %and610 = and i32 %conv609, 1
  %shl611 = shl i32 %and610, 2
  %conv612 = trunc i32 %shl611 to i16
  %279 = load ptr, ptr %target.addr, align 8
  %add.ptr613 = getelementptr inbounds i16, ptr %279, i64 63
  %add.ptr614 = getelementptr inbounds i16, ptr %add.ptr613, i64 -39
  %arrayidx615 = getelementptr inbounds i16, ptr %add.ptr614, i64 41
  store i16 %conv612, ptr %arrayidx615, align 2
  %280 = load ptr, ptr %c.addr, align 8
  %281 = load i8, ptr %280, align 1
  %conv616 = zext i8 %281 to i32
  %shr617 = ashr i32 %conv616, 6
  %and618 = and i32 %shr617, 3
  %282 = load ptr, ptr %target.addr, align 8
  %add.ptr619 = getelementptr inbounds i16, ptr %282, i64 63
  %add.ptr620 = getelementptr inbounds i16, ptr %add.ptr619, i64 -39
  %arrayidx621 = getelementptr inbounds i16, ptr %add.ptr620, i64 41
  %283 = load i16, ptr %arrayidx621, align 2
  %conv622 = sext i16 %283 to i32
  %or623 = or i32 %conv622, %and618
  %conv624 = trunc i32 %or623 to i16
  store i16 %conv624, ptr %arrayidx621, align 2
  %284 = load ptr, ptr %c.addr, align 8
  %285 = load i8, ptr %284, align 1
  %conv625 = zext i8 %285 to i32
  %shr626 = ashr i32 %conv625, 3
  %and627 = and i32 %shr626, 7
  %conv628 = trunc i32 %and627 to i16
  %286 = load ptr, ptr %target.addr, align 8
  %add.ptr629 = getelementptr inbounds i16, ptr %286, i64 63
  %add.ptr630 = getelementptr inbounds i16, ptr %add.ptr629, i64 -39
  %arrayidx631 = getelementptr inbounds i16, ptr %add.ptr630, i64 42
  store i16 %conv628, ptr %arrayidx631, align 2
  %287 = load ptr, ptr %c.addr, align 8
  %incdec.ptr632 = getelementptr inbounds i8, ptr %287, i32 1
  store ptr %incdec.ptr632, ptr %c.addr, align 8
  %288 = load i8, ptr %287, align 1
  %conv633 = zext i8 %288 to i32
  %and634 = and i32 %conv633, 7
  %conv635 = trunc i32 %and634 to i16
  %289 = load ptr, ptr %target.addr, align 8
  %add.ptr636 = getelementptr inbounds i16, ptr %289, i64 63
  %add.ptr637 = getelementptr inbounds i16, ptr %add.ptr636, i64 -39
  %arrayidx638 = getelementptr inbounds i16, ptr %add.ptr637, i64 43
  store i16 %conv635, ptr %arrayidx638, align 2
  %290 = load ptr, ptr %c.addr, align 8
  %291 = load i8, ptr %290, align 1
  %conv639 = zext i8 %291 to i32
  %shr640 = ashr i32 %conv639, 5
  %and641 = and i32 %shr640, 7
  %conv642 = trunc i32 %and641 to i16
  %292 = load ptr, ptr %target.addr, align 8
  %add.ptr643 = getelementptr inbounds i16, ptr %292, i64 63
  %add.ptr644 = getelementptr inbounds i16, ptr %add.ptr643, i64 -39
  %arrayidx645 = getelementptr inbounds i16, ptr %add.ptr644, i64 44
  store i16 %conv642, ptr %arrayidx645, align 2
  %293 = load ptr, ptr %c.addr, align 8
  %294 = load i8, ptr %293, align 1
  %conv646 = zext i8 %294 to i32
  %shr647 = ashr i32 %conv646, 2
  %and648 = and i32 %shr647, 7
  %conv649 = trunc i32 %and648 to i16
  %295 = load ptr, ptr %target.addr, align 8
  %add.ptr650 = getelementptr inbounds i16, ptr %295, i64 63
  %add.ptr651 = getelementptr inbounds i16, ptr %add.ptr650, i64 -39
  %arrayidx652 = getelementptr inbounds i16, ptr %add.ptr651, i64 45
  store i16 %conv649, ptr %arrayidx652, align 2
  %296 = load ptr, ptr %c.addr, align 8
  %incdec.ptr653 = getelementptr inbounds i8, ptr %296, i32 1
  store ptr %incdec.ptr653, ptr %c.addr, align 8
  %297 = load i8, ptr %296, align 1
  %conv654 = zext i8 %297 to i32
  %and655 = and i32 %conv654, 3
  %shl656 = shl i32 %and655, 1
  %conv657 = trunc i32 %shl656 to i16
  %298 = load ptr, ptr %target.addr, align 8
  %add.ptr658 = getelementptr inbounds i16, ptr %298, i64 63
  %add.ptr659 = getelementptr inbounds i16, ptr %add.ptr658, i64 -39
  %arrayidx660 = getelementptr inbounds i16, ptr %add.ptr659, i64 46
  store i16 %conv657, ptr %arrayidx660, align 2
  %299 = load ptr, ptr %c.addr, align 8
  %300 = load i8, ptr %299, align 1
  %conv661 = zext i8 %300 to i32
  %shr662 = ashr i32 %conv661, 7
  %and663 = and i32 %shr662, 1
  %301 = load ptr, ptr %target.addr, align 8
  %add.ptr664 = getelementptr inbounds i16, ptr %301, i64 63
  %add.ptr665 = getelementptr inbounds i16, ptr %add.ptr664, i64 -39
  %arrayidx666 = getelementptr inbounds i16, ptr %add.ptr665, i64 46
  %302 = load i16, ptr %arrayidx666, align 2
  %conv667 = sext i16 %302 to i32
  %or668 = or i32 %conv667, %and663
  %conv669 = trunc i32 %or668 to i16
  store i16 %conv669, ptr %arrayidx666, align 2
  %303 = load ptr, ptr %c.addr, align 8
  %304 = load i8, ptr %303, align 1
  %conv670 = zext i8 %304 to i32
  %shr671 = ashr i32 %conv670, 4
  %and672 = and i32 %shr671, 7
  %conv673 = trunc i32 %and672 to i16
  %305 = load ptr, ptr %target.addr, align 8
  %add.ptr674 = getelementptr inbounds i16, ptr %305, i64 63
  %add.ptr675 = getelementptr inbounds i16, ptr %add.ptr674, i64 -39
  %arrayidx676 = getelementptr inbounds i16, ptr %add.ptr675, i64 47
  store i16 %conv673, ptr %arrayidx676, align 2
  %306 = load ptr, ptr %c.addr, align 8
  %307 = load i8, ptr %306, align 1
  %conv677 = zext i8 %307 to i32
  %shr678 = ashr i32 %conv677, 1
  %and679 = and i32 %shr678, 7
  %conv680 = trunc i32 %and679 to i16
  %308 = load ptr, ptr %target.addr, align 8
  %add.ptr681 = getelementptr inbounds i16, ptr %308, i64 63
  %add.ptr682 = getelementptr inbounds i16, ptr %add.ptr681, i64 -39
  %arrayidx683 = getelementptr inbounds i16, ptr %add.ptr682, i64 48
  store i16 %conv680, ptr %arrayidx683, align 2
  %309 = load ptr, ptr %c.addr, align 8
  %incdec.ptr684 = getelementptr inbounds i8, ptr %309, i32 1
  store ptr %incdec.ptr684, ptr %c.addr, align 8
  %310 = load i8, ptr %309, align 1
  %conv685 = zext i8 %310 to i32
  %and686 = and i32 %conv685, 1
  %shl687 = shl i32 %and686, 2
  %conv688 = trunc i32 %shl687 to i16
  %311 = load ptr, ptr %target.addr, align 8
  %add.ptr689 = getelementptr inbounds i16, ptr %311, i64 63
  %add.ptr690 = getelementptr inbounds i16, ptr %add.ptr689, i64 -39
  %arrayidx691 = getelementptr inbounds i16, ptr %add.ptr690, i64 49
  store i16 %conv688, ptr %arrayidx691, align 2
  %312 = load ptr, ptr %c.addr, align 8
  %313 = load i8, ptr %312, align 1
  %conv692 = zext i8 %313 to i32
  %shr693 = ashr i32 %conv692, 6
  %and694 = and i32 %shr693, 3
  %314 = load ptr, ptr %target.addr, align 8
  %add.ptr695 = getelementptr inbounds i16, ptr %314, i64 63
  %add.ptr696 = getelementptr inbounds i16, ptr %add.ptr695, i64 -39
  %arrayidx697 = getelementptr inbounds i16, ptr %add.ptr696, i64 49
  %315 = load i16, ptr %arrayidx697, align 2
  %conv698 = sext i16 %315 to i32
  %or699 = or i32 %conv698, %and694
  %conv700 = trunc i32 %or699 to i16
  store i16 %conv700, ptr %arrayidx697, align 2
  %316 = load ptr, ptr %c.addr, align 8
  %317 = load i8, ptr %316, align 1
  %conv701 = zext i8 %317 to i32
  %shr702 = ashr i32 %conv701, 3
  %and703 = and i32 %shr702, 7
  %conv704 = trunc i32 %and703 to i16
  %318 = load ptr, ptr %target.addr, align 8
  %add.ptr705 = getelementptr inbounds i16, ptr %318, i64 63
  %add.ptr706 = getelementptr inbounds i16, ptr %add.ptr705, i64 -39
  %arrayidx707 = getelementptr inbounds i16, ptr %add.ptr706, i64 50
  store i16 %conv704, ptr %arrayidx707, align 2
  %319 = load ptr, ptr %c.addr, align 8
  %320 = load i8, ptr %319, align 1
  %conv708 = zext i8 %320 to i32
  %and709 = and i32 %conv708, 7
  %conv710 = trunc i32 %and709 to i16
  %321 = load ptr, ptr %target.addr, align 8
  %add.ptr711 = getelementptr inbounds i16, ptr %321, i64 63
  %add.ptr712 = getelementptr inbounds i16, ptr %add.ptr711, i64 -39
  %arrayidx713 = getelementptr inbounds i16, ptr %add.ptr712, i64 51
  store i16 %conv710, ptr %arrayidx713, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %322 = load i32, ptr %retval, align 4
  ret i32 %322
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
