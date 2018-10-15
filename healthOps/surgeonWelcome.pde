class surgeonWelcome{
 
  int nextBtn;
  boolean pushNext = false;
  int buttonHeight = 50;
  int buttonWidth = 150;
  String enterText = "";
  boolean onSurgeon = false;
  
  void drawSurgeon(String enterText){
    onWelcome = true;
    hr.drawHeart();
    textSize(60);
    println(enterText);
    String string1 = "Welcome Surgeon ";
    String string2 = "Please help us save our patient";
    text(string1+enterText, width/2, 300);
    text(string2, width/2, 400);
    textSize(30);
    String startSt = "Start";
    text(startSt, width/2, height-85);
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
    if(pushNext && onWelcome){
      println("pushed");
      clear();
      background(255);
      hr.drawHeart();
      s4.drawScreen();
      onWelcome = false;
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
