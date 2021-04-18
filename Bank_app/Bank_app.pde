KnapToggle   knap10kr     = new KnapToggle(150, 100, 200, 150, 7, 50, "10kr");
KnapToggle   knap100kr    = new KnapToggle(400, 100, 200, 150, 7, 50, "100kr");
KnapToggle   knap1000kr   = new KnapToggle(650, 100, 200, 150, 7, 50,"1000kr");

Knap         KnapAddMoney = new Knap(150,300,200,150,7, 50, "Overfør");

KontoFelt    kontoFelt    = new KontoFelt(150,500,200,150,7,50, "Balance");

int balanceinput = 0;

void setup(){
  size(800,800);
  background(27);

}

void draw(){
  rectMode(CENTER);
  textAlign(CENTER, TOP);
  knap10kr.display();
  knap100kr.display();
  knap1000kr.display();
  KnapAddMoney.display();
  kontoFelt.display();
  
  if(KnapAddMoney.trykket){
    if(knap10kr.trykket){
      kontoFelt.add(10);
    }
    if(knap100kr.trykket){
      kontoFelt.add(100);
    }
    if(knap1000kr.trykket){
      kontoFelt.add(1000);
    }
  }
}
  void mousePressed(){
    knap10kr.registrerTryk();
    knap100kr.registrerTryk();
    knap1000kr.registrerTryk();
  }
  
  void mouseReleased(){
    KnapAddMoney.registrerRelease();
  }
