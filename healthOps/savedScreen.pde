class savedScreen{
  int nextBtn;
  boolean pushNext = false;
  int buttonHeight = 50;
  int buttonWidth = 150;
  String enterText = "";
  boolean onSaved = false;
  
  void drawSaved(){
    fill(0);
    onSaved = true;
    onSavedScreen = true;
    hr.drawHeart();
    textSize(60);
    println(enterText);
    String string1 = "Surgeon ";
    String string2 = "You saved your patient!";
    textAlign(CENTER);
    text(string1, width/2, height/2);
    text(string2, width/2, height/2+100);
    textSize(30);
    String restartSt = "RESTART";
    text(restartSt,width/2, height-85);
    noFill();
    stroke(15);
    rect((width/2)-buttonWidth/2, height-(buttonHeight+70), buttonWidth, buttonHeight, 7);
  }
  
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
    if(pushNext && onSavedScreen){
      //println("pushed");
      clear();
      background(255);
      hr.drawHeart();
      s6.drawReset();
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
