.model small

.data
    msg1 db "Enter first number:$"
    msg2 db 10,13, "Enter second number:$"
    msg3 db 10,13, "Result:$"

.code
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Prompt for first number
    mov dx, offset msg1 ; Load message address
    mov ah, 9           ; DOS function 9: display string
    int 21h             ; Call DOS interrupt

    ; Read first number
    mov ah, 1           ; DOS function 1: input a character
    int 21h             ; Call DOS interrupt
    sub al, '0'         ; Convert ASCII to numeric
    mov bl, al          ; Store first number in BL

    ; Prompt for second number
    mov dx, offset msg2
    mov ah, 9
    int 21h

    ; Read second number
    mov ah, 1
    int 21h
    sub al, '0'         ; Convert ASCII to numeric by removing 0=48
    mov bh, al          ; Store second number in BH

    ; Perform addition
    add bl, bh          ; BL = BL + BH

    ; Convert result to ASCII
    add bl, '0'

    ; Display result message
    mov dx, offset msg3
    mov ah, 9
    int 21h

    ; Output result
    mov dl, bl          ; Move result to DL
    mov ah, 2           ; DOS function 2: output a character
    int 21h

    ; Terminate program
    mov ah, 4Ch         ; DOS function 4Ch: terminate program
    int 21h
main endp
end main
