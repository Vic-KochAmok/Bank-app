class Knap extends Komponent{ // Knap er en underklasse til Komponent
  boolean trykket = false;

  Knap (int x, int y, int w, int h, int k, int tS, int v, String txt){ // konstruktør
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekstSize = tS;
    vaerdi = v;
    tekst = txt;
  }
  boolean overEvent() { // Sætter grænsen for knapperne
    if (mouseX > xpos - wdth/2 && mouseX < xpos + wdth/2 && mouseY > ypos - hght/2 && mouseY < ypos + hght/2) {
      return true;
    } else{
      return false;
    }
  }

  void display(){
    fill(255);
    if(trykket == true){fill(0,204,0);} // hvis man trykker, så ændres farven
    rect(xpos, ypos, wdth, hght, kant);
    fill(0);
    textSize(tekstSize);
    text(tekst, xpos, ypos);
  }
}
  
  
