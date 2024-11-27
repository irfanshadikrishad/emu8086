.model small
.data

    msg1 db 'Enter first number: $' 
    msg2 db 10,13,'Enter second number: $' ; indicates the end of the string 
    msg3 db 10,13,'Equal$'
    msg4 db 10,13,'Not equal$'
    
.code

main proc
    mov ax, @data
    mov ds, ax 
    
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    cmp cl,bl
    je  Equal
    
    
    mov dx, offset msg4
    mov ah, 9
    int 21h
    
    jmp exit
    
    Equal:
    mov dx, offset msg3
    mov ah, 9
    int 21h 
    
    
    exit:
    
    mov ah,4ch
    int 21h 
    
end main    


;je  equal                       
;je  jump if equal
;jz  jump if zero ;duitar difference zero hoile true return korbe
;jg  jump if greater
;jng jump if not greater
;jl  jump if less
;jnl jump if not less
;jge jump if greater or equal
;jle jump if less than or equal