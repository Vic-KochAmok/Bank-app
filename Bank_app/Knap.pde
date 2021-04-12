class Knap extends Komponent{ //overfør
Boolean trykket = false;

  Knap (int x, int y, int w, int h, int k, String txt){
    xpos = x;
    ypos = y;
    wdth = w;
    hght = h;
    kant = k;
    tekst = txt;
  }
  
  
  void registrerTryk(){
   if (mousePressed){
     trykket = true;
   }
  }

  void registrerRelease(){}


  void display(){  
    }
  }
