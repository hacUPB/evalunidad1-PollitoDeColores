// SANTIAGO BAÑOL RENGIFO
// 000138542
// santiago.banol@upb.edu.co

(INICIO)
        @KBD
        D=M
        @84
        D=D-A
        @PINTAR
        D;JEQ

        @KBD
        D=M
        @67
        D=D-A 
        @CLEAR
        D;JEQ

        @INICIO
        0;JMP

(CLEAR)
        @16384 
	D=A
	@coord1 
	M=D 
	@8192
	D=A
	@cont1
	M=D
	@1
	D=A 
	@salto1
	M=D
	@color1
	M=0
	@DIBUJAR1
	0;JMP

(PINTAR)
        @16399
        D=A
	@coord 
	M=D 
	@256
	D=A
	@cont
	M=D
	@32
	D=A 
	@salto
	M=D
        @256
        D=A
	@color
	M=D
        
	@INICIARPINTURA
	0;JMP

(VARIABLESHORIZONTAL)

	@20480
	D=A
	@coord1
	M=D
	@32
	D=A
	@cont1
	M=D
	@1
	D=A
	@salto1
	M=D
	@color1
	M=-1

        @DIBUJAR1
	0;JMP

(INICIARPINTURA)
        @coord
        D=M
        @pantalla
        M=D

(INICIARPINTURA2)
        @cont
        D=M
        @VARIABLESHORIZONTAL
        D;JEQ
        
        @color
        D=M
        @pantalla
        A=M
        M=D

        @cont
        M=M-1

        @salto
        D=M

        @pantalla
        M=M+D
        
        @INICIARPINTURA2
        0;JMP

(DIBUJAR1)
        @coord1
        D=M
        @pantalla
        M=D

(DIBUJAR2)
        @cont1
        D=M
        @FINAL
        D;JEQ

        @color1
        D=M
        @pantalla
        A=M
        M=D

        @cont1
        M=M-1

        @salto1
        D=M

        @pantalla
        M=M+D

        @DIBUJAR2
        0;JMP


(FINAL)
        @INICIO
        0;JMP