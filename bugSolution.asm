mov ecx, array_index ; Assuming array_index holds the index

; Check bounds of array_index
mov eax, array_size ; Assuming array_size holds the size of the array
cmp ecx, eax ; Compare index to size
jl index_ok ; Jump if index is less than size
; Handle out-of-bounds error - example: exit program
mov eax, 1 ; sys_exit
exit

index_ok:
mov eax, [ebx + ecx*4 + 0x10] ; Access memory after bounds check

; ...rest of the code...