.model small
.stack 100h
.data
    s1 dw ?                     ; dw - declare word
    s2 dw ?
    msg db 10, 13, "After swapping: $"  ; $ - end of string
.code
main proc
    ; Connect to data section
    mov dx, @data               ; Load the address of the data segment into DX.
    mov ds, dx
                                ; Initialize the `DS` register with the data segment address.
    ; Input 1
    mov ah, 1
    int 21h
    mov s1, ax
    ; Input 2
    mov ah, 1
    int 21h
    mov s2, ax
    ; Push to the stack
    push s1                      ;Push `s1` onto the stack.
    push s2
    ; Get from the stack
    pop s1
    pop s2
    
    ;   mov ah, 2
    ;   mov dl, 10                    ; For new line (alternative)
    ;   int 21h
    
    ;   mov ah, 2                     ; For new line (alternative)
    ;   mov dl, 13
    ;   int 21h
    
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dx, s1
    int 21h
    
    mov ah, 2
    mov dx, s2
    int 21h
    
    
    ; Exit
    mov ah, 4ch
    int 21h
    
main endp
end main