include macros2.asm
include number.asm

.MODEL LARGE
.386
.STACK 200h
.DATA

g    dd ?
a    dd ?
variable1    dd ?
cad1    DB MAXTEXTSIZE
variable2    DB MAXTEXTSIZE
t    dd ?
r    dd ?
e    dd ?
q    dd ?
w    dd ?
b1    dd ?
p1    DB MAXTEXTSIZE
p2    DB MAXTEXTSIZE
p3    DB MAXTEXTSIZE

aux1                 dd    ?                             
aux2                 dd    ?                             
aux3                 dd    ?                             
aux4                 dd    ?                             
aux5                 dd    ?                             
aux6                 dd    ?                             
aux7                 dd    ?                             
aux8                 dd    ?                             
_NEWLINE             db    0DH,0AH                       ,'$'

.CODE
START:
MOV AX, @DATA
MOV DS, AX
MOV es,ax
 

etiq_[1]
	FLD a
	FSTP aux1
	
etiq_[2]
	FLD _55
	FSTP aux2
	
etiq_[3]
	FLD y6
	FSTP aux3
	
etiq_[4]
	FLD aux3
	FLD aux2
	FADD 
	FSTP aux4
	
etiq_[5]
	FLD aux4
	FSTP [1]
	
etiq_[6]
	FLD a
	FSTP aux6
	
etiq_[7]
	FLD _55
	FSTP aux7
	
etiq_[8]
	FLD aux7
	FSTP [6]
	
 
MOV AX, 4C00h
INT 21h
END START