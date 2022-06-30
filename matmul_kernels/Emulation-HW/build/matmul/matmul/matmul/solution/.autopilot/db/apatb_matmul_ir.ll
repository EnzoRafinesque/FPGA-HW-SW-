; ModuleID = '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_matmul_ir(%"struct.ap_int<16>"* %in1, %"struct.ap_int<16>"* %in2, %"struct.ap_int<16>"* %out_r) local_unnamed_addr #0 {
entry:
  %in1_copy = alloca i16, align 512
  %in2_copy = alloca i16, align 512
  %out_r_copy = alloca i16, align 512
  call fastcc void @copy_in(%"struct.ap_int<16>"* %in1, i16* nonnull align 512 %in1_copy, %"struct.ap_int<16>"* %in2, i16* nonnull align 512 %in2_copy, %"struct.ap_int<16>"* %out_r, i16* nonnull align 512 %out_r_copy)
  call void @apatb_matmul_hw(i16* %in1_copy, i16* %in2_copy, i16* %out_r_copy)
  call fastcc void @copy_out(%"struct.ap_int<16>"* %in1, i16* nonnull align 512 %in1_copy, %"struct.ap_int<16>"* %in2, i16* nonnull align 512 %in2_copy, %"struct.ap_int<16>"* %out_r, i16* nonnull align 512 %out_r_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_int<16>"* readonly, i16* noalias align 512, %"struct.ap_int<16>"* readonly, i16* noalias align 512, %"struct.ap_int<16>"* readonly, i16* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %1, %"struct.ap_int<16>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %3, %"struct.ap_int<16>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %5, %"struct.ap_int<16>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_int<16>"*, i16* noalias readonly align 512, %"struct.ap_int<16>"*, i16* noalias readonly align 512, %"struct.ap_int<16>"*, i16* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.4"(%"struct.ap_int<16>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.4"(%"struct.ap_int<16>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.4"(%"struct.ap_int<16>"* %4, i16* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.4"(%"struct.ap_int<16>"* noalias, i16* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_int<16>"* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %1, align 512
  store i16 %5, i16* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* noalias align 512, %"struct.ap_int<16>"* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %"struct.ap_int<16>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.04, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_matmul_hw(i16*, i16*, i16*)

define void @matmul_hw_stub_wrapper(i16*, i16*, i16*) #4 {
entry:
  %3 = alloca %"struct.ap_int<16>"
  %4 = alloca %"struct.ap_int<16>"
  %5 = alloca %"struct.ap_int<16>"
  call void @copy_out(%"struct.ap_int<16>"* %3, i16* %0, %"struct.ap_int<16>"* %4, i16* %1, %"struct.ap_int<16>"* %5, i16* %2)
  call void @matmul_hw_stub(%"struct.ap_int<16>"* %3, %"struct.ap_int<16>"* %4, %"struct.ap_int<16>"* %5)
  call void @copy_in(%"struct.ap_int<16>"* %3, i16* %0, %"struct.ap_int<16>"* %4, i16* %1, %"struct.ap_int<16>"* %5, i16* %2)
  ret void
}

declare void @matmul_hw_stub(%"struct.ap_int<16>"*, %"struct.ap_int<16>"*, %"struct.ap_int<16>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
