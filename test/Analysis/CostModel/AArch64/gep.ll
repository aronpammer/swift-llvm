; RUN: opt -cost-model -analyze -mtriple=aarch64--linux-gnu -mcpu=kryo < %s | FileCheck %s

target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

define i8 @test1(i8* %p, i32 %i) {
; CHECK-LABEL: test1
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 0
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test2(i16* %p, i32 %i) {
; CHECK-LABEL: test2
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 0
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test3(i32* %p, i32 %i) {
; CHECK-LABEL: test3
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 0
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test4(i64* %p, i32 %i) {
; CHECK-LABEL: test4
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 0
  %v = load i64, i64* %a
  ret i64 %v
}

define i8 @test5(i8* %p, i32 %i) {
; CHECK-LABEL: test5
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 1024
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test6(i16* %p, i32 %i) {
; CHECK-LABEL: test6
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 1024
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test7(i32* %p, i32 %i) {
; CHECK-LABEL: test7
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 1024
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test8(i64* %p, i32 %i) {
; CHECK-LABEL: test8
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 1024
  %v = load i64, i64* %a
  ret i64 %v
}

define i8 @test9(i8* %p, i32 %i) {
; CHECK-LABEL: test9
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 4096
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test10(i16* %p, i32 %i) {
; CHECK-LABEL: test10
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 4096
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test11(i32* %p, i32 %i) {
; CHECK-LABEL: test11
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 4096
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test12(i64* %p, i32 %i) {
; CHECK-LABEL: test12
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 4096
  %v = load i64, i64* %a
  ret i64 %v
}

define i8 @test13(i8* %p, i32 %i) {
; CHECK-LABEL: test13
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 -64
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test14(i16* %p, i32 %i) {
; CHECK-LABEL: test14
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 -64
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test15(i32* %p, i32 %i) {
; CHECK-LABEL: test15
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 -64
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test16(i64* %p, i32 %i) {
; CHECK-LABEL: test16
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 -64
  %v = load i64, i64* %a
  ret i64 %v
}

define i8 @test17(i8* %p, i32 %i) {
; CHECK-LABEL: test17
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 -1024
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test18(i16* %p, i32 %i) {
; CHECK-LABEL: test18
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 -1024
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test19(i32* %p, i32 %i) {
; CHECK-LABEL: test19
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 -1024
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test20(i64* %p, i32 %i) {
; CHECK-LABEL: test20
; CHECK: cost of 1 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 -1024
  %v = load i64, i64* %a
  ret i64 %v
}

define i8 @test21(i8* %p, i32 %i) {
; CHECK-LABEL: test21
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i8, i8*
  %a = getelementptr inbounds i8, i8* %p, i32 %i
  %v = load i8, i8* %a
  ret i8 %v
}

define i16 @test22(i16* %p, i32 %i) {
; CHECK-LABEL: test22
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i16, i16*
  %a = getelementptr inbounds i16, i16* %p, i32 %i
  %v = load i16, i16* %a
  ret i16 %v
}

define i32 @test23(i32* %p, i32 %i) {
; CHECK-LABEL: test23
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i32, i32*
  %a = getelementptr inbounds i32, i32* %p, i32 %i
  %v = load i32, i32* %a
  ret i32 %v
}

define i64 @test24(i64* %p, i32 %i) {
; CHECK-LABEL: test24
; CHECK: cost of 0 for instruction: {{.*}} getelementptr inbounds i64, i64*
  %a = getelementptr inbounds i64, i64* %p, i32 %i
  %v = load i64, i64* %a
  ret i64 %v
}
