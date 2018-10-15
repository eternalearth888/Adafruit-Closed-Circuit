OpeningScreen s1;
PShape[] s = new PShape[15];
heartRate hr;
addName s2;
boolean first = true;
boolean onSecondPage = false;
boolean onWelcome = false;
surgeonWelcome s3;
mainScreen s4;
infoScreen s5;
resetScreen s6;
savedScreen s7;
boolean onMainScreen = false;
boolean onOpenScreen = false;
boolean onSavedScreen = false;

void setup(){
  fullScreen();
  //size(500,500);
  background(255);
  s1 = new OpeningScreen();
  s2 = new addName();
  hr = new heartRate();
  s3 = new surgeonWelcome();
  s4 = new mainScreen();
  s5 = new infoScreen();
  s6 = new resetScreen();
  s7 = new savedScreen();
  PFont myFont = createFont("Raleway-Regular.ttf",10);
  textFont(myFont);
  s[0] = loadShape("healthops.svg");
  s[1] = loadShape("heartRate.svg");
  s[2] = loadShape("logo.svg");
  s[3] = loadShape("body.svg");
  s[4] = loadShape("lung.svg");
  s[5] = loadShape("lungup.svg");
  s[6] = loadShape("kidneyup.svg");
  s[7] = loadShape("diskup.svg");
  s[8] = loadShape("melanomaup.svg");
  s[9] = loadShape("plaqueup.svg");
  s[10] = loadShape("plaque.svg");
  s[11] = loadShape("stone.svg");
  s[12] = loadShape("melanoma.svg");
  s[13] = loadShape("disk.svg");
  hr.drawHeart();
  s1.drawOpeningScreen();
  //s4.drawScreen();
  //s6.drawReset(); //RESET SCREEN ALL CONNECTIONS DONE
  //s7.drawSaved(); //SAVED SCREEN RESET BTN
  //s5.drawInfoScreen();
}

void draw(){
  if(onOpenScreen){
    s1.openScreenClick();
  }
  if(onSecondPage){
   s2.openScreenClick2();
  }
  if(onWelcome){
   s3.openScreenClick();
  }
  if(onSavedScreen){
    s7.openScreenClick();
  }
}

void keyPressed(){
  if(onSecondPage){
    s2.keyPressed();
  }
}
