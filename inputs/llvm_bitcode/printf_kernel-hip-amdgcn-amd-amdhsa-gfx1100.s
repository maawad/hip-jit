	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx1100"
	.protected	_Z13printf_kernelv      ; -- Begin function _Z13printf_kernelv
	.globl	_Z13printf_kernelv
	.p2align	8
	.type	_Z13printf_kernelv,@function
_Z13printf_kernelv:                     ; @_Z13printf_kernelv
; %bb.0:                                ; %.preheader.preheader
	s_load_b64 s[28:29], s[4:5], 0x18
	v_dual_mov_b32 v31, v0 :: v_dual_mov_b32 v2, 33
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v17, 0
	s_mov_b32 s20, s14
	s_mov_b32 s12, s13
	s_mov_b64 s[10:11], s[6:7]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v0, s28 :: v_dual_mov_b32 v1, s29
	v_mov_b32_e32 v6, 0
	s_mov_b64 s[8:9], s[4:5]
	s_mov_b64 s[4:5], s[0:1]
	s_mov_b64 s[6:7], s[2:3]
	s_mov_b32 s13, s14
	s_mov_b32 s14, s15
	s_mov_b32 s32, 0
	s_mov_b64 s[16:17], s[2:3]
	s_mov_b64 s[18:19], s[0:1]
	s_getpc_b64 s[22:23]
	s_add_u32 s22, s22, __ockl_hostcall_internal@rel32@lo+4
	s_addc_u32 s23, s23, __ockl_hostcall_internal@rel32@hi+12
	s_mov_b32 s24, 0
	s_swappc_b64 s[30:31], s[22:23]
	v_dual_mov_b32 v25, v0 :: v_dual_mov_b32 v24, v1
	s_getpc_b64 s[0:1]
	s_add_u32 s0, s0, .str@rel32@lo+4
	s_addc_u32 s1, s1, .str@rel32@hi+12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u64 s[0:1], 0
	s_cbranch_scc0 .LBB1_53
; %bb.1:
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v23, -3, v25
	v_and_b32_e32 v26, 2, v25
	s_mov_b32 s3, s24
	s_cselect_b32 s2, 15, 0
	v_dual_mov_b32 v30, s1 :: v_dual_mov_b32 v33, s3
	v_dual_mov_b32 v29, s0 :: v_dual_mov_b32 v2, v23
	v_dual_mov_b32 v5, v26 :: v_dual_mov_b32 v32, s2
	v_dual_mov_b32 v3, v24 :: v_dual_mov_b32 v4, v25
	s_branch .LBB1_4
.LBB1_2:                                ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v16, v[0:1], off offset:2
	global_load_u8 v17, v[0:1], off offset:3
	global_load_u8 v18, v[0:1], off offset:1
	global_load_u8 v19, v[0:1], off offset:5
	global_load_u8 v20, v[0:1], off
	global_load_u8 v21, v[0:1], off offset:4
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v22, v28 :: v_dual_and_b32 v27, 0xffff, v16
	s_clause 0x1
	global_load_d16_hi_u8 v22, v[0:1], off offset:6
	global_load_u8 v23, v[0:1], off offset:7
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v18, 8, v18
	v_lshlrev_b64 v[0:1], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v18, v18, v20
	v_lshlrev_b64 v[16:17], 24, v[27:28]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v18, 0xffff, v18
	v_or_b32_e32 v1, v1, v17
	v_lshlrev_b32_e32 v17, 8, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v0, v18, v0
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v1, v1, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v16, v0, v16
	v_or_b32_e32 v1, v1, v17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 24, v23
	v_or_b32_e32 v17, v1, v17
.LBB1_3:                                ; %.loopexit.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	v_cmp_lt_u64_e32 vcc_lo, 56, v[32:33]
	v_or_b32_e32 v0, 0, v3
	v_lshlrev_b32_e32 v1, 2, v34
	v_or_b32_e32 v18, v2, v26
	s_mov_b64 s[4:5], s[18:19]
	s_mov_b64 s[6:7], s[16:17]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v3, v0, v3 :: v_dual_add_nc_u32 v0, 28, v1
	v_cndmask_b32_e32 v1, v18, v2, vcc_lo
	s_mov_b32 s13, s20
	s_mov_b32 s14, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x1e0, v0
	v_and_b32_e32 v1, 0xffffff1f, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v2, v1, v0
	v_dual_mov_b32 v0, s28 :: v_dual_mov_b32 v1, s29
	s_swappc_b64 s[30:31], s[22:23]
	v_sub_co_u32 v32, vcc_lo, v32, v34
	v_sub_co_ci_u32_e32 v33, vcc_lo, v33, v35, vcc_lo
	v_add_co_u32 v29, s0, v29, v34
	v_dual_mov_b32 v2, v0 :: v_dual_mov_b32 v3, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u64_e32 vcc_lo, 0, v[32:33]
	v_add_co_ci_u32_e64 v30, s0, v30, v35, s0
	s_cbranch_vccz .LBB1_54
.LBB1_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;     Child Loop BB1_15 Depth 2
                                        ;     Child Loop BB1_22 Depth 2
                                        ;     Child Loop BB1_29 Depth 2
                                        ;     Child Loop BB1_36 Depth 2
                                        ;     Child Loop BB1_43 Depth 2
                                        ;     Child Loop BB1_50 Depth 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_u64_e32 vcc_lo, 56, v[32:33]
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr4_vgpr5
	v_dual_cndmask_b32 v35, 0, v33 :: v_dual_cndmask_b32 v34, 56, v32
	v_cmp_lt_u32_e32 vcc_lo, 7, v34
	v_readfirstlane_b32 s1, v34
	s_cbranch_vccnz .LBB1_10
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	s_delay_alu instid0(VALU_DEP_1)
	s_cmp_eq_u32 s1, 0
	s_mov_b64 s[2:3], 0
	s_cbranch_scc1 .LBB1_8
; %bb.6:                                ; %.preheader11.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v4, 0
	v_lshlrev_b64 v[0:1], 3, v[34:35]
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, v29
	v_mov_b32_e32 v7, v30
	.p2align	6
.LBB1_7:                                ; %.preheader11.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	global_load_u8 v1, v[6:7], off
	v_add_co_u32 v6, vcc_lo, v6, 1
	v_add_co_ci_u32_e32 v7, vcc_lo, 0, v7, vcc_lo
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[8:9], s2, v[27:28]
	s_add_u32 s2, s2, 8
	s_addc_u32 s3, s3, 0
	v_cmp_ne_u32_e64 s0, s2, v0
	v_or_b32_e32 v4, v8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v5, v9, v5
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB1_7
	s_branch .LBB1_9
.LBB1_8:                                ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
.LBB1_9:                                ; %Flow115
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s0, 0
.LBB1_10:                               ; %Flow115
                                        ;   in Loop: Header=BB1_4 Depth=1
	v_dual_mov_b32 v0, v29 :: v_dual_mov_b32 v1, v30
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_mov_b32 s5, 0
	s_cbranch_vccnz .LBB1_12
; %bb.11:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v0, v[29:30], off offset:2
	global_load_u8 v4, v[29:30], off offset:3
	global_load_u8 v6, v[29:30], off offset:1
	global_load_u8 v7, v[29:30], off offset:5
	global_load_u8 v8, v[29:30], off
	global_load_u8 v9, v[29:30], off offset:4
	v_mov_b32_e32 v10, v28
	s_add_i32 s5, s1, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v0
	s_clause 0x1
	global_load_u8 v11, v[29:30], off offset:7
	global_load_d16_hi_u8 v10, v[29:30], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v6, 8, v6
	v_lshlrev_b64 v[0:1], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v4
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v6, v6, v8
	v_lshlrev_b64 v[4:5], 24, v[27:28]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v6, 0xffff, v6
	v_or_b32_e32 v1, v1, v5
	v_lshlrev_b32_e32 v5, 8, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v0, v6, v0
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v1, v1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v4, v0, v4
	v_add_co_u32 v0, vcc_lo, v29, 8
	v_or_b32_e32 v1, v1, v5
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v5, 24, v11
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v10
	v_or_b32_e32 v5, v1, v5
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v30, vcc_lo
.LBB1_12:                               ; %.loopexit12.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s5, 7
	s_cbranch_scc1 .LBB1_17
; %bb.13:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	s_cmp_eq_u32 s5, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_16
; %bb.14:                               ; %.preheader9.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b64 s[2:3], 0
	.p2align	6
.LBB1_15:                               ; %.preheader9.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_co_u32 v8, vcc_lo, v0, s2
	v_add_co_ci_u32_e32 v9, vcc_lo, s3, v1, vcc_lo
	s_add_u32 s2, s2, 1
	s_addc_u32 s3, s3, 0
	global_load_u8 v8, v[8:9], off
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s5, s2
	v_or_b32_e32 v6, v8, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v7, v9, v7
	s_cbranch_scc1 .LBB1_15
.LBB1_16:                               ; %Flow111
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s4, 0
	s_cbranch_execz .LBB1_18
	s_branch .LBB1_19
.LBB1_17:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr6_vgpr7
	s_mov_b32 s4, 0
.LBB1_18:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v6, v[0:1], off offset:2
	global_load_u8 v8, v[0:1], off offset:3
	global_load_u8 v10, v[0:1], off offset:1
	global_load_u8 v11, v[0:1], off offset:5
	global_load_u8 v12, v[0:1], off
	global_load_u8 v13, v[0:1], off offset:4
	v_mov_b32_e32 v14, v28
	s_add_i32 s4, s5, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v6
	s_clause 0x1
	global_load_u8 v15, v[0:1], off offset:7
	global_load_d16_hi_u8 v14, v[0:1], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v10, 8, v10
	v_add_co_u32 v0, vcc_lo, v0, 8
	v_lshlrev_b64 v[6:7], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v8
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v10, v10, v12
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[8:9], 24, v[27:28]
	v_and_b32_e32 v10, 0xffff, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v7, v7, v9
	v_lshlrev_b32_e32 v9, 8, v11
	v_or_b32_e32 v6, v10, v6
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v7, v7, v13
	v_or_b32_e32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v7, v7, v9
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 24, v15
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v7, v7, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, v7, v9
.LBB1_19:                               ; %.loopexit10.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s4, 7
	s_cbranch_scc1 .LBB1_24
; %bb.20:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	s_cmp_eq_u32 s4, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_23
; %bb.21:                               ; %.preheader7.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b64 s[2:3], 0
	.p2align	6
.LBB1_22:                               ; %.preheader7.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_co_u32 v10, vcc_lo, v0, s2
	v_add_co_ci_u32_e32 v11, vcc_lo, s3, v1, vcc_lo
	s_add_u32 s2, s2, 1
	s_addc_u32 s3, s3, 0
	global_load_u8 v10, v[10:11], off
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s4, s2
	v_or_b32_e32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v9, v11, v9
	s_cbranch_scc1 .LBB1_22
.LBB1_23:                               ; %Flow108
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s5, 0
	s_cbranch_execz .LBB1_25
	s_branch .LBB1_26
.LBB1_24:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr8_vgpr9
	s_mov_b32 s5, 0
.LBB1_25:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v8, v[0:1], off offset:2
	global_load_u8 v10, v[0:1], off offset:3
	global_load_u8 v12, v[0:1], off offset:1
	global_load_u8 v13, v[0:1], off offset:5
	global_load_u8 v14, v[0:1], off
	global_load_u8 v15, v[0:1], off offset:4
	v_mov_b32_e32 v16, v28
	s_add_i32 s5, s4, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v8
	s_clause 0x1
	global_load_u8 v17, v[0:1], off offset:7
	global_load_d16_hi_u8 v16, v[0:1], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v12, 8, v12
	v_add_co_u32 v0, vcc_lo, v0, 8
	v_lshlrev_b64 v[8:9], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v10
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v12, v12, v14
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[10:11], 24, v[27:28]
	v_and_b32_e32 v12, 0xffff, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v9, v9, v11
	v_lshlrev_b32_e32 v11, 8, v13
	v_or_b32_e32 v8, v12, v8
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v9, v9, v15
	v_or_b32_e32 v8, v8, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v9, v9, v11
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 24, v17
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v9, v9, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v9, v9, v11
.LBB1_26:                               ; %.loopexit8.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s5, 7
	s_cbranch_scc1 .LBB1_31
; %bb.27:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v11, 0
	s_cmp_eq_u32 s5, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_30
; %bb.28:                               ; %.preheader5.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b64 s[2:3], 0
	.p2align	6
.LBB1_29:                               ; %.preheader5.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_co_u32 v12, vcc_lo, v0, s2
	v_add_co_ci_u32_e32 v13, vcc_lo, s3, v1, vcc_lo
	s_add_u32 s2, s2, 1
	s_addc_u32 s3, s3, 0
	global_load_u8 v12, v[12:13], off
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s5, s2
	v_or_b32_e32 v10, v12, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v11, v13, v11
	s_cbranch_scc1 .LBB1_29
.LBB1_30:                               ; %Flow105
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s4, 0
	s_cbranch_execz .LBB1_32
	s_branch .LBB1_33
.LBB1_31:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr10_vgpr11
	s_mov_b32 s4, 0
.LBB1_32:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v10, v[0:1], off offset:2
	global_load_u8 v12, v[0:1], off offset:3
	global_load_u8 v14, v[0:1], off offset:1
	global_load_u8 v15, v[0:1], off offset:5
	global_load_u8 v16, v[0:1], off
	global_load_u8 v17, v[0:1], off offset:4
	v_mov_b32_e32 v18, v28
	s_add_i32 s4, s5, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v10
	s_clause 0x1
	global_load_u8 v19, v[0:1], off offset:7
	global_load_d16_hi_u8 v18, v[0:1], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v14, 8, v14
	v_add_co_u32 v0, vcc_lo, v0, 8
	v_lshlrev_b64 v[10:11], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v12
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v14, v14, v16
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[12:13], 24, v[27:28]
	v_and_b32_e32 v14, 0xffff, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v11, v11, v13
	v_lshlrev_b32_e32 v13, 8, v15
	v_or_b32_e32 v10, v14, v10
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v11, v11, v17
	v_or_b32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v11, v11, v13
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 24, v19
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v11, v11, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v11, v11, v13
.LBB1_33:                               ; %.loopexit6.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s4, 7
	s_cbranch_scc1 .LBB1_38
; %bb.34:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, 0
	s_cmp_eq_u32 s4, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_37
; %bb.35:                               ; %.preheader3.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b64 s[2:3], 0
	.p2align	6
.LBB1_36:                               ; %.preheader3.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_co_u32 v14, vcc_lo, v0, s2
	v_add_co_ci_u32_e32 v15, vcc_lo, s3, v1, vcc_lo
	s_add_u32 s2, s2, 1
	s_addc_u32 s3, s3, 0
	global_load_u8 v14, v[14:15], off
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s4, s2
	v_or_b32_e32 v12, v14, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v13, v15, v13
	s_cbranch_scc1 .LBB1_36
.LBB1_37:                               ; %Flow102
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s5, 0
	s_cbranch_execz .LBB1_39
	s_branch .LBB1_40
.LBB1_38:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr12_vgpr13
	s_mov_b32 s5, 0
.LBB1_39:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v12, v[0:1], off offset:2
	global_load_u8 v14, v[0:1], off offset:3
	global_load_u8 v16, v[0:1], off offset:1
	global_load_u8 v17, v[0:1], off offset:5
	global_load_u8 v18, v[0:1], off
	global_load_u8 v19, v[0:1], off offset:4
	v_mov_b32_e32 v20, v28
	s_add_i32 s5, s4, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v12
	s_clause 0x1
	global_load_u8 v21, v[0:1], off offset:7
	global_load_d16_hi_u8 v20, v[0:1], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v16, 8, v16
	v_add_co_u32 v0, vcc_lo, v0, 8
	v_lshlrev_b64 v[12:13], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v14
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v16, v16, v18
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[14:15], 24, v[27:28]
	v_and_b32_e32 v16, 0xffff, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v13, v13, v15
	v_lshlrev_b32_e32 v15, 8, v17
	v_or_b32_e32 v12, v16, v12
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v13, v13, v19
	v_or_b32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v13, v13, v15
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 24, v21
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v13, v13, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v13, v13, v15
.LBB1_40:                               ; %.loopexit4.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s5, 7
	s_cbranch_scc1 .LBB1_45
; %bb.41:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	s_cmp_eq_u32 s5, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_44
; %bb.42:                               ; %.preheader1.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b64 s[2:3], 0
	.p2align	6
.LBB1_43:                               ; %.preheader1.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_co_u32 v16, vcc_lo, v0, s2
	v_add_co_ci_u32_e32 v17, vcc_lo, s3, v1, vcc_lo
	s_add_u32 s2, s2, 1
	s_addc_u32 s3, s3, 0
	global_load_u8 v16, v[16:17], off
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s5, s2
	v_or_b32_e32 v14, v16, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v15, v17, v15
	s_cbranch_scc1 .LBB1_43
.LBB1_44:                               ; %Flow99
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_mov_b32 s2, 0
	s_cbranch_execz .LBB1_46
	s_branch .LBB1_47
.LBB1_45:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr14_vgpr15
	s_mov_b32 s2, 0
.LBB1_46:                               ;   in Loop: Header=BB1_4 Depth=1
	s_clause 0x5
	global_load_u8 v14, v[0:1], off offset:2
	global_load_u8 v16, v[0:1], off offset:3
	global_load_u8 v18, v[0:1], off offset:1
	global_load_u8 v19, v[0:1], off offset:5
	global_load_u8 v20, v[0:1], off
	global_load_u8 v21, v[0:1], off offset:4
	v_mov_b32_e32 v22, v28
	s_add_i32 s2, s5, -8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v27, 0xffff, v14
	s_clause 0x1
	global_load_u8 v23, v[0:1], off offset:7
	global_load_d16_hi_u8 v22, v[0:1], off offset:6
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v18, 8, v18
	v_add_co_u32 v0, vcc_lo, v0, 8
	v_lshlrev_b64 v[14:15], 16, v[27:28]
	v_and_b32_e32 v27, 0xffff, v16
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v18, v18, v20
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[16:17], 24, v[27:28]
	v_and_b32_e32 v18, 0xffff, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v15, v15, v17
	v_lshlrev_b32_e32 v17, 8, v19
	v_or_b32_e32 v14, v18, v14
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v15, v15, v21
	v_or_b32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v15, v15, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 24, v23
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v15, v15, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v15, v15, v17
.LBB1_47:                               ; %.loopexit2.i
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cmp_gt_u32 s2, 7
	s_cbranch_scc1 .LBB1_52
; %bb.48:                               ;   in Loop: Header=BB1_4 Depth=1
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v17, 0
	s_cmp_eq_u32 s2, 0
	s_mov_b64 s[0:1], 0
	s_cbranch_scc1 .LBB1_51
; %bb.49:                               ; %.preheader.i.preheader
                                        ;   in Loop: Header=BB1_4 Depth=1
	v_dual_mov_b32 v19, v1 :: v_dual_mov_b32 v18, v0
	.p2align	6
.LBB1_50:                               ; %.preheader.i
                                        ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	global_load_u8 v20, v[18:19], off
	v_add_co_u32 v18, vcc_lo, v18, 1
	s_add_i32 s2, s2, -1
	v_add_co_ci_u32_e32 v19, vcc_lo, 0, v19, vcc_lo
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v27, 0xffff, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], s0, v[27:28]
	s_add_u32 s0, s0, 8
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s2, 0
	v_or_b32_e32 v16, v20, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v17, v21, v17
	s_cbranch_scc1 .LBB1_50
.LBB1_51:                               ; %Flow96
                                        ;   in Loop: Header=BB1_4 Depth=1
	s_cbranch_execnz .LBB1_3
	s_branch .LBB1_2
.LBB1_52:                               ;   in Loop: Header=BB1_4 Depth=1
                                        ; implicit-def: $vgpr16_vgpr17
	s_branch .LBB1_2
.LBB1_53:
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	v_dual_mov_b32 v2, s24 :: v_dual_mov_b32 v3, s25
	v_dual_mov_b32 v4, s26 :: v_dual_mov_b32 v5, s27
	s_load_b32 s21, s[18:19], 0x4
	s_cbranch_execnz .LBB1_55
	s_branch .LBB1_56
.LBB1_54:                               ; %Flow116
	s_load_b32 s21, s[18:19], 0x4
	s_branch .LBB1_56
.LBB1_55:
	v_and_or_b32 v2, 0xffffff1f, v25, 32
	v_dual_mov_b32 v0, s28 :: v_dual_mov_b32 v1, s29
	v_dual_mov_b32 v3, v24 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v17, 0
	s_mov_b64 s[4:5], s[18:19]
	s_mov_b64 s[6:7], s[16:17]
	s_mov_b32 s13, s20
	s_mov_b32 s14, s15
	s_swappc_b64 s[30:31], s[22:23]
	v_dual_mov_b32 v2, v0 :: v_dual_mov_b32 v3, v1
.LBB1_56:                               ; %__ockl_printf_append_string_n.exit
	v_and_b32_e32 v0, 0x3ff, v31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, 0xffff, s21
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v2, 0xffffff1d, v2, 34
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mad_u64_u32 v[4:5], null, s12, s0, v[0:1]
	v_dual_mov_b32 v0, s28 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v1, s29 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v17, 0
	s_mov_b64 s[4:5], s[18:19]
	s_mov_b64 s[6:7], s[16:17]
	s_mov_b32 s13, s20
	s_mov_b32 s14, s15
	s_swappc_b64 s[30:31], s[22:23]
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z13printf_kernelv
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 160
		.amdhsa_kernarg_size 56
		.amdhsa_user_sgpr_count 13
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 1
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 36
		.amdhsa_next_free_sgpr 33
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 0
		.amdhsa_shared_vgpr_count 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z13printf_kernelv, .Lfunc_end0-_Z13printf_kernelv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 3276
; NumSgprs: 35
; NumVgprs: 36
; ScratchSize: 160
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 35
; NumVGPRsForWavesPerEU: 36
; Occupancy: 16
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 13
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
	.text
	.p2align	2                               ; -- Begin function __ockl_hostcall_internal
	.type	__ockl_hostcall_internal,@function
__ockl_hostcall_internal:               ; @__ockl_hostcall_internal
; %bb.0:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_waitcnt_vscnt null, 0x0
	scratch_store_b64 off, v[0:1], s32
	v_mov_b32_e32 v0, 2
	scratch_store_b32 off, v0, s32 offset:8
	scratch_store_b64 off, v[2:3], s32 offset:16
	scratch_store_b64 off, v[4:5], s32 offset:24
	scratch_store_b64 off, v[6:7], s32 offset:32
	scratch_store_b64 off, v[8:9], s32 offset:40
	scratch_store_b64 off, v[10:11], s32 offset:48
	scratch_store_b64 off, v[12:13], s32 offset:56
	scratch_store_b64 off, v[14:15], s32 offset:64
	scratch_store_b64 off, v[16:17], s32 offset:72
	s_mov_b32 s0, 0
	s_mov_b32 s1, -1
	v_mbcnt_lo_u32_b32 v0, s1, s0
	scratch_store_b32 off, v0, s32 offset:80
	scratch_load_b32 v0, off, s32 offset:80
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	; ockl readfirstlane hoisting hack v0
	;;#ASMEND
	scratch_store_b32 off, v0, s32 offset:80
	scratch_load_b32 v0, off, s32 offset:80
	s_waitcnt vmcnt(0)
	v_readfirstlane_b32 s0, v0
	v_mov_b32_e32 v0, s0
	scratch_store_b32 off, v0, s32 offset:84
	scratch_load_b64 v[0:1], off, s32
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], s32 offset:88
	scratch_load_b32 v0, off, s32 offset:80
	scratch_load_b32 v1, off, s32 offset:84
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s2, v0, v1
	s_mov_b64 s[0:1], 0
	v_mov_b32_e32 v7, s1
	v_mov_b32_e32 v6, s0
	s_mov_b32 s0, exec_lo
	s_and_b32 s1, s0, s2
	s_mov_b32 exec_lo, s1
	s_cbranch_execz .LBB0_6
; %bb.1:
	scratch_load_b64 v[0:1], off, s32 offset:88
	s_mov_b64 s[2:3], 24
	s_waitcnt vmcnt(0)
	v_add_co_u32 v2, s1, v0, s2
	v_add_co_ci_u32_e64 v3, s1, v1, s3, s1
	global_load_b64 v[8:9], v[0:1], off offset:24 glc
	s_waitcnt vmcnt(0)
	buffer_gl0_inv
	buffer_gl1_inv
	s_mov_b64 s[2:3], 40
	v_add_co_u32 v4, s1, v0, s2
	v_add_co_ci_u32_e64 v5, s1, v1, s3, s1
	global_load_b64 v[6:7], v[0:1], off
	global_load_b64 v[10:11], v[0:1], off offset:40
	s_waitcnt vmcnt(0)
	v_and_b32_e64 v11, v11, v9
	v_and_b32_e64 v10, v10, v8
	s_mov_b32 s1, 24
	v_mad_u64_u32 v[12:13], s2, v10, s1, 0
	s_mov_b32 s2, 32
	v_lshrrev_b64 v[10:11], s2, v[10:11]
	v_mad_u64_u32 v[14:15], s1, v10, s1, v[13:14]
	v_lshlrev_b64 v[10:11], s2, v[14:15]
	s_mov_b32 s1, 0
	v_mov_b32_e32 v13, 0
	v_or_b32_e64 v11, v13, v11
	v_or_b32_e64 v10, v12, v10
	v_add_co_u32 v6, s1, v6, v10
	v_add_co_ci_u32_e64 v7, s1, v7, v11, s1
	global_load_b64 v[6:7], v[6:7], off glc
	s_waitcnt vmcnt(0)
	global_atomic_cmpswap_b64 v[6:7], v[0:1], v[6:9], off offset:24 glc
	s_waitcnt vmcnt(0)
	buffer_gl0_inv
	buffer_gl1_inv
	v_cmp_eq_u64_e64 s2, v[6:7], v[8:9]
	v_cmp_ne_u64_e64 s3, v[6:7], v[8:9]
	s_mov_b32 s1, exec_lo
	s_and_b32 s3, s1, s3
	s_mov_b32 exec_lo, s3
; %bb.2:                                ; %.preheader.i.preheader
	s_mov_b32 s3, 0
                                        ; implicit-def: $sgpr4
	s_branch .LBB0_4
.LBB0_3:                                ; %Flow17
	s_or_b32 exec_lo, exec_lo, s1
                                        ; implicit-def: $sgpr1
	s_branch .LBB0_7
.LBB0_4:                                ; %.preheader.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; implicit-def: $sgpr5
	s_sleep 1
	global_load_b64 v[10:11], v[0:1], off
	global_load_b64 v[12:13], v[4:5], off
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v6
	s_waitcnt vmcnt(0)
	v_and_b32_e64 v7, v13, v9
	v_and_b32_e64 v6, v12, v8
	s_mov_b32 s5, 24
	v_mad_u64_u32 v[12:13], s6, v6, s5, 0
	s_mov_b32 s6, 32
	v_lshrrev_b64 v[6:7], s6, v[6:7]
	v_mad_u64_u32 v[14:15], s5, v6, s5, v[13:14]
	v_lshlrev_b64 v[6:7], s6, v[14:15]
	s_mov_b32 s5, 0
	v_mov_b32_e32 v13, 0
	v_or_b32_e64 v7, v13, v7
	v_or_b32_e64 v6, v12, v6
	v_add_co_u32 v6, s5, v10, v6
	v_add_co_ci_u32_e64 v7, s5, v11, v7, s5
	global_load_b64 v[6:7], v[6:7], off glc
	s_waitcnt vmcnt(0)
	global_atomic_cmpswap_b64 v[6:7], v[2:3], v[6:9], off glc
	s_waitcnt vmcnt(0)
	buffer_gl0_inv
	buffer_gl1_inv
	v_cmp_eq_u64_e64 s5, v[6:7], v[8:9]
	s_or_b32 s3, s5, s3
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s4, s4, s5
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_4
; %bb.5:                                ; %.loopexit.i.loopexit
	s_or_b32 exec_lo, exec_lo, s3
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s3, s4, exec_lo
	s_or_b32 s2, s2, s3
	s_branch .LBB0_3
.LBB0_6:                                ; %Flow18
	s_or_b32 exec_lo, exec_lo, s0
	s_branch .LBB0_8
.LBB0_7:                                ; %.loopexit.i
	s_branch .LBB0_6
.LBB0_8:                                ; %.exit
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[0:1], s4, v[6:7]
	v_readfirstlane_b32 s0, v6
	v_readfirstlane_b32 s2, v0
	s_lshl_b64 s[2:3], s[2:3], s4
	s_mov_b32 s1, 0
	s_or_b64 s[2:3], s[2:3], s[0:1]
	v_mov_b32_e32 v0, s2
	v_mov_b32_e32 v1, s3
	scratch_store_b64 off, v[0:1], s32 offset:96
	scratch_load_b64 v[0:1], off, s32 offset:88
	scratch_load_b64 v[2:3], off, s32 offset:96
	s_waitcnt vmcnt(1)
	global_load_b64 v[4:5], v[0:1], off
	global_load_b64 v[0:1], v[0:1], off offset:40
	s_waitcnt vmcnt(0)
	v_and_b32_e64 v1, v3, v1
	v_and_b32_e64 v0, v2, v0
	s_mov_b32 s0, 24
	v_mad_u64_u32 v[2:3], s2, v0, s0, 0
	v_lshrrev_b64 v[0:1], s4, v[0:1]
	v_mad_u64_u32 v[6:7], s0, v0, s0, v[3:4]
	v_lshlrev_b64 v[0:1], s4, v[6:7]
	v_mov_b32_e32 v3, s1
	v_or_b32_e64 v1, v3, v1
	v_or_b32_e64 v0, v2, v0
	v_add_co_u32 v0, s0, v4, v0
	v_add_co_ci_u32_e64 v1, s0, v5, v1, s0
	scratch_store_b64 off, v[0:1], s32 offset:104
	scratch_load_b64 v[0:1], off, s32 offset:88
	scratch_load_b64 v[2:3], off, s32 offset:96
	s_waitcnt vmcnt(1)
	global_load_b64 v[4:5], v[0:1], off offset:8
	global_load_b64 v[0:1], v[0:1], off offset:40
	s_waitcnt vmcnt(0)
	v_and_b32_e64 v1, v3, v1
	v_and_b32_e64 v0, v2, v0
	s_mov_b32 s0, 12
	v_lshlrev_b64 v[0:1], s0, v[0:1]
	v_add_co_u32 v0, s0, v4, v0
	v_add_co_ci_u32_e64 v1, s0, v5, v1, s0
	scratch_store_b64 off, v[0:1], s32 offset:112
	scratch_load_b64 v[16:17], off, s32 offset:112
	scratch_load_b64 v[0:1], off, s32 offset:16
	scratch_load_b64 v[2:3], off, s32 offset:24
	scratch_load_b64 v[4:5], off, s32 offset:32
	scratch_load_b64 v[6:7], off, s32 offset:40
	scratch_load_b64 v[8:9], off, s32 offset:48
	scratch_load_b64 v[10:11], off, s32 offset:56
	scratch_load_b64 v[12:13], off, s32 offset:64
	scratch_load_b64 v[14:15], off, s32 offset:72
	scratch_load_b32 v18, off, s32 offset:80
	scratch_load_b32 v19, off, s32 offset:84
	s_mov_b64 s[0:1], exec
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s3, v18, v19
	s_mov_b32 s2, exec_lo
	s_and_b32 s3, s2, s3
	s_mov_b32 exec_lo, s3
	s_cbranch_execz .LBB0_10
; %bb.9:
	scratch_load_b64 v[19:20], off, s32 offset:104
	scratch_load_b32 v21, off, s32 offset:8
	s_waitcnt vmcnt(0)
	global_store_b32 v[19:20], v21, off offset:16
	v_mov_b32_e32 v22, s1
	v_mov_b32_e32 v21, s0
	global_store_b64 v[19:20], v[21:22], off offset:8
	v_mov_b32_e32 v21, 1
	global_store_b32 v[19:20], v21, off offset:20
.LBB0_10:                               ; %.exit1
	s_or_b32 exec_lo, exec_lo, s2
	s_mov_b32 s0, 0
	v_mov_b32_e32 v19, 0
	s_mov_b32 s0, 6
	v_lshlrev_b64 v[18:19], s0, v[18:19]
	v_add_co_u32 v16, s0, v16, v18
	v_add_co_ci_u32_e64 v17, s0, v17, v19, s0
	global_store_b64 v[16:17], v[0:1], off
	global_store_b64 v[16:17], v[2:3], off offset:8
	global_store_b64 v[16:17], v[4:5], off offset:16
	global_store_b64 v[16:17], v[6:7], off offset:24
	global_store_b64 v[16:17], v[8:9], off offset:32
	global_store_b64 v[16:17], v[10:11], off offset:40
	global_store_b64 v[16:17], v[12:13], off offset:48
	global_store_b64 v[16:17], v[14:15], off offset:56
	scratch_load_b32 v0, off, s32 offset:80
	scratch_load_b32 v1, off, s32 offset:84
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s1, v0, v1
	s_mov_b32 s0, exec_lo
	s_and_b32 s1, s0, s1
	s_mov_b32 exec_lo, s1
	s_cbranch_execz .LBB0_17
; %bb.11:
	scratch_load_b64 v[4:5], off, s32 offset:88
	scratch_load_b64 v[0:1], off, s32 offset:96
	s_mov_b64 s[2:3], 32
	s_waitcnt vmcnt(1)
	v_add_co_u32 v6, s1, v4, s2
	v_add_co_ci_u32_e64 v7, s1, v5, s3, s1
	global_load_b64 v[10:11], v[4:5], off offset:32 glc
	global_load_b64 v[2:3], v[4:5], off
	global_load_b64 v[8:9], v[4:5], off offset:40
	s_waitcnt vmcnt(0)
	v_and_b32_e64 v9, v9, v1
	v_and_b32_e64 v8, v8, v0
	s_mov_b32 s1, 24
	v_mad_u64_u32 v[12:13], s2, v8, s1, 0
	s_mov_b32 s2, 32
	v_lshrrev_b64 v[8:9], s2, v[8:9]
	v_mad_u64_u32 v[14:15], s1, v8, s1, v[13:14]
	v_lshlrev_b64 v[8:9], s2, v[14:15]
	s_mov_b32 s1, 0
	v_mov_b32_e32 v13, 0
	v_or_b32_e64 v9, v13, v9
	v_or_b32_e64 v8, v12, v8
	v_add_co_u32 v8, s1, v2, v8
	v_add_co_ci_u32_e64 v9, s1, v3, v9, s1
	global_store_b64 v[8:9], v[10:11], off
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v11
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_atomic_cmpswap_b64 v[2:3], v[4:5], v[0:3], off offset:32 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u64_e64 s1, v[2:3], v[10:11]
	v_cmp_ne_u64_e64 s2, v[2:3], v[10:11]
	s_mov_b32 s1, exec_lo
	s_and_b32 s2, s1, s2
	s_mov_b32 exec_lo, s2
	s_cbranch_execz .LBB0_14
; %bb.12:                               ; %.preheader.i2.preheader
	s_mov_b32 s2, 0
.LBB0_13:                               ; %.preheader.i2
                                        ; =>This Inner Loop Header: Depth=1
                                        ; implicit-def: $sgpr3
	s_sleep 1
	global_store_b64 v[8:9], v[2:3], off
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_atomic_cmpswap_b64 v[10:11], v[6:7], v[0:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u64_e64 s3, v[10:11], v[2:3]
	s_or_b32 s2, s3, s2
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v11
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_13
.LBB0_14:                               ; %Flow14
	s_or_b32 exec_lo, exec_lo, s1
; %bb.15:                               ; %.loopexit.i3
	global_load_b64 v[2:3], v[4:5], off offset:16
	s_mov_b64 s[2:3], 1
	v_mov_b32_e32 v0, s2
	v_mov_b32_e32 v1, s3
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_atomic_add_u64 v[2:3], v[0:1], off offset:8
	global_load_b64 v[0:1], v[2:3], off offset:16
	s_mov_b64 s[2:3], 0
	s_waitcnt vmcnt(0)
	v_cmp_ne_u64_e64 s1, v[0:1], s[2:3]
	s_mov_b32 s2, exec_lo
	s_and_b32 s1, s2, s1
	s_mov_b32 exec_lo, s1
	s_cbranch_execz .LBB0_17
; %bb.16:
	global_load_b32 v2, v[2:3], off offset:24
	s_mov_b32 s1, 0
	v_mov_b32_e32 v3, 0
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_store_b64 v[0:1], v[2:3], off
	v_readfirstlane_b32 s1, v2
	s_mov_b32 s2, 0xff
	s_and_b32 m0, s1, s2
	s_sendmsg sendmsg(MSG_INTERRUPT)
.LBB0_17:                               ; %Flow15
	s_or_b32 exec_lo, exec_lo, s0
; %bb.18:                               ; %.exit4
	scratch_load_b64 v[3:4], off, s32 offset:104
	scratch_load_b64 v[0:1], off, s32 offset:112
	scratch_load_b32 v2, off, s32 offset:80
	scratch_load_b32 v5, off, s32 offset:84
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s0, v2, v5
	s_mov_b64 s[2:3], 20
	v_add_co_u32 v3, s1, v3, s2
	v_add_co_ci_u32_e64 v4, s1, v4, s3, s1
.LBB0_19:                               ; =>This Inner Loop Header: Depth=1
	s_mov_b32 s1, 1
	v_mov_b32_e32 v5, 1
	s_mov_b32 s1, exec_lo
	s_and_b32 s2, s1, s0
	s_mov_b32 exec_lo, s2
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	global_load_b32 v5, v[3:4], off glc
	s_waitcnt vmcnt(0)
	buffer_gl0_inv
	buffer_gl1_inv
	s_mov_b32 s2, 1
	v_and_b32_e64 v5, v5, s2
.LBB0_21:                               ;   in Loop: Header=BB0_19 Depth=1
	s_or_b32 exec_lo, exec_lo, s1
	v_readfirstlane_b32 s2, v5
	s_mov_b32 s1, -1
	s_mov_b32 s3, 0
	s_cmp_eq_u32 s2, s3
	s_cselect_b32 s2, -1, 0
	s_and_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_19 Depth=1
	s_sleep 1
	s_mov_b32 s1, 0
.LBB0_23:                               ; %Flow10
                                        ;   in Loop: Header=BB0_19 Depth=1
	v_cndmask_b32_e64 v5, 0, 1, s1
	s_mov_b32 s1, 1
	v_cmp_ne_u32_e64 s1, v5, s1
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_19
; %bb.24:                               ; %.exit5
	s_mov_b32 s0, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s0, 6
	v_lshlrev_b64 v[2:3], s0, v[2:3]
	v_add_co_u32 v2, s0, v0, v2
	v_add_co_ci_u32_e64 v3, s0, v1, v3, s0
	global_load_b64 v[0:1], v[2:3], off
	global_load_b64 v[2:3], v[2:3], off offset:8
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[0:3], s32 offset:128
	scratch_load_b32 v0, off, s32 offset:80
	scratch_load_b32 v1, off, s32 offset:84
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s1, v0, v1
	s_mov_b32 s0, exec_lo
	s_and_b32 s1, s0, s1
	s_mov_b32 exec_lo, s1
	s_cbranch_execz .LBB0_28
; %bb.25:
	scratch_load_b64 v[8:9], off, s32 offset:88
	scratch_load_b64 v[0:1], off, s32 offset:96
	s_waitcnt vmcnt(1)
	global_load_b64 v[2:3], v[8:9], off offset:40
	s_mov_b64 s[2:3], 1
	s_waitcnt vmcnt(0)
	v_add_co_u32 v4, s1, v2, s2
	v_add_co_ci_u32_e64 v5, s1, v3, s3, s1
	v_add_co_u32 v0, s1, v4, v0
	v_add_co_ci_u32_e64 v1, s1, v5, v1, s1
	s_mov_b64 s[2:3], 0
	v_cmp_eq_u64_e64 s1, v[0:1], s[2:3]
	v_cndmask_b32_e64 v1, v1, v5, s1
	v_cndmask_b32_e64 v0, v0, v4, s1
	s_mov_b64 s[2:3], 24
	v_add_co_u32 v4, s1, v8, s2
	v_add_co_ci_u32_e64 v5, s1, v9, s3, s1
	global_load_b64 v[10:11], v[8:9], off offset:24 glc
	global_load_b64 v[6:7], v[8:9], off
	v_and_b32_e64 v3, v1, v3
	v_and_b32_e64 v2, v0, v2
	s_mov_b32 s1, 24
	v_mad_u64_u32 v[12:13], s2, v2, s1, 0
	s_mov_b32 s2, 32
	v_lshrrev_b64 v[2:3], s2, v[2:3]
	v_mad_u64_u32 v[14:15], s1, v2, s1, v[13:14]
	v_lshlrev_b64 v[2:3], s2, v[14:15]
	s_mov_b32 s1, 0
	v_mov_b32_e32 v13, 0
	v_or_b32_e64 v3, v13, v3
	v_or_b32_e64 v2, v12, v2
	s_waitcnt vmcnt(0)
	v_add_co_u32 v6, s1, v6, v2
	v_add_co_ci_u32_e64 v7, s1, v7, v3, s1
	global_store_b64 v[6:7], v[10:11], off
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v11
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_atomic_cmpswap_b64 v[2:3], v[8:9], v[0:3], off offset:24 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u64_e64 s1, v[2:3], v[10:11]
	v_cmp_ne_u64_e64 s1, v[2:3], v[10:11]
	s_mov_b32 s2, exec_lo
	s_and_b32 s1, s2, s1
	s_mov_b32 exec_lo, s1
	s_cbranch_execz .LBB0_28
; %bb.26:                               ; %.preheader.i6.preheader
	s_mov_b32 s1, 0
.LBB0_27:                               ; %.preheader.i6
                                        ; =>This Inner Loop Header: Depth=1
                                        ; implicit-def: $sgpr2
	s_sleep 1
	global_store_b64 v[6:7], v[2:3], off
	s_waitcnt vmcnt(0)
	s_waitcnt_vscnt null, 0x0
	global_atomic_cmpswap_b64 v[8:9], v[4:5], v[0:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u64_e64 s2, v[8:9], v[2:3]
	s_or_b32 s1, s2, s1
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v3, v9
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_27
.LBB0_28:                               ; %.exit8
	s_or_b32 exec_lo, exec_lo, s0
	scratch_load_b128 v[0:3], off, s32 offset:128
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_waitcnt_vscnt null, 0x0
	s_setpc_b64 s[30:31]
.Lfunc_end1:
	.size	__ockl_hostcall_internal, .Lfunc_end1-__ockl_hostcall_internal
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 2680
; NumSgprs: 35
; NumVgprs: 23
; ScratchSize: 160
; MemoryBound: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE, 1

	.type	.str,@object                    ; @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Thread Idx: %i"
	.size	.str, 15

	.ident	"AMD clang version 15.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.4.2 22506 5cddd31fe35b165caadc4409b1d79d0d377c89be)"
	.section	".note.GNU-stack"
	.addrsig
	.addrsig_sym _ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .offset:         0
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         8
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     hidden_hostcall_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z13printf_kernelv
    .private_segment_fixed_size: 160
    .sgpr_count:     35
    .sgpr_spill_count: 0
    .symbol:         _Z13printf_kernelv.kd
    .vgpr_count:     36
    .vgpr_spill_count: 0
    .wavefront_size: 32
amdhsa.target:   amdgcn-amd-amdhsa--gfx1100
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
