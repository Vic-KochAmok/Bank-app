class KontoFelt extends Komponent{
  float balance;
  
  KontoFelt (int x, int y, int w, int h, int k, int tS, String txt){
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekstSize = tS;
    tekst = txt;
  }
  
  void add (float v){
      
  }
  void display(){
    fill(255);
    rect(xpos, ypos, wdth, hght, kant);
    fill(0);
    textSize(tekstSize);
    text(tekst, xpos, ypos);
  }
}
