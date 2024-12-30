include Irvine32.inc
.code
countZeros PROC
    mov eax, 0               
check_loop:                  
    cmp dword ptr [esi], 0    
    jne not_zero             
    inc eax                   
not_zero:
    add esi, 4                
    loop check_loop         
    ret                       
countZeros ENDP
main PROC
    push 5                   
    push 0                    
    push 3                   
    push 0                    
    push 5                    
    push 0                   
    mov esi, offset array              ; Load the address of the array into ESI
    mov ecx, 6                
    call countZeros           ; Call the procedure to count zeros
    ; Display 
    call WriteDec             
    call Crlf                
    exit                      
main ENDP
END main                      