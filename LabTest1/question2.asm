; Question-2: Take 2 numbers and print the largest number
.model small
.data
msg1 db "Enter first number:$"
msg2 db 10, 13, "Enter second number:$"
msg3 db 10, 13, "Largest number is:$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, 48
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov cl, al
    sub cl, 48
    
    cmp bl, cl
    jg greater
    
    mov dx, offset msg3
    mov ah, 9
    int 21h
    
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h
    
    jmp exit
    
    
    greater:
    mov dx, offset msg3
    mov ah, 9
    int 21h
    
    mov dl, bl
    add dl, 48
    mov ah, 2
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
main endp
end main