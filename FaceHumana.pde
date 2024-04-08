 /**
  
  O programa cria uma face humana utilizando formas geométricas simples.
  
  **********************************************************************************************
                          Como Usar a Classe FaceHumana
  
  Para usar a FaceHumana você deve seguir os seguintes passos:
  
  1) Criar uma nova aba no Sketchbook (você pode fazer isso apertando Ctrl + Shift + N).
  2) Em seguida nomeie a aba com o nome: ColorHSB.
  3) Copie o código da classe "ColorHSB" que foi enviada pelo discord.
  4) Divirta-se! Brinque com os parâmetros "hue", "hueTriadic1", "hueTriadic2" e "hueTriadic3"
  
  *********************************************************************************************
  
  fonte da imagem: <https://tinyurl.com/mvwe56na>
  
  @Author Guilherme Alves
 **/


void setup(){
 size(600,600);
 colorMode(HSB,360,100,100);
 background(corEscuraTriadicH3.getH(),corEscuraTriadicH3.getS(),corEscura70TriadicH3.getB());
  
 //Background
 
 int larguraElipse = 20;
 int alturaElipse = 20;
 
 for(int i = 0; i < width+50; i+=larguraElipse){
   for(int j = 0; j < height+50; j += alturaElipse){
      fill(corTriadicH3.getH(),random(30,100),corTriadicH3.getB());
      noStroke();
      ellipse(i,j,larguraElipse,alturaElipse);
   }
 }

 //Layout

 fill(corTriadicH3.getH(),10,corTriadicH3.getB());
 rect(width-190,height-120,width,height);
 fill(corEscuraTriadicH3.getH(),corEscura50TriadicH3.getS(),corEscuraTriadicH3.getB());
 rect(width-190,0,width,height-120);
 textSize(13);
 fill(corTriadicH3.getH(),cor25TriadicH3.getS(),corEscuraTriadicH3.getB());
 text("Matiz atual: ",width-180,height-100);
 fill(corTriadicH3.getH(),corTriadicH3.getS(),corTriadicH3.getB());
 text(hueText,width-115,height-100);
 fill(corTriadicH3.getH(),cor25TriadicH3.getS(),corEscuraTriadicH3.getB());
 text("Matiz da pele: ",width-180,height-80);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corTriadicH2.getB());
 text(hueTriadic2Text,width-102,height-80);
 fill(corTriadicH3.getH(),cor25TriadicH3.getS(),corEscuraTriadicH3.getB());
 text("Matiz da boca/olhos/pelos: ",width-180,height-60);
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corTriadicH1.getB());
 text(hueTriadic1Text,width-30,height-60);
 fill(corTriadicH3.getH(),cor25TriadicH3.getS(),corEscuraTriadicH3.getB());
 text("Matiz do background: ",width-180,height-40);
 fill(corTriadicH3.getH(),corTriadicH3.getS(),corTriadicH3.getB());
 text(hueTriadic3Text,width-60,height-40);
 
 fill(corTriadicH3.getH(),cor25TriadicH3.getS(),corEscuraTriadicH3.getB());
 text("Autor: Guilherme Alves",width-180,height-20);
 
 fill(corTriadicH3.getH(),20,corTriadicH3.getB());
 textSize(40);
 text(" Polygonal",(width-190),(height-525));
 text(" Face",(width-190),(height-475));
 
 fill(corTriadicH3.getH(),20,corTriadicH3.getB());
 textSize(16);
 text("Harmonia Cromática HSB",(width-180),(height-425));
 text("(simplificada)",(width-140),(height-400));
 
 noStroke();
 
 fill(corTriadicH3.getH(),corTriadicH3.getS(),corEscura90TriadicH3.getB());
 arc((width-100), (height-300), 100, 100, radians(0-90), radians(120-90));
 textSize(9);
 fill(corTriadicH3.getH(),corTriadicH3.getS(),corEscuraTriadicH3.getB());
 text("background",width-97,height-305);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura90TriadicH2.getB());
 arc((width-100), (height-300), 100, 100, radians(120-90), radians(240-90));
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 text("pele",width-108,height-270);
 
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscura90TriadicH1.getB());
 arc((width-100), (height-300), 100, 100, radians(240-90), radians(360-90));
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscuraTriadicH1.getB());
 text("boca,olhos",width-145,height-305);
 text("e pelos",width-145,height-295);
}

/*                            VALORES DE MATIZ  
                           (Valores recomendados)
                 __________________________________________
                |  hue = 0    ------------------- Vermelho |
                |  hue = 60   ------------------- Amarelo  |
                |  hue = 120  ------------------- Verde    |
                |  hue = 180  ------------------- Ciano    |
                |  hue = 240  ------------------- Azul     |
                |  hue = 300  ------------------- Magenta  |
                "------------------------------------------"
*/

int hue = 0 ;  // <------- Altere a matiz aqui!
String hueText = Integer.toString(hue);

/*****************************CORES ORIGINAIS*********************************/
ColorHSB cor = new ColorHSB(hue,100,100);   // COR -- SATURAÇÃO -- 100%
ColorHSB cor75 = new ColorHSB(hue,75,100); //  COR -- SATURAÇÃO --  75%
ColorHSB cor50 = new ColorHSB(hue,50,100);//   COR -- SATURAÇÃO --  50%
ColorHSB cor25= new ColorHSB(hue,25,100);//    COR -- SATURAÇÃO --  25%

/*****************************************************************************/

ColorHSB corEscura= new ColorHSB(hue,100,50);   //COR -- BRILHO --  50%
ColorHSB corEscura75 = new ColorHSB(hue,100,75);//COR -- BRIHO  --  75%

/*****************************************************************************/

int[] hueTriadicValues = cor.triadicColor();

/* Podemos alterar os valores abaixo para obter diferentes
   colorações para os objetos.      
   
   Valor 0 --- Deixa o círculo HSB estático.
   Valor 1 --- Gira o círculo HSB em 120 graus.
   Valor 2 --- Gira o círculo HSB em 240 graus.
*/

int hueTriadic1 = 1;    // <----  Você pode alterar esses tamanhos (0, 1 ou 2)
int hueTriadic2 = 0;    // <----  Você pode alterar esses tamanhos (0, 1 ou 2)
int hueTriadic3 = 2;    // <----  Você pode alterar esses tamanhos (0, 1 ou 2)

String hueTriadic1Text = Integer.toString(hueTriadicValues[hueTriadic1]);
String hueTriadic2Text = Integer.toString(hueTriadicValues[hueTriadic2]);
String hueTriadic3Text = Integer.toString(hueTriadicValues[hueTriadic3]);

/*********************CORES TETRAÉDRICAS PARA HUE 1***************************/

ColorHSB corTriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,100);
ColorHSB cor75TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],75,100);
ColorHSB cor50TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],50,100);
ColorHSB cor25TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],25,100);

/*****************************************************************************/

ColorHSB corEscuraTriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,30);
ColorHSB corEscura50TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,50);
ColorHSB corEscura60TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,60);
ColorHSB corEscura70TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,70);
ColorHSB corEscura80TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,80);
ColorHSB corEscura90TriadicH1 = new ColorHSB(hueTriadicValues[hueTriadic1],100,90);

/**********************CORES TETRAÉDRICAS PARA HUE 2**************************/

ColorHSB corTriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,100);
ColorHSB cor75TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],75,100);
ColorHSB cor50TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],50,100);
ColorHSB cor25TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],25,100);

/*****************************************************************************/

ColorHSB corEscuraTriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,30);
ColorHSB corEscura50TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,50);
ColorHSB corEscura60TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,60);
ColorHSB corEscura70TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,70);
ColorHSB corEscura80TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,80);
ColorHSB corEscura90TriadicH2 = new ColorHSB(hueTriadicValues[hueTriadic2],100,90);

/**********************CORES TETRAÉDRICAS PARA HUE 3**************************/

ColorHSB corTriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,100);
ColorHSB cor75TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],75,100);
ColorHSB cor50TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],50,100);
ColorHSB cor25TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],25,100);

/*****************************************************************************/

ColorHSB corEscuraTriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,30);
ColorHSB corEscura50TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,50);
ColorHSB corEscura60TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,60);
ColorHSB corEscura70TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,70);
ColorHSB corEscura80TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,80);
ColorHSB corEscura90TriadicH3 = new ColorHSB(hueTriadicValues[hueTriadic3],100,90);

/*****************************************************************************/
void draw(){
noStroke();

 //Olho
                             //GLOBOS OCULARES
 rectMode(CENTER);
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura70TriadicH2.getB());
 ellipse(163,245,40,40);
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corTriadicH2.getB());
 ellipse(187,245,40,40);
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corTriadicH1.getB());
 ellipse(175,253,30,30);
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscuraTriadicH1.getB());
 quad(171,250,174,254,180,251,176,246);
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corTriadicH2.getB());
 triangle(185,259,199,255,180,250);
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura80TriadicH2.getB());
 ellipse(293,255,40,40);
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura90TriadicH2.getB());
 ellipse(312,255,40,40);
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corTriadicH1.getB());
 ellipse(304,253,30,30);
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 quad(306,250,300,253,305,257,309,253);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(309,253,318,257,317,262);
                             //BASE DOS OLHOS
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(211,258,178,264,141,259);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(274,262,309,268,333,259);
 triangle(324,262,329,254,333,259);
                            // PALPEBRA DIREITA
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(312,243,334,259,318,232);
                             //   CÍLIOS
 fill(corTriadicH2.getH(),corTriadicH2.getS(),10);
 triangle(174,245,174,241,146,257);
 quad(146,257,141,259,153,257,147,257);
 triangle(174,245,174,241,212,259);
 triangle(329,254,315,247,312,242);
 triangle(312,242,274,262,315,247);
 
 //Região Orbital
   
   //Orbital Direito
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura50TriadicH2.getB());
   triangle(274,262,284,241,312,242);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(274,262,256,262,284,241);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),10);
   triangle(256,262,257,227,284,241);
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(284,241,257,227,284,211);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
   triangle(284,211,317,231,284,241);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
   triangle(284,241,312,243,317,231);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(318,231,337,221,334,259);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(337,221,334,259,343,254);
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(319,232,283,211,336,221);
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura50TriadicH2.getB());
   triangle(255,258,247,227,257,228);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(247,227,253,211,257,228);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(257,228,253,211,283,211);
   
   //Orbital Esquerdo
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(253,211,247,227,223,206);
   fill(corTriadicH2.getH(),corTriadicH2.getS(),10);
   triangle(223,206,210,237,249,227);
   fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura60TriadicH2.getB());
   triangle(249,227,212,259,243,259);
   fill(corTriadicH2.getH(),corTriadicH2.getS(),25);
   triangle(212,259,210,237,249,227);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
   triangle(212,259,175,241,210,237);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura50TriadicH2.getB());
   triangle(175,241,170,230,210,237);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(210,237,223,206,170,230); 
   fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(171,231,145,258,176,240);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(145,258,139,215,171,231);
   fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
   triangle(171,231,139,215,223,206);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura70TriadicH2.getB());
   triangle(145,258,121,272,139,215);
   fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscuraTriadicH2.getB());
   triangle(139,215,100,269,121,272);
   
 //Boca
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corTriadicH1.getB());
 triangle(194,371,231,353,238,368);
 fill(cor75TriadicH1.getH(),cor75TriadicH1.getS(),cor75TriadicH1.getB());
 triangle(238,368,232,386,194,371);
 fill(cor50TriadicH1.getH(),cor50TriadicH1.getS(),cor50TriadicH1.getB());
 quad(232,386,238,368,260,368,263,386);
 fill(cor75TriadicH1.getH(),cor75TriadicH1.getS(),cor75TriadicH1.getB());
 triangle(263,386,289,372,260,368);
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corTriadicH1.getB());
 triangle(260,368,268,355,289,372);
 fill(cor75TriadicH1.getH(),cor75TriadicH1.getS(),cor75TriadicH1.getB());
 triangle(260,368,268,355,250,356);
 fill(corEscuraTriadicH1.getH(),corEscuraTriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(250,356,260,368,238,368);
 fill(corEscura70TriadicH1.getH(),corEscura70TriadicH1.getS(),corEscura70TriadicH1.getB());
 triangle(238,368,231,353,250,356);
 fill(corEscura70TriadicH1.getH(),corEscura70TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(232,386,263,386,249,399);
 fill(corEscura70TriadicH1.getH(),cor75TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(249,399,263,386,289,372);
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(249,399,232,386,194,371);
 
 //Orelha no Espaço Oral
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(99,295,75,305,91,308);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(91,308,99,296,106,327);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(106,328,93,351,91,308);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(91,308,75,305,93,351);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),20);
 triangle(75,305,79,259,88,277);
  
 //Região Oral
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(250,356,246,334,231,352);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corTriadicH2.getB());
 triangle(250,356,268,355,246,334);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(246,334,217,334,232,353);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(246,334,273,335,268,355);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 quad(268,355,289,372,279,334,273,334);
 triangle(273,334,279,334,276,320);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(194,371,231,353,208,323);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corTriadicH2.getB());
 triangle(289,372,276,320,312,384);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(312,384,323,298,276,320);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(323,298,349,286,312,384);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(312,384,325,373,349,286);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(194,371,208,323,158,297);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(158,297,154,384,194,371);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corTriadicH2.getB());
 triangle(158,297,115,297,155,384);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(155,384,108,360,115,297);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(115,297,98,295,108,360);
 
 //Orelha no espaço zigomático
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(75,257,82,268,105,269);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(101,269,82,268,100,297);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(99,295,88,278,75,305);

 //Zigomático
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(349,286,323,298,320,270);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(285,278,323,298,320,270);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(323,298,285,278,276,320);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura60TriadicH2.getB());
 quad(285,278,271,262,256,261,263,295);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(263,295,276,320,285,278);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(320,270,342,253,304,266);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corTriadicH2.getB());
 triangle(285,278,271,262,320,270);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(320,270,342,253,349,286);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(115,297,119,273,158,297);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(119,272,115,297,98,295);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(98,295,101,270,119,272);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(119,272,158,297,179,272);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(179,272,215,301,158,297);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(158,297,208,323,215,301);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(221,291,211,259,215,301);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(215,301,211,259,179,272);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(211,259,178,264,179,272);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(179,272,178,264,141,258);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corTriadicH2.getB());
 triangle(141,258,119,272,179,272);
 
 //Nariz
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(221,291,232,308,215,301);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(215,301,232,308,208,323);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscuraTriadicH2.getB());
 quad(208,323,232,308,238,320,217,334);
 
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(217,334,225,317,237,321);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(238,321,246,334,217,334);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(246,334,273,334,254,322);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(246,334,246,316,261,309);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(246,316,232,308,246,334);
 
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscuraTriadicH2.getB());
 quad(273,334,276,320,261,309,253,321);
 
 fill(corTriadicH1.getH(),corTriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(253,321,264,317,273,334);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(276,320,261,309,264,293);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(264,293,256,261,260,310);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(260,310,237,297,256,261);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corTriadicH2.getB());
 triangle(256,261,246,227,231,309);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corTriadicH2.getB());
 quad(231,309,246,315,261,310,238,297);
 
 triangle(221,290,231,309,240,259);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(211,258,240,259,221,290);
 
 //Testa
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),20);
 triangle(100,269,115,185,139,215);
 
 fill(corTriadicH1.getH(),corTriadicH1.getS(),15);  //<--- Sobrancelha Esquerda
 triangle(139,215,199,196,223,207);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corTriadicH2.getB());
 triangle(223,207,253,210,252,122);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(252,122,213,134,223,207);
 
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corTriadicH2.getB());
 triangle(252,122,282,211,251,211);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(213,134,157,116,222,207);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(130,164,157,116,223,207);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(199,196,139,215,130,164);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(130,164,115,185,139,215);
 
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(130,164,108,155,115,185);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(108,155,157,116,130,164);
 
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),20);
 triangle(157,116,213,134,252,122);
 
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(252,122,319,145,282,211);
 
 fill(corTriadicH1.getH(),corTriadicH1.getS(),20);  //<--- Sobrancelha Direita
 triangle(282,211,289,199,337,221);
 
 fill(corTriadicH2.getH(),cor25TriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(337,221,319,145,289,199);
 
 //Cabelo
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscura50TriadicH1.getB());
 triangle(337,221,340,135,319,145);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(340,135,343,250,337,221);
 
 fill(corTriadicH1.getH(),cor25TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(319,145,340,135,315,87);
 
 fill(corTriadicH1.getH(),cor75TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(315,87,267,93,319,145);
 
 fill(corTriadicH1.getH(),corEscuraTriadicH1.getS(),20);
 triangle(319,145,254,123,267,93);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(267,93,315,87,245,45);
 
 fill(corTriadicH1.getH(),corEscura50TriadicH1.getS(),30);
 triangle(245,45,254,123,267,93);
 
 fill(corTriadicH1.getH(),corEscuraTriadicH1.getS(),20);
 triangle(254,123,191,103,245,45);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(191,103,157,116,254,123);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscura60TriadicH1.getB());
 triangle(191,103,130,56,244,44);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscura80TriadicH1.getB());
 triangle(130,56,157,116,191,103);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(157,116,130,56,111,118);
 
 fill(corTriadicH1.getH(),corEscuraTriadicH1.getS(),20);
 triangle(111,118,109,155,157,116);
 
 fill(corTriadicH1.getH(),cor25TriadicH1.getS(),corEscura80TriadicH1.getB());
 triangle(111,118,94,118,130,56);
 
 fill(corTriadicH1.getH(),cor75TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(94,118,52,167,111,118);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(111,118,109,155,52,167);
 
 fill(corTriadicH1.getH(),corEscuraTriadicH1.getS(),20);
 triangle(52,167,109,155,115,185);
 
 fill(corTriadicH1.getH(),corEscuraTriadicH1.getS(),20);
 triangle(115,185,104,268,75,257);
 
 fill(corTriadicH1.getH(),cor50TriadicH1.getS(),corEscuraTriadicH1.getB());
 triangle(75,257,52,167,115,185);
 
 //Pescoço
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),10);
 triangle(202,450,262,467,199,483);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(199,483,172,454,202,450);
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),20);
 triangle(202,450,141,411,173,455);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(173,455,199,483,166,518);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(252,518,199,483,166,518);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(252,518,262,467,199,483);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corTriadicH2.getB());
 triangle(165,518,113,480,173,455);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(173,455,141,411,113,480);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(113,480,105,518,166,518);
 
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(113,480,109,359,141,411);

 //Queixo
 
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(194,371,202,414,249,399);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(249,399,290,417,289,372);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(290,417,289,442,249,399);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura80TriadicH2.getB());
 triangle(249,399,202,414,209,439);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corTriadicH2.getB());
 triangle(209,439,289,442,249,399);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura60TriadicH2.getB());
 quad(209,439,289,442,285,450,202,450);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(202,450,209,439,141,411);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(141,411,154,384,209,439);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura70TriadicH2.getB());
 triangle(209,439,154,384,202,414);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura90TriadicH2.getB());
 triangle(202,414,194,371,154,384);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(154,384,141,411,108,359);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(202,450,285,450,262,467);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(285,450,289,442,310,428);
 fill(corTriadicH2.getH(),cor50TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(310,428,289,442,312,384);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscuraTriadicH2.getB());
 triangle(312,384,325,373,310,428);
 fill(corTriadicH2.getH(),corTriadicH2.getS(),corEscura60TriadicH2.getB());
 triangle(312,384,289,372,290,417);
 fill(corTriadicH2.getH(),cor75TriadicH2.getS(),corEscura50TriadicH2.getB());
 triangle(290,417,312,384,289,442);

}
