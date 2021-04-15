class Knap extends Komponent{ //overfør
Boolean trykket = false;
Boolean over;

  Knap (int x, int y, int w, int h, int k, String txt){
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekst = txt;
  }
  
  
  void registrerTryk(){
    if (overEvent()){
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over){
    }
   }

  void registrerRelease(){
    if (!mousePressed){
    }
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+wdth &&
       mouseY > ypos && mouseY < ypos+hght) {
      return true;
    } else {
      return false;
    }
  }

  void display(){
    rect(xpos, ypos, wdth, hght, kant);
    
  }
}
  
  
