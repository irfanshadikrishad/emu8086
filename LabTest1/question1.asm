; Question-1: Print 0-9
.model small
.data
.code
main proc
    mov dl, '0'
    
    mov cx, 10
    looper:
    mov ah, 2
    int 21h
    inc dl
    
    loop looper
    
    mov ah, 4ch
    int 21h
main endp
end main