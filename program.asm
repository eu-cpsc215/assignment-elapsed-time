extern PrintString : proc       ; External function PrintString (defined in main.c)

.DATA                           ; Directive; Enter .data section

    elapsedOutputFormat BYTE "Elapsed: %.2d:%.2d:%.2d",0Dh,0Ah,0

    startTimeInSeconds QWORD ?
    endTimeInSeconds QWORD ?
    elapsedTimeInSeconds QWORD ?

    seconds QWORD ?
    minutes QWORD ?
    hours QWORD ?

.CODE                           ; Directive: Enter .code section

_program PROC                   ; Directive: Begin function labeled `_program`

    push rbp                    ; Callee saved register
    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    lea rbp, [rsp + 28h]        ; Update base pointer for stack frame
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Simulated program input
    mov [startTimeInSeconds], 10
    mov [endTimeInSeconds], 72

    ; ==========================================

    ; Put your program code here.

    ; ==========================================

    ; Display output
    lea rcx, elapsedOutputFormat
    mov rdx, [hours]
    mov r8, [minutes]
    mov r9, [seconds]
    call PrintString            ; (rcx: format, rdx: hours, r8: minutes, r9: seconds)

    ; -------------------- \/ EPILOGUE \/ --------------------
    lea rsp, [rbp]              ; Restore stack pointer
    pop rbp                     ; Restore RBP
    ret

_program ENDP                   ; Directive: End function labeled `_program`

END
