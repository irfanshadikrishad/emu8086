.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1         ; Input character
    int 21h
    sub al, '0'       ; Convert ASCII to integer
    mov ah, 0         ; Clear AH (only AL will be used for division)
    mov bl, al        ; Store first number in BL (dividend)

    mov ah, 1         ; Input character
    int 21h
    sub al, '0'       ; Convert ASCII to integer
    mov cl, al        ; Store second number in CL (divisor)

    mov ax, 0         ; Clear AX
    mov al, bl        ; Load dividend into AL
    div cl            ; Divide AL by CL (quotient in AL, remainder in AH)

    add al, '0'       ; Convert quotient to ASCII
    mov dl, al        ; Store quotient in DL
    mov ah, 2         ; Print character function
    int 21h


    mov ah, 4Ch
    int 21h

main endp
end main
