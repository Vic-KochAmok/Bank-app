class Knap extends Komponent{ //overfør
Boolean trykket = false;

  Knap (int x, int y, int w, int h, int k, int tS, String txt){
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekstSize = tS;
    tekst = txt;
    
  }
  
  
  void registrerTryk(){
}

  void registrerRelease(){
    if (!mousePressed){
    }
  }

  boolean overEvent() {
    if (mouseX > xpos - wdth/2 && mouseX < xpos + wdth/2 && mouseY > ypos - hght/2 && mouseY < ypos + hght/2) {
      return true;
    } else{
      return false;
    }
  }

  void display(){
    fill(255);
     if(trykket == true){
       fill(0,204,0);
    }
     rect(xpos, ypos, wdth, hght, kant);
     fill(0);
     textSize(tekstSize);
     text(tekst, xpos, ypos);
  }
}
  
  
