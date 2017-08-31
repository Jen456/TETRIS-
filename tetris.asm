
_Tone1:

;tetris.c,2 :: 		void Tone1() {
;tetris.c,3 :: 		Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
	MOVLW       147
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       250
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;tetris.c,4 :: 		}
L_end_Tone1:
	RETURN      0
; end of _Tone1

_Tone2:

;tetris.c,5 :: 		void Tone2() {
;tetris.c,6 :: 		Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
	MOVLW       186
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       250
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;tetris.c,7 :: 		}
L_end_Tone2:
	RETURN      0
; end of _Tone2

_Tone3:

;tetris.c,9 :: 		void Tone3() {
;tetris.c,10 :: 		Sound_Play(784, 250);   // Frequency = 784Hz, duration = 250ms
	MOVLW       16
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       250
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;tetris.c,11 :: 		}
L_end_Tone3:
	RETURN      0
; end of _Tone3

_Melody:

;tetris.c,13 :: 		void Melody() {           // Plays the melody "Yellow house"
;tetris.c,14 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL        _Tone1+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone3+0, 0
	CALL        _Tone3+0, 0
;tetris.c,15 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL        _Tone1+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone3+0, 0
	CALL        _Tone3+0, 0
;tetris.c,16 :: 		Tone1(); Tone2(); Tone3();
	CALL        _Tone1+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone3+0, 0
;tetris.c,17 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL        _Tone1+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone3+0, 0
	CALL        _Tone3+0, 0
;tetris.c,18 :: 		Tone1(); Tone2(); Tone3();
	CALL        _Tone1+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone3+0, 0
;tetris.c,19 :: 		Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
	CALL        _Tone3+0, 0
	CALL        _Tone3+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone2+0, 0
	CALL        _Tone1+0, 0
;tetris.c,20 :: 		}
L_end_Melody:
	RETURN      0
; end of _Melody

_cuadrado:

;tetris.c,51 :: 		void cuadrado ( short int posx, short int posy, short int color)
;tetris.c,53 :: 		Glcd_Box(0+posx,16+posy,1+posx,17+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,54 :: 		Glcd_Box(9+posx,22+posy,10+posx,23+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,55 :: 		Glcd_Box(9+posx,19+posy,10+posx,20+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,56 :: 		Glcd_Box(9+posx,25+posy,10+posx,26+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,57 :: 		Glcd_Box(6+posx,25+posy,7+posx,26+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,58 :: 		Glcd_Box(3+posx,25+posy,4+posx,26+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,59 :: 		Glcd_Box(9+posx,16+posy,10+posx,17+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,60 :: 		Glcd_Box(6+posx,16+posy,7+posx,17+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,61 :: 		Glcd_Box(3+posx,16+posy,4+posx,17+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,62 :: 		Glcd_Box(0+posx,25+posy,1+posx,26+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,63 :: 		Glcd_Box(0+posx,22+posy,1+posx,23+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,64 :: 		Glcd_Box(0+posx,19+posy,1+posx,20+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,65 :: 		Glcd_Box(3+posx,19+posy,4+posx,20+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,66 :: 		Glcd_Box(6+posx,22+posy,7+posx,23+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,67 :: 		Glcd_Box(3+posx,22+posy,4+posx,23+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,68 :: 		Glcd_Box(6+posx,19+posy,7+posx,20+posy,color);
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_cuadrado_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_cuadrado_posy+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_cuadrado_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,69 :: 		}
L_end_cuadrado:
	RETURN      0
; end of _cuadrado

_formaL:

;tetris.c,82 :: 		void formaL(short int posx, short int posy,short int color)
;tetris.c,84 :: 		Glcd_Box(0+posx,23+posy,1+posx,24+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,85 :: 		Glcd_Box(14+posx,19+posy,11+posx,16+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,86 :: 		Glcd_Box(11+posx,19+posy,8+posx,16+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,87 :: 		Glcd_Box(14+posx,22+posy,11+posx,19+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,88 :: 		Glcd_Box(11+posx,22+posy,8+posx,19+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,89 :: 		Glcd_Box(12+posx,32+posy,13+posx,33+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       33
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,90 :: 		Glcd_Box(12+posx,29+posy,13+posx,30+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       29
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       30
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,91 :: 		Glcd_Box(9+posx,32+posy,10+posx,33+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       33
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,92 :: 		Glcd_Box(9+posx,29+posy,10+posx,30+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       29
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       30
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,93 :: 		Glcd_Box(12+posx,26+posy,13+posx,27+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,94 :: 		Glcd_Box(9+posx,26+posy,10+posx,27+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,95 :: 		Glcd_Box(6+posx,26+posy,7+posx,27+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,96 :: 		Glcd_Box(3+posx,26+posy,4+posx,27+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,97 :: 		Glcd_Box(0+posx,26+posy,1+posx,27+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,98 :: 		Glcd_Box(12+posx,23+posy,13+posx,24+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,99 :: 		Glcd_Box(9+posx,23+posy,10+posx,24+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,100 :: 		Glcd_Box(6+posx,23+posy,7+posx,24+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,101 :: 		Glcd_Box(3+posx,23+posy,4+posx,24+posy,color);
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_formaL_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_formaL_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_formaL_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,102 :: 		}
L_end_formaL:
	RETURN      0
; end of _formaL

_lineaVertical:

;tetris.c,103 :: 		void lineaVertical(short int posx, short int posy, short int color)
;tetris.c,105 :: 		Glcd_Box(1+posx,31+posy,2+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,106 :: 		Glcd_Box(16+posx,31+posy,17+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,107 :: 		Glcd_Box(13+posx,31+posy,14+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,108 :: 		Glcd_Box(10+posx,31+posy,11+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,109 :: 		Glcd_Box(7+posx,31+posy,8+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,110 :: 		Glcd_Box(4+posx,31+posy,5+posx,32+posy,color);
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaVertical_posx+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaVertical_posy+0, 0 
	ADDLW       32
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaVertical_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,111 :: 		}
L_end_lineaVertical:
	RETURN      0
; end of _lineaVertical

_lineaHorizontal:

;tetris.c,112 :: 		void lineaHorizontal(short int posx, short int posy, short int c)
;tetris.c,114 :: 		Glcd_Box(2+posx,24+posy,3+posx,25+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,115 :: 		Glcd_Box(2+posx,39+posy,3+posx,40+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       39
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       40
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,116 :: 		Glcd_Box(2+posx,36+posy,3+posx,37+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       36
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       37
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,117 :: 		Glcd_Box(2+posx,33+posy,3+posx,34+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       33
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       34
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,118 :: 		Glcd_Box(2+posx,30+posy,3+posx,31+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       30
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       31
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,119 :: 		Glcd_Box(2+posx,27+posy,3+posx,28+posy,c);
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       2
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_lineaHorizontal_posx+0, 0 
	ADDLW       3
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_lineaHorizontal_posy+0, 0 
	ADDLW       28
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_lineaHorizontal_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,121 :: 		}
L_end_lineaHorizontal:
	RETURN      0
; end of _lineaHorizontal

_t_arriba:

;tetris.c,122 :: 		void t_arriba(short int x, short int y, short int c)
;tetris.c,124 :: 		Glcd_Box(5+x,20+y,6+x,21+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,125 :: 		Glcd_Box(17+x,14+y,18+x,15+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,126 :: 		Glcd_Box(14+x,14+y,15+x,15+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,127 :: 		Glcd_Box(17+x,17+y,18+x,18+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,128 :: 		Glcd_Box(14+x,17+y,15+x,18+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,129 :: 		Glcd_Box(17+x,29+y,18+x,30+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       29
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       30
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,130 :: 		Glcd_Box(17+x,26+y,18+x,27+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,131 :: 		Glcd_Box(14+x,29+y,15+x,30+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       29
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       30
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,132 :: 		Glcd_Box(14+x,26+y,15+x,27+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,133 :: 		Glcd_Box(17+x,23+y,18+x,24+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,134 :: 		Glcd_Box(17+x,20+y,18+x,21+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,135 :: 		Glcd_Box(14+x,23+y,15+x,24+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,136 :: 		Glcd_Box(14+x,20+y,15+x,21+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,137 :: 		Glcd_Box(11+x,23+y,12+x,24+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,138 :: 		Glcd_Box(11+x,20+y,12+x,21+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,139 :: 		Glcd_Box(8+x,23+y,9+x,24+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,140 :: 		Glcd_Box(8+x,20+y,9+x,21+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,141 :: 		Glcd_Box(5+x,23+y,6+x,24+y,c);
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_arriba_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_arriba_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_arriba_c+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,142 :: 		}
L_end_t_arriba:
	RETURN      0
; end of _t_arriba

_t_izquierda:

;tetris.c,143 :: 		void t_izquierda(short int x, short int y, short int color)
;tetris.c,146 :: 		Glcd_Box(5+x,14+y,6+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,147 :: 		Glcd_Box(14+x,26+y,15+x,27+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,148 :: 		Glcd_Box(11+x,26+y,12+x,27+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,149 :: 		Glcd_Box(14+x,23+y,15+x,24+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,150 :: 		Glcd_Box(11+x,23+y,12+x,24+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,151 :: 		Glcd_Box(14+x,20+y,15+x,21+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,152 :: 		Glcd_Box(11+x,20+y,12+x,21+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,153 :: 		Glcd_Box(20+x,17+y,21+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,154 :: 		Glcd_Box(17+x,17+y,18+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,155 :: 		Glcd_Box(14+x,17+y,15+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,156 :: 		Glcd_Box(11+x,17+y,12+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,157 :: 		Glcd_Box(8+x,17+y,9+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,158 :: 		Glcd_Box(5+x,17+y,6+x,18+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,159 :: 		Glcd_Box(20+x,14+y,21+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,160 :: 		Glcd_Box(17+x,14+y,18+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,161 :: 		Glcd_Box(14+x,14+y,15+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,162 :: 		Glcd_Box(11+x,14+y,12+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,163 :: 		Glcd_Box(8+x,14+y,9+x,15+y,color);
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_izquierda_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_izquierda_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_izquierda_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,164 :: 		}
L_end_t_izquierda:
	RETURN      0
; end of _t_izquierda

_t_derecha:

;tetris.c,165 :: 		void t_derecha (short int x, short int y, short int color)
;tetris.c,169 :: 		Glcd_Box(5+x,28+y,6+x,25+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       28
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,170 :: 		Glcd_Box(16+x,16+y,13+x,13+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,171 :: 		Glcd_Box(13+x,16+y,10+x,13+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,172 :: 		Glcd_Box(16+x,19+y,13+x,16+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,173 :: 		Glcd_Box(13+x,19+y,10+x,16+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,174 :: 		Glcd_Box(16+x,22+y,13+x,19+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,175 :: 		Glcd_Box(13+x,22+y,10+x,19+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,176 :: 		Glcd_Box(20+x,23+y,21+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,177 :: 		Glcd_Box(17+x,23+y,18+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,178 :: 		Glcd_Box(14+x,23+y,15+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,179 :: 		Glcd_Box(11+x,23+y,12+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,180 :: 		Glcd_Box(8+x,23+y,9+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,181 :: 		Glcd_Box(5+x,23+y,6+x,24+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       23
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       24
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,182 :: 		Glcd_Box(20+x,26+y,21+x,27+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,183 :: 		Glcd_Box(17+x,26+y,18+x,27+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,184 :: 		Glcd_Box(14+x,26+y,15+x,27+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,185 :: 		Glcd_Box(11+x,26+y,12+x,27+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       26
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       27
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,186 :: 		Glcd_Box(8+x,14+y,9+x,15+y,color);
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       8
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_derecha_x+0, 0 
	ADDLW       9
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_derecha_y+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_derecha_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,187 :: 		}
L_end_t_derecha:
	RETURN      0
; end of _t_derecha

_t_abajo:

;tetris.c,188 :: 		void t_abajo(short int x, short int y, short int color)
;tetris.c,190 :: 		Glcd_Box(5+x,28+y,6+x,25+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       5
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       28
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       6
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,191 :: 		Glcd_Box(17+x,20+y,18+x,21+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,192 :: 		Glcd_Box(14+x,20+y,15+x,21+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,193 :: 		Glcd_Box(11+x,20+y,12+x,21+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       20
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,194 :: 		Glcd_Box(17+x,17+y,18+x,18+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,195 :: 		Glcd_Box(14+x,17+y,15+x,18+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       14
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       15
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,196 :: 		Glcd_Box(11+x,17+y,12+x,18+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       11
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       17
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       12
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       18
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,197 :: 		Glcd_Box(10+x,13+y,7+x,10+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,198 :: 		Glcd_Box(10+x,16+y,7+x,13+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,199 :: 		Glcd_Box(10+x,19+y,7+x,16+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,200 :: 		Glcd_Box(10+x,22+y,7+x,19+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,201 :: 		Glcd_Box(10+x,25+y,7+x,22+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,202 :: 		Glcd_Box(10+x,28+y,7+x,25+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       28
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,203 :: 		Glcd_Box(7+x,13+y,4+x,10+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       10
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,204 :: 		Glcd_Box(7+x,16+y,4+x,13+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       13
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,205 :: 		Glcd_Box(7+x,19+y,4+x,16+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       16
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,206 :: 		Glcd_Box(7+x,22+y,4+x,19+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       19
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,207 :: 		Glcd_Box(7+x,25+y,4+x,22+y,color);
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       7
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       25
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        FARG_t_abajo_x+0, 0 
	ADDLW       4
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVF        FARG_t_abajo_y+0, 0 
	ADDLW       22
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        FARG_t_abajo_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;tetris.c,208 :: 		}
L_end_t_abajo:
	RETURN      0
; end of _t_abajo

_main:

;tetris.c,225 :: 		void main()
;tetris.c,227 :: 		short int bien, contador=0, pierdo, guardox, guardoy, general=0; // general es para la puntuacion
	CLRF        main_contador_L0+0 
	CLRF        main_general_L0+0 
	CLRF        main_t_arriba_L0+0 
	CLRF        main_t_abajo_L0+0 
	CLRF        main_t_derecha_L0+0 
;tetris.c,229 :: 		TRISA = 0;
	CLRF        TRISA+0 
;tetris.c,230 :: 		T1CON = 1;                  // Set timer TMR1
	MOVLW       1
	MOVWF       T1CON+0 
;tetris.c,232 :: 		INTCON = 0xC0;              // Enable interrupt (bits GIE and PEIE)
	MOVLW       192
	MOVWF       INTCON+0 
;tetris.c,233 :: 		ADCON1=0X0F;   //todos los pines de entrada y salida digital
	MOVLW       15
	MOVWF       ADCON1+0 
;tetris.c,234 :: 		TRISB=0XFF ; //todos son entradas
	MOVLW       255
	MOVWF       TRISB+0 
;tetris.c,239 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;tetris.c,240 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main0:
	DECFSZ      R13, 1, 1
	BRA         L_main0
	DECFSZ      R12, 1, 1
	BRA         L_main0
	DECFSZ      R11, 1, 1
	BRA         L_main0
	NOP
	NOP
;tetris.c,241 :: 		UART1_WRITE_TEXT("AT+NAMETETRIS");
	MOVLW       ?lstr1_tetris+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr1_tetris+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;tetris.c,242 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main1:
	DECFSZ      R13, 1, 1
	BRA         L_main1
	DECFSZ      R12, 1, 1
	BRA         L_main1
	DECFSZ      R11, 1, 1
	BRA         L_main1
	NOP
;tetris.c,243 :: 		UART1_WRITE_TEXT("AT+BAUD4");
	MOVLW       ?lstr2_tetris+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr2_tetris+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;tetris.c,244 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
;tetris.c,245 :: 		UART1_WRITE_TEXT("AT+PIN0000");
	MOVLW       ?lstr3_tetris+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr3_tetris+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;tetris.c,246 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
;tetris.c,248 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;tetris.c,249 :: 		Glcd_Fill(0);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,251 :: 		Sound_Init(&PORTA, 2);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       2
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;tetris.c,253 :: 		Glcd_Image(LOGO);                     // Draw image
	MOVLW       _LOGO+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_LOGO+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_LOGO+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;tetris.c,255 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
;tetris.c,256 :: 		Glcd_Fill(0);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,259 :: 		cuadrado=1;
	MOVLW       1
	MOVWF       main_cuadrado_L0+0 
;tetris.c,260 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,261 :: 		lineaHorizontal=0;
	CLRF        main_lineaHorizontal_L0+0 
;tetris.c,262 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,264 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,265 :: 		y=0;
	CLRF        main_y_L0+0 
;tetris.c,267 :: 		bien=1;  //todavia esta en el juego
	MOVLW       1
	MOVWF       main_bien_L0+0 
;tetris.c,268 :: 		pierdo=0; // aun no he perdido
	CLRF        main_pierdo_L0+0 
;tetris.c,270 :: 		Glcd_Image(menu);
	MOVLW       _menu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;tetris.c,271 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;tetris.c,272 :: 		Glcd_Fill(0);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,274 :: 		if (pierdo==0) /// si esta presionado el boton del pin rb0 //inicio del juego
	MOVF        main_pierdo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main6
;tetris.c,276 :: 		Glcd_Image(LOADING);
	MOVLW       _LOADING+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_LOADING+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_LOADING+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;tetris.c,277 :: 		for (i=1;i<=120;++i)
	MOVLW       1
	MOVWF       main_i_L0+0 
L_main7:
	MOVLW       128
	XORLW       120
	MOVWF       R0 
	MOVLW       128
	XORWF       main_i_L0+0, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main8
;tetris.c,279 :: 		Glcd_Write_Text("#", i, 4,1);
	MOVLW       ?lstr4_tetris+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr4_tetris+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVF        main_i_L0+0, 0 
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;tetris.c,280 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
;tetris.c,277 :: 		for (i=1;i<=120;++i)
	INCF        main_i_L0+0, 1 
;tetris.c,281 :: 		}
	GOTO        L_main7
L_main8:
;tetris.c,282 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
	NOP
;tetris.c,283 :: 		}
L_main6:
;tetris.c,285 :: 		Glcd_Fill(1);
	MOVLW       1
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,286 :: 		Glcd_Image(puntuacion);   // 1 negro, o blanco
	MOVLW       _puntuacion+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_puntuacion+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_puntuacion+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;tetris.c,287 :: 		while (bien==1) // SECUENCIA PRINCIPAL DEL JUEGO
L_main12:
	MOVF        main_bien_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main13
;tetris.c,294 :: 		general++;
	INCF        main_general_L0+0, 1 
;tetris.c,295 :: 		switch(contador)
	GOTO        L_main14
;tetris.c,297 :: 		case 0:
L_main16:
;tetris.c,299 :: 		if (cuadrado==1 && formaL==0 && lineaVertical==0 && t_arriba==0 && t_abajo==0 && t_derecha==0)
	MOVF        main_cuadrado_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
	MOVF        main_formaL_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
	MOVF        main_lineaVertical_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
	MOVF        main_t_arriba_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
	MOVF        main_t_abajo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
	MOVF        main_t_derecha_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main19
L__main80:
;tetris.c,301 :: 		while(x < 112)
L_main20:
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       112
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main21
;tetris.c,303 :: 		cuadrado(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	MOVLW       1
	MOVWF       FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,304 :: 		x=x+12;         // caen las piezas normalmente
	MOVLW       12
	ADDWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,305 :: 		cuadrado(x,y,0); // aparece dibujo
	MOVF        R0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	CLRF        FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,306 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 1
	BRA         L_main22
	DECFSZ      R12, 1, 1
	BRA         L_main22
	DECFSZ      R11, 1, 1
	BRA         L_main22
	NOP
	NOP
;tetris.c,307 :: 		if(PORTB.RB5==0)// movimiento a la izquierda
	BTFSC       PORTB+0, 5 
	GOTO        L_main23
;tetris.c,309 :: 		cuadrado(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	MOVLW       1
	MOVWF       FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,310 :: 		y=y+3;
	MOVLW       3
	ADDWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,311 :: 		cuadrado(x,y,0);   // aparece un cuadrado a la izquierda
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        R0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	CLRF        FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,312 :: 		}
L_main23:
;tetris.c,314 :: 		if (PORTB.RB6==0)// movimiento a la derecha
	BTFSC       PORTB+0, 6 
	GOTO        L_main24
;tetris.c,316 :: 		cuadrado(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	MOVLW       1
	MOVWF       FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,317 :: 		y=y-3;
	MOVLW       3
	SUBWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,318 :: 		cuadrado(x,y,0);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        R0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	CLRF        FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,319 :: 		}
L_main24:
;tetris.c,320 :: 		if (x==111 )    //fin del primer cuadrado
	MOVF        main_x_L0+0, 0 
	XORLW       111
	BTFSS       STATUS+0, 2 
	GOTO        L_main25
;tetris.c,322 :: 		cuadrado(x,y,0); // dejo el cuadrado en la posicion final
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	CLRF        FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,323 :: 		guardox=111;
	MOVLW       111
	MOVWF       main_guardox_L0+0 
;tetris.c,324 :: 		}
L_main25:
;tetris.c,325 :: 		guardox=x;
	MOVF        main_x_L0+0, 0 
	MOVWF       main_guardox_L0+0 
;tetris.c,326 :: 		guardoy=y;
	MOVF        main_y_L0+0, 0 
	MOVWF       main_guardoy_L0+0 
;tetris.c,327 :: 		} // fin de recorrido
	GOTO        L_main20
L_main21:
;tetris.c,328 :: 		cuadrado=0;
	CLRF        main_cuadrado_L0+0 
;tetris.c,329 :: 		formaL=1;
	MOVLW       1
	MOVWF       main_formaL_L0+0 
;tetris.c,330 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,331 :: 		t_arriba=0;
	CLRF        main_t_arriba_L0+0 
;tetris.c,332 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,333 :: 		contador=1;
	MOVLW       1
	MOVWF       main_contador_L0+0 
;tetris.c,334 :: 		t_derecha=0;
	CLRF        main_t_derecha_L0+0 
;tetris.c,335 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,336 :: 		}
L_main19:
;tetris.c,337 :: 		break;
	GOTO        L_main15
;tetris.c,342 :: 		case 1:
L_main26:
;tetris.c,344 :: 		cuadrado(guardox,guardoy,0);
	MOVF        main_guardox_L0+0, 0 
	MOVWF       FARG_cuadrado_posx+0 
	MOVF        main_guardoy_L0+0, 0 
	MOVWF       FARG_cuadrado_posy+0 
	CLRF        FARG_cuadrado_color+0 
	CALL        _cuadrado+0, 0
;tetris.c,345 :: 		while (formaL==1 && cuadrado==0 && lineaVertical==0 && t_arriba==0 && t_abajo==0 && t_derecha==0)
L_main27:
	MOVF        main_formaL_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_cuadrado_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_lineaVertical_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_t_arriba_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_t_abajo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_t_derecha_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
L__main79:
;tetris.c,347 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,348 :: 		while(x < 110)
L_main31:
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       110
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main32
;tetris.c,350 :: 		formaL(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	MOVLW       1
	MOVWF       FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,351 :: 		x=x+4;         // caen las piezas normalmente
	MOVLW       4
	ADDWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,352 :: 		formaL(x,y,0); // aparece dibujo
	MOVF        R0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	CLRF        FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,353 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main33:
	DECFSZ      R13, 1, 1
	BRA         L_main33
	DECFSZ      R12, 1, 1
	BRA         L_main33
	DECFSZ      R11, 1, 1
	BRA         L_main33
	NOP
	NOP
;tetris.c,354 :: 		if(PORTB.RB5==0)// movimiento a la izquierda
	BTFSC       PORTB+0, 5 
	GOTO        L_main34
;tetris.c,356 :: 		formaL(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	MOVLW       1
	MOVWF       FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,357 :: 		y=y+1;
	INCF        main_y_L0+0, 1 
;tetris.c,358 :: 		formaL(x,y,0);   // aparece una L a la izquierda
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	CLRF        FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,359 :: 		}
L_main34:
;tetris.c,361 :: 		if (PORTB.RB6==0)// movimiento a la derecha
	BTFSC       PORTB+0, 6 
	GOTO        L_main35
;tetris.c,363 :: 		formaL(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	MOVLW       1
	MOVWF       FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,364 :: 		y=y-1;
	DECF        main_y_L0+0, 1 
;tetris.c,365 :: 		formaL(x,y,0);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	CLRF        FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,366 :: 		}
L_main35:
;tetris.c,367 :: 		if (x==109 )
	MOVF        main_x_L0+0, 0 
	XORLW       109
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
;tetris.c,369 :: 		formaL(x,y,0); // dejo a la formaL en su posicion final
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_formaL_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_formaL_posy+0 
	CLRF        FARG_formaL_color+0 
	CALL        _formaL+0, 0
;tetris.c,370 :: 		guardox=109;
	MOVLW       109
	MOVWF       main_guardox_L0+0 
;tetris.c,371 :: 		}
L_main36:
;tetris.c,372 :: 		guardox=x;
	MOVF        main_x_L0+0, 0 
	MOVWF       main_guardox_L0+0 
;tetris.c,373 :: 		guardoy=y;
	MOVF        main_y_L0+0, 0 
	MOVWF       main_guardoy_L0+0 
;tetris.c,374 :: 		}   // fin de recorrido
	GOTO        L_main31
L_main32:
;tetris.c,375 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,376 :: 		cuadrado=0;
	CLRF        main_cuadrado_L0+0 
;tetris.c,377 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,378 :: 		contador=2;
	MOVLW       2
	MOVWF       main_contador_L0+0 
;tetris.c,379 :: 		lineaVertical=1;
	MOVLW       1
	MOVWF       main_lineaVertical_L0+0 
;tetris.c,380 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,381 :: 		t_arriba=0;
	CLRF        main_t_arriba_L0+0 
;tetris.c,382 :: 		t_derecha=0;
	CLRF        main_t_derecha_L0+0 
;tetris.c,383 :: 		}
	GOTO        L_main27
L_main28:
;tetris.c,385 :: 		break;             //fin de la forma l
	GOTO        L_main15
;tetris.c,390 :: 		case 2:
L_main37:
;tetris.c,393 :: 		while (formaL==0 && cuadrado==0 && lineaVertical==1 && t_arriba==0 && t_abajo==0 && t_derecha==0)
L_main38:
	MOVF        main_formaL_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	MOVF        main_cuadrado_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	MOVF        main_lineaVertical_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	MOVF        main_t_arriba_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	MOVF        main_t_abajo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	MOVF        main_t_derecha_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
L__main78:
;tetris.c,395 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,396 :: 		while(x < 110)
L_main42:
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       110
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main43
;tetris.c,398 :: 		lineaVertical(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	MOVLW       1
	MOVWF       FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,399 :: 		x=x+6;         // caen las piezas normalmente
	MOVLW       6
	ADDWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,400 :: 		lineaVertical(x,y,0); // aparece dibujo
	MOVF        R0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	CLRF        FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,401 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main44:
	DECFSZ      R13, 1, 1
	BRA         L_main44
	DECFSZ      R12, 1, 1
	BRA         L_main44
	DECFSZ      R11, 1, 1
	BRA         L_main44
	NOP
	NOP
;tetris.c,402 :: 		if(PORTB.RB5==0)// movimiento a la izquierda
	BTFSC       PORTB+0, 5 
	GOTO        L_main45
;tetris.c,404 :: 		lineaVertical(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	MOVLW       1
	MOVWF       FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,405 :: 		y=y+2;
	MOVLW       2
	ADDWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,406 :: 		lineaVertical(x,y,0);   // aparece una L a la izquierda
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        R0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	CLRF        FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,407 :: 		}
L_main45:
;tetris.c,409 :: 		if (PORTB.RB6==0)// movimiento a la derecha
	BTFSC       PORTB+0, 6 
	GOTO        L_main46
;tetris.c,411 :: 		lineaVertical(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	MOVLW       1
	MOVWF       FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,412 :: 		y=y-2;
	MOVLW       2
	SUBWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,413 :: 		lineaVertical(x,y,0);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        R0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	CLRF        FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,414 :: 		}
L_main46:
;tetris.c,415 :: 		if (x==109 )
	MOVF        main_x_L0+0, 0 
	XORLW       109
	BTFSS       STATUS+0, 2 
	GOTO        L_main47
;tetris.c,417 :: 		lineaVertical(x,y,0); // dejo a la lineaVertical en su posicion final
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	CLRF        FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,418 :: 		lineaVertical(guardox,guardoy,0);
	MOVF        main_guardox_L0+0, 0 
	MOVWF       FARG_lineaVertical_posx+0 
	MOVF        main_guardoy_L0+0, 0 
	MOVWF       FARG_lineaVertical_posy+0 
	CLRF        FARG_lineaVertical_color+0 
	CALL        _lineaVertical+0, 0
;tetris.c,419 :: 		}
L_main47:
;tetris.c,420 :: 		guardox=x;
	MOVF        main_x_L0+0, 0 
	MOVWF       main_guardox_L0+0 
;tetris.c,421 :: 		guardoy=y;
	MOVF        main_y_L0+0, 0 
	MOVWF       main_guardoy_L0+0 
;tetris.c,422 :: 		}   // fin de recorrido
	GOTO        L_main42
L_main43:
;tetris.c,423 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,424 :: 		t_arriba=1;
	MOVLW       1
	MOVWF       main_t_arriba_L0+0 
;tetris.c,425 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,426 :: 		cuadrado=0;
	CLRF        main_cuadrado_L0+0 
;tetris.c,427 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,428 :: 		t_derecha=0;
	CLRF        main_t_derecha_L0+0 
;tetris.c,429 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,430 :: 		contador=3;
	MOVLW       3
	MOVWF       main_contador_L0+0 
;tetris.c,431 :: 		}
	GOTO        L_main38
L_main39:
;tetris.c,433 :: 		break;             //fin de la linea Vertical
	GOTO        L_main15
;tetris.c,438 :: 		case 3:
L_main48:
;tetris.c,441 :: 		while (formaL==0 && cuadrado==0 && lineaHorizontal==0 && t_arriba==1 && t_abajo==0 && t_derecha==0)
L_main49:
	MOVF        main_formaL_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	MOVF        main_cuadrado_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	MOVF        main_lineaHorizontal_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	MOVF        main_t_arriba_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	MOVF        main_t_abajo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	MOVF        main_t_derecha_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
L__main77:
;tetris.c,443 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,444 :: 		while(x < 107 && contador==3)
L_main53:
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       107
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main54
	MOVF        main_contador_L0+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_main54
L__main76:
;tetris.c,446 :: 		t_arriba(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	MOVLW       1
	MOVWF       FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,447 :: 		x=x+2;         // caen las piezas normalmente
	MOVLW       2
	ADDWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,448 :: 		t_arriba(x,y,0); // aparece dibujo
	MOVF        R0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	CLRF        FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,449 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main57:
	DECFSZ      R13, 1, 1
	BRA         L_main57
	DECFSZ      R12, 1, 1
	BRA         L_main57
	DECFSZ      R11, 1, 1
	BRA         L_main57
	NOP
	NOP
;tetris.c,450 :: 		if(PORTB.RB5==0)// movimiento a la izquierda
	BTFSC       PORTB+0, 5 
	GOTO        L_main58
;tetris.c,452 :: 		t_arriba(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	MOVLW       1
	MOVWF       FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,453 :: 		y=y+4;
	MOVLW       4
	ADDWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,454 :: 		t_arriba(x,y,0);   // aparece una L a la izquierda
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        R0, 0 
	MOVWF       FARG_t_arriba_y+0 
	CLRF        FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,455 :: 		}
L_main58:
;tetris.c,457 :: 		if (PORTB.RB6==0)// movimiento a la derecha
	BTFSC       PORTB+0, 6 
	GOTO        L_main59
;tetris.c,459 :: 		t_arriba(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	MOVLW       1
	MOVWF       FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,460 :: 		y=y-4;
	MOVLW       4
	SUBWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,461 :: 		t_arriba(x,y,0);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        R0, 0 
	MOVWF       FARG_t_arriba_y+0 
	CLRF        FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,462 :: 		}
L_main59:
;tetris.c,463 :: 		guardox=x;
	MOVF        main_x_L0+0, 0 
	MOVWF       main_guardox_L0+0 
;tetris.c,464 :: 		guardoy=y;
	MOVF        main_y_L0+0, 0 
	MOVWF       main_guardoy_L0+0 
;tetris.c,465 :: 		if (x==106 )
	MOVF        main_x_L0+0, 0 
	XORLW       106
	BTFSS       STATUS+0, 2 
	GOTO        L_main60
;tetris.c,467 :: 		t_arriba(x,y,0); // dejo a la lineaHorizontal en su posicion final
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	CLRF        FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,468 :: 		t_arriba(guardox,guardoy,0);
	MOVF        main_guardox_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_guardoy_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	CLRF        FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,469 :: 		}
L_main60:
;tetris.c,470 :: 		if (PORTB.RB4==0) // la t empieza a girar hacia la derecha
	BTFSC       PORTB+0, 4 
	GOTO        L_main61
;tetris.c,475 :: 		t_arriba(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_arriba_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_arriba_y+0 
	MOVLW       1
	MOVWF       FARG_t_arriba_c+0 
	CALL        _t_arriba+0, 0
;tetris.c,476 :: 		t_derecha(guardox,guardoy,0); // aparece t a la derecha y los indicadores siguientes me permiten ir al siguiente case
	MOVF        main_guardox_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_guardoy_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,477 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,478 :: 		t_derecha=1;
	MOVLW       1
	MOVWF       main_t_derecha_L0+0 
;tetris.c,479 :: 		t_arriba=0;
	CLRF        main_t_arriba_L0+0 
;tetris.c,480 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,481 :: 		cuadrado=0;
	CLRF        main_cuadrado_L0+0 
;tetris.c,482 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,483 :: 		while (formaL==0 && cuadrado==0 && lineaHorizontal==0 && t_arriba==0 && t_abajo==0 && t_derecha==1)
L_main62:
	MOVF        main_formaL_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
	MOVF        main_cuadrado_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
	MOVF        main_lineaHorizontal_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
	MOVF        main_t_arriba_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
	MOVF        main_t_abajo_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
	MOVF        main_t_derecha_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
L__main75:
;tetris.c,485 :: 		y=0;
	CLRF        main_y_L0+0 
;tetris.c,486 :: 		x= guardox;
	MOVF        main_guardox_L0+0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,487 :: 		while(x < 107)
L_main66:
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       107
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main67
;tetris.c,489 :: 		t_derecha(x,y,1);  // borro
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	MOVLW       1
	MOVWF       FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,490 :: 		x=x+2;         // caen las piezas normalmente
	MOVLW       2
	ADDWF       main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_x_L0+0 
;tetris.c,491 :: 		t_derecha(x,y,0); // aparece dibujo
	MOVF        R0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,492 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main68:
	DECFSZ      R13, 1, 1
	BRA         L_main68
	DECFSZ      R12, 1, 1
	BRA         L_main68
	DECFSZ      R11, 1, 1
	BRA         L_main68
	NOP
	NOP
;tetris.c,493 :: 		if(PORTB.RB5==0)// movimiento a la izquierda
	BTFSC       PORTB+0, 5 
	GOTO        L_main69
;tetris.c,495 :: 		t_derecha(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	MOVLW       1
	MOVWF       FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,496 :: 		y=y+4;
	MOVLW       4
	ADDWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,497 :: 		t_derecha(x,y,0);   // aparece una L a la izquierda
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        R0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,498 :: 		}
L_main69:
;tetris.c,500 :: 		if (PORTB.RB6==0)// movimiento a la derecha
	BTFSC       PORTB+0, 6 
	GOTO        L_main70
;tetris.c,502 :: 		t_derecha(x,y,1);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	MOVLW       1
	MOVWF       FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,503 :: 		y=y-4;
	MOVLW       4
	SUBWF       main_y_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       main_y_L0+0 
;tetris.c,504 :: 		t_derecha(x,y,0);
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        R0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,505 :: 		}
L_main70:
;tetris.c,506 :: 		if (x==106 )
	MOVF        main_x_L0+0, 0 
	XORLW       106
	BTFSS       STATUS+0, 2 
	GOTO        L_main71
;tetris.c,508 :: 		t_derecha(x,y,0); // dejo a la lineaHorizontal en su posicion final
	MOVF        main_x_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_y_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,509 :: 		t_derecha(guardox,guardoy,0);
	MOVF        main_guardox_L0+0, 0 
	MOVWF       FARG_t_derecha_x+0 
	MOVF        main_guardoy_L0+0, 0 
	MOVWF       FARG_t_derecha_y+0 
	CLRF        FARG_t_derecha_color+0 
	CALL        _t_derecha+0, 0
;tetris.c,510 :: 		}
L_main71:
;tetris.c,511 :: 		guardox=x;
	MOVF        main_x_L0+0, 0 
	MOVWF       main_guardox_L0+0 
;tetris.c,512 :: 		guardoy=y;
	MOVF        main_y_L0+0, 0 
	MOVWF       main_guardoy_L0+0 
;tetris.c,513 :: 		}   // fin de recorrido
	GOTO        L_main66
L_main67:
;tetris.c,514 :: 		t_arriba=0;
	CLRF        main_t_arriba_L0+0 
;tetris.c,515 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,516 :: 		cuadrado=1;
	MOVLW       1
	MOVWF       main_cuadrado_L0+0 
;tetris.c,517 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,518 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,519 :: 		t_derecha=0;
	CLRF        main_t_derecha_L0+0 
;tetris.c,520 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,521 :: 		contador=0;
	CLRF        main_contador_L0+0 
;tetris.c,522 :: 		}
	GOTO        L_main62
L_main63:
;tetris.c,523 :: 		}
L_main61:
;tetris.c,525 :: 		}   // fin de recorrido
	GOTO        L_main53
L_main54:
;tetris.c,526 :: 		t_arriba=0;
	CLRF        main_t_arriba_L0+0 
;tetris.c,527 :: 		formaL=0;
	CLRF        main_formaL_L0+0 
;tetris.c,528 :: 		cuadrado=1;
	MOVLW       1
	MOVWF       main_cuadrado_L0+0 
;tetris.c,529 :: 		lineaVertical=0;
	CLRF        main_lineaVertical_L0+0 
;tetris.c,530 :: 		t_abajo=0;
	CLRF        main_t_abajo_L0+0 
;tetris.c,531 :: 		t_derecha=0;
	CLRF        main_t_derecha_L0+0 
;tetris.c,532 :: 		x=0;
	CLRF        main_x_L0+0 
;tetris.c,533 :: 		contador=0;
	CLRF        main_contador_L0+0 
;tetris.c,534 :: 		}
	GOTO        L_main49
L_main50:
;tetris.c,535 :: 		break;             //fin de la t hacia arriba
	GOTO        L_main15
;tetris.c,537 :: 		} //fin del switch
L_main14:
	MOVF        main_contador_L0+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        main_contador_L0+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main26
	MOVF        main_contador_L0+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main37
	MOVF        main_contador_L0+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main48
L_main15:
;tetris.c,538 :: 		if (general==60 )
	MOVF        main_general_L0+0, 0 
	XORLW       60
	BTFSS       STATUS+0, 2 
	GOTO        L_main72
;tetris.c,540 :: 		if (x>100)
	MOVLW       128
	XORLW       100
	MOVWF       R0 
	MOVLW       128
	XORWF       main_x_L0+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main73
;tetris.c,542 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,543 :: 		Glcd_Write_Text("YOU WIN!",15, 2, 0);
	MOVLW       ?lstr5_tetris+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr5_tetris+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       15
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;tetris.c,544 :: 		bien=0;
	CLRF        main_bien_L0+0 
;tetris.c,545 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,546 :: 		break;
	GOTO        L_main13
;tetris.c,547 :: 		}
L_main73:
;tetris.c,550 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,551 :: 		Glcd_Write_Text("YOU LOSE!",15, 2, 0);
	MOVLW       ?lstr6_tetris+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr6_tetris+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       15
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;tetris.c,552 :: 		bien=1;
	MOVLW       1
	MOVWF       main_bien_L0+0 
;tetris.c,553 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;tetris.c,554 :: 		Glcd_Write_Text("RETURN!",15, 2, 0);
	MOVLW       ?lstr7_tetris+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr7_tetris+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       15
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;tetris.c,555 :: 		pierdo=0;
	CLRF        main_pierdo_L0+0 
;tetris.c,556 :: 		break;
	GOTO        L_main13
;tetris.c,558 :: 		}
L_main72:
;tetris.c,560 :: 		}  // fin del while de la secuencia del juego
	GOTO        L_main12
L_main13:
;tetris.c,561 :: 		} // fin del main
L_end_main:
	GOTO        $+0
; end of _main
