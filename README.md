<h1> FaceHumana </h1>
<strong> Status: </strong> Versão Final - Concluída
<br> <br>
<strong> Descrição: </strong> Este projeto alcançou sua versão final e está completamente funcional de acordo com os requisitos estabelecidos. Todos os recursos planejados foram implementados e testados com sucesso. <br> <br>

## Como instalar o programa no seu Processing?
Para usar a FaceHumana você deve seguir os seguintes passos:

1) Baixe o arquivo FaceHumana pelo GitHub.

2) Criar uma nova aba no Sketchbook (você pode fazer isso apertando Ctrl + Shift + N).

![ezgif com-video-to-gif-converter](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/979aef73-8e58-4753-aec7-230dd90e59b7)

3) Em seguida nomeie a aba com o nome: ColorHSB.

![ezgif com-video-to-gif-converter (1)](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/dec9dcec-7735-46c3-a044-e287d3dd798a)

4) Copie o código da classe "ColorHSB"

![ezgif com-video-to-gif-converter (2)](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/d2748989-c1ae-4e09-b566-4463887dad19)

## Como usar a Classe HSBColor em FaceHumana?

A Classe HSBColor disponibiliza métodos para trabalhar com conversões de cores para as harmonias: <strong>Complementar e Triádica</strong> no modelo cromático <strong>HSB (Hue Saturation Brightness)</strong>.<br><br>

No programa "FaceHumana", utilizamos a Harmonia Triádica para compor as cores de uma peça gráfica 2D de um rosto humano. Para alterar as cores da composição, você pode modificar o parâmetro "hue". Isso fará com que os valores de Matiz das cores se alterem conforme a harmonia triádica.

![Captura de tela 2024-04-08 105744](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/07e19c64-9168-4803-ae06-16f98d4d2e1a)

### Valores Recomendados
<table>
<tr>
  <td> hue = 0</td>
  <td> Vermelho</td>
</tr>
<tr>
  <td> hue = 60</td>
  <td> Amarelo</td>
</tr>
<tr>
  <td> hue = 120</td>
  <td> Verde</td>
</tr>
<tr>
  <td> hue = 180</td>
  <td> Ciano</td>
</tr>
<tr>
  <td> hue = 240</td>
  <td> Azul</td>
</tr>
<tr>
  <td> hue = 300</td>
  <td> Magenta</td>
</tr>
</table><br>

Você também pode "girar" o círculo triádico modificando os parâmetros: "hueTriadic1", "hueTriadic2" e "hueTriadic3".<br>

![Captura de tela 2024-04-08 105835](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/d95f1bc6-acbf-4b43-9a72-256f105eb045)<br>

Obs: Você só pode usar os valores 0, 1 e 2. Qualquer outro valor informado pode resultar em um "java.lang.ArrayIndexOutOfBoundsException" que é uma exceção no Java que ocorre quando você informa um valor que não pertence a um Array.<br>

<table>
<tr>
  <td>Valor</td>
  <td>0</td>
  <td>Deixa o círculo HSB estático</td>
</tr>
<tr>
  <td>Valor</td>
  <td>1</td>
  <td>Gira o círculo HSB em 120 graus</td>
</tr>
<tr>
  <td>Valor</td>
  <td>2</td>
  <td>Gira o círculo HSB em 240 graus</td>
</tr>  
</table>

## Quanto aos resultados do Programa

![FaceHumanaGif](https://github.com/GuilhermeAlvesTeixeira/FaceHumana/assets/117122019/7e2dde24-619c-4a2c-953e-035be56c967d)

O programa pode produzir 360 possibilidades diferentes de imagens alterando <strong> SOMENTE </strong> o parâmetro "hue".











