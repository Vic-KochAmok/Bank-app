
class Knap extends Komponent{ //overfør
Boolean trykket;

  void registrerTryk(){}


  void registrerRelease(){}


  void display(){  
    rectMode(CENTER);
    rect(150, 100, 200, 150, 7);
    rect(650, 100, 200, 150, 7);
    rect(width/2, 100, 200, 150, 7);
  }
  }
