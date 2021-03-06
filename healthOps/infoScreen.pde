class infoScreen{
  int nextBtn;
  boolean pushNext = false;
  int buttonHeight = 50;
  int buttonWidth = 150;
  String enterText = "";
  
  String lungText1= "a tumor caused by small cell carcinoma, an aggressive form of cancer that can cause tumors in the lungs.";
  String lungText2 = "Small cell carcinoma is usually seen in people who smoke cigarettes, avoid smoking cigarettes.";
  String diskText1= "a herniated disc. The cushioning discs between vertebrae can wear down and tear, causing the disc to bulge and press on nearby nerves which can cause pain or numbness. ";
  String diskText2 = "maintain a healthy weight and activity level. Being overweight can put more strain on your discs, but so can participating in difficult physical activities. ";
  String melanomaText1= "melanoma, a cancerous skin growth. Melanoma can show up anywhere, but there are certain spots like the head and trunk for men or the arms and legs for women where melanoma is more common.";
  String melanomaText2 = "Protect your skin by covering up with sunscreen and clothing and avoid any type of tanning. Look up and become familiar with the ABCDE’s of melanoma.";
  String kidneyText1= "a kidney stone. Kidney stones form when the minerals and salts in your urine get too concentrated and start sticking together, forming stones that can get stuck in the kidneys or urinary tract.";
  String kidneyText2 = "there are a lot of potential causes of kidney stones but in general, understanding your family history, your personal medical history, and maintaining a healthy diet and weight can help you manage and prevent kidney stones.";
  String plaqueText1= "a buildup of plaque in an artery. Plaque buildup in arteries reduces that amount of blood that can flow to and from the heart and can cause heart attacks or strokes.";
  String plaqueText2 = "keeping your cholesterol levels, blood pressure, and weight in a healthy range as well as making healthy choices like refraining from smoking and getting exercise can all help prevent plaque from building up in your arteries.";
  
  void drawInfoScreen(String chosenOne){
    hr.drawHeart();
    onInfoScreen = true;
    String string1 = "You removed: ";
    String string2 = "Prevention Tips: ";
    fill(0);
    textSize(40);
    textAlign(CENTER);
    text(string1, 2*width/3, 200);
    text(string2, 2*width/3, (height/2)+40);
    textSize(25);
    String restartSt = "BACK";
    text(restartSt,width/2, height-85);
    noFill();
    stroke(15);
    rect((width/2)-buttonWidth/2, height-(buttonHeight+70), buttonWidth, buttonHeight, 7);
    
    //IF LUNG 
    if(chosenOne == "lung"){
      
    text(lungText1, 2*width/3-320, 240, width/2, height/2);
    text(lungText2, 2*width/3-320, (height/2)+80, width/2, height/2);
    s[5].enableStyle();
    //fill(0);
    s[5].translate(200,(height/3)-50);
    shape(s[5]);
}
    
    //IF Kidney
    if(chosenOne == "kidney"){
    text(kidneyText1, 2*width/3-320, 240, width/2, height/2);
    text(kidneyText2, 2*width/3-320, (height/2)+80, width/2, height/2);
    s[6].enableStyle();
    s[6].translate(200,(height/3)-50);
    shape(s[6]);
    }
    
    // //IF disk
    if(chosenOne == "disk"){
    text(diskText1, 2*width/3-320, 240, width/2, height/2);
    text(diskText2, 2*width/3-320, (height/2)+80, width/2, height/2);
    s[7].enableStyle();
    s[7].translate(200,(height/3)-80);
    shape(s[7]);
    }
    
    ////IF melanoma
    if(chosenOne == "melanoma"){
    text(melanomaText1, 2*width/3-320, 240, width/2, height/2);
    text(melanomaText2, 2*width/3-320, (height/2)+80, width/2, height/2);
    s[8].enableStyle();
    s[8].translate(200,(height/3)-80);
    shape(s[8]);
    }
    
    //IF plaque
    if(chosenOne == "plaque"){
    text(plaqueText1, 2*width/3-320, 240, width/2, height/2);
    text(plaqueText2, 2*width/3-320, (height/2)+80, width/2, height/2);
    s[9].enableStyle();
    s[9].translate(200,(height/3)-80);
    shape(s[9]);
    }
  
  //if(!lungChosen && !kidneyChosen && !diskChosen && !melanomaChosen && !plaqueChosen){
  //  delay(1000);
  //  background
  //  s7.drawSaved();
  //}
  }
  //BUTTON BACK TO MAIN
  //ONCE ALL PIECES COMPLETE GO TO RESET SCREEN
  
  //button to reset goes to reset screen
  void openScreenClick(){
    update(mouseX, mouseY);
    if(mousePressed == true){
      println("now"); 
      mousePressed();
    }
  }
  
  void mousePressed(){
    //println("wow");
    if(pushNext && onInfoScreen){
      //println("pushed");
      clear();
      background(255);
      hr.drawHeart();
      s7.drawSaved();
      onOpenScreen = false;
    }
    else{
      //println("meh");
    }
  }
  
  void update(int x, int y){
    if(overNext((width/2)-buttonWidth/2, height-(buttonHeight+70), buttonWidth, buttonHeight)){
      pushNext = true;
      //println("update");
    }
  }
  
  
  boolean overNext(int x, int y, int width, int height){
    if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
        //println("inside");
        return true;
  } else {
    //println("outside");
    return false;
  }
  }
}
