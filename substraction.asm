.model small
.data
.code

main proc
    
    ; Input one
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, "0"
    ; Input two
    mov ah, 1
    int 21h
    sub al, "0"
    ; Substract and convert
    sub bl, al
    add bl, "0"
    mov dl, bl
    
    ; Output
    mov ah, 2
    int 21h
  
    mov ah, 4ch
    int 21h
    
main endp
end main
