;;; Example_1.cpp
; #include <iostream>

; struct A {
;     virtual void f();
; };

; struct B : virtual A {
;     virtual void f();
; };

; struct C : B, virtual A {
;     using A::f;
; };

; void foo() {
;     C c;
;     c.f();
;     c.C::f();
; }

;;; Build Command
;  "/Applications/Xcode12.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang" -cc1 -triple x86_64-apple-macosx10.15.0 -Wdeprecated-objc-isa-usage -Werror=deprecated-objc-isa-usage -Werror=implicit-function-declaration -emit-llvm -disable-free -disable-llvm-verifier -discard-value-names -main-file-name Example_1.cpp -mrelocation-model pic -pic-level 2 -mthread-model posix -mframe-pointer=all -fno-strict-return -masm-verbose -munwind-tables -target-sdk-version=10.15.6 -fcompatibility-qualified-id-block-type-checking -target-cpu penryn -dwarf-column-info -debugger-tuning=lldb -target-linker-version 609 -v -resource-dir /Applications/Xcode12.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/12.0.0 -isysroot /Applications/Xcode12.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I/usr/local/include -stdlib=libc++ -internal-isystem /Applications/Xcode12.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1 -internal-isystem /Applications/Xcode12.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include -internal-isystem /Applications/Xcode12.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/12.0.0/include -internal-externc-isystem /Applications/Xcode12.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -internal-externc-isystem /Applications/Xcode12.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -Wno-reorder-init-list -Wno-implicit-int-float-conversion -Wno-c99-designator -Wno-final-dtor-non-final-class -Wno-extra-semi-stmt -Wno-misleading-indentation -Wno-quoted-include-in-framework-header -Wno-implicit-fallthrough -Wno-enum-enum-conversion -Wno-enum-float-conversion -fdeprecated-macro -fdebug-compilation-dir /Users/nshc-yjlee/Test/20210111_inline -ferror-limit 19 -fmessage-length 173 -stack-protector 1 -fstack-check -mdarwin-stkchk-strong-link -fblocks -fencode-extended-block-signature -fregister-global-dtors-with-atexit -fgnuc-version=4.2.1 -fobjc-runtime=macosx-10.15.0 -fcxx-exceptions -fexceptions -fmax-type-align=16 -fdiagnostics-show-option -fcolor-diagnostics -o Example_1.ll -x c++ Example_1.cpp


; ModuleID = 'Example_1.cpp'
source_filename = "Example_1.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.C = type { %struct.B }
%struct.B = type { %struct.A }
%struct.A = type { i32 (...)** }

@_ZTV1C = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* null, i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI1C to i8*), i8* bitcast (void (%struct.B*)* @_ZN1B1fEv to i8*)] }, align 8
@_ZTT1C = linkonce_odr unnamed_addr constant [4 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 4) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTC1C0_1B, i32 0, inrange i32 0, i32 4) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTC1C0_1B, i32 0, inrange i32 0, i32 4) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 4) to i8*)], align 8
@_ZTC1C0_1B = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* null, i8* null, i8* bitcast (i8** @_ZTI1B to i8*), i8* bitcast (void (%struct.B*)* @_ZN1B1fEv to i8*)] }, align 8
@_ZTI1B = external constant i8*
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS1C = linkonce_odr constant [3 x i8] c"1C\00", align 1
@_ZTI1A = external constant i8*
@_ZTI1C = linkonce_odr constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1C, i32 0, i32 0), i32 2, i32 2, i8* bitcast (i8** @_ZTI1B to i8*), i64 2, i8* bitcast (i8** @_ZTI1A to i8*), i64 -8189 }, align 8
@_ZTV1A = external unnamed_addr constant { [3 x i8*] }, align 8
; Function Attrs: noinline optnone ssp uwtable
; foo()
define void @_Z3foov() #0 {
  %1 = alloca %struct.C, align 8
  call void @_ZN1CC1Ev(%struct.C* %1) #3
  %2 = bitcast %struct.C* %1 to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr i8, i8* %3, i64 -32
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = bitcast %struct.C* %1 to i8*
  %8 = getelementptr inbounds i8, i8* %7, i64 %6
  %9 = bitcast i8* %8 to %struct.A*
  %10 = bitcast %struct.A* %9 to void (%struct.A*)***
  %11 = load void (%struct.A*)**, void (%struct.A*)*** %10, align 8
  %12 = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %11, i64 0
  %13 = load void (%struct.A*)*, void (%struct.A*)** %12, align 8
  call void %13(%struct.A* %9)
  %14 = bitcast %struct.C* %1 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 -32
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %struct.C* %1 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  %21 = bitcast i8* %20 to %struct.A*
  call void @_ZN1A1fEv(%struct.A* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
; C::C()
define linkonce_odr void @_ZN1CC1Ev(%struct.C* %0) unnamed_addr #1 align 2 {
  %2 = alloca %struct.C*, align 8
  store %struct.C* %0, %struct.C** %2, align 8
  %3 = load %struct.C*, %struct.C** %2, align 8
  %4 = bitcast %struct.C* %3 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* %4) #3
  %5 = bitcast %struct.C* %3 to %struct.B*
  call void @_ZN1BC2Ev(%struct.B* %5, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTT1C, i64 0, i64 1)) #3
  %6 = bitcast %struct.C* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 4) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = bitcast %struct.C* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 4) to i32 (...)**), i32 (...)*** %7, align 8
  ret void
}

declare void @_ZN1A1fEv(%struct.A*) unnamed_addr #2
; Function Attrs: noinline nounwind optnone ssp uwtable
; A::f()
define linkonce_odr void @_ZN1AC2Ev(%struct.A* %0) unnamed_addr #1 align 2 {
  %2 = alloca %struct.A*, align 8
  store %struct.A* %0, %struct.A** %2, align 8
  %3 = load %struct.A*, %struct.A** %2, align 8
  %4 = bitcast %struct.A* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
; B::B()
define linkonce_odr void @_ZN1BC2Ev(%struct.B* %0, i8** %1) unnamed_addr #1 align 2 {
  %3 = alloca %struct.B*, align 8
  %4 = alloca i8**, align 8
  store %struct.B* %0, %struct.B** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %struct.B*, %struct.B** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast %struct.B* %5 to i32 (...)***
  %9 = bitcast i8* %7 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %6, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %struct.B* %5 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 -32
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %struct.B* %5 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 %16
  %19 = bitcast i8* %18 to i32 (...)***
  %20 = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %20, i32 (...)*** %19, align 8
  ret void
}
declare void @_ZN1B1fEv(%struct.B*) unnamed_addr #2

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [3 x i32] [i32 10, i32 15, i32 6]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple clang version 12.0.0 (clang-1200.0.32.2)"}
