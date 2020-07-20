.model flat,c 
.code

extern i:dword

DoAdd proc
	push ebp
	mov ebp,esp
	sub esp,8 ; créatiion du cadre de pile (variables locales)

	;----------- test cadre de pile --------
	mov eax, 010203040h
	mov [esp],eax
	mov eax, 0AABBCCDDh
	mov [esp+4],eax
	;----------- fin test cadre de pile --------

	mov eax,[ebp+8] ; 2eme arg ==> i 
	mov i,eax
	mov eax,[ebp+12] ; 1er arg. ==> eax (= resultat fonction)

	add esp,8
	pop ebp
	ret

DoAdd endp 
end

