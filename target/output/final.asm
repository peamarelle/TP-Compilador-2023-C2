include macros2.asm
include number.asm

.MODEL LARGE
.386
.STACK 200h
.DATA

variable1    dd ?
a    dd ?
variable2    DB MAXTEXTSIZE
f1    dd ?
f2    dd ?
s1    DB MAXTEXTSIZE
s2    DB MAXTEXTSIZE
s3    DB MAXTEXTSIZE
base    DB MAXTEXTSIZE

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
aux48                dd    ?                             
aux49                dd    ?                             
aux50                dd    ?                             
aux51                dd    ?                             
aux52                dd    ?                             
aux53                dd    ?                             
aux54                dd    ?                             
aux55                dd    ?                             
aux56                dd    ?                             
aux57                dd    ?                             
aux58                dd    ?                             
aux59                dd    ?                             
aux60                dd    ?                             
aux61                dd    ?                             
aux62                dd    ?                             
aux63                dd    ?                             
aux64                dd    ?                             
aux65                dd    ?                             
aux66                dd    ?                             
aux67                dd    ?                             
aux68                dd    ?                             
aux69                dd    ?                             
aux70                dd    ?                             
aux71                dd    ?                             
aux72                dd    ?                             
aux73                dd    ?                             
aux74                dd    ?                             
aux75                dd    ?                             
aux76                dd    ?                             
aux77                dd    ?                             
aux78                dd    ?                             
aux79                dd    ?                             
aux80                dd    ?                             
aux81                dd    ?                             
aux82                dd    ?                             
aux83                dd    ?                             
aux84                dd    ?                             
aux85                dd    ?                             
aux86                dd    ?                             
aux87                dd    ?                             
aux88                dd    ?                             
aux89                dd    ?                             
aux90                dd    ?                             
aux91                dd    ?                             
aux92                dd    ?                             
aux93                dd    ?                             
aux94                dd    ?                             
aux95                dd    ?                             
aux96                dd    ?                             
aux97                dd    ?                             
aux98                dd    ?                             
aux99                dd    ?                             
aux100               dd    ?                             
aux101               dd    ?                             
aux102               dd    ?                             
aux103               dd    ?                             
aux104               dd    ?                             
aux105               dd    ?                             
aux106               dd    ?                             
aux107               dd    ?                             
aux108               dd    ?                             
aux109               dd    ?                             
aux110               dd    ?                             
aux111               dd    ?                             
aux112               dd    ?                             
aux113               dd    ?                             
aux114               dd    ?                             
aux115               dd    ?                             
aux116               dd    ?                             
aux117               dd    ?                             
aux118               dd    ?                             
aux119               dd    ?                             
aux120               dd    ?                             
aux121               dd    ?                             
aux122               dd    ?                             
aux123               dd    ?                             
aux124               dd    ?                             
aux125               dd    ?                             
aux126               dd    ?                             
aux127               dd    ?                             
aux128               dd    ?                             
aux129               dd    ?                             
aux130               dd    ?                             
aux131               dd    ?                             
aux132               dd    ?                             
aux133               dd    ?                             
aux134               dd    ?                             
aux135               dd    ?                             
aux136               dd    ?                             
aux137               dd    ?                             
aux138               dd    ?                             
aux139               dd    ?                             
aux140               dd    ?                             
aux141               dd    ?                             
aux142               dd    ?                             
aux143               dd    ?                             
aux144               dd    ?                             
aux145               dd    ?                             
aux146               dd    ?                             
aux147               dd    ?                             
aux148               dd    ?                             
aux149               dd    ?                             
aux150               dd    ?                             
aux151               dd    ?                             
aux152               dd    ?                             
aux153               dd    ?                             
aux154               dd    ?                             
aux155               dd    ?                             
aux156               dd    ?                             
aux157               dd    ?                             
aux158               dd    ?                             
aux159               dd    ?                             
aux160               dd    ?                             
aux161               dd    ?                             
aux162               dd    ?                             
aux163               dd    ?                             
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
	FLD a
	FSTP aux2
	
etiq_[3]
	FLD _1
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
	FLD _1
	FSTP aux6
	
etiq_[7]
	FLD _10
	FSTP aux7
	
	FLD aux6
	FLD aux7
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[9]
	FLD EQL
	FSTP aux9
	
etiq_[10]
	FLD _1
	FSTP aux10
	
etiq_[11]
	FLD _10
	FSTP aux11
	
	FLD aux10
	FLD aux11
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[13]
	FLD EQL
	FSTP aux13
	
etiq_[14]
	FLD a
	FSTP aux14
	
etiq_[15]
	FLD _10
	FSTP aux15
	
etiq_[16]
	FLD _1
	FSTP aux16
	
etiq_[17]
	FLD aux16
	FLD aux15
	FADD 
	FSTP aux17
	
etiq_[18]
	FLD aux17
	FSTP [14]
	
etiq_[19]
	JMP etiq_[6]
	
etiq_[20]
	FLD _1
	FSTP aux20
	
etiq_[21]
	FLD _10
	FSTP aux21
	
	FLD aux20
	FLD aux21
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[23]
	JB etiq_[29]
	
etiq_[24]
	FLD a
	FSTP aux24
	
etiq_[25]
	FLD _10
	FSTP aux25
	
etiq_[26]
	FLD _2
	FSTP aux26
	
etiq_[27]
	FLD aux26
	FLD aux25
	FADD 
	FSTP aux27
	
etiq_[28]
	FLD aux27
	FSTP [24]
	
etiq_[29]
	FLD _1
	FSTP aux29
	
etiq_[30]
	FLD _10
	FSTP aux30
	
	FLD aux29
	FLD aux30
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[32]
	JA etiq_[39]
	
etiq_[33]
	FLD a
	FSTP aux33
	
etiq_[34]
	FLD _10
	FSTP aux34
	
etiq_[35]
	FLD _2
	FSTP aux35
	
etiq_[36]
	FLD aux35
	FLD aux34
	FADD 
	FSTP aux36
	
etiq_[37]
	FLD aux36
	FSTP [33]
	
etiq_[38]
	JMP etiq_[44]
	
etiq_[39]
	FLD variable1
	FSTP aux39
	
etiq_[40]
	FLD _10
	FSTP aux40
	
etiq_[41]
	FLD _2
	FSTP aux41
	
etiq_[42]
	FLD aux41
	FLD aux40
	FADD 
	FSTP aux42
	
etiq_[43]
	FLD aux42
	FSTP [39]
	
etiq_[44]
	FLD base
	FSTP aux44
	
etiq_[45]
	FLD _"base"
	FSTP aux45
	
etiq_[46]
	FLD aux45
	FSTP [44]
	
etiq_[47]
	FLD base
	FSTP aux47
	
etiq_[48]
	getString aux47
	
etiq_[49]
	FLD base
	FSTP aux49
	
etiq_[50]
	displayString aux49
	displayString _NEWLINE
	
etiq_[51]
	FLD variable2
	FSTP aux51
	
etiq_[52]
	FLD _"1"
	FSTP aux52
	
etiq_[53]
	FLD aux52
	FSTP [51]
	
etiq_[54]
	FLD f1
	FSTP aux54
	
etiq_[55]
	FLD f2
	FSTP aux55
	
	FLD aux54
	FLD aux55
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[57]
	JNA etiq_[64]
	
etiq_[58]
	FLD s1
	FSTP aux58
	
etiq_[59]
	FLD s2
	FSTP aux59
	
	FLD aux58
	FLD aux59
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[61]
	JNA etiq_[64]
	
etiq_[62]
	FLD "a es mas grande que b y c es mas grande que b"
	FSTP aux62
	
etiq_[63]
	displayString aux62
	displayString _NEWLINE
	
etiq_[64]
	FLD variable1
	FSTP aux64
	
etiq_[65]
	FLD _2
	FSTP aux65
	
	FLD aux64
	FLD aux65
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[67]
	JNA etiq_[68]
	
etiq_[68]
	FLD _8
	FSTP aux68
	
etiq_[69]
	FLD variable1
	FSTP aux69
	
	FLD aux68
	FLD aux69
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[71]
	JNA etiq_[74]
	
etiq_[72]
	FLD "a es mas grande que b o c es mas grande que b"
	FSTP aux72
	
etiq_[73]
	displayString aux72
	displayString _NEWLINE
	
etiq_[74]
	FLD f1
	FSTP aux74
	
etiq_[75]
	FLD f2
	FSTP aux75
	
	FLD aux74
	FLD aux75
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[77]
	JNA etiq_[80]
	
etiq_[78]
	FLD "a no es mas grande que b"
	FSTP aux78
	
etiq_[79]
	displayString aux78
	displayString _NEWLINE
	
etiq_[80]
	FLD f2
	FSTP aux80
	
etiq_[81]
	FLD _99.
	FSTP aux81
	
etiq_[82]
	FLD aux81
	FSTP [80]
	
etiq_[83]
	FLD s1
	FSTP aux83
	
etiq_[84]
	FLD _"asldk  fh sjf"
	FSTP aux84
	
etiq_[85]
	FLD aux84
	FSTP [83]
	
etiq_[86]
	FLD s3
	FSTP aux86
	
etiq_[87]
	FLD _"@sdADaSjfla%dfg"
	FSTP aux87
	
etiq_[88]
	FLD aux87
	FSTP [86]
	
etiq_[89]
	FLD cad1
	FSTP aux89
	
etiq_[90]
	FLD 4
	FSTP aux90
	
etiq_[91]
	FLD cad2
	FSTP aux91
	
etiq_[92]
	FLD 4
	FSTP aux92
	
etiq_[93]
	FLD 3
	FSTP aux93
	
	FLD aux93
	FLD aux90
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[95]
	JNA etiq_[102]
	
	FLD aux93
	FLD aux92
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[97]
	JNA etiq_[102]
	
etiq_[98]
	FLD _1
	FSTP aux98
	
etiq_[99]
	FLD _2
	FSTP aux99
	
etiq_[100]
	FLD aux98
	FLD aux99
	FADD 
	FSTP aux100
	
etiq_[101]
	FLD aux100
	FSTP res
	
etiq_[102]
	FLD error
	FSTP aux102
	
etiq_[103]
	FLD "Hello"
	FSTP aux103
	
etiq_[104]
	FLD 7
	FSTP aux104
	
etiq_[105]
	FLD "world"
	FSTP aux105
	
etiq_[106]
	FLD 7
	FSTP aux106
	
etiq_[107]
	FLD 4
	FSTP aux107
	
	FLD aux107
	FLD aux104
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[109]
	JNA etiq_[116]
	
	FLD aux107
	FLD aux106
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[111]
	JNA etiq_[116]
	
etiq_[112]
	FLD lo"
	FSTP aux112
	
etiq_[113]
	FLD ld"
	FSTP aux113
	
etiq_[114]
	FLD aux112
	FLD aux113
	FADD 
	FSTP aux114
	
etiq_[115]
	FLD aux114
	FSTP res
	
etiq_[116]
	FLD error
	FSTP aux116
	
etiq_[117]
	FLD "Hello"
	FSTP aux117
	
etiq_[118]
	FLD 7
	FSTP aux118
	
etiq_[119]
	FLD "world"
	FSTP aux119
	
etiq_[120]
	FLD 7
	FSTP aux120
	
etiq_[121]
	FLD 4
	FSTP aux121
	
	FLD aux121
	FLD aux118
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[123]
	JNA etiq_[130]
	
	FLD aux121
	FLD aux120
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[125]
	JNA etiq_[130]
	
etiq_[126]
	FLD lo"
	FSTP aux126
	
etiq_[127]
	FLD ld"
	FSTP aux127
	
etiq_[128]
	FLD aux126
	FLD aux127
	FADD 
	FSTP aux128
	
etiq_[129]
	FLD aux128
	FSTP res
	
etiq_[130]
	FLD error
	FSTP aux130
	
etiq_[131]
	FLD "Hello"
	FSTP aux131
	
etiq_[132]
	FLD "world"
	FSTP aux132
	
etiq_[133]
	FLD Esta contenido
	FSTP aux133
	
	FLD aux131
	FLD aux132
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[135]
	JNE etiq_[138]
	
etiq_[136]
	FLD TRUE
	FSTP aux136
	
etiq_[137]
	JMP etiq_[139]
	
etiq_[138]
	FLD FALSE
	FSTP aux138
	
etiq_[139]
	FLD a
	FSTP aux139
	
etiq_[140]
	FLD _0
	FSTP aux140
	
etiq_[141]
	FLD aux140
	FSTP [139]
	
etiq_[142]
	FLD s1
	FSTP aux142
	
etiq_[143]
	FLD s2
	FSTP aux143
	
	FLD aux142
	FLD aux143
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[145]
	JNA etiq_[150]
	
etiq_[146]
	FLD s3
	FSTP aux146
	
etiq_[147]
	FLD _"pepee"
	FSTP aux147
	
etiq_[148]
	FLD aux147
	FSTP [146]
	
etiq_[149]
	JMP etiq_[142]
	
etiq_[150]
	FLD "Hola"
	FSTP aux150
	
etiq_[151]
	FLD 6
	FSTP aux151
	
etiq_[152]
	FLD mundo
	FSTP aux152
	
etiq_[153]
	FLD 5
	FSTP aux153
	
etiq_[154]
	FLD 3
	FSTP aux154
	
	FLD aux154
	FLD aux151
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[156]
	JNA etiq_[163]
	
	FLD aux154
	FLD aux153
	FXCH
	FCOMP
	FSTSW AX
	SAHF
etiq_[158]
	JNA etiq_[163]
	
etiq_[159]
	FLD la"
	FSTP aux159
	
etiq_[160]
	FLD do
	FSTP aux160
	
etiq_[161]
	FLD aux159
	FLD aux160
	FADD 
	FSTP aux161
	
etiq_[162]
	FLD aux161
	FSTP res
	
etiq_[163]
	FLD error
	FSTP aux163
	
 
MOV AX, 4C00h
INT 21h
END START