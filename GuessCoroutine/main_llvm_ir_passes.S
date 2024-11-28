; clang++ -std=c++20 -fcoroutines -S -O0 -o main_llvm_ir_passes.S main.cpp
    .section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.globl	__Z5GuessRN5CoRet4NoteE         ; -- Begin function _Z5GuessRN5CoRet4NoteE
	.p2align	2
__Z5GuessRN5CoRet4NoteE:                ; @_Z5GuessRN5CoRet4NoteE
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #464
	stp	x28, x27, [sp, #432]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	x9, #0                          ; =0x0
	stur	x0, [x29, #-32]
	mov	w8, #1                          ; =0x1
	stur	x9, [x29, #-176]                ; 8-byte Folded Spill
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	ldur	x0, [x29, #-176]                ; 8-byte Folded Reload
	stur	x0, [x29, #-184]                ; 8-byte Folded Spill
	b	LBB0_4
LBB0_2:
	mov	x0, #72                         ; =0x48
	bl	__Znwm
	stur	x0, [x29, #-192]                ; 8-byte Folded Spill
	b	LBB0_3
LBB0_3:
	ldur	x8, [x29, #-192]                ; 8-byte Folded Reload
	stur	x8, [x29, #-184]                ; 8-byte Folded Spill
	b	LBB0_4
LBB0_4:
	ldur	x9, [x29, #-184]                ; 8-byte Folded Reload
	stur	x9, [x29, #-200]                ; 8-byte Folded Spill
	adrp	x8, __Z5GuessRN5CoRet4NoteE.resume@PAGE
	add	x8, x8, __Z5GuessRN5CoRet4NoteE.resume@PAGEOFF
	str	x8, [x9]
	adrp	x10, __Z5GuessRN5CoRet4NoteE.cleanup@PAGE
	add	x10, x10, __Z5GuessRN5CoRet4NoteE.cleanup@PAGEOFF
	adrp	x8, __Z5GuessRN5CoRet4NoteE.destroy@PAGE
	add	x8, x8, __Z5GuessRN5CoRet4NoteE.destroy@PAGEOFF
	mov	w11, #1                         ; =0x1
	and	w11, w11, #0x1
	ands	w11, w11, #0x1
	csel	x8, x8, x10, ne
	str	x8, [x9, #8]
	b	LBB0_5
LBB0_5:
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	add	x9, x8, #69
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	add	x9, x8, #40
	str	x9, [sp, #208]                  ; 8-byte Folded Spill
	add	x9, x8, #70
	str	x9, [sp, #216]                  ; 8-byte Folded Spill
	add	x9, x8, #48
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	add	x9, x8, #71
	stur	x9, [x29, #-216]                ; 8-byte Folded Spill
	add	x8, x8, #16
	stur	x8, [x29, #-208]                ; 8-byte Folded Spill
	b	LBB0_6
LBB0_6:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	str	x8, [x9, #32]
	bl	__ZN5CoRet12promise_typeC1Ev
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
Ltmp0:
	bl	__ZN5CoRet12promise_type17get_return_objectEv
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
Ltmp1:
	b	LBB0_7
LBB0_7:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	ldr	x8, [sp, #192]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZN5CoRet12promise_type15initial_suspendEv
	b	LBB0_8
LBB0_8:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__113suspend_never11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB0_18
	b	LBB0_9
LBB0_9:
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB0_10
LBB0_10:
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	sub	x0, x29, #88
	stur	x8, [x29, #-88]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-80]
	ldur	x1, [x29, #-80]
	bl	__ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB0_11
LBB0_11:
	b	LBB0_12
LBB0_12:
	b	LBB0_13
LBB0_13:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_18
	b	LBB0_14
LBB0_14:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_109
	b	LBB0_15
LBB0_15:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #188]                  ; 4-byte Folded Spill
	b	LBB0_16
LBB0_16:
	ldr	w8, [sp, #188]                  ; 4-byte Folded Reload
	str	w8, [sp, #184]                  ; 4-byte Folded Spill
	b	LBB0_20
LBB0_17:
Ltmp2:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB0_115
LBB0_18:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #176]                  ; 4-byte Folded Spill
	bl	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	ldr	w8, [sp, #176]                  ; 4-byte Folded Reload
	str	w8, [sp, #180]                  ; 4-byte Folded Spill
	b	LBB0_19
LBB0_19:
	ldr	w8, [sp, #180]                  ; 4-byte Folded Reload
	str	w8, [sp, #184]                  ; 4-byte Folded Spill
	b	LBB0_20
LBB0_20:
	ldr	w9, [sp, #184]                  ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #172]                  ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_22
	b	LBB0_21
LBB0_21:
	ldr	w8, [sp, #172]                  ; 4-byte Folded Reload
	str	w8, [sp, #168]                  ; 4-byte Folded Spill
	b	LBB0_104
LBB0_22:
Ltmp3:
	bl	_rand
	str	w0, [sp, #164]                  ; 4-byte Folded Spill
Ltmp4:
	b	LBB0_23
LBB0_23:
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w8, [sp, #164]                  ; 4-byte Folded Reload
	mov	w11, #30                        ; =0x1e
	sdiv	w10, w8, w11
	mul	w10, w10, w11
	subs	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #56]
	ldr	x8, [x9, #32]
	str	x8, [x9, #40]
Ltmp6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp7:
	b	LBB0_24
LBB0_24:
Ltmp8:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp9:
	b	LBB0_25
LBB0_25:
	b	LBB0_26
LBB0_26:                                ; =>This Inner Loop Header: Depth=1
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	bl	__ZN5CoRet5Input11await_readyEv
	str	w0, [sp, #148]                  ; 4-byte Folded Spill
	b	LBB0_28
LBB0_28:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #148]                  ; 4-byte Folded Reload
	tbnz	w8, #0, LBB0_40
	b	LBB0_29
LBB0_29:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB0_30
LBB0_30:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-120]
	ldur	x1, [x29, #-120]
	bl	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	b	LBB0_31
LBB0_31:                                ;   in Loop: Header=BB0_26 Depth=1
	b	LBB0_32
LBB0_32:                                ;   in Loop: Header=BB0_26 Depth=1
	b	LBB0_33
LBB0_33:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_40
	b	LBB0_34
LBB0_34:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_109
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #144]                  ; 4-byte Folded Spill
	b	LBB0_36
LBB0_36:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #144]                  ; 4-byte Folded Reload
	str	w8, [sp, #140]                  ; 4-byte Folded Spill
	b	LBB0_72
LBB0_37:
Ltmp5:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB0_83
LBB0_38:
Ltmp23:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB0_82
LBB0_39:
Ltmp20:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB0_76
LBB0_40:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	bl	__ZN5CoRet5Input12await_resumeEv
	str	w0, [sp, #136]                  ; 4-byte Folded Spill
	b	LBB0_41
LBB0_41:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #136]                  ; 4-byte Folded Reload
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	str	w8, [x9, #60]
Ltmp10:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp11:
	b	LBB0_42
LBB0_42:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w1, [x8, #60]
Ltmp12:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp13:
	b	LBB0_43
LBB0_43:                                ;   in Loop: Header=BB0_26 Depth=1
Ltmp14:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp15:
	b	LBB0_44
LBB0_44:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp16:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp17:
	b	LBB0_45
LBB0_45:                                ;   in Loop: Header=BB0_26 Depth=1
Ltmp18:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp19:
	b	LBB0_46
LBB0_46:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_49
	b	LBB0_47
LBB0_47:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #100]                  ; 4-byte Folded Spill
	b	LBB0_48
LBB0_48:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	str	w8, [sp, #96]                   ; 4-byte Folded Spill
	b	LBB0_51
LBB0_49:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w8, eq
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB0_50
LBB0_50:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #92]                   ; 4-byte Folded Reload
	str	w8, [sp, #96]                   ; 4-byte Folded Spill
	b	LBB0_51
LBB0_51:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w9, [sp, #96]                   ; 4-byte Folded Reload
	str	w9, [x8, #64]
	ldr	w1, [x8, #64]
	bl	__ZN5CoRet12promise_type11yield_valueEi
	b	LBB0_52
LBB0_52:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB0_61
	b	LBB0_53
LBB0_53:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	mov	w8, #2                          ; =0x2
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB0_54
LBB0_54:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	str	x8, [x9, #48]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-136]
	ldur	x1, [x29, #-136]
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB0_55
LBB0_55:                                ;   in Loop: Header=BB0_26 Depth=1
	b	LBB0_56
LBB0_56:                                ;   in Loop: Header=BB0_26 Depth=1
	b	LBB0_57
LBB0_57:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_61
	b	LBB0_58
LBB0_58:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_109
	b	LBB0_59
LBB0_59:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #88]                   ; 4-byte Folded Spill
	b	LBB0_60
LBB0_60:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #88]                   ; 4-byte Folded Reload
	str	w8, [sp, #84]                   ; 4-byte Folded Spill
	b	LBB0_63
LBB0_61:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	str	w8, [sp, #80]                   ; 4-byte Folded Spill
	b	LBB0_62
LBB0_62:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #80]                   ; 4-byte Folded Reload
	str	w8, [sp, #84]                   ; 4-byte Folded Spill
	b	LBB0_63
LBB0_63:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w9, [sp, #84]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #72]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_65
	b	LBB0_64
LBB0_64:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB0_70
LBB0_65:                                ;   in Loop: Header=BB0_26 Depth=1
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w8, [x8, #64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_68
	b	LBB0_66
LBB0_66:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b	LBB0_67
LBB0_67:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB0_70
LBB0_68:                                ;   in Loop: Header=BB0_26 Depth=1
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	b	LBB0_69
LBB0_69:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #60]                   ; 4-byte Folded Reload
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB0_70
LBB0_70:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	str	w8, [sp, #56]                   ; 4-byte Folded Spill
	b	LBB0_71
LBB0_71:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #56]                   ; 4-byte Folded Reload
	str	w8, [sp, #140]                  ; 4-byte Folded Spill
	b	LBB0_72
LBB0_72:                                ;   in Loop: Header=BB0_26 Depth=1
	ldr	w8, [sp, #140]                  ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_75
	b	LBB0_73
LBB0_73:
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	subs	w8, w9, #5
	cset	w8, eq
	str	w9, [sp, #48]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_77
	b	LBB0_74
LBB0_74:
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b	LBB0_80
LBB0_75:                                ;   in Loop: Header=BB0_26 Depth=1
	b	LBB0_26
LBB0_76:
	b	LBB0_82
LBB0_77:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp21:
	bl	__ZN5CoRet12promise_type12return_valueEi
Ltmp22:
	b	LBB0_78
LBB0_78:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB0_79
LBB0_79:
	ldr	w8, [sp, #40]                   ; 4-byte Folded Reload
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b	LBB0_80
LBB0_80:
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	subs	w8, w9, #3
	cset	w8, eq
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_88
	b	LBB0_81
LBB0_81:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	str	w8, [sp, #168]                  ; 4-byte Folded Spill
	b	LBB0_104
LBB0_82:
	b	LBB0_83
LBB0_83:
	b	LBB0_84
LBB0_84:
	ldur	x0, [x29, #-64]
	bl	___cxa_begin_catch
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	bl	__ZN5CoRet12promise_type19unhandled_exceptionEv
	b	LBB0_85
LBB0_85:
Ltmp24:
	bl	___cxa_end_catch
Ltmp25:
	b	LBB0_86
LBB0_86:
	b	LBB0_87
LBB0_87:
	b	LBB0_88
LBB0_88:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	bl	__ZN5CoRet12promise_type13final_suspendEv
	ldur	x0, [x29, #-216]                ; 8-byte Folded Reload
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB0_98
	b	LBB0_89
LBB0_89:
	ldur	x9, [x29, #-200]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB0_90
LBB0_90:
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	sub	x0, x29, #168
	stur	x8, [x29, #-168]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	mov	x8, x0
	ldur	x0, [x29, #-216]                ; 8-byte Folded Reload
	stur	x8, [x29, #-160]
	ldur	x1, [x29, #-160]
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB0_91
LBB0_91:
	b	LBB0_92
LBB0_92:
	b	LBB0_93
LBB0_93:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_98
	b	LBB0_94
LBB0_94:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_109
	b	LBB0_95
LBB0_95:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB0_96
LBB0_96:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB0_100
LBB0_97:
Ltmp26:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB0_112
LBB0_98:
	ldur	x0, [x29, #-216]                ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB0_99
LBB0_99:
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB0_100
LBB0_100:
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_102
	b	LBB0_101
LBB0_101:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	str	w8, [sp, #168]                  ; 4-byte Folded Spill
	b	LBB0_104
LBB0_102:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_103
LBB0_103:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	str	w8, [sp, #168]                  ; 4-byte Folded Spill
	b	LBB0_104
LBB0_104:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	ldr	w8, [sp, #168]                  ; 4-byte Folded Reload
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	__ZN5CoRet12promise_typeD1Ev
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_106
	b	LBB0_105
LBB0_105:
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB0_106
LBB0_106:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_108
	b	LBB0_107
LBB0_107:
	b	LBB0_109
LBB0_108:
	b	LBB0_109
LBB0_109:
	b	LBB0_110
LBB0_110:
	b	LBB0_111
LBB0_111:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #432]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
LBB0_112:
	b	LBB0_113
LBB0_113:
	b	LBB0_114
LBB0_114:
	b	LBB0_115
LBB0_115:
	ldur	x0, [x29, #-208]                ; 8-byte Folded Reload
	bl	__ZN5CoRet12promise_typeD1Ev
	ldur	x8, [x29, #-200]                ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_117
	b	LBB0_116
LBB0_116:
	ldur	x0, [x29, #-200]                ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB0_117
LBB0_117:
	b	LBB0_118
LBB0_118:
	ldur	x0, [x29, #-64]
	bl	__Unwind_Resume
; %bb.119:
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp9-Ltmp6                    ;   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp19-Ltmp10                  ;   Call between Ltmp10 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp24-Ltmp22                  ;   Call between Ltmp22 and Ltmp24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Lfunc_end0-Ltmp25              ;   Call between Ltmp25 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5CoRet12promise_typeC1Ev    ; -- Begin function _ZN5CoRet12promise_typeC1Ev
	.weak_def_can_be_hidden	__ZN5CoRet12promise_typeC1Ev
	.p2align	2
__ZN5CoRet12promise_typeC1Ev:           ; @_ZN5CoRet12promise_typeC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5CoRet12promise_typeC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type17get_return_objectEv ; -- Begin function _ZN5CoRet12promise_type17get_return_objectEv
	.weak_definition	__ZN5CoRet12promise_type17get_return_objectEv
	.p2align	2
__ZN5CoRet12promise_type17get_return_objectEv: ; @_ZN5CoRet12promise_type17get_return_objectEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type15initial_suspendEv ; -- Begin function _ZN5CoRet12promise_type15initial_suspendEv
	.weak_definition	__ZN5CoRet12promise_type15initial_suspendEv
	.p2align	2
__ZN5CoRet12promise_type15initial_suspendEv: ; @_ZN5CoRet12promise_type15initial_suspendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113suspend_never11await_readyB8ne180100Ev ; -- Begin function _ZNKSt3__113suspend_never11await_readyB8ne180100Ev
	.globl	__ZNKSt3__113suspend_never11await_readyB8ne180100Ev
	.weak_definition	__ZNKSt3__113suspend_never11await_readyB8ne180100Ev
	.p2align	2
__ZNKSt3__113suspend_never11await_readyB8ne180100Ev: ; @_ZNKSt3__113suspend_never11await_readyB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w8, #1                          ; =0x1
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE ; -- Begin function _ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.globl	__ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.weak_definition	__ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.p2align	2
__ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE: ; @_ZNKSt3__113suspend_never13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv ; -- Begin function _ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	.globl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	.weak_definition	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	.p2align	2
__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv: ; @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	add	x0, sp, #8
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev
	ldr	x8, [sp]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev
	bl	__ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev ; -- Begin function _ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	.globl	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	.weak_definition	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	.p2align	2
__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev: ; @_ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10                         ; =0xa
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sxtb	w1, w8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet5Input11await_readyEv ; -- Begin function _ZN5CoRet5Input11await_readyEv
	.weak_definition	__ZN5CoRet5Input11await_readyEv
	.p2align	2
__ZN5CoRet5Input11await_readyEv:        ; @_ZN5CoRet5Input11await_readyEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w8, #0                          ; =0x0
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE ; -- Begin function _ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	.weak_definition	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	.p2align	2
__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE: ; @_ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet5Input12await_resumeEv ; -- Begin function _ZN5CoRet5Input12await_resumeEv
	.weak_definition	__ZN5CoRet5Input12await_resumeEv
	.p2align	2
__ZN5CoRet5Input12await_resumeEv:       ; @_ZN5CoRet5Input12await_resumeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type11yield_valueEi ; -- Begin function _ZN5CoRet12promise_type11yield_valueEi
	.weak_definition	__ZN5CoRet12promise_type11yield_valueEi
	.p2align	2
__ZN5CoRet12promise_type11yield_valueEi: ; @_ZN5CoRet12promise_type11yield_valueEi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev ; -- Begin function _ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	.globl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	.weak_definition	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	.p2align	2
__ZNKSt3__114suspend_always11await_readyB8ne180100Ev: ; @_ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w8, #0                          ; =0x0
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE ; -- Begin function _ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.globl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.weak_definition	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.p2align	2
__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE: ; @_ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev ; -- Begin function _ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	.globl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	.weak_definition	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	.p2align	2
__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev: ; @_ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type12return_valueEi ; -- Begin function _ZN5CoRet12promise_type12return_valueEi
	.weak_definition	__ZN5CoRet12promise_type12return_valueEi
	.p2align	2
__ZN5CoRet12promise_type12return_valueEi: ; @_ZN5CoRet12promise_type12return_valueEi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x9, #4]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #4]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type19unhandled_exceptionEv ; -- Begin function _ZN5CoRet12promise_type19unhandled_exceptionEv
	.weak_definition	__ZN5CoRet12promise_type19unhandled_exceptionEv
	.p2align	2
__ZN5CoRet12promise_type19unhandled_exceptionEv: ; @_ZN5CoRet12promise_type19unhandled_exceptionEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x8, sp, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZSt17current_exceptionv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #8
	bl	__ZNSt13exception_ptraSERKS_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt13exception_ptrD1Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_type13final_suspendEv ; -- Begin function _ZN5CoRet12promise_type13final_suspendEv
	.weak_definition	__ZN5CoRet12promise_type13final_suspendEv
	.p2align	2
__ZN5CoRet12promise_type13final_suspendEv: ; @_ZN5CoRet12promise_type13final_suspendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_typeD1Ev    ; -- Begin function _ZN5CoRet12promise_typeD1Ev
	.weak_def_can_be_hidden	__ZN5CoRet12promise_typeD1Ev
	.p2align	2
__ZN5CoRet12promise_typeD1Ev:           ; @_ZN5CoRet12promise_typeD1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5CoRet12promise_typeD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #0                          ; =0x0
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	sub	x0, x29, #20
	stur	wzr, [x29, #-20]
	bl	__Z5GuessRN5CoRet4NoteE
	stur	x0, [x29, #-32]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	b	LBB24_1
LBB24_1:                                ; =>This Inner Loop Header: Depth=1
	adrp	x0, __ZNSt3__13cinE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__13cinE@GOTPAGEOFF]
	sub	x1, x29, #20
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w1, [x29, #-20]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	sub	x0, x29, #32
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	stur	x1, [x29, #-40]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	ldr	w8, [x0]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB24_3
	b	LBB24_2
LBB24_2:                                ;   in Loop: Header=BB24_1 Depth=1
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB24_4
LBB24_3:                                ;   in Loop: Header=BB24_1 Depth=1
	sub	x0, x29, #32
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	ldr	w8, [x0]
	subs	w8, w8, #0
	cset	w10, eq
	adrp	x9, l_.str.8@PAGE
	add	x9, x9, l_.str.8@PAGEOFF
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x8, x8, x9, ne
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB24_4
LBB24_4:                                ;   in Loop: Header=BB24_1 Depth=1
	ldur	x0, [x29, #-40]                 ; 8-byte Folded Reload
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	sub	x0, x29, #32
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	ldr	w8, [x0]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB24_6
	b	LBB24_5
LBB24_5:
	b	LBB24_7
LBB24_6:                                ;   in Loop: Header=BB24_1 Depth=1
	b	LBB24_1
LBB24_7:
	sub	x0, x29, #32
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev
	tbz	w0, #0, LBB24_9
	b	LBB24_8
LBB24_8:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #32
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [x8, #4]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev
	b	LBB24_10
LBB24_9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #32
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w1, [x8, #4]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
	b	LBB24_10
LBB24_10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE6resumeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x8, [x0]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7promiseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	add	x0, x8, #16
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE4doneB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7destroyB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x8, [x0, #8]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_typeC2Ev    ; -- Begin function _ZN5CoRet12promise_typeC2Ev
	.weak_def_can_be_hidden	__ZN5CoRet12promise_typeC2Ev
	.p2align	2
__ZN5CoRet12promise_typeC2Ev:           ; @_ZN5CoRet12promise_typeC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt13exception_ptrC1B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt13exception_ptrC1B8ne180100Ev ; -- Begin function _ZNSt13exception_ptrC1B8ne180100Ev
	.globl	__ZNSt13exception_ptrC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt13exception_ptrC1B8ne180100Ev
	.p2align	2
__ZNSt13exception_ptrC1B8ne180100Ev:    ; @_ZNSt13exception_ptrC1B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt13exception_ptrC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt13exception_ptrC2B8ne180100Ev ; -- Begin function _ZNSt13exception_ptrC2B8ne180100Ev
	.globl	__ZNSt13exception_ptrC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt13exception_ptrC2B8ne180100Ev
	.p2align	2
__ZNSt13exception_ptrC2B8ne180100Ev:    ; @_ZNSt13exception_ptrC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_ ; -- Begin function _ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_
	.globl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_
	.weak_definition	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_
	.p2align	2
__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_: ; @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_promiseB8ne180100ERS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	add	x0, sp, #8
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev
	ldr	x8, [sp]
	subs	x8, x8, #16
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev ; -- Begin function _ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev
	.p2align	2
__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev: ; @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev ; -- Begin function _ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev
	.p2align	2
__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev: ; @_ZNSt3__116coroutine_handleIN5CoRet12promise_typeEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv ; -- Begin function _ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv
	.globl	__ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv
	.weak_definition	__ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv
	.p2align	2
__ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv: ; @_ZNSt3__116coroutine_handleIvE12from_addressB8ne180100EPv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	add	x0, sp, #8
	bl	__ZNSt3__116coroutine_handleIvEC1Ev
	ldr	x8, [sp]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev ; -- Begin function _ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev
	.globl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev
	.weak_definition	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev
	.p2align	2
__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev: ; @_ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEE7addressB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116coroutine_handleIvEC1Ev ; -- Begin function _ZNSt3__116coroutine_handleIvEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__116coroutine_handleIvEC1Ev
	.p2align	2
__ZNSt3__116coroutine_handleIvEC1Ev:    ; @_ZNSt3__116coroutine_handleIvEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116coroutine_handleIvEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116coroutine_handleIvEC2Ev ; -- Begin function _ZNSt3__116coroutine_handleIvEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__116coroutine_handleIvEC2Ev
	.p2align	2
__ZNSt3__116coroutine_handleIvEC2Ev:    ; @_ZNSt3__116coroutine_handleIvEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5CoRet12promise_typeD2Ev    ; -- Begin function _ZN5CoRet12promise_typeD2Ev
	.weak_def_can_be_hidden	__ZN5CoRet12promise_typeD2Ev
	.p2align	2
__ZN5CoRet12promise_typeD2Ev:           ; @_ZN5CoRet12promise_typeD2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt13exception_ptrD1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp45:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp46:
	b	LBB40_1
LBB40_1:
Ltmp48:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp49:
	b	LBB40_2
LBB40_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB40_18
	b	LBB40_3
LBB40_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp50:
	bl	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp51:
	b	LBB40_4
LBB40_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB40_6
	b	LBB40_5
LBB40_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB40_7
LBB40_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB40_7
LBB40_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp52:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp53:
	b	LBB40_8
LBB40_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp54:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp55:
	b	LBB40_9
LBB40_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	tbz	w0, #0, LBB40_17
	b	LBB40_10
LBB40_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp56:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
Ltmp57:
	b	LBB40_11
LBB40_11:
	b	LBB40_17
LBB40_12:
Ltmp47:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB40_14
LBB40_13:
Ltmp58:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB40_14
LBB40_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp59:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp60:
	b	LBB40_15
LBB40_15:
	bl	___cxa_end_catch
	b	LBB40_16
LBB40_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB40_17:
	b	LBB40_18
LBB40_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB40_16
LBB40_19:
Ltmp61:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp62:
	bl	___cxa_end_catch
Ltmp63:
	b	LBB40_20
LBB40_20:
	b	LBB40_21
LBB40_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB40_22:
Ltmp64:
	bl	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table40:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp45-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin1            ;     jumps to Ltmp47
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp48-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp57-Ltmp48                  ;   Call between Ltmp48 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin1            ;     jumps to Ltmp58
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp57-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp59-Ltmp57                  ;   Call between Ltmp57 and Ltmp59
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin1            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp62-Ltmp60                  ;   Call between Ltmp60 and Ltmp62
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin1            ;     jumps to Ltmp64
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp63-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Lfunc_end1-Ltmp63              ;   Call between Ltmp63 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp65:
	bl	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp66:
	b	LBB41_1
LBB41_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB41_2:
Ltmp67:
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table41:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp65-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp66-Ltmp65                  ;   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin2            ;     jumps to Ltmp67
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB43_2
	b	LBB43_1
LBB43_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB43_23
LBB43_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB8ne180100Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB43_4
	b	LBB43_3
LBB43_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB43_5
LBB43_4:
	str	xzr, [sp, #72]
	b	LBB43_5
LBB43_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB43_9
	b	LBB43_6
LBB43_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB43_8
	b	LBB43_7
LBB43_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB43_23
LBB43_8:
	b	LBB43_9
LBB43_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB43_18
	b	LBB43_10
LBB43_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp69:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp70:
	b	LBB43_11
LBB43_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB43_14
	b	LBB43_12
LBB43_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB43_15
LBB43_13:
Ltmp71:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB43_24
LBB43_14:
	str	wzr, [sp, #24]
	b	LBB43_15
LBB43_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB43_17
	b	LBB43_16
LBB43_16:
	b	LBB43_23
LBB43_17:
	b	LBB43_18
LBB43_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB43_22
	b	LBB43_19
LBB43_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB43_21
	b	LBB43_20
LBB43_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB43_23
LBB43_21:
	b	LBB43_22
LBB43_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne180100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB43_23
LBB43_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB43_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table43:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp69-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp69
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin3            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp70              ;   Call between Ltmp70 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne180100Ev: ; @_ZNKSt3__18ios_base5flagsB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	tbz	w0, #0, LBB46_2
	b	LBB46_1
LBB46_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB46_2
LBB46_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB8ne180100Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne180100Ev: ; @_ZNKSt3__18ios_base5widthB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	bl	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne180100El ; -- Begin function _ZNSt3__18ios_base5widthB8ne180100El
	.globl	__ZNSt3__18ios_base5widthB8ne180100El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne180100El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne180100El:  ; @_ZNSt3__18ios_base5widthB8ne180100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne180100Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne180100Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne180100Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	tbz	w0, #0, LBB62_2
	b	LBB62_1
LBB62_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB62_3
LBB62_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB62_3
LBB62_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	ands	w8, w8, #0xff
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp82:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp83:
	b	LBB71_1
LBB71_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB71_2:
Ltmp84:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table71:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp82-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp83-Ltmp82                  ;   Call between Ltmp82 and Ltmp83
	.uleb128 Ltmp84-Lfunc_begin4            ;     jumps to Ltmp84
	.byte	1                               ;   On action: 1
Lcst_end4:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne180100Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne180100Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp87:
	bl	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp88:
	b	LBB76_1
LBB76_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp89:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp90:
	b	LBB76_2
LBB76_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB76_3:
Ltmp91:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB76_4
LBB76_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table76:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp87-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp87
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp90-Ltmp87                  ;   Call between Ltmp87 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin5            ;     jumps to Ltmp91
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp90              ;   Call between Ltmp90 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne180100Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne180100Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne180100Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne180100Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne180100Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne180100Ej: ; @_ZNSt3__18ios_base8setstateB8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne180100EPKc ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.globl	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne180100EPKc: ; @_ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5GuessRN5CoRet4NoteE.resume
__Z5GuessRN5CoRet4NoteE.resume:         ; @_Z5GuessRN5CoRet4NoteE.resume
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-104]                ; 8-byte Folded Spill
	b	LBB81_106
LBB81_1:
	b	LBB81_2
LBB81_2:
	b	LBB81_3
LBB81_3:
	mov	w8, #0                          ; =0x0
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB81_7
	b	LBB81_4
LBB81_4:
	mov	w8, #0                          ; =0x0
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB81_100
	b	LBB81_5
LBB81_5:
	mov	w8, #2                          ; =0x2
	stur	w8, [x29, #-108]                ; 4-byte Folded Spill
	b	LBB81_6
LBB81_6:
	ldur	w8, [x29, #-108]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB81_9
LBB81_7:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	stur	w9, [x29, #-120]                ; 4-byte Folded Spill
	add	x0, x8, #69
	bl	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	ldur	w8, [x29, #-120]                ; 4-byte Folded Reload
	stur	w8, [x29, #-116]                ; 4-byte Folded Spill
	b	LBB81_8
LBB81_8:
	ldur	w8, [x29, #-116]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB81_9
LBB81_9:
	ldur	w9, [x29, #-112]                ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	stur	w9, [x29, #-124]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB81_11
	b	LBB81_10
LBB81_10:
	ldur	w8, [x29, #-124]                ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB81_95
LBB81_11:
Ltmp92:
	bl	_rand
	stur	w0, [x29, #-132]                ; 4-byte Folded Spill
Ltmp93:
	b	LBB81_12
LBB81_12:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w8, [x29, #-132]                ; 4-byte Folded Reload
	mov	w11, #30                        ; =0x1e
	sdiv	w10, w8, w11
	mul	w10, w10, w11
	subs	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #56]
	ldr	x8, [x9, #32]
	str	x8, [x9, #40]
Ltmp95:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	stur	x0, [x29, #-144]                ; 8-byte Folded Spill
Ltmp96:
	b	LBB81_13
LBB81_13:
Ltmp97:
	ldur	x0, [x29, #-144]                ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp98:
	b	LBB81_14
LBB81_14:
	b	LBB81_15
LBB81_15:
	b	LBB81_16
LBB81_16:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input11await_readyEv
	stur	w0, [x29, #-148]                ; 4-byte Folded Spill
	b	LBB81_17
LBB81_17:
	ldur	w8, [x29, #-148]                ; 4-byte Folded Reload
	tbnz	w8, #0, LBB81_30
	b	LBB81_18
LBB81_18:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB81_19
LBB81_19:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x1, [x29, #-48]
	add	x0, x8, #40
	bl	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	b	LBB81_20
LBB81_20:
	mov	w8, #65535                      ; =0xffff
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB81_22
LBB81_21:
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB81_22
LBB81_22:
	ldur	w8, [x29, #-152]                ; 4-byte Folded Reload
	stur	w8, [x29, #-156]                ; 4-byte Folded Spill
	b	LBB81_23
LBB81_23:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB81_30
	b	LBB81_24
LBB81_24:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB81_100
	b	LBB81_25
LBB81_25:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #160]                  ; 4-byte Folded Spill
	b	LBB81_26
LBB81_26:
	ldr	w8, [sp, #160]                  ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB81_63
LBB81_27:
Ltmp94:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB81_74
LBB81_28:
Ltmp112:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB81_73
LBB81_29:
Ltmp109:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB81_67
LBB81_30:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input12await_resumeEv
	str	w0, [sp, #152]                  ; 4-byte Folded Spill
	b	LBB81_31
LBB81_31:
	ldr	w8, [sp, #152]                  ; 4-byte Folded Reload
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	str	w8, [x9, #60]
Ltmp99:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp100:
	b	LBB81_32
LBB81_32:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #60]
Ltmp101:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp102:
	b	LBB81_33
LBB81_33:
Ltmp103:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp104:
	b	LBB81_34
LBB81_34:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp105:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp106:
	b	LBB81_35
LBB81_35:
Ltmp107:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp108:
	b	LBB81_36
LBB81_36:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB81_39
	b	LBB81_37
LBB81_37:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #116]                  ; 4-byte Folded Spill
	b	LBB81_38
LBB81_38:
	ldr	w8, [sp, #116]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB81_41
LBB81_39:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w8, eq
	str	w8, [sp, #108]                  ; 4-byte Folded Spill
	b	LBB81_40
LBB81_40:
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB81_41
LBB81_41:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w9, [sp, #112]                  ; 4-byte Folded Reload
	str	w9, [x8, #64]
	ldr	w1, [x8, #64]
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type11yield_valueEi
	b	LBB81_42
LBB81_42:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB81_52
	b	LBB81_43
LBB81_43:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #2                          ; =0x2
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB81_44
LBB81_44:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, x9, #48
	str	x8, [x9, #48]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB81_45
LBB81_45:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB81_47
LBB81_46:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB81_47
LBB81_47:
	ldr	w8, [sp, #104]                  ; 4-byte Folded Reload
	str	w8, [sp, #100]                  ; 4-byte Folded Spill
	b	LBB81_48
LBB81_48:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB81_52
	b	LBB81_49
LBB81_49:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB81_100
	b	LBB81_50
LBB81_50:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #96]                   ; 4-byte Folded Spill
	b	LBB81_51
LBB81_51:
	ldr	w8, [sp, #96]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB81_54
LBB81_52:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #84]                   ; 4-byte Folded Spill
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #84]                   ; 4-byte Folded Reload
	str	w8, [sp, #88]                   ; 4-byte Folded Spill
	b	LBB81_53
LBB81_53:
	ldr	w8, [sp, #88]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB81_54
LBB81_54:
	ldr	w9, [sp, #92]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #80]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB81_56
	b	LBB81_55
LBB81_55:
	ldr	w8, [sp, #80]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB81_61
LBB81_56:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x8, #64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB81_59
	b	LBB81_57
LBB81_57:
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #72]                   ; 4-byte Folded Spill
	b	LBB81_58
LBB81_58:
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB81_61
LBB81_59:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB81_60
LBB81_60:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB81_61
LBB81_61:
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b	LBB81_62
LBB81_62:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB81_63
LBB81_63:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB81_66
	b	LBB81_64
LBB81_64:
	ldr	w9, [sp, #60]                   ; 4-byte Folded Reload
	subs	w8, w9, #5
	cset	w8, eq
	str	w9, [sp, #56]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB81_68
	b	LBB81_65
LBB81_65:
	ldr	w8, [sp, #56]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB81_71
LBB81_66:
	b	LBB81_15
LBB81_67:
	b	LBB81_73
LBB81_68:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp110:
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type12return_valueEi
Ltmp111:
	b	LBB81_69
LBB81_69:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	b	LBB81_70
LBB81_70:
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB81_71
LBB81_71:
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	subs	w8, w9, #3
	cset	w8, eq
	str	w9, [sp, #44]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB81_79
	b	LBB81_72
LBB81_72:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB81_95
LBB81_73:
	b	LBB81_74
LBB81_74:
	b	LBB81_75
LBB81_75:
	ldur	x0, [x29, #-80]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type19unhandled_exceptionEv
	b	LBB81_76
LBB81_76:
Ltmp113:
	bl	___cxa_end_catch
Ltmp114:
	b	LBB81_77
LBB81_77:
	b	LBB81_78
LBB81_78:
	b	LBB81_79
LBB81_79:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type13final_suspendEv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB81_89
	b	LBB81_80
LBB81_80:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB81_81
LBB81_81:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB81_82
LBB81_82:
	b	LBB81_83
LBB81_83:
	b	LBB81_84
LBB81_84:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB81_89
	b	LBB81_85
LBB81_85:
	mov	w8, #255                        ; =0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB81_100
	b	LBB81_86
LBB81_86:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB81_87
LBB81_87:
	ldr	w8, [sp, #40]                   ; 4-byte Folded Reload
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB81_91
LBB81_88:
Ltmp115:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB81_102
LBB81_89:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB81_90
LBB81_90:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB81_91
LBB81_91:
	ldr	w9, [sp, #36]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #24]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB81_93
	b	LBB81_92
LBB81_92:
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB81_95
LBB81_93:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB81_94
LBB81_94:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB81_95
LBB81_95:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w9, [x29, #-128]                ; 4-byte Folded Reload
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_typeD1Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB81_97
	b	LBB81_96
LBB81_96:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB81_97
LBB81_97:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB81_99
	b	LBB81_98
LBB81_98:
	b	LBB81_100
LBB81_99:
	b	LBB81_100
LBB81_100:
	b	LBB81_101
LBB81_101:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB81_102:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB81_103
LBB81_103:
	b	LBB81_104
LBB81_104:
	ldur	x0, [x29, #-80]
	bl	__Unwind_Resume
; %bb.105:
LBB81_106:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldrb	w8, [x8, #68]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	and	w8, w8, #0x3
	mov	w9, #2                          ; =0x2
	and	w9, w9, #0x3
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB81_46
	b	LBB81_107
LBB81_107:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	and	w8, w8, #0x3
	mov	w9, #0                          ; =0x0
	and	w9, w9, #0x3
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB81_1
	b	LBB81_108
LBB81_108:
	b	LBB81_21
; %bb.109:
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table81:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp92-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin6            ;     jumps to Ltmp94
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp95-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp98-Ltmp95                  ;   Call between Ltmp95 and Ltmp98
	.uleb128 Ltmp112-Lfunc_begin6           ;     jumps to Ltmp112
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp99-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Ltmp108-Ltmp99                 ;   Call between Ltmp99 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin6           ;     jumps to Ltmp109
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp110-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp111-Ltmp110                ;   Call between Ltmp110 and Ltmp111
	.uleb128 Ltmp112-Lfunc_begin6           ;     jumps to Ltmp112
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp111-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp113-Ltmp111                ;   Call between Ltmp111 and Ltmp113
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp113-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp114-Ltmp113                ;   Call between Ltmp113 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin6           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Lfunc_end6-Ltmp114             ;   Call between Ltmp114 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _Z5GuessRN5CoRet4NoteE.destroy
__Z5GuessRN5CoRet4NoteE.destroy:        ; @_Z5GuessRN5CoRet4NoteE.destroy
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-104]                ; 8-byte Folded Spill
	b	LBB82_107
LBB82_1:
	b	LBB82_2
LBB82_2:
	b	LBB82_3
LBB82_3:
	mov	w8, #1                          ; =0x1
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB82_7
	b	LBB82_4
LBB82_4:
	mov	w8, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB82_101
	b	LBB82_5
LBB82_5:
	mov	w8, #2                          ; =0x2
	stur	w8, [x29, #-108]                ; 4-byte Folded Spill
	b	LBB82_6
LBB82_6:
	ldur	w8, [x29, #-108]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB82_9
LBB82_7:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	stur	w9, [x29, #-120]                ; 4-byte Folded Spill
	add	x0, x8, #69
	bl	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	ldur	w8, [x29, #-120]                ; 4-byte Folded Reload
	stur	w8, [x29, #-116]                ; 4-byte Folded Spill
	b	LBB82_8
LBB82_8:
	ldur	w8, [x29, #-116]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB82_9
LBB82_9:
	ldur	w9, [x29, #-112]                ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	stur	w9, [x29, #-124]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_11
	b	LBB82_10
LBB82_10:
	ldur	w8, [x29, #-124]                ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB82_96
LBB82_11:
Ltmp116:
	bl	_rand
	stur	w0, [x29, #-132]                ; 4-byte Folded Spill
Ltmp117:
	b	LBB82_12
LBB82_12:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w8, [x29, #-132]                ; 4-byte Folded Reload
	mov	w11, #30                        ; =0x1e
	sdiv	w10, w8, w11
	mul	w10, w10, w11
	subs	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #56]
	ldr	x8, [x9, #32]
	str	x8, [x9, #40]
Ltmp119:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	stur	x0, [x29, #-144]                ; 8-byte Folded Spill
Ltmp120:
	b	LBB82_13
LBB82_13:
Ltmp121:
	ldur	x0, [x29, #-144]                ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp122:
	b	LBB82_14
LBB82_14:
	b	LBB82_15
LBB82_15:
	b	LBB82_16
LBB82_16:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input11await_readyEv
	stur	w0, [x29, #-148]                ; 4-byte Folded Spill
	b	LBB82_17
LBB82_17:
	ldur	w8, [x29, #-148]                ; 4-byte Folded Reload
	tbnz	w8, #0, LBB82_30
	b	LBB82_18
LBB82_18:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB82_19
LBB82_19:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x1, [x29, #-48]
	add	x0, x8, #40
	bl	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	b	LBB82_20
LBB82_20:
	mov	w8, #65535                      ; =0xffff
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB82_22
LBB82_21:
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB82_22
LBB82_22:
	ldur	w8, [x29, #-152]                ; 4-byte Folded Reload
	stur	w8, [x29, #-156]                ; 4-byte Folded Spill
	b	LBB82_23
LBB82_23:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB82_30
	b	LBB82_24
LBB82_24:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB82_101
	b	LBB82_25
LBB82_25:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #160]                  ; 4-byte Folded Spill
	b	LBB82_26
LBB82_26:
	ldr	w8, [sp, #160]                  ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB82_63
LBB82_27:
Ltmp118:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB82_74
LBB82_28:
Ltmp136:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB82_73
LBB82_29:
Ltmp133:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB82_67
LBB82_30:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input12await_resumeEv
	str	w0, [sp, #152]                  ; 4-byte Folded Spill
	b	LBB82_31
LBB82_31:
	ldr	w8, [sp, #152]                  ; 4-byte Folded Reload
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	str	w8, [x9, #60]
Ltmp123:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp124:
	b	LBB82_32
LBB82_32:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #60]
Ltmp125:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp126:
	b	LBB82_33
LBB82_33:
Ltmp127:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp128:
	b	LBB82_34
LBB82_34:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp129:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp130:
	b	LBB82_35
LBB82_35:
Ltmp131:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp132:
	b	LBB82_36
LBB82_36:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB82_39
	b	LBB82_37
LBB82_37:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #116]                  ; 4-byte Folded Spill
	b	LBB82_38
LBB82_38:
	ldr	w8, [sp, #116]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB82_41
LBB82_39:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w8, eq
	str	w8, [sp, #108]                  ; 4-byte Folded Spill
	b	LBB82_40
LBB82_40:
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB82_41
LBB82_41:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w9, [sp, #112]                  ; 4-byte Folded Reload
	str	w9, [x8, #64]
	ldr	w1, [x8, #64]
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type11yield_valueEi
	b	LBB82_42
LBB82_42:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB82_52
	b	LBB82_43
LBB82_43:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #2                          ; =0x2
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB82_44
LBB82_44:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, x9, #48
	str	x8, [x9, #48]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB82_45
LBB82_45:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB82_47
LBB82_46:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB82_47
LBB82_47:
	ldr	w8, [sp, #104]                  ; 4-byte Folded Reload
	str	w8, [sp, #100]                  ; 4-byte Folded Spill
	b	LBB82_48
LBB82_48:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB82_52
	b	LBB82_49
LBB82_49:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB82_101
	b	LBB82_50
LBB82_50:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #96]                   ; 4-byte Folded Spill
	b	LBB82_51
LBB82_51:
	ldr	w8, [sp, #96]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB82_54
LBB82_52:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #84]                   ; 4-byte Folded Spill
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #84]                   ; 4-byte Folded Reload
	str	w8, [sp, #88]                   ; 4-byte Folded Spill
	b	LBB82_53
LBB82_53:
	ldr	w8, [sp, #88]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB82_54
LBB82_54:
	ldr	w9, [sp, #92]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #80]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_56
	b	LBB82_55
LBB82_55:
	ldr	w8, [sp, #80]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB82_61
LBB82_56:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x8, #64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB82_59
	b	LBB82_57
LBB82_57:
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #72]                   ; 4-byte Folded Spill
	b	LBB82_58
LBB82_58:
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB82_61
LBB82_59:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB82_60
LBB82_60:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB82_61
LBB82_61:
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b	LBB82_62
LBB82_62:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB82_63
LBB82_63:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB82_66
	b	LBB82_64
LBB82_64:
	ldr	w9, [sp, #60]                   ; 4-byte Folded Reload
	subs	w8, w9, #5
	cset	w8, eq
	str	w9, [sp, #56]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_68
	b	LBB82_65
LBB82_65:
	ldr	w8, [sp, #56]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB82_71
LBB82_66:
	b	LBB82_15
LBB82_67:
	b	LBB82_73
LBB82_68:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp134:
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type12return_valueEi
Ltmp135:
	b	LBB82_69
LBB82_69:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	b	LBB82_70
LBB82_70:
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB82_71
LBB82_71:
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	subs	w8, w9, #3
	cset	w8, eq
	str	w9, [sp, #44]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_79
	b	LBB82_72
LBB82_72:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB82_96
LBB82_73:
	b	LBB82_74
LBB82_74:
	b	LBB82_75
LBB82_75:
	ldur	x0, [x29, #-80]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type19unhandled_exceptionEv
	b	LBB82_76
LBB82_76:
Ltmp137:
	bl	___cxa_end_catch
Ltmp138:
	b	LBB82_77
LBB82_77:
	b	LBB82_78
LBB82_78:
	b	LBB82_79
LBB82_79:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type13final_suspendEv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB82_90
	b	LBB82_80
LBB82_80:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB82_81
LBB82_81:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB82_82
LBB82_82:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB82_84
LBB82_83:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB82_84
LBB82_84:
	ldr	w8, [sp, #40]                   ; 4-byte Folded Reload
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB82_85
LBB82_85:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB82_90
	b	LBB82_86
LBB82_86:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB82_101
	b	LBB82_87
LBB82_87:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB82_88
LBB82_88:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB82_92
LBB82_89:
Ltmp139:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB82_103
LBB82_90:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB82_91
LBB82_91:
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB82_92
LBB82_92:
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_94
	b	LBB82_93
LBB82_93:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB82_96
LBB82_94:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB82_95
LBB82_95:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB82_96
LBB82_96:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w9, [x29, #-128]                ; 4-byte Folded Reload
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_typeD1Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB82_98
	b	LBB82_97
LBB82_97:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB82_98
LBB82_98:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB82_100
	b	LBB82_99
LBB82_99:
	b	LBB82_101
LBB82_100:
	b	LBB82_101
LBB82_101:
	b	LBB82_102
LBB82_102:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB82_103:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB82_104
LBB82_104:
	b	LBB82_105
LBB82_105:
	ldur	x0, [x29, #-80]
	bl	__Unwind_Resume
; %bb.106:
LBB82_107:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldrb	w8, [x8, #68]
	subs	w9, w8, #2
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x8, x8, #0x3
	str	x8, [sp]                        ; 8-byte Folded Spill
; %bb.108:
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	adrp	x10, lJTI82_0@PAGE
	add	x10, x10, lJTI82_0@PAGEOFF
Ltmp140:
	adr	x8, Ltmp140
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
; %bb.109:
Lfunc_end7:
	.cfi_endproc
	.p2align	2
lJTI82_0:
	.long	LBB82_46-Ltmp140
	.long	LBB82_83-Ltmp140
	.long	LBB82_1-Ltmp140
	.long	LBB82_21-Ltmp140
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table82:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp116-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin7           ;     jumps to Ltmp118
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp119-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp122-Ltmp119                ;   Call between Ltmp119 and Ltmp122
	.uleb128 Ltmp136-Lfunc_begin7           ;     jumps to Ltmp136
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp123-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp132-Ltmp123                ;   Call between Ltmp123 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin7           ;     jumps to Ltmp133
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp134-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin7           ;     jumps to Ltmp136
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp135-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp137-Ltmp135                ;   Call between Ltmp135 and Ltmp137
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin7           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Lfunc_end7-Ltmp138             ;   Call between Ltmp138 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _Z5GuessRN5CoRet4NoteE.cleanup
__Z5GuessRN5CoRet4NoteE.cleanup:        ; @_Z5GuessRN5CoRet4NoteE.cleanup
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-104]                ; 8-byte Folded Spill
	b	LBB83_107
LBB83_1:
	b	LBB83_2
LBB83_2:
	b	LBB83_3
LBB83_3:
	mov	w8, #1                          ; =0x1
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_7
	b	LBB83_4
LBB83_4:
	mov	w8, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB83_101
	b	LBB83_5
LBB83_5:
	mov	w8, #2                          ; =0x2
	stur	w8, [x29, #-108]                ; 4-byte Folded Spill
	b	LBB83_6
LBB83_6:
	ldur	w8, [x29, #-108]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB83_9
LBB83_7:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	stur	w9, [x29, #-120]                ; 4-byte Folded Spill
	add	x0, x8, #69
	bl	__ZNKSt3__113suspend_never12await_resumeB8ne180100Ev
	ldur	w8, [x29, #-120]                ; 4-byte Folded Reload
	stur	w8, [x29, #-116]                ; 4-byte Folded Spill
	b	LBB83_8
LBB83_8:
	ldur	w8, [x29, #-116]                ; 4-byte Folded Reload
	stur	w8, [x29, #-112]                ; 4-byte Folded Spill
	b	LBB83_9
LBB83_9:
	ldur	w9, [x29, #-112]                ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	stur	w9, [x29, #-124]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB83_11
	b	LBB83_10
LBB83_10:
	ldur	w8, [x29, #-124]                ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB83_96
LBB83_11:
Ltmp141:
	bl	_rand
	stur	w0, [x29, #-132]                ; 4-byte Folded Spill
Ltmp142:
	b	LBB83_12
LBB83_12:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w8, [x29, #-132]                ; 4-byte Folded Reload
	mov	w11, #30                        ; =0x1e
	sdiv	w10, w8, w11
	mul	w10, w10, w11
	subs	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #56]
	ldr	x8, [x9, #32]
	str	x8, [x9, #40]
Ltmp144:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	stur	x0, [x29, #-144]                ; 8-byte Folded Spill
Ltmp145:
	b	LBB83_13
LBB83_13:
Ltmp146:
	ldur	x0, [x29, #-144]                ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp147:
	b	LBB83_14
LBB83_14:
	b	LBB83_15
LBB83_15:
	b	LBB83_16
LBB83_16:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input11await_readyEv
	stur	w0, [x29, #-148]                ; 4-byte Folded Spill
	b	LBB83_17
LBB83_17:
	ldur	w8, [x29, #-148]                ; 4-byte Folded Reload
	tbnz	w8, #0, LBB83_30
	b	LBB83_18
LBB83_18:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB83_19
LBB83_19:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x1, [x29, #-48]
	add	x0, x8, #40
	bl	__ZN5CoRet5Input13await_suspendENSt3__116coroutine_handleINS_12promise_typeEEE
	b	LBB83_20
LBB83_20:
	mov	w8, #65535                      ; =0xffff
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB83_22
LBB83_21:
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-152]                ; 4-byte Folded Spill
	b	LBB83_22
LBB83_22:
	ldur	w8, [x29, #-152]                ; 4-byte Folded Reload
	stur	w8, [x29, #-156]                ; 4-byte Folded Spill
	b	LBB83_23
LBB83_23:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB83_30
	b	LBB83_24
LBB83_24:
	ldur	w8, [x29, #-156]                ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB83_101
	b	LBB83_25
LBB83_25:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #160]                  ; 4-byte Folded Spill
	b	LBB83_26
LBB83_26:
	ldr	w8, [sp, #160]                  ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB83_63
LBB83_27:
Ltmp143:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB83_74
LBB83_28:
Ltmp161:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB83_73
LBB83_29:
Ltmp158:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB83_67
LBB83_30:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #40
	bl	__ZN5CoRet5Input12await_resumeEv
	str	w0, [sp, #152]                  ; 4-byte Folded Spill
	b	LBB83_31
LBB83_31:
	ldr	w8, [sp, #152]                  ; 4-byte Folded Reload
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	str	w8, [x9, #60]
Ltmp148:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp149:
	b	LBB83_32
LBB83_32:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #60]
Ltmp150:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp151:
	b	LBB83_33
LBB83_33:
Ltmp152:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp153:
	b	LBB83_34
LBB83_34:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp154:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp155:
	b	LBB83_35
LBB83_35:
Ltmp156:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E
Ltmp157:
	b	LBB83_36
LBB83_36:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB83_39
	b	LBB83_37
LBB83_37:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #116]                  ; 4-byte Folded Spill
	b	LBB83_38
LBB83_38:
	ldr	w8, [sp, #116]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB83_41
LBB83_39:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w8, eq
	str	w8, [sp, #108]                  ; 4-byte Folded Spill
	b	LBB83_40
LBB83_40:
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	str	w8, [sp, #112]                  ; 4-byte Folded Spill
	b	LBB83_41
LBB83_41:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w9, [sp, #112]                  ; 4-byte Folded Reload
	str	w9, [x8, #64]
	ldr	w1, [x8, #64]
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type11yield_valueEi
	b	LBB83_42
LBB83_42:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB83_52
	b	LBB83_43
LBB83_43:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	w8, #2                          ; =0x2
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB83_44
LBB83_44:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, x9, #48
	str	x8, [x9, #48]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB83_45
LBB83_45:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB83_47
LBB83_46:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #104]                  ; 4-byte Folded Spill
	b	LBB83_47
LBB83_47:
	ldr	w8, [sp, #104]                  ; 4-byte Folded Reload
	str	w8, [sp, #100]                  ; 4-byte Folded Spill
	b	LBB83_48
LBB83_48:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB83_52
	b	LBB83_49
LBB83_49:
	ldr	w8, [sp, #100]                  ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB83_101
	b	LBB83_50
LBB83_50:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #96]                   ; 4-byte Folded Spill
	b	LBB83_51
LBB83_51:
	ldr	w8, [sp, #96]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB83_54
LBB83_52:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #84]                   ; 4-byte Folded Spill
	add	x0, x8, #70
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #84]                   ; 4-byte Folded Reload
	str	w8, [sp, #88]                   ; 4-byte Folded Spill
	b	LBB83_53
LBB83_53:
	ldr	w8, [sp, #88]                   ; 4-byte Folded Reload
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB83_54
LBB83_54:
	ldr	w9, [sp, #92]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #80]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB83_56
	b	LBB83_55
LBB83_55:
	ldr	w8, [sp, #80]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB83_61
LBB83_56:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w8, [x8, #64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB83_59
	b	LBB83_57
LBB83_57:
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #72]                   ; 4-byte Folded Spill
	b	LBB83_58
LBB83_58:
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB83_61
LBB83_59:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB83_60
LBB83_60:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b	LBB83_61
LBB83_61:
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b	LBB83_62
LBB83_62:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	str	w8, [sp, #156]                  ; 4-byte Folded Spill
	b	LBB83_63
LBB83_63:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_66
	b	LBB83_64
LBB83_64:
	ldr	w9, [sp, #60]                   ; 4-byte Folded Reload
	subs	w8, w9, #5
	cset	w8, eq
	str	w9, [sp, #56]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB83_68
	b	LBB83_65
LBB83_65:
	ldr	w8, [sp, #56]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB83_71
LBB83_66:
	b	LBB83_15
LBB83_67:
	b	LBB83_73
LBB83_68:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldr	w1, [x8, #56]
Ltmp159:
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type12return_valueEi
Ltmp160:
	b	LBB83_69
LBB83_69:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	b	LBB83_70
LBB83_70:
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB83_71
LBB83_71:
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	subs	w8, w9, #3
	cset	w8, eq
	str	w9, [sp, #44]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB83_79
	b	LBB83_72
LBB83_72:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB83_96
LBB83_73:
	b	LBB83_74
LBB83_74:
	b	LBB83_75
LBB83_75:
	ldur	x0, [x29, #-80]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type19unhandled_exceptionEv
	b	LBB83_76
LBB83_76:
Ltmp162:
	bl	___cxa_end_catch
Ltmp163:
	b	LBB83_77
LBB83_77:
	b	LBB83_78
LBB83_78:
	b	LBB83_79
LBB83_79:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_type13final_suspendEv
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always11await_readyB8ne180100Ev
	tbnz	w0, #0, LBB83_90
	b	LBB83_80
LBB83_80:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB83_81
LBB83_81:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	__ZNSt3__116coroutine_handleIN5CoRet12promise_typeEE12from_addressB8ne180100EPv
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__116coroutine_handleIN5CoRet12promise_typeEEcvNS0_IvEEB8ne180100Ev
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always13await_suspendB8ne180100ENS_16coroutine_handleIvEE
	b	LBB83_82
LBB83_82:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB83_84
LBB83_83:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB83_84
LBB83_84:
	ldr	w8, [sp, #40]                   ; 4-byte Folded Reload
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB83_85
LBB83_85:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB83_90
	b	LBB83_86
LBB83_86:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	and	w8, w8, #0xff
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB83_101
	b	LBB83_87
LBB83_87:
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB83_88
LBB83_88:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB83_92
LBB83_89:
Ltmp164:
	stur	x0, [x29, #-80]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB83_103
LBB83_90:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	add	x0, x8, #71
	bl	__ZNKSt3__114suspend_always12await_resumeB8ne180100Ev
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB83_91
LBB83_91:
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB83_92
LBB83_92:
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	subs	w8, w9, #0
	cset	w8, eq
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB83_94
	b	LBB83_93
LBB83_93:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB83_96
LBB83_94:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB83_95
LBB83_95:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-128]                ; 4-byte Folded Spill
	b	LBB83_96
LBB83_96:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldur	w9, [x29, #-128]                ; 4-byte Folded Reload
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	add	x0, x8, #16
	bl	__ZN5CoRet12promise_typeD1Ev
	mov	x8, #0                          ; =0x0
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_98
	b	LBB83_97
LBB83_97:
	mov	x0, #0                          ; =0x0
	bl	__ZdlPv
	b	LBB83_98
LBB83_98:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_100
	b	LBB83_99
LBB83_99:
	b	LBB83_101
LBB83_100:
	b	LBB83_101
LBB83_101:
	b	LBB83_102
LBB83_102:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB83_103:
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9]
	mov	w8, #3                          ; =0x3
	and	w8, w8, #0x3
	strb	w8, [x9, #68]
	b	LBB83_104
LBB83_104:
	b	LBB83_105
LBB83_105:
	ldur	x0, [x29, #-80]
	bl	__Unwind_Resume
; %bb.106:
LBB83_107:
	ldur	x8, [x29, #-104]                ; 8-byte Folded Reload
	ldrb	w8, [x8, #68]
	subs	w9, w8, #2
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x8, x8, #0x3
	str	x8, [sp]                        ; 8-byte Folded Spill
; %bb.108:
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	adrp	x10, lJTI83_0@PAGE
	add	x10, x10, lJTI83_0@PAGEOFF
Ltmp165:
	adr	x8, Ltmp165
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
; %bb.109:
Lfunc_end8:
	.cfi_endproc
	.p2align	2
lJTI83_0:
	.long	LBB83_46-Ltmp165
	.long	LBB83_83-Ltmp165
	.long	LBB83_1-Ltmp165
	.long	LBB83_21-Ltmp165
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table83:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp141-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp142-Ltmp141                ;   Call between Ltmp141 and Ltmp142
	.uleb128 Ltmp143-Lfunc_begin8           ;     jumps to Ltmp143
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp144-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp147-Ltmp144                ;   Call between Ltmp144 and Ltmp147
	.uleb128 Ltmp161-Lfunc_begin8           ;     jumps to Ltmp161
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp148-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp157-Ltmp148                ;   Call between Ltmp148 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin8           ;     jumps to Ltmp158
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp159-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin8           ;     jumps to Ltmp161
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp160-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Ltmp162-Ltmp160                ;   Call between Ltmp160 and Ltmp162
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin8           ; >> Call Site 6 <<
	.uleb128 Ltmp163-Ltmp162                ;   Call between Ltmp162 and Ltmp163
	.uleb128 Ltmp164-Lfunc_begin8           ;     jumps to Ltmp164
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin8           ; >> Call Site 7 <<
	.uleb128 Lfunc_end8-Ltmp163             ;   Call between Ltmp163 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"coroutine: Init Finish"

l_.str.1:                               ; @.str.1
	.asciz	"coroutine: You guess "

l_.str.2:                               ; @.str.2
	.asciz	", res: "

l_.str.3:                               ; @.str.3
	.asciz	"main: make a guess ..."

l_.str.4:                               ; @.str.4
	.asciz	"main: You input: "

l_.str.5:                               ; @.str.5
	.asciz	"main: result is "

l_.str.6:                               ; @.str.6
	.asciz	"larger"

l_.str.7:                               ; @.str.7
	.asciz	"the same"

l_.str.8:                               ; @.str.8
	.asciz	"smaller"

l_.str.9:                               ; @.str.9
	.asciz	"main: the result is "

l_.str.10:                              ; @.str.10
	.asciz	"something error! "

l_.str.11:                              ; @.str.11
	.asciz	"coroutine: set res "

.subsections_via_symbols
