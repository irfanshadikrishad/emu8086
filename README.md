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

### **Common Data Types in Assembly:**

1. **`db` (Define Byte)**:

   - **Purpose**: Used to define one or more bytes of data.
   - **Syntax**: `db <value(s)>`
   - **Usage**: Used to define data that fits within a byte (8 bits). Values can be numbers or ASCII characters.

   **Example**:

   ```asm
   myByte db 5     ; Defines a byte with the value 5
   myChar db 'A'   ; Defines a byte with the ASCII value of 'A'
   myString db 'Hello, World!', 0  ; Defines a string terminated by a null byte (0)
   ```

2. **`dw` (Define Word)**:

   - **Purpose**: Used to define **word**-sized data (2 bytes, or 16 bits).
   - **Syntax**: `dw <value(s)>`
   - **Usage**: Defines values that require 2 bytes of memory. Typically used for 16-bit values (e.g., integer or pointer).

   **Example**:

   ```asm
   myWord dw 12345    ; Defines a word with the value 12345
   ```

3. **`dd` (Define Doubleword)**:

   - **Purpose**: Used to define **doubleword**-sized data (4 bytes, or 32 bits).
   - **Syntax**: `dd <value(s)>`
   - **Usage**: Used for 32-bit values, such as larger integers or addresses.

   **Example**:

   ```asm
   myDoubleWord dd 1234567890    ; Defines a doubleword with a large integer
   ```

4. **`dq` (Define Quadword)**:

   - **Purpose**: Used to define **quadword**-sized data (8 bytes, or 64 bits).
   - **Syntax**: `dq <value(s)>`
   - **Usage**: Defines values that require 8 bytes of memory. This is typically used for 64-bit integers or large structures.

   **Example**:

   ```asm
   myQuadWord dq 1234567890123456789    ; Defines a quadword with a large integer
   ```

5. **`dt` (Define Ten-byte)**:

   - **Purpose**: Used to define data of **ten bytes**.
   - **Syntax**: `dt <value(s)>`
   - **Usage**: Mostly used for floating point or complex types, but it is not as common as the other data types.

   **Example**:

   ```asm
   myTenByte dt 0.0   ; Defines a ten-byte floating-point value
   ```

### **Summary of Common Directives:**

| Directive | Purpose                          | Size     |
| --------- | -------------------------------- | -------- |
| `db`      | Define byte                      | 1 byte   |
| `dw`      | Define word                      | 2 bytes  |
| `dd`      | Define doubleword                | 4 bytes  |
| `dq`      | Define quadword                  | 8 bytes  |
| `dt`      | Define ten-byte (floating point) | 10 bytes |

### **Examples of Using Data Types:**

- **`db`** for storing characters:

  ```asm
  msg db 'Hello, world!', 0  ; null-terminated string
  ```

- **`dw`** for storing 16-bit integers:

  ```asm
  num1 dw 1234   ; 16-bit integer
  ```

- **`dd`** for storing 32-bit integers or addresses:

  ```asm
  bigNum dd 100000  ; 32-bit integer
  ```

- **`dq`** for storing 64-bit integers:
  ```asm
  longNum dq 10000000000  ; 64-bit integer
  ```

These data types are used to allocate space in memory and initialize it with specific values, providing the program with variables that are later accessed and manipulated by instructions.
