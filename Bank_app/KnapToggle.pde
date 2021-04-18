class KnapToggle extends Knap{ //om man trykker på den

  KnapToggle (int x, int y, int w, int h, int k, int tS, String txt){
    super( x, y, w, h, k, tS, txt);
  }

  void registrerTryk(){
    if (overEvent() == true){
      if(trykket == true){
        trykket = false;
      } else {
        trykket = true;
      }
    } else{ 
        if (trykket == true){
          trykket = true;
        } else {
            trykket = false;
        }
      }
  }

//void registrerRelease(){}

  /*void display(){ 
    fill(150);
    rect(xpos, ypos, wdth, hght, kant);
    fill(0);
    textSize(tekstSize);
    text(tekst,xpos,ypos);
    }*/
}
