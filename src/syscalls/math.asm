align 16
db 'DEBUG: MATH     '
align 16


; -----------------------------------------------------------------------------
; os_oword_add -- Add two 128-bit integer together
; IN:	RDX,RAX = Integer 1, RCX,RBX = Integer 2
; OUT:	RDX,RAX = Result
; Note:	Carry set if overflow
os_oword_add:
  add rax, rbx
  adc rdx, rcx
  ret
; -----------------------------------------------------------------------------


; =============================================================================
; EOF
