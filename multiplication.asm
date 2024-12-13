.model small
.data
.code

main proc
    ; Input number one
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, '0'       ; Adjust ASCII value
    ; Input number two
    mov ah, 1
    int 21h
    sub al, '0'
    ; Multiplication
    mul bl            ; Multiply bl with al
    mov dl, al        ; Stores in al register
    add dl, '0'       ; Adjust ASCII value
    
    ; Output
    mov ah, 2
    int 21h
    
    ; Exit
    mov ah, 4ch
    int 21h
    
main endp
end main