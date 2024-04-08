class ColorHSB{
  
  //Declarando variáveis
  int hValue;
  int sValue;
  int bValue;
  
  //Construtor
  ColorHSB(int hValue,int sValue,int bValue){
    this.hValue = hValue;
    this.sValue = sValue;
    this.bValue = bValue;
  }
  
  //Métodos
  public int compColor(){       //Cor equivalente
    int newHValue = 180 + hValue;
    //println(newHValue);
      if(newHValue > 360){
        newHValue = newHValue - 360;
        //println(newHValue);
      }
    return newHValue;
  }
  
  public int[] triadicColor(){
    println("Matiz escolhida - "+hValue+"\n");
    int[] newHValue = new int[3];
      for(int i = 0; i<newHValue.length;i++){
        newHValue[i]=hValue;
        
        hValue+=120;
        if(newHValue[i]>360){
          newHValue[i] = newHValue[i] - 360;
        }
        println("Triadic Hue " + (i+1) + " - "+newHValue[i]);
      }
      println();
      return newHValue;
  }
   
  int getH(){
    return hValue;
  }
  int getS(){
    return sValue;
  }
  int getB(){
    return bValue;
  }
  
}
