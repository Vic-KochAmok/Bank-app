class KontoFelt extends Komponent{ // KontoFelt er en underklasse til Komponent
  float balance = 0;
  
  KontoFelt (int x, int y, int w, int h, int k, int tS){ // Konstruktør
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekstSize = tS;
  }
  
  void add (int v){ // metoden sætter balance sammen med værdien v
      balance += v;
  }
  void display(){
    fill(255);
    rect(xpos, ypos, wdth, hght, kant);
    fill(0);
    textSize(tekstSize);
    text(int(balance), xpos, ypos); // Skriver værdien af ens balance
  }
}
