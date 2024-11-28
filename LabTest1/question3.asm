; Print the pattern with using only one variable
.model small
.data
star db "***", 10,13, "   **", 10, 13, "***", 10,13, "   **", 10,13, "***$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset star
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main