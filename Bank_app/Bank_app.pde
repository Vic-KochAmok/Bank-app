KnapToggle   knap10kr     = new KnapToggle(150, 100, 200, 150, 7, 50, 10, "10kr");      //  10 knap
KnapToggle   knap100kr    = new KnapToggle(400, 100, 200, 150, 7, 50, 100, "100kr");    //  100 knap
KnapToggle   knap1000kr   = new KnapToggle(650, 100, 200, 150, 7, 50, 1000, "1000kr");  //  1000 knap

Knap         KnapAddMoney = new Knap(150,300,200,150,7, 50, 0, "Overfør");  // For overfør knap

KontoFelt    kontoFelt    = new KontoFelt(150,500,200,150,7,50);  // Balance

int balanceInput = 0;  // værdien der skal indsættes til balance

void setup(){
  size(800,800);
  background(27);
}

void draw(){
  rectMode(CENTER);  // Sætter rectanglernes koordinat orintering til central
  textAlign(CENTER, TOP); // Sætter tekstens koordinat orintering til central og top ift. at y starter for oven. 
  knap10kr.display();  // kalder på display for objektet 
  knap100kr.display();
  knap1000kr.display();
  KnapAddMoney.display();
  kontoFelt.display();
}

void mousePressed(){
  knap10kr.registrerTryk();  // kalder på registrerTryk for objektet 
  knap100kr.registrerTryk();
  knap1000kr.registrerTryk();
}
  
void mouseReleased(){
  if(KnapAddMoney.overEvent() == true){  // Tilføjer input til balance
    kontoFelt.add(balanceInput);
  }
}
