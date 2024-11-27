.model small
.data

msg1 db "Hello$"
msg2 db 10,13, "World$"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov cx, 5           ; Times the loop should iterate
    
    looper:
    mov dx, offset msg2
    mov ah, 9           ; ah-9 for string dx-offset
    int 21h
    loop looper
    
    
    mov ah, 4ch
    int 21h
main endp
end main