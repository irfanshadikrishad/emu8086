### **Directives and Their Purpose**

1. **`.model`**

   - Defines the **memory model** for the program.
   - Memory models determine how the code and data are organized in memory, affecting how large the code and data can be and how they are accessed.
   - Common options for `.model`:
     - **`small`**: Code and data fit within one 64KB segment each.
     - **`medium`**: Code can span multiple segments, but data is within one segment.
     - **`compact`**: Data can span multiple segments, but code is within one segment.
     - **`large`**: Both code and data can span multiple segments.
     - **`huge`**: Like `large`, but arrays can exceed 64KB.

   **Example**:

   ```asm
   .model small   ; Code and data are in one segment each
   ```

2. **`.data`**

   - Used to define the **data segment**, where variables and constants are stored.
   - Any initialized or uninitialized data should be declared here.

   **Example**:

   ```asm
   .data
   var1 db 10    ; Declare a byte variable with value 10
   msg db 'Hello, World!', 0Dh, 0Ah, '$'  ; String terminated with $
   ```

3. **`.code`**

   - Used to define the **code segment**, where the executable instructions of the program are placed.
   - All instructions for the program should go inside this segment.

   **Example**:

   ```asm
   .code
   main proc      ; Start of the main procedure
       mov ax, 4C00h ; Exit program
       int 21h
   main endp
   ```

### Common General-Purpose Registers (16-bit and their 8-bit counterparts):

- **AX: The Accumulator register.**
  - AH: High 8 bits of AX.
  - AL: Low 8 bits of AX.
- **BX: The Base register.**
  - BH: High 8 bits of BX.
  - BL: Low 8 bits of BX.
- **CX: The Count register, often used for loops.**
  - CH: High 8 bits of CX.
  - CL: Low 8 bits of CX.
- **DX: The Data register, used in I/O operations and certain calculations.**
  - DH: High 8 bits of DX.
  - DL: Low 8 bits of DX.
