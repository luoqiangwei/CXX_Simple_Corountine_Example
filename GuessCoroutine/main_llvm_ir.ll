; clang++ -std=c++20 -fcoroutines -S -emit-llvm -O0 -Xclang -disable-llvm-passes -o main_llvm_ir.ll main.cpp
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

; Function Attrs: mustprogress noinline optnone presplitcoroutine ssp uwtable(sync)
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
  %25 = bitcast ptr %5 to ptr
  %26 = call token @llvm.coro.id(i32 16, ptr %25, ptr null, ptr null)
  %27 = call i1 @llvm.coro.alloc(token %26)
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i64 @llvm.coro.size.i64()
  %30 = call noalias nonnull ptr @_Znwm(i64 noundef %29) #20
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi ptr [ null, %1 ], [ %30, %28 ]
  %33 = call ptr @llvm.coro.begin(token %26, ptr %32)
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #2
  %34 = load ptr, ptr %3, align 8
  store ptr %34, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %5) #2
  %35 = call ptr @_ZN5CoRet12promise_typeC1Ev(ptr noundef %5) #2
  %36 = invoke i64 @_ZN5CoRet12promise_type17get_return_objectEv(ptr noundef %5)
          to label %37 unwind label %56

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %39 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %38, i32 0, i32 0
  %40 = inttoptr i64 %36 to ptr
  store ptr %40, ptr %39, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #2
  invoke void @_ZN5CoRet12promise_type15initial_suspendEv(ptr noundef %5)
          to label %41 unwind label %60

41:                                               ; preds = %37
  %42 = call zeroext i1 @_ZNKSt3__113suspend_never11await_readyB8ne180100Ev(ptr noundef %8) #2
  br i1 %42, label %64, label %43

43:                                               ; preds = %41
  %44 = call token @llvm.coro.save(ptr null)
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #2
  %45 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %33) #2
  %46 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %11, i32 0, i32 0
  %47 = inttoptr i64 %45 to ptr
  store ptr %47, ptr %46, align 8
  %48 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %11) #2
  %49 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %10, i32 0, i32 0
  %50 = inttoptr i64 %48 to ptr
  store ptr %50, ptr %49, align 8
  %51 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %10, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %52 to i64
  call void @_ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %8, i64 %53) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #2
  %54 = call i8 @llvm.coro.suspend(token %44, i1 false)
  switch i8 %54, label %215 [
    i8 0, label %64
    i8 1, label %55
  ]

55:                                               ; preds = %43
  br label %65

56:                                               ; preds = %31
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  store ptr %58, ptr %6, align 8
  %59 = extractvalue { ptr, i32 } %57, 1
  store i32 %59, ptr %7, align 4
  br label %224

60:                                               ; preds = %37
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = extractvalue { ptr, i32 } %61, 0
  store ptr %62, ptr %6, align 8
  %63 = extractvalue { ptr, i32 } %61, 1
  store i32 %63, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #2
  br label %221

64:                                               ; preds = %43, %41
  call void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %8) #2
  br label %65

65:                                               ; preds = %64, %55
  %66 = phi i32 [ 0, %64 ], [ 2, %55 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #2
  switch i32 %66, label %207 [
    i32 0, label %67
  ]

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #2
  %68 = invoke i32 @rand()
          to label %69 unwind label %93

69:                                               ; preds = %67
  %70 = srem i32 %68, 30
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #2
  %72 = getelementptr inbounds %"struct.CoRet::Input", ptr %13, i32 0, i32 0
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %72, align 8
  %74 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str)
          to label %75 unwind label %97

75:                                               ; preds = %69
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %74, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %77 unwind label %97

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %164, %77
  br label %79

79:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #2
  %80 = invoke zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %13)
          to label %81 unwind label %101

81:                                               ; preds = %79
  br i1 %80, label %105, label %82

82:                                               ; preds = %81
  %83 = call token @llvm.coro.save(ptr null)
  %84 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %33) #2
  %85 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %15, i32 0, i32 0
  %86 = inttoptr i64 %84 to ptr
  store ptr %86, ptr %85, align 8
  %87 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %15, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = ptrtoint ptr %88 to i64
  invoke void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %13, i64 %89)
          to label %90 unwind label %101

90:                                               ; preds = %82
  %91 = call i8 @llvm.coro.suspend(token %83, i1 false)
  switch i8 %91, label %215 [
    i8 0, label %105
    i8 1, label %92
  ]

92:                                               ; preds = %90
  br label %162

93:                                               ; preds = %67
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  store ptr %95, ptr %6, align 8
  %96 = extractvalue { ptr, i32 } %94, 1
  store i32 %96, ptr %7, align 4
  br label %172

97:                                               ; preds = %166, %75, %69
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  store ptr %99, ptr %6, align 8
  %100 = extractvalue { ptr, i32 } %98, 1
  store i32 %100, ptr %7, align 4
  br label %171

101:                                              ; preds = %117, %114, %112, %109, %107, %105, %82, %79
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  store ptr %103, ptr %6, align 8
  %104 = extractvalue { ptr, i32 } %102, 1
  store i32 %104, ptr %7, align 4
  br label %165

105:                                              ; preds = %90, %81
  %106 = invoke i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %13)
          to label %107 unwind label %101

107:                                              ; preds = %105
  store i32 %106, ptr %14, align 4
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, ptr noundef @.str.1)
          to label %109 unwind label %101

109:                                              ; preds = %107
  %110 = load i32, ptr %14, align 4
  %111 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %108, i32 noundef %110)
          to label %112 unwind label %101

112:                                              ; preds = %109
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef @.str.2)
          to label %114 unwind label %101

114:                                              ; preds = %112
  %115 = load i32, ptr %12, align 4
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef %113, i32 noundef %115)
          to label %117 unwind label %101

117:                                              ; preds = %114
  %118 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %116, ptr noundef @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_)
          to label %119 unwind label %101

119:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #2
  %120 = load i32, ptr %12, align 4
  %121 = load i32, ptr %14, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %130

124:                                              ; preds = %119
  %125 = load i32, ptr %12, align 4
  %126 = load i32, ptr %14, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 -1
  br label %130

130:                                              ; preds = %124, %123
  %131 = phi i32 [ 1, %123 ], [ %129, %124 ]
  store i32 %131, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %17) #2
  %132 = load i32, ptr %16, align 4
  invoke void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %5, i32 noundef %132)
          to label %133 unwind label %148

133:                                              ; preds = %130
  %134 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %17) #2
  br i1 %134, label %152, label %135

135:                                              ; preds = %133
  %136 = call token @llvm.coro.save(ptr null)
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #2
  %137 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %33) #2
  %138 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %20, i32 0, i32 0
  %139 = inttoptr i64 %137 to ptr
  store ptr %139, ptr %138, align 8
  %140 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %20) #2
  %141 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %19, i32 0, i32 0
  %142 = inttoptr i64 %140 to ptr
  store ptr %142, ptr %141, align 8
  %143 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %19, i32 0, i32 0
  %144 = load ptr, ptr %143, align 8
  %145 = ptrtoint ptr %144 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %17, i64 %145) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #2
  %146 = call i8 @llvm.coro.suspend(token %136, i1 false)
  switch i8 %146, label %215 [
    i8 0, label %152
    i8 1, label %147
  ]

147:                                              ; preds = %135
  br label %153

148:                                              ; preds = %130
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  store ptr %150, ptr %6, align 8
  %151 = extractvalue { ptr, i32 } %149, 1
  store i32 %151, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %17) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #2
  br label %165

152:                                              ; preds = %135, %133
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %17) #2
  br label %153

153:                                              ; preds = %152, %147
  %154 = phi i32 [ 0, %152 ], [ 2, %147 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %17) #2
  switch i32 %154, label %160 [
    i32 0, label %155
  ]

155:                                              ; preds = %153
  %156 = load i32, ptr %16, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %160

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %158, %153
  %161 = phi i32 [ %154, %153 ], [ 5, %158 ], [ 0, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #2
  br label %162

162:                                              ; preds = %160, %92
  %163 = phi i32 [ %161, %160 ], [ 2, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #2
  switch i32 %163, label %169 [
    i32 0, label %164
    i32 5, label %166
  ]

164:                                              ; preds = %162
  br label %78, !llvm.loop !6

165:                                              ; preds = %148, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #2
  br label %171

166:                                              ; preds = %162
  %167 = load i32, ptr %12, align 4
  invoke void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %5, i32 noundef %167)
          to label %168 unwind label %97

168:                                              ; preds = %166
  br label %169

169:                                              ; preds = %168, %162
  %170 = phi i32 [ %163, %162 ], [ 3, %168 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #2
  switch i32 %170, label %207 [
    i32 3, label %179
  ]

171:                                              ; preds = %165, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #2
  br label %172

172:                                              ; preds = %171, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #2
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %6, align 8
  %175 = call ptr @__cxa_begin_catch(ptr %174) #2
  invoke void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %5)
          to label %176 unwind label %194

176:                                              ; preds = %173
  invoke void @__cxa_end_catch()
          to label %177 unwind label %198

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %169
  call void @llvm.lifetime.start.p0(i64 1, ptr %21) #2
  call void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %5) #2
  %180 = call zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %21) #2
  br i1 %180, label %203, label %181

181:                                              ; preds = %179
  %182 = call token @llvm.coro.save(ptr null)
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #2
  %183 = call i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %33) #2
  %184 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %24, i32 0, i32 0
  %185 = inttoptr i64 %183 to ptr
  store ptr %185, ptr %184, align 8
  %186 = call i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %24) #2
  %187 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %23, i32 0, i32 0
  %188 = inttoptr i64 %186 to ptr
  store ptr %188, ptr %187, align 8
  %189 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %23, i32 0, i32 0
  %190 = load ptr, ptr %189, align 8
  %191 = ptrtoint ptr %190 to i64
  call void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %21, i64 %191) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #2
  %192 = call i8 @llvm.coro.suspend(token %182, i1 true)
  switch i8 %192, label %215 [
    i8 0, label %203
    i8 1, label %193
  ]

193:                                              ; preds = %181
  br label %204

194:                                              ; preds = %173
  %195 = landingpad { ptr, i32 }
          cleanup
  %196 = extractvalue { ptr, i32 } %195, 0
  store ptr %196, ptr %6, align 8
  %197 = extractvalue { ptr, i32 } %195, 1
  store i32 %197, ptr %7, align 4
  invoke void @__cxa_end_catch()
          to label %202 unwind label %235

198:                                              ; preds = %176
  %199 = landingpad { ptr, i32 }
          cleanup
  %200 = extractvalue { ptr, i32 } %199, 0
  store ptr %200, ptr %6, align 8
  %201 = extractvalue { ptr, i32 } %199, 1
  store i32 %201, ptr %7, align 4
  br label %221

202:                                              ; preds = %194
  br label %221

203:                                              ; preds = %181, %179
  call void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %21) #2
  br label %204

204:                                              ; preds = %203, %193
  %205 = phi i32 [ 0, %203 ], [ 2, %193 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %21) #2
  switch i32 %205, label %207 [
    i32 0, label %206
  ]

206:                                              ; preds = %204
  br label %207

207:                                              ; preds = %206, %204, %169, %65
  %208 = phi i32 [ %66, %65 ], [ %170, %169 ], [ %205, %204 ], [ 0, %206 ]
  %209 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %5) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr %5) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #2
  %210 = call ptr @llvm.coro.free(token %26, ptr %33)
  %211 = icmp ne ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  call void @_ZdlPv(ptr noundef %210) #2
  br label %213

213:                                              ; preds = %207, %212
  switch i32 %208, label %238 [
    i32 0, label %214
    i32 2, label %215
  ]

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %213, %181, %135, %90, %43
  %216 = call i1 @llvm.coro.end(ptr null, i1 false)
  %217 = getelementptr inbounds %struct.CoRet, ptr %2, i32 0, i32 0
  %218 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %217, i32 0, i32 0
  %219 = load ptr, ptr %218, align 8
  %220 = ptrtoint ptr %219 to i64
  ret i64 %220

221:                                              ; preds = %202, %198, %60
  %222 = call i1 @llvm.coro.end(ptr null, i1 true)
  br i1 %222, label %230, label %223

223:                                              ; preds = %221
  br label %224

224:                                              ; preds = %223, %56
  %225 = call ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef %5) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr %5) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #2
  %226 = call ptr @llvm.coro.free(token %26, ptr %33)
  %227 = icmp ne ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  call void @_ZdlPv(ptr noundef %226) #2
  br label %229

229:                                              ; preds = %224, %228
  br label %230

230:                                              ; preds = %229, %221
  %231 = load ptr, ptr %6, align 8
  %232 = load i32, ptr %7, align 4
  %233 = insertvalue { ptr, i32 } poison, ptr %231, 0
  %234 = insertvalue { ptr, i32 } %233, i32 %232, 1
  resume { ptr, i32 } %234

235:                                              ; preds = %194
  %236 = landingpad { ptr, i32 }
          catch ptr null
  %237 = extractvalue { ptr, i32 } %236, 0
  call void @__clang_call_terminate(ptr %237) #21
  unreachable

238:                                              ; preds = %213
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nobuiltin allocsize(0)
declare nonnull ptr @_Znwm(i64 noundef) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #4

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeC1Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN5CoRet12promise_typeC2Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZN5CoRet12promise_type17get_return_objectEv(ptr noundef %0) #7 align 2 {
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
define linkonce_odr void @_ZN5CoRet12promise_type15initial_suspendEv(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113suspend_never11await_readyB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 true
}

; Function Attrs: nomerge nounwind
declare token @llvm.coro.save(ptr) #9

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %0, i64 %1) #8 align 2 {
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
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv(ptr noundef %0) #8 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef %2) #2
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev(ptr noundef %4) #2
  %6 = call i64 @_ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv(ptr noundef %5) #2
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %8 = inttoptr i64 %6 to ptr
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

declare i32 @rand() #10

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #7 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i64 @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc(ptr noundef %7) #2
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, i64 noundef %8)
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E(ptr noundef %0, ptr noundef %1) #7 align 2 {
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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 {
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
define linkonce_odr zeroext i1 @_ZN5CoRet5Input11await_readyEv(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE(ptr noundef %0, i64 %1) #8 align 2 {
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
define linkonce_odr i32 @_ZN5CoRet5Input12await_resumeEv(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::Input", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.CoRet::Note", ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef, i32 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type11yield_valueEi(ptr noundef %0, i32 noundef %1) #8 align 2 {
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
define linkonce_odr hidden zeroext i1 @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE(ptr noundef %0, i64 %1) #8 align 2 {
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
define linkonce_odr hidden void @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type12return_valueEi(ptr noundef %0, i32 noundef %1) #7 align 2 {
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
define linkonce_odr void @_ZN5CoRet12promise_type19unhandled_exceptionEv(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::exception_ptr", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @_ZSt17current_exceptionv(ptr sret(%"class.std::exception_ptr") align 8 %3) #2
  %5 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13exception_ptraSERKS_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #2
  %7 = call ptr @_ZNSt13exception_ptrD1Ev(ptr noundef %3) #2
  ret void
}

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #11 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #2
  call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5CoRet12promise_type13final_suspendEv(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeD1Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN5CoRet12promise_typeD2Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #13

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define i32 @main(i32 noundef %0, ptr noundef %1) #14 {
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

declare void @srand(i32 noundef) #10

declare i64 @time(ptr noundef) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) #10

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev(ptr noundef %0) #7 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  call void @llvm.coro.resume(ptr %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call i1 @llvm.coro.done(ptr %5)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev(ptr noundef %0) #7 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  call void @llvm.coro.destroy(ptr %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeC2Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %3, i32 0, i32 2
  %5 = call ptr @_ZNSt13exception_ptrC1B8ne180100Ev(ptr noundef %4) #2
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt13exception_ptrC1B8ne180100Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt13exception_ptrC2B8ne180100Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt13exception_ptrC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::exception_ptr", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef %2) #2
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 true)
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv(ptr noundef %0) #8 align 2 {
  %2 = alloca %"struct.std::__1::coroutine_handle.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIvEC1Ev(ptr noundef %2) #2
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIvEC1Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116coroutine_handleIvEC2Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__116coroutine_handleIvEC2Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::coroutine_handle.0", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr sret(%"class.std::exception_ptr") align 8) #16

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13exception_ptraSERKS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) #16

; Function Attrs: nounwind
declare ptr @_ZNSt13exception_ptrD1Ev(ptr noundef returned) unnamed_addr #16

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZN5CoRet12promise_typeD2Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.CoRet::promise_type", ptr %3, i32 0, i32 2
  %5 = call ptr @_ZNSt13exception_ptrD1Ev(ptr noundef %4) #2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) #7 personality ptr @__gxx_personality_v0 {
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
  %19 = call ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %18) #2
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
  %60 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev(ptr noundef %10) #2
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
  %76 = call ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef %7) #2
  br label %77

77:                                               ; preds = %72, %68
  %78 = load ptr, ptr %8, align 8
  %79 = call ptr @__cxa_begin_catch(ptr %78) #2
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
  %90 = call ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef %7) #2
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
  call void @__clang_call_terminate(ptr %103) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc(ptr noundef %0) #8 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %8) #21
  unreachable
}

declare ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef returned, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", ptr %3, i32 0, i32 0
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef signext %5) #7 personality ptr @__gxx_personality_v0 {
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
  %71 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev(ptr noundef %17) #2
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
  %83 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %17) #2
  br label %115

84:                                               ; preds = %74
  store i32 0, ptr %20, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %17) #2
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
define linkonce_odr hidden ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #2
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i32 @_ZNKSt3__18ios_base5flagsB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev(ptr noundef %0) #7 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev() #2
  %5 = getelementptr inbounds %"class.std::__1::basic_ios", ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii(i32 noundef %4, i32 noundef %6) #2
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
define linkonce_odr hidden zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej(ptr noundef %0, i32 noundef %1) #7 align 2 {
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
declare ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef returned) unnamed_addr #16

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__18ios_base5widthB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7 align 2 {
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
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc(ptr noundef returned %0, i64 noundef %1, i8 noundef signext %2) unnamed_addr #18 align 2 {
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
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev(ptr noundef %3) #2
  %5 = call ptr @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_(ptr noundef %4) #2
  ret ptr %5
}

; Function Attrs: nounwind
declare ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef returned) unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18ios_base5widthB8ne180100El(ptr noundef %0, i64 noundef %1) #8 align 2 {
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
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc(ptr noundef returned %0, i64 noundef %1, i8 noundef signext %2) unnamed_addr #18 align 2 {
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
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #18 align 2 {
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

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(ptr noundef, i64 noundef, i8 noundef signext) #10

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #18 align 2 {
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
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %4, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorIcEC2B8ne180100Ev(ptr noundef %4) #2
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIcEC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev(ptr noundef %3) #2
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev(ptr noundef returned %0) unnamed_addr #6 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_(ptr noundef %0) #8 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev(ptr noundef %3) #2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev(ptr noundef %3) #2
  br label %9

7:                                                ; preds = %1
  %8 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev(ptr noundef %3) #2
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #2
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 7
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #2
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %4) #2
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds [23 x i8], ptr %7, i64 0, i64 0
  %9 = call ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc(ptr noundef nonnull align 1 dereferenceable(1) %8) #2
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %3) #2
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %3) #2
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc(ptr noundef nonnull align 1 dereferenceable(1) %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %16) #21
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev(ptr noundef %0) #7 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__18ios_base5rdbufB8ne180100Ev(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__18ios_base5rdbufB8ne180100Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii(i32 noundef %0, i32 noundef %1) #8 align 2 {
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
define linkonce_odr hidden i32 @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev() #8 align 2 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec(ptr noundef %0, i8 noundef signext %1) #7 align 2 personality ptr @__gxx_personality_v0 {
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
  %14 = call ptr @_ZNSt3__16localeD1Ev(ptr noundef %5) #2
  ret i8 %12

15:                                               ; preds = %10, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %6, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %7, align 4
  %19 = call ptr @_ZNSt3__16localeD1Ev(ptr noundef %5) #2
  br label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %7, align 4
  %23 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  ret ptr %4
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr sret(%"class.std::__1::locale") align 8, ptr noundef) #10

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden signext i8 @_ZNKSt3__15ctypeIcE5widenB8ne180100Ec(ptr noundef %0, i8 noundef signext %1) #7 align 2 {
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
declare ptr @_ZNSt3__16localeD1Ev(ptr noundef returned) unnamed_addr #16

declare ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) #10

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB8ne180100Ej(ptr noundef %0, i32 noundef %1) #7 align 2 {
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

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef, i32 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__118__constexpr_strlenB8ne180100EPKc(ptr noundef %0) #8 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #2
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef, i8 noundef signext) #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef) #10

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #19

declare void @llvm.coro.destroy(ptr)

attributes #0 = { mustprogress noinline optnone presplitcoroutine ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #7 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #8 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #9 = { nomerge nounwind }
attributes #10 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #11 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #13 = { nounwind memory(argmem: read) }
attributes #14 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #19 = { nounwind memory(argmem: readwrite) }
attributes #20 = { allocsize(0) }
attributes #21 = { noreturn nounwind }

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
