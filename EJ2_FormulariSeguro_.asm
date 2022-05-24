TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Solicitar datos de una persona y validarlos 
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez licea luis armando 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE LibreriaM_.inc
.data
; Área de Declaración de Variables

nombreE2 db 25 dup (65)
apellidoE2 db 25 dup (65)
numeroTlefonoE2 db 11 dup (65)
estadoCivilE2 db 15 dup (65)
paisE2 db 15 dup (65)
estadoE2 db 15 dup (65)

edad_E2 dword 0

.code
 mainE2 PROC
;Lógica del Programa

PrinLn	" Contratacion de seguro "
call crlf

PrinLn	"Ingrese su nombre: "
mov ecx, sizeof nombreE2
mov edx, offset nombreE2
call readstring 

PrinLn	"Ingrese sus apellidos: "
mov ecx, sizeof apellidoE2
mov edx, offset apellidoE2
call readstring

PrinLn	"Ingrese su Edad: "
call readint
mov edad_E2, eax	;se respalda edad 

PrinLn	"¿Cual es su estado civil?: "
mov ecx, sizeof estadoCivilE2
mov edx, offset estadoCivilE2
call readstring

PrinLn	"Ingrese numero de telefono 10 cifras: "
mov ecx, sizeof numeroTlefonoE2
mov edx, offset numeroTlefonoE2
call readstring



PrinLn	"Su nombre es: "
mov edx, offset nombreE2
call writestring
call crlf
PrinLn	"Su apellido es: "
mov edx, offset apellidoE2
call writestring
call crlf
PrinLn	"Su edad es: "
mov eax, edad_E2
call writedec
call crlf

PrinLn	"Su estado civil es: "
mov edx, offset estadoCivilE2
call writestring
call crlf


PrinLn	"Su numero de telefono es: "
mov edx, offset numeroTlefonoE2
call writestring
call crlf
call crlf
mov eax, edad_E2
cmp eax,17
jg menor
PrinLn	"No puede contratar seguro por ser menor "
menor:
cmp eax,17
jle mayor
PrinLn	"Puede contratar seguro "
mayor:
call crlf

exit
mainE2 ENDP
END mainE2
