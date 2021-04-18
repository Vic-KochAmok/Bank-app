class KnapToggle extends Knap{

  KnapToggle (int x, int y, int w, int h, int k, int tS, int v, String txt){ // Konstruktør
    super( x, y, w, h, k, tS, v, txt);  // Der bruges super for at KnapToggle kan refererer til underklassens(Knap) overklasse(Komponent)
  }

  void registrerTryk(){  // Hvis man trykker på knapperne så ændres farven, samt indsættes væredien til balanceInput.
    if (overEvent() == true){
      if(trykket == true){
        trykket = false;
        balanceInput -= vaerdi;
      } else {
          trykket = true;
          balanceInput += vaerdi;
        }
    } else { 
        if (trykket == true){
          trykket = true;
        } else {
          trykket = false;
        }
      }
  }
}
