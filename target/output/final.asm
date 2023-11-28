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
aux9                 dd    ?                             
aux10                dd    ?                             
aux11                dd    ?                             
aux12                dd    ?                             
aux13                dd    ?                             
aux14                dd    ?                             
aux15                dd    ?                             
aux16                dd    ?                             
aux17                dd    ?                             
aux18                dd    ?                             
aux19                dd    ?                             
aux20                dd    ?                             
aux21                dd    ?                             
aux22                dd    ?                             
aux23                dd    ?                             
aux24                dd    ?                             
aux25                dd    ?                             
aux26                dd    ?                             
aux27                dd    ?                             
aux28                dd    ?                             
aux29                dd    ?                             
aux30                dd    ?                             
aux31                dd    ?                             
aux32                dd    ?                             
aux33                dd    ?                             
aux34                dd    ?                             
aux35                dd    ?                             
aux36                dd    ?                             
aux37                dd    ?                             
aux38                dd    ?                             
aux39                dd    ?                             
aux40                dd    ?                             
aux41                dd    ?                             
aux42                dd    ?                             
aux43                dd    ?                             
aux44                dd    ?                             
aux45                dd    ?                             
aux46                dd    ?                             
aux47                dd    ?                             
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
	FLD g
	FSTP aux2
	
	FLD aux1
	FLD aux2
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[4]
	JNA etiq_[12]
	
etiq_[5]
	FLD cad1
	FSTP aux5
	
etiq_[6]
	FLD _"pepee"
	FSTP aux6
	
etiq_[7]
	FLD aux6
	FSTP [5]
	
etiq_[8]
	FLD g
	FSTP aux8
	
etiq_[9]
	FLD _344
	FSTP aux9
	
etiq_[10]
	FLD aux9
	FSTP [8]
	
etiq_[11]
	JMP etiq_[1]
	
etiq_[12]
	FLD "Hola"
	FSTP aux12
	
etiq_[13]
	FLD 6
	FSTP aux13
	
etiq_[14]
	FLD mundo
	FSTP aux14
	
etiq_[15]
	FLD 5
	FSTP aux15
	
etiq_[16]
	FLD 3
	FSTP aux16
	
	FLD aux16
	FLD aux13
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[18]
	JNA etiq_[25]
	
	FLD aux16
	FLD aux15
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[20]
	JNA etiq_[25]
	
etiq_[21]
	FLD la"
	FSTP aux21
	
etiq_[22]
	FLD do
	FSTP aux22
	
etiq_[23]
	FLD aux21
	FLD aux22
	FADD 
	FSTP aux23
	
etiq_[24]
	FLD aux23
	FSTP res
	
etiq_[25]
	FLD error
	FSTP aux25
	
etiq_[26]
	FLD a
	FSTP aux26
	
etiq_[27]
	FLD b
	FSTP aux27
	
	FLD aux26
	FLD aux27
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[29]
	JNA etiq_[39]
	
etiq_[30]
	FLD "a es mas grande que b o c es mas grande que b"
	FSTP aux30
	
etiq_[31]
	displayString aux30
	displayString _NEWLINE
	
etiq_[32]
	FLD q
	FSTP aux32
	
etiq_[33]
	FLD _99999.99
	FSTP aux33
	
etiq_[34]
	FLD aux33
	FSTP [32]
	
etiq_[35]
	FLD w
	FSTP aux35
	
etiq_[36]
	FLD _99999.99
	FSTP aux36
	
etiq_[37]
	FLD aux36
	FSTP [35]
	
etiq_[38]
	JMP etiq_[45]
	
etiq_[39]
	FLD e
	FSTP aux39
	
etiq_[40]
	FLD _99999.99
	FSTP aux40
	
etiq_[41]
	FLD aux40
	FSTP [39]
	
etiq_[42]
	FLD r
	FSTP aux42
	
etiq_[43]
	FLD _99999.99
	FSTP aux43
	
etiq_[44]
	FLD aux43
	FSTP [42]
	
etiq_[45]
	FLD t
	FSTP aux45
	
etiq_[46]
	FLD _99999.99
	FSTP aux46
	
etiq_[47]
	FLD aux46
	FSTP [45]
	
 
MOV AX, 4C00h
INT 21h
END START