; clang++ -std=c++20 -fcoroutines -S -emit-llvm -O0 -o main_llvm_ir_passes.ll main.cpp
; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::basic_istream" = type { ptr, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%struct.CoRet = type { %"struct.std::__1::coroutine_handle" }
%"struct.std::__1::coroutine_handle" = type { ptr }
%"struct.CoRet::promise_type" = type { i32, i32, %"class.std::exception_ptr" }
%"class.std::exception_ptr" = type { ptr }
%"struct.std::__1::suspend_never" = type { i8 }
%"struct.std::__1::coroutine_handle.0" = type { ptr }
%"struct.CoRet::Input" = type { ptr }
%"struct.std::__1::suspend_always" = type { i8 }
%_Z5GuessRN5CoRet4NoteE.Frame = type { ptr, ptr, %"struct.CoRet::promise_type", ptr, %"struct.CoRet::Input", %"struct.std::__1::coroutine_handle", i32, i32, i32, i2, %"struct.std::__1::suspend_never", %"struct.std::__1::suspend_always", %"struct.std::__1::suspend_always" }
%"struct.CoRet::Note" = type { i32 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.std::__1::ostreambuf_iterator" = type { ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", ptr, i32, [4 x i8] }>
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"class.std::__1::locale" = type { ptr }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"coroutine: Init Finish\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"coroutine: You guess \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", res: \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"main: make a guess ...\00", align 1
@_ZNSt3__13cinE = external global %"class.std::__1::basic_istream", align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"main: You input: \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"main: result is \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"larger\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"the same\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"smaller\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"main: the result is \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"something error! \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"coroutine: set res \00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define i64 @_Z5GuessRN5CoRet4NoteE(ptr noundef nonnull align 4 dereferenceable(4) %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %struct.CoRet, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.CoRet::promise_type", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"struct.std::__1::suspend_never", align 1
  %9 = alloca %"struct.std::__1::suspend_never", align 1
  %10 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %11 = alloca %"struct.std::__1::coroutine_handle", align 8
  %12 = alloca i32, align 4
  %13 = alloca %"struct.CoRet::Input", align 8
  %14 = alloca i32, align 4
  %15 = alloca %"struct.std::__1::coroutine_handle", align 8
  %16 = alloca i32, align 4
  %17 = alloca %"struct.std::__1::suspend_always", align 1
  %18 = alloca %"struct.std::__1::suspend_always", align 1
  %19 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %20 = alloca %"struct.std::__1::coroutine_handle", align 8
  %21 = alloca %"struct.std::__1::suspend_always", align 1
  %22 = alloca %"struct.std::__1::suspend_always", align 1
  %23 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %24 = alloca %"struct.std::__1::coroutine_handle", align 8
  store ptr %0, ptr %3, align 8
  br i1 true, label %27, label %25

25:                                               ; preds = %1
  %26 = phi ptr [ null, %1 ]
  br label %31

27:                                               ; preds = %1
  %28 = call noalias nonnull ptr @_Znwm(i64 noundef 72) #13
  br label %29

29:                                               ; preds = %27
  %30 = phi ptr [ %28, %27 ]
  br label %31

31:                                               ; preds = %25, %29
  %32 = phi ptr [ %26, %25 ], [ %30, %29 ]
  %33 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 0
  store ptr @_Z5GuessRN5CoRet4NoteE.resume, ptr %33, align 8
  %34 = select i1 true, ptr @_Z5GuessRN5CoRet4NoteE.destroy, ptr @_Z5GuessRN5CoRet4NoteE.cleanup
  %35 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 3
  %38 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 10
  %39 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 6
  %40 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 4
  %41 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 7
  %42 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 8
  %43 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 11
  %44 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 5
  %45 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 12
  %46 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 2
  br label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr %3, align 8
  store ptr %48, ptr %37, align 8
  %49 = call ptr @_ZN5CoRet12promise_typeC1Ev(ptr noundef %46) #14
  %50 = invoke i64 @_ZN5CoRet12promise_type17get_return_objectEv(ptr noundef %46)
          to label %51 unwind label %75

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %52, i32 0, i32 0
  %54 = inttoptr i64 %50 to ptr
  store ptr %54, ptr %53, align 8
  call void @_ZN5CoRet12promise_type15initial_suspendEv(ptr noundef %46)
  br label %55

55:                                               ; preds = %51
  %56 = call zeroext i1 @_ZNKSt3__113suspend_never11await_readyB8ne180100Ev(ptr noundef %38) #14
  br i1 %56, label %79, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 9
  store i2 0, ptr %58, align 1
  br label %59

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #14
  %60 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %32) #14
  %61 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %11, i32 0, i32 0
  %62 = inttoptr i64 %60 to ptr
  store ptr %62, ptr %61, align 8
  %63 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %11) #14
  %64 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %10, i32 0, i32 0
  %65 = inttoptr i64 %63 to ptr
  store ptr %65, ptr %64, align 8
  %66 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %10, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %67 to i64
  call void @_ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %38, i64 %68) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #14
  br label %69

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  switch i8 -1, label %269 [
    i8 0, label %79
    i8 1, label %72
  ]

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = phi i32 [ 2, %72 ]
  br label %82

75:                                               ; preds = %47
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  store ptr %77, ptr %6, align 8
  %78 = extractvalue { ptr, i32 } %76, 1
  store i32 %78, ptr %7, align 4
  br label %279

79:                                               ; preds = %71, %55
  call void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %38) #14
  br label %80

80:                                               ; preds = %79
  %81 = phi i32 [ 0, %79 ]
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi i32 [ %81, %80 ], [ %74, %73 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = phi i32 [ %83, %82 ]
  br label %262

87:                                               ; preds = %82
  %88 = invoke i32 @rand()
          to label %89 unwind label %117

89:                                               ; preds = %87
  %90 = srem i32 %88, 30
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %39, align 4
  %92 = getelementptr inbounds %"struct.CoRet::Input", ptr %40, i32 0, i32 0
  %93 = load ptr, ptr %37, align 8
  store ptr %93, ptr %92, align 8
  %94 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str)
          to label %95 unwind label %121

95:                                               ; preds = %89
  %96 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %94, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %97 unwind label %121

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %206, %97
  br label %99

99:                                               ; preds = %98
  %100 = call zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %40)
  br label %101

101:                                              ; preds = %99
  br i1 %100, label %129, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 9
  store i2 1, ptr %103, align 1
  br label %104

104:                                              ; preds = %102
  %105 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %32) #14
  %106 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %15, i32 0, i32 0
  %107 = inttoptr i64 %105 to ptr
  store ptr %107, ptr %106, align 8
  %108 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %15, i32 0, i32 0
  %109 = load ptr, ptr %108, align 8
  %110 = ptrtoint ptr %109 to i64
  call void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %40, i64 %110)
  br label %111

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  switch i8 -1, label %269 [
    i8 0, label %129
    i8 1, label %114
  ]

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = phi i32 [ 2, %114 ]
  br label %202

117:                                              ; preds = %87
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  store ptr %119, ptr %6, align 8
  %120 = extractvalue { ptr, i32 } %118, 1
  store i32 %120, ptr %7, align 4
  br label %219

121:                                              ; preds = %208, %95, %89
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  store ptr %123, ptr %6, align 8
  %124 = extractvalue { ptr, i32 } %122, 1
  store i32 %124, ptr %7, align 4
  br label %218

125:                                              ; preds = %141, %138, %136, %133, %131
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  store ptr %127, ptr %6, align 8
  %128 = extractvalue { ptr, i32 } %126, 1
  store i32 %128, ptr %7, align 4
  br label %207

129:                                              ; preds = %113, %101
  %130 = call i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %40)
  br label %131

131:                                              ; preds = %129
  store i32 %130, ptr %41, align 4
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.1)
          to label %133 unwind label %125

133:                                              ; preds = %131
  %134 = load i32, ptr %41, align 4
  %135 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %132, i32 noundef %134)
          to label %136 unwind label %125

136:                                              ; preds = %133
  %137 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef @.str.2)
          to label %138 unwind label %125

138:                                              ; preds = %136
  %139 = load i32, ptr %39, align 4
  %140 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %137, i32 noundef %139)
          to label %141 unwind label %125

141:                                              ; preds = %138
  %142 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %140, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %143 unwind label %125

143:                                              ; preds = %141
  %144 = load i32, ptr %39, align 4
  %145 = load i32, ptr %41, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147
  %149 = phi i32 [ 1, %147 ]
  br label %158

150:                                              ; preds = %143
  %151 = load i32, ptr %39, align 4
  %152 = load i32, ptr %41, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 0, i32 -1
  br label %156

156:                                              ; preds = %150
  %157 = phi i32 [ %155, %150 ]
  br label %158

158:                                              ; preds = %156, %148
  %159 = phi i32 [ %149, %148 ], [ %157, %156 ]
  store i32 %159, ptr %42, align 4
  %160 = load i32, ptr %42, align 4
  call void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %46, i32 noundef %160)
  br label %161

161:                                              ; preds = %158
  %162 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %43) #14
  br i1 %162, label %181, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 9
  store i2 -2, ptr %164, align 1
  br label %165

165:                                              ; preds = %163
  %166 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %32) #14
  %167 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %44, i32 0, i32 0
  %168 = inttoptr i64 %166 to ptr
  store ptr %168, ptr %167, align 8
  %169 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %44) #14
  %170 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %19, i32 0, i32 0
  %171 = inttoptr i64 %169 to ptr
  store ptr %171, ptr %170, align 8
  %172 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %19, i32 0, i32 0
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %43, i64 %174) #14
  br label %175

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  switch i8 -1, label %269 [
    i8 0, label %181
    i8 1, label %178
  ]

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  %180 = phi i32 [ 2, %178 ]
  br label %184

181:                                              ; preds = %177, %161
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %43) #14
  br label %182

182:                                              ; preds = %181
  %183 = phi i32 [ 0, %181 ]
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i32 [ %183, %182 ], [ %180, %179 ]
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = phi i32 [ %185, %184 ]
  br label %198

189:                                              ; preds = %184
  %190 = load i32, ptr %42, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  br label %193

193:                                              ; preds = %192
  %194 = phi i32 [ 5, %192 ]
  br label %198

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195
  %197 = phi i32 [ 0, %195 ]
  br label %198

198:                                              ; preds = %187, %196, %193
  %199 = phi i32 [ %188, %187 ], [ %194, %193 ], [ %197, %196 ]
  br label %200

200:                                              ; preds = %198
  %201 = phi i32 [ %199, %198 ]
  br label %202

202:                                              ; preds = %200, %115
  %203 = phi i32 [ %201, %200 ], [ %116, %115 ]
  switch i32 %203, label %204 [
    i32 0, label %206
    i32 5, label %208
  ]

204:                                              ; preds = %202
  %205 = phi i32 [ %203, %202 ]
  br label %213

206:                                              ; preds = %202
  br label %98, !llvm.loop !6

207:                                              ; preds = %125
  br label %218

208:                                              ; preds = %202
  %209 = load i32, ptr %39, align 4
  invoke void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %46, i32 noundef %209)
          to label %210 unwind label %121

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210
  %212 = phi i32 [ 3, %210 ]
  br label %213

213:                                              ; preds = %204, %211
  %214 = phi i32 [ %205, %204 ], [ %212, %211 ]
  %215 = icmp eq i32 %214, 3
  br i1 %215, label %226, label %216

216:                                              ; preds = %213
  %217 = phi i32 [ %214, %213 ]
  br label %262

218:                                              ; preds = %207, %121
  br label %219

219:                                              ; preds = %218, %117
  br label %220

220:                                              ; preds = %219
  %221 = load ptr, ptr %6, align 8
  %222 = call ptr @__cxa_begin_catch(ptr %221) #14
  call void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %46)
  br label %223

223:                                              ; preds = %220
  invoke void @__cxa_end_catch()
          to label %224 unwind label %247

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %213, %225
  call void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %46) #14
  %227 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %45) #14
  br i1 %227, label %251, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 0
  store ptr null, ptr %229, align 8
  %230 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %32, i32 0, i32 9
  store i2 -1, ptr %230, align 1
  br label %231

231:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #14
  %232 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %32) #14
  %233 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %24, i32 0, i32 0
  %234 = inttoptr i64 %232 to ptr
  store ptr %234, ptr %233, align 8
  %235 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %24) #14
  %236 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %23, i32 0, i32 0
  %237 = inttoptr i64 %235 to ptr
  store ptr %237, ptr %236, align 8
  %238 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %23, i32 0, i32 0
  %239 = load ptr, ptr %238, align 8
  %240 = ptrtoint ptr %239 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %45, i64 %240) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #14
  br label %241

241:                                              ; preds = %231
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  switch i8 -1, label %269 [
    i8 0, label %251
    i8 1, label %244
  ]

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  %246 = phi i32 [ 2, %244 ]
  br label %254

247:                                              ; preds = %223
  %248 = landingpad { ptr, i32 }
          cleanup
  %249 = extractvalue { ptr, i32 } %248, 0
  store ptr %249, ptr %6, align 8
  %250 = extractvalue { ptr, i32 } %248, 1
  store i32 %250, ptr %7, align 4
  br label %276

251:                                              ; preds = %243, %226
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %45) #14
  br label %252

252:                                              ; preds = %251
  %253 = phi i32 [ 0, %251 ]
  br label %254

254:                                              ; preds = %252, %245
  %255 = phi i32 [ %253, %252 ], [ %246, %245 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = phi i32 [ %255, %254 ]
  br label %262

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259
  %261 = phi i32 [ 0, %259 ]
  br label %262

262:                                              ; preds = %85, %257, %216, %260
  %263 = phi i32 [ %86, %85 ], [ %217, %216 ], [ %258, %257 ], [ %261, %260 ]
  %264 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %46) #14
  %265 = icmp ne ptr %32, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  call void @_ZdlPv(ptr noundef %32) #14
  br label %267

267:                                              ; preds = %262, %266
  switch i32 %263, label %289 [
    i32 0, label %268
    i32 2, label %269
  ]

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268, %267, %243, %177, %113, %71
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  %272 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %273 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %272, i32 0, i32 0
  %274 = load ptr, ptr %273, align 8
  %275 = ptrtoint ptr %274 to i64
  ret i64 %275

276:                                              ; preds = %247
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278, %75
  %280 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %46) #14
  %281 = icmp ne ptr %32, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call void @_ZdlPv(ptr noundef %32) #14
  br label %283

283:                                              ; preds = %279, %282
  br label %284

284:                                              ; preds = %283
  %285 = load ptr, ptr %6, align 8
  %286 = load i32, ptr %7, align 4
  %287 = insertvalue { ptr, i32 } poison, ptr %285, 0
  %288 = insertvalue { ptr, i32 } %287, i32 %286, 1
  resume { ptr, i32 } %288

289:                                              ; preds = %267
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeC1Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN5CoRet12promise_typeC2Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZN5CoRet12promise_type17get_return_objectEv(ptr noundef %0) #0 align 2 {
  %2 = alloca %struct.CoRet, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %6 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %8 = inttoptr i64 %6 to ptr
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type15initial_suspendEv(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113suspend_never11await_readyB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %0, i64 %1) #4 align 2 {
  %3 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %6 = inttoptr i64 %1 to ptr
  store ptr %6, ptr %5, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #4 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef %2) #14
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev(ptr noundef %4) #14
  %6 = call i64 @_ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv(ptr noundef %5) #14
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %8 = inttoptr i64 %6 to ptr
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

declare i32 @rand() #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i64 @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc(ptr noundef %7) #14
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, i64 noundef %8)
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %0, ptr noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec(ptr noundef %8, i8 noundef signext 10)
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef %3, i8 noundef signext %9)
  %11 = load ptr, ptr %2, align 8
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef %11)
  %13 = load ptr, ptr %2, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %0, i64 %1) #4 align 2 {
  %3 = alloca %"struct.std::__1::coroutine_handle", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %6 = inttoptr i64 %1 to ptr
  store ptr %6, ptr %5, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::Input", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.CoRet::Note", ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %0, i32 noundef %1) #4 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %5, i32 0, i32 0
  store i32 %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %0, i64 %1) #4 align 2 {
  %3 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %6 = inttoptr i64 %1 to ptr
  store ptr %6, ptr %5, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %0, i32 noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %5, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.11)
  %9 = load i32, ptr %4, align 4
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %8, i32 noundef %9)
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %10, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  ret void
}

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::exception_ptr", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @_ZSt17current_exceptionv(ptr sret(%"class.std::exception_ptr") align 8 %3) #14
  %5 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13exception_ptraSERKS_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %7 = call ptr @_ZNSt13exception_ptrD1Ev(ptr noundef %3) #14
  ret void
}

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN5CoRet12promise_typeD2Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define i32 @main(i32 noundef %0, ptr noundef %1) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.CoRet::Note", align 4
  %7 = alloca %struct.CoRet, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %8 = call i64 @time(ptr noundef null)
  %9 = trunc i64 %8 to i32
  call void @srand(i32 noundef %9)
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 4, i1 false)
  %10 = call i64 @_Z5GuessRN5CoRet4NoteE(ptr noundef nonnull align 4 dereferenceable(4) %6)
  %11 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %11, i32 0, i32 0
  %13 = inttoptr i64 %10 to ptr
  store ptr %13, ptr %12, align 8
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.3)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %14, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  br label %16

16:                                               ; preds = %2, %51
  %17 = getelementptr inbounds %"struct.CoRet::Note", ptr %6, i32 0, i32 0
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(ptr noundef @_ZNSt3__13cinE, ptr noundef nonnull align 4 dereferenceable(4) %17)
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.4)
  %20 = getelementptr inbounds %"struct.CoRet::Note", ptr %6, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %19, i32 noundef %21)
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %22, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  %24 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  call void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev(ptr noundef %24)
  %25 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  call void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev(ptr noundef %25)
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.5)
  %27 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %27)
  %29 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %41

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %35 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %34)
  %36 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, ptr @.str.7, ptr @.str.8
  br label %41

41:                                               ; preds = %33, %32
  %42 = phi ptr [ @.str.6, %32 ], [ %40, %33 ]
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %42)
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %43, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  %45 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %46 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %45)
  %47 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %52

51:                                               ; preds = %41
  br label %16, !llvm.loop !8

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %54 = call zeroext i1 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev(ptr noundef %53)
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.9)
  %57 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %58 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %57)
  %59 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %56, i32 noundef %60)
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %61, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  %63 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  call void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev(ptr noundef %63)
  br label %72

64:                                               ; preds = %52
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.10)
  %66 = getelementptr inbounds %struct.CoRet, ptr %7, i32 0, i32 0
  %67 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %66)
  %68 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %65, i32 noundef %69)
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %70, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
  br label %72

72:                                               ; preds = %64, %55
  ret i32 0
}

declare void @srand(i32 noundef) #5

declare i64 @time(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev(ptr noundef %0) #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = bitcast ptr %7 to ptr
  call fastcc void %8(ptr %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i32 16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  ret i1 %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev(ptr noundef %0) #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = bitcast ptr %7 to ptr
  call fastcc void %8(ptr %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeC2Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %3, i32 0, i32 2
  %5 = call ptr @_ZNSt13exception_ptrC1B8ne180100Ev(ptr noundef %4) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt13exception_ptrC1B8ne180100Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt13exception_ptrC2B8ne180100Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt13exception_ptrC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::exception_ptr", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef %2) #14
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds i8, ptr %5, i32 -16
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv(ptr noundef %0) #4 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIvEC1Ev(ptr noundef %2) #14
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIvEC1Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIvEC2Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIvEC2Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr sret(%"class.std::exception_ptr") align 8) #10

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13exception_ptraSERKS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) #10

; Function Attrs: nounwind
declare ptr @_ZNSt13exception_ptrD1Ev(ptr noundef returned) unnamed_addr #10

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeD2Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %3, i32 0, i32 2
  %5 = call ptr @_ZNSt13exception_ptrD1Ev(ptr noundef %4) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %11 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = invoke ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %14 unwind label %68

14:                                               ; preds = %3
  %15 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev(ptr noundef %7)
          to label %16 unwind label %72

16:                                               ; preds = %14
  br i1 %15, label %17, label %89

17:                                               ; preds = %16
  %18 = load ptr, ptr %4, align 8
  %19 = call ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %18) #14
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i64 -24
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = invoke i32 @_ZNKSt3__18ios_base5flagsB8ne180100Ev(ptr noundef %25)
          to label %27 unwind label %72

27:                                               ; preds = %17
  %28 = and i32 %26, 176
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8
  %32 = load i64, ptr %6, align 8
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  br label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr %5, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %33, %30 ], [ %35, %34 ]
  %38 = load ptr, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i64 -24
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i64 -24
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev(ptr noundef %50)
          to label %52 unwind label %72

52:                                               ; preds = %36
  %53 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %11, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %54 to i64
  %56 = invoke i64 @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %55, ptr noundef %20, ptr noundef %37, ptr noundef %40, ptr noundef nonnull align 8 dereferenceable(136) %45, i8 noundef signext %51)
          to label %57 unwind label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %10, i32 0, i32 0
  %59 = inttoptr i64 %56 to ptr
  store ptr %59, ptr %58, align 8
  %60 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev(ptr noundef %10) #14
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr i8, ptr %63, i64 -24
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej(ptr noundef %66, i32 noundef 5)
          to label %67 unwind label %72

67:                                               ; preds = %61
  br label %88

68:                                               ; preds = %3
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %8, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %9, align 4
  br label %77

72:                                               ; preds = %61, %52, %36, %17, %14
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  store ptr %74, ptr %8, align 8
  %75 = extractvalue { ptr, i32 } %73, 1
  store i32 %75, ptr %9, align 4
  %76 = call ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef %7) #14
  br label %77

77:                                               ; preds = %72, %68
  %78 = load ptr, ptr %8, align 8
  %79 = call ptr @__cxa_begin_catch(ptr %78) #14
  %80 = load ptr, ptr %4, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr i8, ptr %81, i64 -24
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef %84)
          to label %85 unwind label %91

85:                                               ; preds = %77
  call void @__cxa_end_catch()
  br label %86

86:                                               ; preds = %85, %89
  %87 = load ptr, ptr %4, align 8
  ret ptr %87

88:                                               ; preds = %67, %57
  br label %89

89:                                               ; preds = %88, %16
  %90 = call ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef %7) #14
  br label %86

91:                                               ; preds = %77
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = extractvalue { ptr, i32 } %92, 0
  store ptr %93, ptr %8, align 8
  %94 = extractvalue { ptr, i32 } %92, 1
  store i32 %94, ptr %9, align 4
  invoke void @__cxa_end_catch()
          to label %95 unwind label %101

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %8, align 8
  %98 = load i32, ptr %9, align 4
  %99 = insertvalue { ptr, i32 } poison, ptr %97, 0
  %100 = insertvalue { ptr, i32 } %99, i32 %98, 1
  resume { ptr, i32 } %100

101:                                              ; preds = %91
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = invoke i64 @_ZNSt3__118__constexpr_strlenB8ne180100EPKc(ptr noundef %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret i64 %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #15
  unreachable
}

declare ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef returned, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", ptr %3, i32 0, i32 0
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef signext %5) #0 personality ptr @__gxx_personality_v0 {
  %7 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %8 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %"class.std::__1::basic_string", align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  %22 = inttoptr i64 %0 to ptr
  store ptr %22, ptr %21, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store i8 %5, ptr %13, align 1
  %23 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 8, i1 false)
  br label %111

27:                                               ; preds = %6
  %28 = load ptr, ptr %11, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, ptr %14, align 8
  %33 = load ptr, ptr %12, align 8
  %34 = call i64 @_ZNKSt3__18ios_base5widthB8ne180100Ev(ptr noundef %33)
  store i64 %34, ptr %15, align 8
  %35 = load i64, ptr %15, align 8
  %36 = load i64, ptr %14, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i64, ptr %14, align 8
  %40 = load i64, ptr %15, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, ptr %15, align 8
  br label %43

42:                                               ; preds = %27
  store i64 0, ptr %15, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %10, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, ptr %16, align 8
  %49 = load i64, ptr %16, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %9, align 8
  %55 = load i64, ptr %16, align 8
  %56 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl(ptr noundef %53, ptr noundef %54, i64 noundef %55)
  %57 = load i64, ptr %16, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  store ptr null, ptr %60, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 8, i1 false)
  br label %111

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i64, ptr %15, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i64, ptr %15, align 8
  %67 = load i8, ptr %13, align 1
  %68 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc(ptr noundef %17, i64 noundef %66, i8 noundef signext %67)
  %69 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8
  %71 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev(ptr noundef %17) #14
  %72 = load i64, ptr %15, align 8
  %73 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl(ptr noundef %70, ptr noundef %71, i64 noundef %72)
          to label %74 unwind label %79

74:                                               ; preds = %65
  %75 = load i64, ptr %15, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  store ptr null, ptr %78, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 8, i1 false)
  store i32 1, ptr %20, align 4
  br label %85

79:                                               ; preds = %65
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  store ptr %81, ptr %18, align 8
  %82 = extractvalue { ptr, i32 } %80, 1
  store i32 %82, ptr %19, align 4
  %83 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %17) #14
  br label %115

84:                                               ; preds = %74
  store i32 0, ptr %20, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %17) #14
  %87 = load i32, ptr %20, align 4
  switch i32 %87, label %120 [
    i32 0, label %88
    i32 1, label %111
  ]

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %62
  %90 = load ptr, ptr %11, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = ptrtoint ptr %90 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  store i64 %94, ptr %16, align 8
  %95 = load i64, ptr %16, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = load i64, ptr %16, align 8
  %102 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl(ptr noundef %99, ptr noundef %100, i64 noundef %101)
  %103 = load i64, ptr %16, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %8, i32 0, i32 0
  store ptr null, ptr %106, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 8, i1 false)
  br label %111

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %89
  %109 = load ptr, ptr %12, align 8
  %110 = call i64 @_ZNSt3__18ios_base5widthB8ne180100El(ptr noundef %109, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 8, i1 false)
  br label %111

111:                                              ; preds = %108, %105, %85, %59, %26
  %112 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %7, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8
  %114 = ptrtoint ptr %113 to i64
  ret i64 %114

115:                                              ; preds = %79
  %116 = load ptr, ptr %18, align 8
  %117 = load i32, ptr %19, align 4
  %118 = insertvalue { ptr, i32 } poison, ptr %116, 0
  %119 = insertvalue { ptr, i32 } %118, i32 %117, 1
  resume { ptr, i32 } %119

120:                                              ; preds = %85
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i32 @_ZNKSt3__18ios_base5flagsB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev(ptr noundef %0) #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev() #14
  %5 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii(i32 noundef %4, i32 noundef %6) #14
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec(ptr noundef %3, i8 noundef signext 32)
  %10 = sext i8 %9 to i32
  %11 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %3, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej(ptr noundef %0, i32 noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  call void @_ZNSt3__18ios_base8setstateB8ne180100Ej(ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind
declare ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef returned) unnamed_addr #10

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__18ios_base5widthB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = call i64 %12(ptr noundef %7, ptr noundef %8, i64 noundef %9)
  ret i64 %13
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc(ptr noundef returned %0, i64 noundef %1, i8 noundef signext %2) unnamed_addr #12 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i8, ptr %6, align 1
  %10 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc(ptr noundef %7, i64 noundef %8, i8 noundef signext %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev(ptr noundef %3) #14
  %5 = call ptr @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_(ptr noundef %4) #14
  ret ptr %5
}

; Function Attrs: nounwind
declare ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef returned) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18ios_base5widthB8ne180100El(ptr noundef %0, i64 noundef %1) #4 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::ios_base", ptr %6, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::__1::ios_base", ptr %6, i32 0, i32 3
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %5, align 8
  ret i64 %11
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc(ptr noundef returned %0, i64 noundef %1, i8 noundef signext %2) unnamed_addr #12 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::__1::basic_string", ptr %9, i32 0, i32 0
  %11 = call ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %12 = load i64, ptr %5, align 8
  %13 = load i8, ptr %6, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef %9, i64 noundef %12, i8 noundef signext %13)
  ret ptr %9
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #12 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef, i64 noundef, i8 noundef signext) #5

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #12 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef %9)
  %12 = load ptr, ptr %6, align 8
  %13 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef %9)
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %4, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorIcEC2B8ne180100Ev(ptr noundef %4) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIcEC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #3 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_(ptr noundef %0) #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev(ptr noundef %3) #14
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev(ptr noundef %3) #14
  br label %9

7:                                                ; preds = %1
  %8 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev(ptr noundef %3) #14
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #14
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 7
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #14
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #14
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds [23 x i8], ptr %7, i64 0, i64 0
  %9 = call ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = invoke ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev(ptr noundef %11)
          to label %13 unwind label %14

13:                                               ; preds = %2
  store ptr %12, ptr %6, align 8
  ret ptr %5

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev(ptr noundef %0) #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__18ios_base5rdbufB8ne180100Ev(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__18ios_base5rdbufB8ne180100Ev(ptr noundef %0) #4 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii(i32 noundef %0, i32 noundef %1) #4 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %5, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i32 @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev() #4 align 2 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec(ptr noundef %0, i8 noundef signext %1) #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__1::locale", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %8 = load ptr, ptr %3, align 8
  call void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8 %5, ptr noundef %8)
  %9 = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %10 unwind label %15

10:                                               ; preds = %2
  %11 = load i8, ptr %4, align 1
  %12 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenB8ne180100Ec(ptr noundef %9, i8 noundef signext %11)
          to label %13 unwind label %15

13:                                               ; preds = %10
  %14 = call ptr @_ZNSt3__16localeD1Ev(ptr noundef %5) #14
  ret i8 %12

15:                                               ; preds = %10, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %6, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %7, align 4
  %19 = call ptr @_ZNSt3__16localeD1Ev(ptr noundef %5) #14
  br label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %7, align 4
  %23 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %4
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8, ptr noundef) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__15ctypeIcE5widenB8ne180100Ec(ptr noundef %0, i8 noundef signext %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %4, align 1
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  %10 = call signext i8 %9(ptr noundef %5, i8 noundef signext %6)
  ret i8 %10
}

; Function Attrs: nounwind
declare ptr @_ZNSt3__16localeD1Ev(ptr noundef returned) unnamed_addr #10

declare ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB8ne180100Ej(ptr noundef %0, i32 noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::ios_base", ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = or i32 %7, %8
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef %5, i32 noundef %9)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__118__constexpr_strlenB8ne180100EPKc(ptr noundef %0) #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #14
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef, i8 noundef signext) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal fastcc void @_Z5GuessRN5CoRet4NoteE.resume(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %4 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %5 = alloca %"struct.std::__1::coroutine_handle", align 8
  %6 = alloca %"struct.std::__1::coroutine_handle", align 8
  %7 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.CoRet, align 8
  %12 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 10
  %14 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 11
  %19 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 12
  %21 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 2
  br label %234

22:                                               ; preds = %234
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  switch i8 0, label %222 [
    i8 0, label %28
    i8 1, label %25
  ]

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = phi i32 [ 2, %25 ]
  br label %31

28:                                               ; preds = %24
  call void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %13) #14
  br label %29

29:                                               ; preds = %28
  %30 = phi i32 [ 0, %28 ]
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ %27, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = phi i32 [ %32, %31 ]
  br label %215

36:                                               ; preds = %31
  %37 = invoke i32 @rand()
          to label %38 unwind label %68

38:                                               ; preds = %36
  %39 = srem i32 %37, 30
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %14, align 4
  %41 = getelementptr inbounds %"struct.CoRet::Input", ptr %15, i32 0, i32 0
  %42 = load ptr, ptr %12, align 8
  store ptr %42, ptr %41, align 8
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str)
          to label %44 unwind label %72

44:                                               ; preds = %38
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %43, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %46 unwind label %72

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %159, %46
  br label %48

48:                                               ; preds = %47
  %49 = call zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %15)
  br label %50

50:                                               ; preds = %48
  br i1 %49, label %80, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %51
  %54 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %55 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %56 = inttoptr i64 %54 to ptr
  store ptr %56, ptr %55, align 8
  %57 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %58 to i64
  call void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %15, i64 %59)
  br label %60

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %234
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i8 [ -1, %60 ], [ 0, %61 ]
  br label %64

64:                                               ; preds = %62
  switch i8 %63, label %222 [
    i8 0, label %80
    i8 1, label %65
  ]

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = phi i32 [ 2, %65 ]
  br label %155

68:                                               ; preds = %36
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %9, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %8, align 4
  br label %172

72:                                               ; preds = %161, %44, %38
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  store ptr %74, ptr %9, align 8
  %75 = extractvalue { ptr, i32 } %73, 1
  store i32 %75, ptr %8, align 4
  br label %171

76:                                               ; preds = %92, %89, %87, %84, %82
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  store ptr %78, ptr %9, align 8
  %79 = extractvalue { ptr, i32 } %77, 1
  store i32 %79, ptr %8, align 4
  br label %160

80:                                               ; preds = %64, %50
  %81 = call i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %15)
  br label %82

82:                                               ; preds = %80
  store i32 %81, ptr %16, align 4
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.1)
          to label %84 unwind label %76

84:                                               ; preds = %82
  %85 = load i32, ptr %16, align 4
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %83, i32 noundef %85)
          to label %87 unwind label %76

87:                                               ; preds = %84
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef @.str.2)
          to label %89 unwind label %76

89:                                               ; preds = %87
  %90 = load i32, ptr %14, align 4
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %88, i32 noundef %90)
          to label %92 unwind label %76

92:                                               ; preds = %89
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %91, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %94 unwind label %76

94:                                               ; preds = %92
  %95 = load i32, ptr %14, align 4
  %96 = load i32, ptr %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = phi i32 [ 1, %98 ]
  br label %109

101:                                              ; preds = %94
  %102 = load i32, ptr %14, align 4
  %103 = load i32, ptr %16, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 -1
  br label %107

107:                                              ; preds = %101
  %108 = phi i32 [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi i32 [ %100, %99 ], [ %108, %107 ]
  store i32 %110, ptr %17, align 4
  %111 = load i32, ptr %17, align 4
  call void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %21, i32 noundef %111)
  br label %112

112:                                              ; preds = %109
  %113 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %18) #14
  br i1 %113, label %134, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -2, ptr %115, align 1
  br label %116

116:                                              ; preds = %114
  %117 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %118 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %19, i32 0, i32 0
  %119 = inttoptr i64 %117 to ptr
  store ptr %119, ptr %118, align 8
  %120 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %19) #14
  %121 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %122 = inttoptr i64 %120 to ptr
  store ptr %122, ptr %121, align 8
  %123 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %124 = load ptr, ptr %123, align 8
  %125 = ptrtoint ptr %124 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %18, i64 %125) #14
  br label %126

126:                                              ; preds = %116
  br label %128

127:                                              ; preds = %234
  br label %128

128:                                              ; preds = %127, %126
  %129 = phi i8 [ -1, %126 ], [ 0, %127 ]
  br label %130

130:                                              ; preds = %128
  switch i8 %129, label %222 [
    i8 0, label %134
    i8 1, label %131
  ]

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = phi i32 [ 2, %131 ]
  br label %137

134:                                              ; preds = %130, %112
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %18) #14
  br label %135

135:                                              ; preds = %134
  %136 = phi i32 [ 0, %134 ]
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i32 [ %136, %135 ], [ %133, %132 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = phi i32 [ %138, %137 ]
  br label %151

142:                                              ; preds = %137
  %143 = load i32, ptr %17, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145
  %147 = phi i32 [ 5, %145 ]
  br label %151

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  %150 = phi i32 [ 0, %148 ]
  br label %151

151:                                              ; preds = %149, %146, %140
  %152 = phi i32 [ %141, %140 ], [ %147, %146 ], [ %150, %149 ]
  br label %153

153:                                              ; preds = %151
  %154 = phi i32 [ %152, %151 ]
  br label %155

155:                                              ; preds = %153, %66
  %156 = phi i32 [ %154, %153 ], [ %67, %66 ]
  switch i32 %156, label %157 [
    i32 0, label %159
    i32 5, label %161
  ]

157:                                              ; preds = %155
  %158 = phi i32 [ %156, %155 ]
  br label %166

159:                                              ; preds = %155
  br label %47, !llvm.loop !6

160:                                              ; preds = %76
  br label %171

161:                                              ; preds = %155
  %162 = load i32, ptr %14, align 4
  invoke void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %21, i32 noundef %162)
          to label %163 unwind label %72

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163
  %165 = phi i32 [ 3, %163 ]
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %164 ]
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = phi i32 [ %167, %166 ]
  br label %215

171:                                              ; preds = %160, %72
  br label %172

172:                                              ; preds = %171, %68
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %9, align 8
  %175 = call ptr @__cxa_begin_catch(ptr %174) #14
  call void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %21)
  br label %176

176:                                              ; preds = %173
  invoke void @__cxa_end_catch()
          to label %177 unwind label %200

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %166
  call void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %21) #14
  %180 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %20) #14
  br i1 %180, label %204, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %183, align 1
  br label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #14
  %185 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %186 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %187 = inttoptr i64 %185 to ptr
  store ptr %187, ptr %186, align 8
  %188 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %2) #14
  %189 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %190 = inttoptr i64 %188 to ptr
  store ptr %190, ptr %189, align 8
  %191 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = ptrtoint ptr %192 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %20, i64 %193) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #14
  br label %194

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  switch i8 -1, label %222 [
    i8 0, label %204
    i8 1, label %197
  ]

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  %199 = phi i32 [ 2, %197 ]
  br label %207

200:                                              ; preds = %176
  %201 = landingpad { ptr, i32 }
          cleanup
  %202 = extractvalue { ptr, i32 } %201, 0
  store ptr %202, ptr %9, align 8
  %203 = extractvalue { ptr, i32 } %201, 1
  store i32 %203, ptr %8, align 4
  br label %224

204:                                              ; preds = %196, %179
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %20) #14
  br label %205

205:                                              ; preds = %204
  %206 = phi i32 [ 0, %204 ]
  br label %207

207:                                              ; preds = %205, %198
  %208 = phi i32 [ %206, %205 ], [ %199, %198 ]
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %207
  %211 = phi i32 [ %208, %207 ]
  br label %215

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212
  %214 = phi i32 [ 0, %212 ]
  br label %215

215:                                              ; preds = %213, %210, %169, %34
  %216 = phi i32 [ %35, %34 ], [ %170, %169 ], [ %211, %210 ], [ %214, %213 ]
  %217 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %21) #14
  %218 = icmp ne ptr %0, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  call void @_ZdlPv(ptr noundef %0) #14
  br label %220

220:                                              ; preds = %219, %215
  switch i32 %216, label %233 [
    i32 0, label %221
    i32 2, label %222
  ]

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221, %220, %196, %130, %64, %24
  br label %223

223:                                              ; preds = %222
  ret void

224:                                              ; preds = %200
  %225 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %225, align 8
  %226 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %226, align 1
  br label %227

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %227
  %229 = load ptr, ptr %9, align 8
  %230 = load i32, ptr %8, align 4
  %231 = insertvalue { ptr, i32 } poison, ptr %229, 0
  %232 = insertvalue { ptr, i32 } %231, i32 %230, 1
  resume { ptr, i32 } %232

233:                                              ; preds = %220
  unreachable

234:                                              ; preds = %1
  %235 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  %236 = load i2, ptr %235, align 1
  switch i2 %236, label %237 [
    i2 0, label %22
    i2 1, label %61
    i2 -2, label %127
  ]

237:                                              ; preds = %234
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal fastcc void @_Z5GuessRN5CoRet4NoteE.destroy(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %4 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %5 = alloca %"struct.std::__1::coroutine_handle", align 8
  %6 = alloca %"struct.std::__1::coroutine_handle", align 8
  %7 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.CoRet, align 8
  %12 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 10
  %14 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 11
  %19 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 12
  %21 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 2
  br label %236

22:                                               ; preds = %236
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  switch i8 1, label %224 [
    i8 0, label %28
    i8 1, label %25
  ]

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = phi i32 [ 2, %25 ]
  br label %31

28:                                               ; preds = %24
  call void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %13) #14
  br label %29

29:                                               ; preds = %28
  %30 = phi i32 [ 0, %28 ]
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ %27, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = phi i32 [ %32, %31 ]
  br label %217

36:                                               ; preds = %31
  %37 = invoke i32 @rand()
          to label %38 unwind label %68

38:                                               ; preds = %36
  %39 = srem i32 %37, 30
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %14, align 4
  %41 = getelementptr inbounds %"struct.CoRet::Input", ptr %15, i32 0, i32 0
  %42 = load ptr, ptr %12, align 8
  store ptr %42, ptr %41, align 8
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str)
          to label %44 unwind label %72

44:                                               ; preds = %38
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %43, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %46 unwind label %72

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %159, %46
  br label %48

48:                                               ; preds = %47
  %49 = call zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %15)
  br label %50

50:                                               ; preds = %48
  br i1 %49, label %80, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %51
  %54 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %55 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %56 = inttoptr i64 %54 to ptr
  store ptr %56, ptr %55, align 8
  %57 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %58 to i64
  call void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %15, i64 %59)
  br label %60

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %236
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i8 [ -1, %60 ], [ 1, %61 ]
  br label %64

64:                                               ; preds = %62
  switch i8 %63, label %224 [
    i8 0, label %80
    i8 1, label %65
  ]

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = phi i32 [ 2, %65 ]
  br label %155

68:                                               ; preds = %36
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %9, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %8, align 4
  br label %172

72:                                               ; preds = %161, %44, %38
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  store ptr %74, ptr %9, align 8
  %75 = extractvalue { ptr, i32 } %73, 1
  store i32 %75, ptr %8, align 4
  br label %171

76:                                               ; preds = %92, %89, %87, %84, %82
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  store ptr %78, ptr %9, align 8
  %79 = extractvalue { ptr, i32 } %77, 1
  store i32 %79, ptr %8, align 4
  br label %160

80:                                               ; preds = %64, %50
  %81 = call i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %15)
  br label %82

82:                                               ; preds = %80
  store i32 %81, ptr %16, align 4
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.1)
          to label %84 unwind label %76

84:                                               ; preds = %82
  %85 = load i32, ptr %16, align 4
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %83, i32 noundef %85)
          to label %87 unwind label %76

87:                                               ; preds = %84
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef @.str.2)
          to label %89 unwind label %76

89:                                               ; preds = %87
  %90 = load i32, ptr %14, align 4
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %88, i32 noundef %90)
          to label %92 unwind label %76

92:                                               ; preds = %89
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %91, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %94 unwind label %76

94:                                               ; preds = %92
  %95 = load i32, ptr %14, align 4
  %96 = load i32, ptr %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = phi i32 [ 1, %98 ]
  br label %109

101:                                              ; preds = %94
  %102 = load i32, ptr %14, align 4
  %103 = load i32, ptr %16, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 -1
  br label %107

107:                                              ; preds = %101
  %108 = phi i32 [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi i32 [ %100, %99 ], [ %108, %107 ]
  store i32 %110, ptr %17, align 4
  %111 = load i32, ptr %17, align 4
  call void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %21, i32 noundef %111)
  br label %112

112:                                              ; preds = %109
  %113 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %18) #14
  br i1 %113, label %134, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -2, ptr %115, align 1
  br label %116

116:                                              ; preds = %114
  %117 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %118 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %19, i32 0, i32 0
  %119 = inttoptr i64 %117 to ptr
  store ptr %119, ptr %118, align 8
  %120 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %19) #14
  %121 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %122 = inttoptr i64 %120 to ptr
  store ptr %122, ptr %121, align 8
  %123 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %124 = load ptr, ptr %123, align 8
  %125 = ptrtoint ptr %124 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %18, i64 %125) #14
  br label %126

126:                                              ; preds = %116
  br label %128

127:                                              ; preds = %236
  br label %128

128:                                              ; preds = %127, %126
  %129 = phi i8 [ -1, %126 ], [ 1, %127 ]
  br label %130

130:                                              ; preds = %128
  switch i8 %129, label %224 [
    i8 0, label %134
    i8 1, label %131
  ]

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = phi i32 [ 2, %131 ]
  br label %137

134:                                              ; preds = %130, %112
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %18) #14
  br label %135

135:                                              ; preds = %134
  %136 = phi i32 [ 0, %134 ]
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i32 [ %136, %135 ], [ %133, %132 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = phi i32 [ %138, %137 ]
  br label %151

142:                                              ; preds = %137
  %143 = load i32, ptr %17, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145
  %147 = phi i32 [ 5, %145 ]
  br label %151

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  %150 = phi i32 [ 0, %148 ]
  br label %151

151:                                              ; preds = %149, %146, %140
  %152 = phi i32 [ %141, %140 ], [ %147, %146 ], [ %150, %149 ]
  br label %153

153:                                              ; preds = %151
  %154 = phi i32 [ %152, %151 ]
  br label %155

155:                                              ; preds = %153, %66
  %156 = phi i32 [ %154, %153 ], [ %67, %66 ]
  switch i32 %156, label %157 [
    i32 0, label %159
    i32 5, label %161
  ]

157:                                              ; preds = %155
  %158 = phi i32 [ %156, %155 ]
  br label %166

159:                                              ; preds = %155
  br label %47, !llvm.loop !6

160:                                              ; preds = %76
  br label %171

161:                                              ; preds = %155
  %162 = load i32, ptr %14, align 4
  invoke void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %21, i32 noundef %162)
          to label %163 unwind label %72

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163
  %165 = phi i32 [ 3, %163 ]
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %164 ]
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = phi i32 [ %167, %166 ]
  br label %217

171:                                              ; preds = %160, %72
  br label %172

172:                                              ; preds = %171, %68
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %9, align 8
  %175 = call ptr @__cxa_begin_catch(ptr %174) #14
  call void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %21)
  br label %176

176:                                              ; preds = %173
  invoke void @__cxa_end_catch()
          to label %177 unwind label %202

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %166
  call void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %21) #14
  %180 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %20) #14
  br i1 %180, label %206, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %183, align 1
  br label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #14
  %185 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %186 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %187 = inttoptr i64 %185 to ptr
  store ptr %187, ptr %186, align 8
  %188 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %2) #14
  %189 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %190 = inttoptr i64 %188 to ptr
  store ptr %190, ptr %189, align 8
  %191 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = ptrtoint ptr %192 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %20, i64 %193) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #14
  br label %194

194:                                              ; preds = %184
  br label %196

195:                                              ; preds = %236
  br label %196

196:                                              ; preds = %195, %194
  %197 = phi i8 [ -1, %194 ], [ 1, %195 ]
  br label %198

198:                                              ; preds = %196
  switch i8 %197, label %224 [
    i8 0, label %206
    i8 1, label %199
  ]

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  %201 = phi i32 [ 2, %199 ]
  br label %209

202:                                              ; preds = %176
  %203 = landingpad { ptr, i32 }
          cleanup
  %204 = extractvalue { ptr, i32 } %203, 0
  store ptr %204, ptr %9, align 8
  %205 = extractvalue { ptr, i32 } %203, 1
  store i32 %205, ptr %8, align 4
  br label %226

206:                                              ; preds = %198, %179
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %20) #14
  br label %207

207:                                              ; preds = %206
  %208 = phi i32 [ 0, %206 ]
  br label %209

209:                                              ; preds = %207, %200
  %210 = phi i32 [ %208, %207 ], [ %201, %200 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = phi i32 [ %210, %209 ]
  br label %217

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214
  %216 = phi i32 [ 0, %214 ]
  br label %217

217:                                              ; preds = %215, %212, %169, %34
  %218 = phi i32 [ %35, %34 ], [ %170, %169 ], [ %213, %212 ], [ %216, %215 ]
  %219 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %21) #14
  %220 = icmp ne ptr %0, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  call void @_ZdlPv(ptr noundef %0) #14
  br label %222

222:                                              ; preds = %221, %217
  switch i32 %218, label %235 [
    i32 0, label %223
    i32 2, label %224
  ]

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %222, %198, %130, %64, %24
  br label %225

225:                                              ; preds = %224
  ret void

226:                                              ; preds = %202
  %227 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %227, align 8
  %228 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %228, align 1
  br label %229

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %9, align 8
  %232 = load i32, ptr %8, align 4
  %233 = insertvalue { ptr, i32 } poison, ptr %231, 0
  %234 = insertvalue { ptr, i32 } %233, i32 %232, 1
  resume { ptr, i32 } %234

235:                                              ; preds = %222
  unreachable

236:                                              ; preds = %1
  %237 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  %238 = load i2, ptr %237, align 1
  switch i2 %238, label %239 [
    i2 0, label %22
    i2 1, label %61
    i2 -2, label %127
    i2 -1, label %195
  ]

239:                                              ; preds = %236
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal fastcc void @_Z5GuessRN5CoRet4NoteE.cleanup(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %4 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %5 = alloca %"struct.std::__1::coroutine_handle", align 8
  %6 = alloca %"struct.std::__1::coroutine_handle", align 8
  %7 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.CoRet, align 8
  %12 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 10
  %14 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 11
  %19 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 12
  %21 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 2
  br label %236

22:                                               ; preds = %236
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  switch i8 1, label %224 [
    i8 0, label %28
    i8 1, label %25
  ]

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = phi i32 [ 2, %25 ]
  br label %31

28:                                               ; preds = %24
  call void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %13) #14
  br label %29

29:                                               ; preds = %28
  %30 = phi i32 [ 0, %28 ]
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ %27, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = phi i32 [ %32, %31 ]
  br label %217

36:                                               ; preds = %31
  %37 = invoke i32 @rand()
          to label %38 unwind label %68

38:                                               ; preds = %36
  %39 = srem i32 %37, 30
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %14, align 4
  %41 = getelementptr inbounds %"struct.CoRet::Input", ptr %15, i32 0, i32 0
  %42 = load ptr, ptr %12, align 8
  store ptr %42, ptr %41, align 8
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str)
          to label %44 unwind label %72

44:                                               ; preds = %38
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %43, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %46 unwind label %72

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %159, %46
  br label %48

48:                                               ; preds = %47
  %49 = call zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %15)
  br label %50

50:                                               ; preds = %48
  br i1 %49, label %80, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %51
  %54 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %55 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %56 = inttoptr i64 %54 to ptr
  store ptr %56, ptr %55, align 8
  %57 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %5, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %58 to i64
  call void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %15, i64 %59)
  br label %60

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %236
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i8 [ -1, %60 ], [ 1, %61 ]
  br label %64

64:                                               ; preds = %62
  switch i8 %63, label %224 [
    i8 0, label %80
    i8 1, label %65
  ]

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = phi i32 [ 2, %65 ]
  br label %155

68:                                               ; preds = %36
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %9, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %8, align 4
  br label %172

72:                                               ; preds = %161, %44, %38
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  store ptr %74, ptr %9, align 8
  %75 = extractvalue { ptr, i32 } %73, 1
  store i32 %75, ptr %8, align 4
  br label %171

76:                                               ; preds = %92, %89, %87, %84, %82
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  store ptr %78, ptr %9, align 8
  %79 = extractvalue { ptr, i32 } %77, 1
  store i32 %79, ptr %8, align 4
  br label %160

80:                                               ; preds = %64, %50
  %81 = call i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %15)
  br label %82

82:                                               ; preds = %80
  store i32 %81, ptr %16, align 4
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.1)
          to label %84 unwind label %76

84:                                               ; preds = %82
  %85 = load i32, ptr %16, align 4
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %83, i32 noundef %85)
          to label %87 unwind label %76

87:                                               ; preds = %84
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef @.str.2)
          to label %89 unwind label %76

89:                                               ; preds = %87
  %90 = load i32, ptr %14, align 4
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %88, i32 noundef %90)
          to label %92 unwind label %76

92:                                               ; preds = %89
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %91, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %94 unwind label %76

94:                                               ; preds = %92
  %95 = load i32, ptr %14, align 4
  %96 = load i32, ptr %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = phi i32 [ 1, %98 ]
  br label %109

101:                                              ; preds = %94
  %102 = load i32, ptr %14, align 4
  %103 = load i32, ptr %16, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 -1
  br label %107

107:                                              ; preds = %101
  %108 = phi i32 [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi i32 [ %100, %99 ], [ %108, %107 ]
  store i32 %110, ptr %17, align 4
  %111 = load i32, ptr %17, align 4
  call void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %21, i32 noundef %111)
  br label %112

112:                                              ; preds = %109
  %113 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %18) #14
  br i1 %113, label %134, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -2, ptr %115, align 1
  br label %116

116:                                              ; preds = %114
  %117 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %118 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %19, i32 0, i32 0
  %119 = inttoptr i64 %117 to ptr
  store ptr %119, ptr %118, align 8
  %120 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %19) #14
  %121 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %122 = inttoptr i64 %120 to ptr
  store ptr %122, ptr %121, align 8
  %123 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %4, i32 0, i32 0
  %124 = load ptr, ptr %123, align 8
  %125 = ptrtoint ptr %124 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %18, i64 %125) #14
  br label %126

126:                                              ; preds = %116
  br label %128

127:                                              ; preds = %236
  br label %128

128:                                              ; preds = %127, %126
  %129 = phi i8 [ -1, %126 ], [ 1, %127 ]
  br label %130

130:                                              ; preds = %128
  switch i8 %129, label %224 [
    i8 0, label %134
    i8 1, label %131
  ]

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = phi i32 [ 2, %131 ]
  br label %137

134:                                              ; preds = %130, %112
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %18) #14
  br label %135

135:                                              ; preds = %134
  %136 = phi i32 [ 0, %134 ]
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i32 [ %136, %135 ], [ %133, %132 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = phi i32 [ %138, %137 ]
  br label %151

142:                                              ; preds = %137
  %143 = load i32, ptr %17, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145
  %147 = phi i32 [ 5, %145 ]
  br label %151

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  %150 = phi i32 [ 0, %148 ]
  br label %151

151:                                              ; preds = %149, %146, %140
  %152 = phi i32 [ %141, %140 ], [ %147, %146 ], [ %150, %149 ]
  br label %153

153:                                              ; preds = %151
  %154 = phi i32 [ %152, %151 ]
  br label %155

155:                                              ; preds = %153, %66
  %156 = phi i32 [ %154, %153 ], [ %67, %66 ]
  switch i32 %156, label %157 [
    i32 0, label %159
    i32 5, label %161
  ]

157:                                              ; preds = %155
  %158 = phi i32 [ %156, %155 ]
  br label %166

159:                                              ; preds = %155
  br label %47, !llvm.loop !6

160:                                              ; preds = %76
  br label %171

161:                                              ; preds = %155
  %162 = load i32, ptr %14, align 4
  invoke void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %21, i32 noundef %162)
          to label %163 unwind label %72

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163
  %165 = phi i32 [ 3, %163 ]
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %164 ]
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = phi i32 [ %167, %166 ]
  br label %217

171:                                              ; preds = %160, %72
  br label %172

172:                                              ; preds = %171, %68
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %9, align 8
  %175 = call ptr @__cxa_begin_catch(ptr %174) #14
  call void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %21)
  br label %176

176:                                              ; preds = %173
  invoke void @__cxa_end_catch()
          to label %177 unwind label %202

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %166
  call void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %21) #14
  %180 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %20) #14
  br i1 %180, label %206, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %183, align 1
  br label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #14
  %185 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #14
  %186 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %187 = inttoptr i64 %185 to ptr
  store ptr %187, ptr %186, align 8
  %188 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %2) #14
  %189 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %190 = inttoptr i64 %188 to ptr
  store ptr %190, ptr %189, align 8
  %191 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = ptrtoint ptr %192 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %20, i64 %193) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #14
  br label %194

194:                                              ; preds = %184
  br label %196

195:                                              ; preds = %236
  br label %196

196:                                              ; preds = %195, %194
  %197 = phi i8 [ -1, %194 ], [ 1, %195 ]
  br label %198

198:                                              ; preds = %196
  switch i8 %197, label %224 [
    i8 0, label %206
    i8 1, label %199
  ]

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  %201 = phi i32 [ 2, %199 ]
  br label %209

202:                                              ; preds = %176
  %203 = landingpad { ptr, i32 }
          cleanup
  %204 = extractvalue { ptr, i32 } %203, 0
  store ptr %204, ptr %9, align 8
  %205 = extractvalue { ptr, i32 } %203, 1
  store i32 %205, ptr %8, align 4
  br label %226

206:                                              ; preds = %198, %179
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %20) #14
  br label %207

207:                                              ; preds = %206
  %208 = phi i32 [ 0, %206 ]
  br label %209

209:                                              ; preds = %207, %200
  %210 = phi i32 [ %208, %207 ], [ %201, %200 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = phi i32 [ %210, %209 ]
  br label %217

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214
  %216 = phi i32 [ 0, %214 ]
  br label %217

217:                                              ; preds = %215, %212, %169, %34
  %218 = phi i32 [ %35, %34 ], [ %170, %169 ], [ %213, %212 ], [ %216, %215 ]
  %219 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %21) #14
  %220 = icmp ne ptr null, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  call void @_ZdlPv(ptr noundef null) #14
  br label %222

222:                                              ; preds = %221, %217
  switch i32 %218, label %235 [
    i32 0, label %223
    i32 2, label %224
  ]

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %222, %198, %130, %64, %24
  br label %225

225:                                              ; preds = %224
  ret void

226:                                              ; preds = %202
  %227 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 0
  store ptr null, ptr %227, align 8
  %228 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  store i2 -1, ptr %228, align 1
  br label %229

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %9, align 8
  %232 = load i32, ptr %8, align 4
  %233 = insertvalue { ptr, i32 } poison, ptr %231, 0
  %234 = insertvalue { ptr, i32 } %233, i32 %232, 1
  resume { ptr, i32 } %234

235:                                              ; preds = %222
  unreachable

236:                                              ; preds = %1
  %237 = getelementptr inbounds %_Z5GuessRN5CoRet4NoteE.Frame, ptr %0, i32 0, i32 9
  %238 = load i2, ptr %237, align 1
  switch i2 %238, label %239 [
    i2 0, label %22
    i2 1, label %61
    i2 -2, label %127
    i2 -1, label %195
  ]

239:                                              ; preds = %236
  unreachable
}

attributes #0 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #6 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #8 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #13 = { allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 16.0.0 (clang-1600.0.26.4)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
