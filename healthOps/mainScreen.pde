class mainScreen{
  boolean lungChosen = true;
  boolean kidneyChosen = true;
  boolean melanomaChosen = true;
  boolean plaqueChosen = true;
  boolean diskChosen = true;
  
  //SWITCH THESE VALUES TO FALSE WHEN CONNECTIONS BROKEN, ONCE ALL ARE FALSE GO TO SAVED SCREEN
  
  void drawScreen(){
    //background(255);
    onMainScreen = true;
    fill(0);
    textSize(30);
    String string1 = "Patient Name: Doe, John";
    String string2 = "Age: 24 Sex: Male";
    text(string1, width-200, height-60);
    text(string2, width-200, height-20);
    s[2].enableStyle();
    //shapeMode(CENTER);
    shape(s[2],-705, 0);
    body();
    lung();
    disk();
    kidney();
    skin();
    blood();
  }
  
  void body(){
    s[3].enableStyle();
    shape(s[3],120, 100);
  }
  
  void lung(){
    if(lungChosen){
      s[4].enableStyle();
    }
    else{
      s[4].disableStyle();
      noStroke();
      noFill();
    }
      shape(s[4],width/2-250, height/2+10);
  }
  
  void disk(){
    if(diskChosen){
      s[13].enableStyle();
    }
    else{
      s[13].disableStyle();
      noStroke();
      noFill();
    }
      shape(s[13],width/2+100, height/2-50);
  }
  
  void skin(){
    if(melanomaChosen){
      s[12].enableStyle();
    }
    else{
      s[12].disableStyle();
      noStroke();
      noFill();
    }
      shape(s[12],width/2-500, height/2-80);
  }
  
  void kidney(){
    if(kidneyChosen){
      s[11].enableStyle();
    }
    else{
      s[11].disableStyle();
      noStroke();
      noFill();
    }
      shape(s[11],width/2-50, height/2);
  }
  
  void blood(){
  if(plaqueChosen){
      s[10].enableStyle();
    }
    else{
      s[10].disableStyle();
      noStroke();
      noFill();
    }
      shape(s[10],width/2-200, height/2-130);
  }

//IF LUNG CHOSEN GO INFO SCREEN PASS VARIABLE LUNG


}
