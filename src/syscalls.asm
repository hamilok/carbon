align 16
db 'DEBUG: SYSCALLS '
align 16


%include "syscalls/string.asm"
%include "syscalls/screen.asm"
%include "syscalls/input.asm"
%include "syscalls/sound.asm"
%include "syscalls/debug.asm"
%include "syscalls/misc.asm"
%include "syscalls/smp.asm"
%include "syscalls/serial.asm"
%include "syscalls/file.asm"
%include "syscalls/ethernet.asm"
%include "syscalls/memory.asm"


; =============================================================================
; EOF
