; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+v -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+v -verify-machineinstrs < %s | FileCheck %s

declare <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i16(<vscale x 2 x i16>, <vscale x 2 x i1>, i32)

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i16(<vscale x 2 x i16> %a, <vscale x 2 x i1> %m, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, mu
; CHECK-NEXT:    vand.vi v8, v8, 1, v0.t
; CHECK-NEXT:    vsetvli zero, zero, e16, mf2, ta, ma
; CHECK-NEXT:    vmsne.vi v0, v8, 0, v0.t
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i16(<vscale x 2 x i16> %a, <vscale x 2 x i1> %m, i32 %vl)
  ret <vscale x 2 x i1> %v
}

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i16_unmasked(<vscale x 2 x i16> %a, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i16_unmasked:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, ma
; CHECK-NEXT:    vand.vi v8, v8, 1
; CHECK-NEXT:    vmsne.vi v0, v8, 0
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i16(<vscale x 2 x i16> %a, <vscale x 2 x i1> shufflevector (<vscale x 2 x i1> insertelement (<vscale x 2 x i1> undef, i1 true, i32 0), <vscale x 2 x i1> undef, <vscale x 2 x i32> zeroinitializer), i32 %vl)
  ret <vscale x 2 x i1> %v
}

declare <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i1>, i32)

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i32(<vscale x 2 x i32> %a, <vscale x 2 x i1> %m, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, mu
; CHECK-NEXT:    vand.vi v8, v8, 1, v0.t
; CHECK-NEXT:    vsetvli zero, zero, e32, m1, ta, ma
; CHECK-NEXT:    vmsne.vi v0, v8, 0, v0.t
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i32(<vscale x 2 x i32> %a, <vscale x 2 x i1> %m, i32 %vl)
  ret <vscale x 2 x i1> %v
}

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i32_unmasked(<vscale x 2 x i32> %a, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i32_unmasked:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, ma
; CHECK-NEXT:    vand.vi v8, v8, 1
; CHECK-NEXT:    vmsne.vi v0, v8, 0
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i32(<vscale x 2 x i32> %a, <vscale x 2 x i1> shufflevector (<vscale x 2 x i1> insertelement (<vscale x 2 x i1> undef, i1 true, i32 0), <vscale x 2 x i1> undef, <vscale x 2 x i32> zeroinitializer), i32 %vl)
  ret <vscale x 2 x i1> %v
}

declare <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i1>, i32)

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i64(<vscale x 2 x i64> %a, <vscale x 2 x i1> %m, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, mu
; CHECK-NEXT:    vand.vi v10, v8, 1, v0.t
; CHECK-NEXT:    vsetvli zero, zero, e64, m2, ta, ma
; CHECK-NEXT:    vmsne.vi v8, v10, 0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v8
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i64(<vscale x 2 x i64> %a, <vscale x 2 x i1> %m, i32 %vl)
  ret <vscale x 2 x i1> %v
}

define <vscale x 2 x i1> @vtrunc_nxv2i1_nxv2i64_unmasked(<vscale x 2 x i64> %a, i32 zeroext %vl) {
; CHECK-LABEL: vtrunc_nxv2i1_nxv2i64_unmasked:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, ma
; CHECK-NEXT:    vand.vi v8, v8, 1
; CHECK-NEXT:    vmsne.vi v0, v8, 0
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x i1> @llvm.vp.trunc.nxv2i1.nxv2i64(<vscale x 2 x i64> %a, <vscale x 2 x i1> shufflevector (<vscale x 2 x i1> insertelement (<vscale x 2 x i1> undef, i1 true, i32 0), <vscale x 2 x i1> undef, <vscale x 2 x i32> zeroinitializer), i32 %vl)
  ret <vscale x 2 x i1> %v
}
