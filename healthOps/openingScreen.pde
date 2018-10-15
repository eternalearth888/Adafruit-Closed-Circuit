class OpeningScreen{
  int nextBtn;
  boolean pushNext = false;
  int buttonHeight = 50;
  int buttonWidth = 150;
  
  
  
  void drawOpeningScreen(){
    onOpenScreen = true;
    s[0].enableStyle();
    s[0].scale(0.8);
    s[0].translate(-150,0);
    shape(s[0]);
    textSize(32);
    fill(50);
    textAlign(CENTER);
    String string1 = "Welcome to";
    String string2 = "Today you will be operating on: John Doe";
    text(string1, width/2, 250);
    text(string2, width/2, height-200);
    String nextSt = "NEXT";
    text(nextSt,width/2, height-85);
    noFill();
    stroke(15);
    rect((width/2)-buttonWidth/2, height-(buttonHeight+70), buttonWidth, buttonHeight, 7);
  }
  
  void openScreenClick(){
    update(mouseX, mouseY);
    if(mousePressed == true){
      //println("now"); 
      mousePressed();
    }
  }
  
  void mousePressed(){
    //println("wow");
    if(pushNext && onOpenScreen){
      println("pushed");
      clear();
      background(255);
      hr.drawHeart();
      s2.drawName();
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
