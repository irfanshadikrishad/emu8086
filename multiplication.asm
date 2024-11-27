.model small
.data
.code

main proc
    
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, '0'
    
    mov ah, 1
    int 21h
    sub al, '0'
    
    mul bl
    mov dl, al   ; Stores in al register
    add dl, '0'
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main