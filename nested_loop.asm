.model small
.stack 100h
.data
.code
main proc
    ; Initialize Data Segment
    mov ax, @data
    mov ds, ax

    mov cx, 5        ; Number of rows (outer loop)
    mov bx, 5        ; Number of stars in the first row

    row:
    mov dx, bx       ; Save the number of stars to a temporary register
    mov cx, bx       ; Initialize CX for the inner loop

        col:
        ; Print a star
        mov dl, "*"
        mov ah, 2
        int 21h
        loop col         ; Decrement CX and loop if CX != 0

        ; Print a newline
        mov dl, 13       ; Carriage Return
        mov ah, 2
        int 21h
        mov dl, 10       ; Line Feed
        mov ah, 2
        int 21h

        ; Reduce the number of stars
        dec bx           ; Decrease stars for the next row
        mov cx, dx       ; Restore CX for the outer loop
    loop row             ; Decrement CX and loop if CX != 0

    ; Exit program
    mov ah, 4ch
    int 21h
main endp
end main
