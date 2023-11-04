extrn ExitProcess : proc        ; Declare external function ExitProcess
extrn printf : proc             ; Declare external function printf

.DATA                           ; Directive; Enter .data section

elapsedOutputFormat BYTE "Elapsed: %.2d:%.2d:%.2d",0Dh,0Ah,0

startTimeInSeconds QWORD ?
endTimeInSeconds QWORD ?
elapsedTimeInSeconds QWORD ?

seconds QWORD ?
minutes QWORD ?
hours QWORD ?

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
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
    call printf                 ; (rcx: format, rdx: hours, r8: minutes, r9: seconds)

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx                ; Clear RCX
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
