KnapToggle   knap10kr     = new KnapToggle(150, 100, 200, 150, 7, "10kr");
KnapToggle   knap100kr    = new KnapToggle(650, 100, 200, 150, 7, "100kr");
KnapToggle   knap1000kr   = new KnapToggle(400, 100, 200, 150, 7, "1000kr");

Knap         KnapAddMoney = new Knap(0,0,0,0,0, "Overfør");

KontoFelt    kontoFelt    = new KontoFelt();

void setup(){
  size(800,800);
  background(27);

}

void draw(){
  rectMode(CENTER);
  knap10kr.display();
  knap100kr.display();
  knap1000kr.display();
  
  knap10kr.registrerTryk();
  knap100kr.registrerTryk();
  knap1000kr.registrerTryk();
  
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

  void mouseReleased(){
    KnapAddMoney.registrerRelease();
  }
