KnapToggle   knap10kr     = new KnapToggle();
KnapToggle   knap100kr    = new KnapToggle();
KnapToggle   knap1000kr   = new KnapToggle();

Knap         knapAddMoney = new Knap();

KontoFelt    kontoFelt    = new KontoFelt();

Knap Kasse1 = new Knap(150, 100, 200, 150, 7, '10kr');
Knap Kasse2 = new Knap(650, 100, 200, 150, 7, '100kr');
Knap Kasse3 = new Knap(width/2, 100, 200, 150, 7, '1000kr');

void setup(){
  size(800,800);
  background(27);
}

void draw(){
  knap 10 kr.registrerTryk();
  knap 100 kr.registrerTryk();
  knap 1000 kr.registrerTryk();
  
  if(KnapAddMoney.trykket){
    if(knap 10kr.trykket){
      kontoFelt.add(10);
    }
    if(knap 100kr.trykket){
      kontoFelt.add(100);
    }
    if(knap 1000kr.trykket){
      kontoFelt.add(1000);
    }
  }
  void mouseReleased(){
    knapAddMoney.registrerRelease();
  }
}
