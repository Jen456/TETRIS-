short int nuevoJuego=0;
 void Tone1() {
  Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
}
void Tone2() {
  Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
}

void Tone3() {
  Sound_Play(784, 250);   // Frequency = 784Hz, duration = 250ms
}

void Melody() {           // Plays the melody "Yellow house"
  Tone1(); Tone2(); Tone3(); Tone3();
  Tone1(); Tone2(); Tone3(); Tone3();
  Tone1(); Tone2(); Tone3();
  Tone1(); Tone2(); Tone3(); Tone3();
  Tone1(); Tone2(); Tone3();
  Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
}

  char GLCD_DataPort at PORTD;
  sbit GLCD_CS1 at RC0_bit;
  sbit GLCD_CS2 at RC1_bit;
  sbit GLCD_RS at RC2_bit;
  sbit GLCD_RW at RE0_bit;
  sbit GLCD_EN at RE1_bit;
  sbit GLCD_RST at RE2_bit;
  sbit GLCD_CS1_Direction at TRISC0_bit;
  sbit GLCD_CS2_Direction at TRISC1_bit;
  sbit GLCD_RS_Direction at TRISC2_bit;
  sbit GLCD_RW_Direction at TRISE0_bit;
  sbit GLCD_EN_Direction at TRISE1_bit;
  sbit GLCD_RST_Direction at TRISE2_bit;

const code char LOGO[1024] = {
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 192, 192, 224, 240, 240, 248, 252, 252, 252, 248, 240, 240, 224, 192, 192, 128,   0,   0,   0,   0,   0,   0,   0, 128, 192, 192, 224, 240, 240, 248, 248, 252, 252, 248, 248, 240, 240, 224, 192, 192, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 192, 192, 224, 240, 248, 248, 252, 126, 126,  63,  31,  31,  15,   7,   3,   3,   1,   0,   0,   0,   1,   3, 131, 199, 207, 255, 255, 255, 254, 254, 252, 254, 255, 255, 255, 239, 207, 135,   3,   3,   1,   1,   0,   0,   1,   1,   3,   7,   7,  15,  15,  31,  63,  63, 126, 252, 252, 248, 240, 240, 224, 192, 192, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 112, 248, 252, 252, 254, 255, 255, 223, 143, 143,   7,   3,   3,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  24,  60, 126, 255, 255, 255, 255, 255, 231, 195, 195, 129,   0,   0,   1,   1,   3,   7, 143, 143, 223, 255, 255, 254, 252, 252, 248, 112,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 129, 195, 195, 231, 255, 255, 255, 255, 255, 126,  60,  24,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   1,   3,   7,   7,  15,  31,  63,  63, 126, 252, 252, 248, 240, 240, 224, 192, 192, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   3, 131, 135, 207, 239, 255, 255, 255, 254, 252, 254, 255, 255, 255, 239, 199, 199, 131,   1,   1,   0,   0, 128, 192, 192, 224, 240, 240, 248, 252, 252, 126,  63,  63,  31,  15,  15,   7,   3,   3,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   3,   3,   7,  15,  31,  31,  63, 126, 126, 252, 248, 248, 248, 252, 126, 126,  63,  31,  31,  15,   7,   7,   3,   1,   0,   0,   0,   1,   3,   3,   7,  15,  15,  31,  63,  63,  63,  63,  31,  15,  15,   7,   3,   3,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0, 224, 240, 248, 248, 120, 120,  48,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128,   0,   0,   0,   0,   0,   0, 224, 240, 240, 112,  48,   0,   0,   0,   0,   0,  24,  56,  56, 120, 240, 224,   0,   0,   0, 192, 224, 240, 240, 240, 240,  96,   1,   1,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 224, 240, 240, 240, 240, 224, 224, 128, 224, 240, 248, 248, 248, 252, 254, 254, 252,   0,   0,   0,   0, 128, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128,   0,   0,   0,  32, 240, 248, 248, 120,  56,   0, 224, 240, 240, 248, 248, 248, 248, 240, 240, 224, 128,   0,   0,   0,   0,
  0,   0,   0, 255, 255, 255, 255, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 255, 255, 255,   0,   0,   0,   0,   0, 255, 255, 255, 224, 230, 231, 231, 255, 255, 231, 231, 230, 224, 224, 255, 255,   0,   0,   0, 255, 255, 255, 255, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 255, 255, 254,   0,   0, 255, 255, 255, 231, 231, 231, 231, 255, 255, 255, 231, 227, 227, 227, 227, 241, 241, 224,   0,   0,   0, 255, 255, 255, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 255, 255, 255,   0,   0,  63, 255, 255, 248, 248, 252, 255, 255, 255, 255, 255,  63,  15, 131, 195, 255, 255,  63,   0,   0,   0,   0,
  0,   0,   0,   7,  15,  15,  31,  30,  30,  28,   0,   0,   0,   0,   0,   0,   0,   0,   1,   1,   0,   0,   0,   0,   0,   0,  31,  31,  31,   7,   7,   7,   7,   7,   7,   7,   7,   7,   7,   7,  31,  31,   0,   0,   0,  15,  31,  31,  63,  60,  60,  56,   0,   0,   0,   0,   0,   0,   0,   0,   3,   3,   1,   0,   0,  15,  31,  31,   7,   7,   7,   7,   7,   7,   7,   7,   7,   7,   7,   7,  31,  31,  15,   0,   0,   0,   0,   1,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   1,   0,   0,   0,   0,   0,   1,   1,   3,   3,   3,   3,   1,   1,   0,   3,   3,   3,   3,   1,   1,   0,   0,   0,   0,   0
};

const code char puntuacion[256] = {
  255,   1,   1, 241, 145,  97, 145, 225,   1,   1,  97, 145, 129, 145,  97,   1,   1,  97, 145, 145, 145,  97,   1,   1, 209, 113,  65,  65, 225,   1,   1,  97, 145, 225, 145,  97,   1,   1,   1,   1,   1,   1,   1, 249,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,  65,  65, 193, 161, 177,  13, 177, 161, 161,  65,  65,   1,   1,   1,   1,   1,   1, 255,
   31,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  19,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  17,  22,  17,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  31
};
void cuadrado ( short int posx, short int posy, short int color)
{
    Glcd_Box(0+posx,16+posy,1+posx,17+posy,color);
    Glcd_Box(9+posx,22+posy,10+posx,23+posy,color);
    Glcd_Box(9+posx,19+posy,10+posx,20+posy,color);
    Glcd_Box(9+posx,25+posy,10+posx,26+posy,color);
    Glcd_Box(6+posx,25+posy,7+posx,26+posy,color);
    Glcd_Box(3+posx,25+posy,4+posx,26+posy,color);
    Glcd_Box(9+posx,16+posy,10+posx,17+posy,color);
    Glcd_Box(6+posx,16+posy,7+posx,17+posy,color);
    Glcd_Box(3+posx,16+posy,4+posx,17+posy,color);
    Glcd_Box(0+posx,25+posy,1+posx,26+posy,color);
    Glcd_Box(0+posx,22+posy,1+posx,23+posy,color);
    Glcd_Box(0+posx,19+posy,1+posx,20+posy,color);
    Glcd_Box(3+posx,19+posy,4+posx,20+posy,color);
    Glcd_Box(6+posx,22+posy,7+posx,23+posy,color);
    Glcd_Box(3+posx,22+posy,4+posx,23+posy,color);
    Glcd_Box(6+posx,19+posy,7+posx,20+posy,color);
}

const code char menu[1024] ={
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  20, 188,  96, 188,  12, 124,  16,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  20,   1,  64,   0, 128,  24,   0,  32,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,  16,  62,  54,  60,  60, 182, 162,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 129, 143, 140, 135, 140, 255,  70,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 192,  96, 192, 192,  96,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   2,  36,  65, 152,   0,  64,   4,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0, 142,  15, 219, 223, 217, 160,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  32, 189, 177,  61,  49,  60,  40,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,  55,  54,  55,  55, 182, 130,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   2,  14,  56,  96, 192,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0, 239, 204,  91, 216, 207, 131,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 217, 217, 219, 207, 198, 132,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 198, 230, 102, 246,  55,  17,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128,  16,   2,   0,  20, 129,   6,  32,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0, 108, 108, 108, 108, 231, 195,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 230, 230, 246, 222, 206, 132,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  32, 241, 193, 241,  59, 223,  98,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 144,   2,  32,   0, 130,  16,   8,  66,   0,   2,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  16,  49,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 192, 128,   0, 144, 144,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128, 128, 128, 208,  16,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,  16,  24, 192,   1,  32,   4,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   3,   7,   3,   1,   3,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   7,   0,   1,   7,   7,   6,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   7,   1,   3,   1,   5,   7,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   0,   6,   8,  16,  64,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
};

void formaL(short int posx, short int posy,short int color)
{
    Glcd_Box(0+posx,23+posy,1+posx,24+posy,color);
    Glcd_Box(14+posx,19+posy,11+posx,16+posy,color);
    Glcd_Box(11+posx,19+posy,8+posx,16+posy,color);
    Glcd_Box(14+posx,22+posy,11+posx,19+posy,color);
    Glcd_Box(11+posx,22+posy,8+posx,19+posy,color);
    Glcd_Box(12+posx,32+posy,13+posx,33+posy,color);
    Glcd_Box(12+posx,29+posy,13+posx,30+posy,color);
    Glcd_Box(9+posx,32+posy,10+posx,33+posy,color);
    Glcd_Box(9+posx,29+posy,10+posx,30+posy,color);
    Glcd_Box(12+posx,26+posy,13+posx,27+posy,color);
    Glcd_Box(9+posx,26+posy,10+posx,27+posy,color);
    Glcd_Box(6+posx,26+posy,7+posx,27+posy,color);
    Glcd_Box(3+posx,26+posy,4+posx,27+posy,color);
    Glcd_Box(0+posx,26+posy,1+posx,27+posy,color);
    Glcd_Box(12+posx,23+posy,13+posx,24+posy,color);
    Glcd_Box(9+posx,23+posy,10+posx,24+posy,color);
    Glcd_Box(6+posx,23+posy,7+posx,24+posy,color);
    Glcd_Box(3+posx,23+posy,4+posx,24+posy,color);
}
void lineaVertical(short int posx, short int posy, short int color)
{
  Glcd_Box(1+posx,31+posy,2+posx,32+posy,color);
  Glcd_Box(16+posx,31+posy,17+posx,32+posy,color);
  Glcd_Box(13+posx,31+posy,14+posx,32+posy,color);
  Glcd_Box(10+posx,31+posy,11+posx,32+posy,color);
  Glcd_Box(7+posx,31+posy,8+posx,32+posy,color);
  Glcd_Box(4+posx,31+posy,5+posx,32+posy,color);
}
void lineaHorizontal(short int posx, short int posy, short int c)
{
  Glcd_Box(2+posx,24+posy,3+posx,25+posy,c);
  Glcd_Box(2+posx,39+posy,3+posx,40+posy,c);
  Glcd_Box(2+posx,36+posy,3+posx,37+posy,c);
  Glcd_Box(2+posx,33+posy,3+posx,34+posy,c);
  Glcd_Box(2+posx,30+posy,3+posx,31+posy,c);
  Glcd_Box(2+posx,27+posy,3+posx,28+posy,c);

}
void t_arriba(short int x, short int y, short int c)
{
  Glcd_Box(5+x,20+y,6+x,21+y,c);
  Glcd_Box(17+x,14+y,18+x,15+y,c);
  Glcd_Box(14+x,14+y,15+x,15+y,c);
  Glcd_Box(17+x,17+y,18+x,18+y,c);
  Glcd_Box(14+x,17+y,15+x,18+y,c);
  Glcd_Box(17+x,29+y,18+x,30+y,c);
  Glcd_Box(17+x,26+y,18+x,27+y,c);
  Glcd_Box(14+x,29+y,15+x,30+y,c);
  Glcd_Box(14+x,26+y,15+x,27+y,c);
  Glcd_Box(17+x,23+y,18+x,24+y,c);
  Glcd_Box(17+x,20+y,18+x,21+y,c);
  Glcd_Box(14+x,23+y,15+x,24+y,c);
  Glcd_Box(14+x,20+y,15+x,21+y,c);
  Glcd_Box(11+x,23+y,12+x,24+y,c);
  Glcd_Box(11+x,20+y,12+x,21+y,c);
  Glcd_Box(8+x,23+y,9+x,24+y,c);
  Glcd_Box(8+x,20+y,9+x,21+y,c);
  Glcd_Box(5+x,23+y,6+x,24+y,c);
}
void t_izquierda(short int x, short int y, short int color)
{
    // forma de t, vista izquierda
    Glcd_Box(5+x,14+y,6+x,15+y,color);
    Glcd_Box(14+x,26+y,15+x,27+y,color);
    Glcd_Box(11+x,26+y,12+x,27+y,color);
    Glcd_Box(14+x,23+y,15+x,24+y,color);
    Glcd_Box(11+x,23+y,12+x,24+y,color);
    Glcd_Box(14+x,20+y,15+x,21+y,color);
    Glcd_Box(11+x,20+y,12+x,21+y,color);
    Glcd_Box(20+x,17+y,21+x,18+y,color);
    Glcd_Box(17+x,17+y,18+x,18+y,color);
    Glcd_Box(14+x,17+y,15+x,18+y,color);
    Glcd_Box(11+x,17+y,12+x,18+y,color);
    Glcd_Box(8+x,17+y,9+x,18+y,color);
    Glcd_Box(5+x,17+y,6+x,18+y,color);
    Glcd_Box(20+x,14+y,21+x,15+y,color);
    Glcd_Box(17+x,14+y,18+x,15+y,color);
    Glcd_Box(14+x,14+y,15+x,15+y,color);
    Glcd_Box(11+x,14+y,12+x,15+y,color);
    Glcd_Box(8+x,14+y,9+x,15+y,color);
}
void t_derecha (short int x, short int y, short int color)
{
// forma de t vista derecha

  Glcd_Box(5+x,28+y,6+x,25+y,color);
  Glcd_Box(16+x,16+y,13+x,13+y,color);
  Glcd_Box(13+x,16+y,10+x,13+y,color);
  Glcd_Box(16+x,19+y,13+x,16+y,color);
  Glcd_Box(13+x,19+y,10+x,16+y,color);
  Glcd_Box(16+x,22+y,13+x,19+y,color);
  Glcd_Box(13+x,22+y,10+x,19+y,color);
  Glcd_Box(20+x,23+y,21+x,24+y,color);
  Glcd_Box(17+x,23+y,18+x,24+y,color);
  Glcd_Box(14+x,23+y,15+x,24+y,color);
  Glcd_Box(11+x,23+y,12+x,24+y,color);
  Glcd_Box(8+x,23+y,9+x,24+y,color);
  Glcd_Box(5+x,23+y,6+x,24+y,color);
  Glcd_Box(20+x,26+y,21+x,27+y,color);
  Glcd_Box(17+x,26+y,18+x,27+y,color);
  Glcd_Box(14+x,26+y,15+x,27+y,color);
  Glcd_Box(11+x,26+y,12+x,27+y,color);
  Glcd_Box(8+x,14+y,9+x,15+y,color);
}
void t_abajo(short int x, short int y, short int color)
{
  Glcd_Box(5+x,28+y,6+x,25+y,color);
  Glcd_Box(17+x,20+y,18+x,21+y,color);
  Glcd_Box(14+x,20+y,15+x,21+y,color);
  Glcd_Box(11+x,20+y,12+x,21+y,color);
  Glcd_Box(17+x,17+y,18+x,18+y,color);
  Glcd_Box(14+x,17+y,15+x,18+y,color);
  Glcd_Box(11+x,17+y,12+x,18+y,color);
  Glcd_Box(10+x,13+y,7+x,10+y,color);
  Glcd_Box(10+x,16+y,7+x,13+y,color);
  Glcd_Box(10+x,19+y,7+x,16+y,color);
  Glcd_Box(10+x,22+y,7+x,19+y,color);
  Glcd_Box(10+x,25+y,7+x,22+y,color);
  Glcd_Box(10+x,28+y,7+x,25+y,color);
  Glcd_Box(7+x,13+y,4+x,10+y,color);
  Glcd_Box(7+x,16+y,4+x,13+y,color);
  Glcd_Box(7+x,19+y,4+x,16+y,color);
  Glcd_Box(7+x,22+y,4+x,19+y,color);
  Glcd_Box(7+x,25+y,4+x,22+y,color);
}

 const code char LOADING[1024] = {
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   8, 240,   0,   0,   0, 192,  96,  32,  32,  32,  32, 192,   0,   0,   0, 192,  64,  64, 192,  64, 192,  32,   0,   0,  96,  32,  32,  32,  32, 160,  96,  32,  32,  32,  96, 176,   0,   0,   0, 128, 128,   0, 128, 128, 128, 128, 128, 128, 192,   0,   0, 192,  32,  32,  32,  32,  32, 112,   0,   0, 224,  64,  64,  64, 128,   0, 224,  48,  16,  16, 224,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   7,   2,   2,   2,   2,   2,   2,   2,   2,   2,   7,   0,   0,   0,   3,   4,   4,   4,   4,   6,   3,   0,   0,   0,   3,   4,   4,   1,   6,   4,   7,   0,   0,   0,   0,   0,   0,   0,   3,   4,   4,   4,   4,   6,   3,   0,   0,   0,   0,   0,   0,   1,   0,   0,   0,   0,   0,   1,   0,   0,   6,   3,   2,   2,   2,   2,   7,   0,   0,   3,   4,   4,   4,   3,   4,   7,   6,   4,   4,   3,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128,   0,   0,   0,   0,
  0, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255,   0,   0,   0,   0,
  0, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255,   0,   0,   0,   0,
  0, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255,   0,   0,   0,   0,
  0, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255,   0,   0,   0,   0,
  0,   7,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   4,   7,   0,   0,   0,   0
};
/*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/




void main()
{
    short int bien, contador=0, pierdo, guardox, guardoy, general=0; // general es para la puntuacion
    short int i,x,y, cuadrado, formaL, lineaHorizontal,lineaVertical,t_arriba=0,t_abajo=0, t_derecha=0;
    TRISA = 0;
    T1CON = 1;                  // Set timer TMR1
    //PIR1.TMR1IF = 0;            // Reset bit TMR1IF
    INTCON = 0xC0;              // Enable interrupt (bits GIE and PEIE)
    ADCON1=0X0F;   //todos los pines de entrada y salida digital
    TRISB=0XFF ; //todos son entradas

    //OSCCON = 0b11110111; // Osilador Interno 8 MHz

    /*configuracion del modulo bluetooth*/
     UART1_Init(9600);
     delay_ms(1000);
     UART1_WRITE_TEXT("AT+NAMETETRIS");
     Delay_ms(2000);
     UART1_WRITE_TEXT("AT+BAUD4");
     Delay_ms(2000);
     UART1_WRITE_TEXT("AT+PIN0000");
     Delay_ms(2000);

    Glcd_Init();
    Glcd_Fill(0);
    //sonido
    Sound_Init(&PORTA, 2);
    //Tone1();
    Glcd_Image(LOGO);                     // Draw image
    //Melody();
    Delay_ms(3000);
    Glcd_Fill(0);

    ///inicializo las piezas
    cuadrado=1;
    formaL=0;
    lineaHorizontal=0;
    lineaVertical=0;

    x=0;
    y=0;

    bien=1;  //todavia esta en el juego
    pierdo=0; // aun no he perdido

    Glcd_Image(menu);
    Delay_ms(1000);
    Glcd_Fill(0);

    if (pierdo==0) /// si esta presionado el boton del pin rb0 //inicio del juego
      {
        Glcd_Image(LOADING);
        for (i=1;i<=120;++i)
         {
          Glcd_Write_Text("#", i, 4,1);
          Delay_ms(100);
         }
         Delay_ms(1000);
     }

    Glcd_Fill(1);
    Glcd_Image(puntuacion);   // 1 negro, o blanco
  while (bien==1) // SECUENCIA PRINCIPAL DEL JUEGO
  {
    // al inicio del juego aparece un cuadrado
      //cayendo piezas
      /*******************************************************************+++++/
      /*********** PRIMERA PIEZA DEL JUEGO ************************************/
      /*************************************************************************/
    general++;
    switch(contador)
    {
     case 0:
     {
        if (cuadrado==1 && formaL==0 && lineaVertical==0 && t_arriba==0 && t_abajo==0 && t_derecha==0)
        {
          while(x < 112)
          {
              cuadrado(x,y,1);  // borro
              x=x+12;         // caen las piezas normalmente
              cuadrado(x,y,0); // aparece dibujo
              Delay_ms(1000);
              if(PORTB.RB5==0)// movimiento a la izquierda
              {
                 cuadrado(x,y,1);
                 y=y+3;
                 cuadrado(x,y,0);   // aparece un cuadrado a la izquierda
              }
              /**********************************************/
              if (PORTB.RB6==0)// movimiento a la derecha
              {
                 cuadrado(x,y,1);
                 y=y-3;
                 cuadrado(x,y,0);
              }
              if (x==111 )    //fin del primer cuadrado
              {
               cuadrado(x,y,0); // dejo el cuadrado en la posicion final
               guardox=111;
              }
              guardox=x;
              guardoy=y;
          } // fin de recorrido
         cuadrado=0;
         formaL=1;
         lineaVertical=0;
         t_arriba=0;
         t_abajo=0;
         contador=1;
         t_derecha=0;
         x=0;
        }
        break;
     }
        /*******************************************************************+++++/
        /***********SEGUNDA PIEZA DEL JUEGO *************************************/
        /*************************************************************************/
    case 1:
    {
        cuadrado(guardox,guardoy,0);
        while (formaL==1 && cuadrado==0 && lineaVertical==0 && t_arriba==0 && t_abajo==0 && t_derecha==0)
        {
        x=0;
          while(x < 110)
          {
              formaL(x,y,1);  // borro
              x=x+4;         // caen las piezas normalmente
              formaL(x,y,0); // aparece dibujo
              Delay_ms(1000);
              if(PORTB.RB5==0)// movimiento a la izquierda
              {
                 formaL(x,y,1);
                 y=y+1;
                 formaL(x,y,0);   // aparece una L a la izquierda
              }
              /**********************************************/
              if (PORTB.RB6==0)// movimiento a la derecha
              {
                 formaL(x,y,1);
                 y=y-1;
                 formaL(x,y,0);
              }
              if (x==109 )
              {
                formaL(x,y,0); // dejo a la formaL en su posicion final
                guardox=109;
               }
               guardox=x;
               guardoy=y;
          }   // fin de recorrido
         formaL=0;
         cuadrado=0;
         x=0;
         contador=2;
         lineaVertical=1;
         t_abajo=0;
         t_arriba=0;
         t_derecha=0;
        }
            /// para alternarse entre piezas
         break;             //fin de la forma l
     }
        /*******************************************************************+++++/
        /*************** TERCERA PIEZA DEL JUEGO *******************************/      ///linea VERTICAL
        /*************************************************************************/
     case 2:
    {
        //formaL(guardox,guardoy,0);
        while (formaL==0 && cuadrado==0 && lineaVertical==1 && t_arriba==0 && t_abajo==0 && t_derecha==0)
        {
         x=0;
          while(x < 110)
          {
              lineaVertical(x,y,1);  // borro
              x=x+6;         // caen las piezas normalmente
              lineaVertical(x,y,0); // aparece dibujo
              Delay_ms(1000);
              if(PORTB.RB5==0)// movimiento a la izquierda
              {
                 lineaVertical(x,y,1);
                 y=y+2;
                 lineaVertical(x,y,0);   // aparece una L a la izquierda
              }
              /**********************************************/
              if (PORTB.RB6==0)// movimiento a la derecha
              {
                 lineaVertical(x,y,1);
                 y=y-2;
                 lineaVertical(x,y,0);
              }
              if (x==109 )
              {
                lineaVertical(x,y,0); // dejo a la lineaVertical en su posicion final
                lineaVertical(guardox,guardoy,0);
               }
               guardox=x;
               guardoy=y;
          }   // fin de recorrido
         lineaVertical=0;
         t_arriba=1;
         formaL=0;
         cuadrado=0;
         t_abajo=0;
         t_derecha=0;
         x=0;
         contador=3;
        }
            /// para alternarse entre piezas
         break;             //fin de la linea Vertical
     }
       /*******************************************************************+++++/
        /*************** CUARTA PIEZA DEL JUEGO *******************************/      /// t hacia arriba
        /*************************************************************************/
      case 3:
     {
        //formaL(guardox,guardoy,0);
        while (formaL==0 && cuadrado==0 && lineaHorizontal==0 && t_arriba==1 && t_abajo==0 && t_derecha==0)
        {
         x=0;
          while(x < 107 && contador==3)
          {
              t_arriba(x,y,1);  // borro
              x=x+2;         // caen las piezas normalmente
              t_arriba(x,y,0); // aparece dibujo
              Delay_ms(1000);
              if(PORTB.RB5==0)// movimiento a la izquierda
              {
                 t_arriba(x,y,1);
                 y=y+4;
                 t_arriba(x,y,0);   // aparece una L a la izquierda
              }
              /**********************************************/
              if (PORTB.RB6==0)// movimiento a la derecha
              {
                 t_arriba(x,y,1);
                 y=y-4;
                 t_arriba(x,y,0);
              }
              guardox=x;
              guardoy=y;
              if (x==106 )
              {
                t_arriba(x,y,0); // dejo a la lineaHorizontal en su posicion final
                t_arriba(guardox,guardoy,0);
               }
             if (PORTB.RB4==0) // la t empieza a girar hacia la derecha
             {
                /*******************************************************************+++++/
                /*************** QUINTA PIEZA DEL JUEGO *******************************/      ///t hacia la derecha
                /*************************************************************************/
                 t_arriba(x,y,1);  // borro
                 t_derecha(guardox,guardoy,0); // aparece t a la derecha y los indicadores siguientes me permiten ir al siguiente case
                 t_abajo=0;
                 t_derecha=1;
                 t_arriba=0;
                 formaL=0;
                 cuadrado=0;
                 lineaVertical=0;
                  while (formaL==0 && cuadrado==0 && lineaHorizontal==0 && t_arriba==0 && t_abajo==0 && t_derecha==1)
                  {
                   y=0;
                   x= guardox;
                    while(x < 107)
                    {
                        t_derecha(x,y,1);  // borro
                        x=x+2;         // caen las piezas normalmente
                        t_derecha(x,y,0); // aparece dibujo
                        Delay_ms(1000);
                        if(PORTB.RB5==0)// movimiento a la izquierda
                        {
                           t_derecha(x,y,1);
                           y=y+4;
                           t_derecha(x,y,0);   // aparece una L a la izquierda
                        }
                        /**********************************************/
                        if (PORTB.RB6==0)// movimiento a la derecha
                        {
                           t_derecha(x,y,1);
                           y=y-4;
                           t_derecha(x,y,0);
                        }
                        if (x==106 )
                        {
                          t_derecha(x,y,0); // dejo a la lineaHorizontal en su posicion final
                          t_derecha(guardox,guardoy,0);
                         }
                         guardox=x;
                         guardoy=y;
                        }   // fin de recorrido
                       t_arriba=0;
                       formaL=0;
                       cuadrado=1;
                       lineaVertical=0;
                       t_abajo=0;
                       t_derecha=0;
                       x=0;
                       contador=0;
                    }
               }

          }   // fin de recorrido
         t_arriba=0;
         formaL=0;
         cuadrado=1;
         lineaVertical=0;
         t_abajo=0;
         t_derecha=0;
         x=0;
         contador=0;
        }
         break;             //fin de la t hacia arriba
     } //fin del case 3
     } //fin del switch
    if (general==60 )
    {
       if (x>100)
       {
         Glcd_fill(0x00);
         Glcd_Write_Text("YOU WIN!",15, 2, 0);
         bien=0;
         Glcd_fill(0x00);
         break;
       }
       else
       {
         Glcd_fill(0x00);
         Glcd_Write_Text("YOU LOSE!",15, 2, 0);
         bien=1;
         Glcd_fill(0x00);
         Glcd_Write_Text("RETURN!",15, 2, 0);
         pierdo=0;
         break;
       }
    }
     
   }  // fin del while de la secuencia del juego
} // fin del main