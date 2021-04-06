KnapToggle   knap10kr    = new;
KnapToggle   knap100kr   = new;
KnapToggle   knap1000kr  = new;

Knap        knapAddMoney = new;

KontoFelt   kontoFelt    = new;

void setup(){
  size(800,800);
  background(27);
}

void draw(){
  knap 10 kr.registrerKilk();
  knap 100 kr.registrerKilk();
  knap 1000 kr.registrerKilk();
  
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
