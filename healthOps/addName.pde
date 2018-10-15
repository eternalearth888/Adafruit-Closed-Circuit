class addName{
 
  int nextBtn;
  boolean pushNext2 = false;
  int buttonHeight = 50;
  int buttonWidth = 150;
  String enterText = "";
  
  void drawName(){
    onSecondPage = true;
    hr.drawHeart();
    textSize(30);
    String string1 = "Please enter your last name:";
    String nextSt = "NEXT";
    text(string1, width/2, 200);
    text(nextSt, width/2, height-35);
    noFill();
    stroke(15);
    rect((width/2)-buttonWidth/2, height-(buttonHeight+20), buttonWidth, buttonHeight, 7);
  }
  
  void entertext(){
    background(255);
    drawName();
    textSize(200);
    text(enterText, width/2,height/2+50);
  }

  void keyPressed(){
    //enterText = "";
    if(keyCode == BACKSPACE){
      if(enterText.length() > 0){
        enterText = enterText.substring(0, enterText.length()-1); 
      }
    } else if (keyCode == DELETE){
      enterText = "";
    }
    else if(keyCode != ESC && keyCode != 157 && keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode != ENTER){
      enterText =  enterText + key;
    }
    println(enterText);
    entertext();
  }
  
  
  
  void openScreenClick2(){     update2(mouseX, mouseY);
      if(onSecondPage && mousePressed == true){
        mousePressed();
      }
  }
  
  void mousePressed(){
    if(pushNext2 && onSecondPage){
      //println("pushedNew");
      background(255);
      onSecondPage = false;
      s3.drawSurgeon(enterText);
    }
  }
  
  void update2(int x, int y){
    if(onSecondPage){
    if(overNext((width/2)-buttonWidth/2, height-(buttonHeight+20), buttonWidth, buttonHeight)){
      pushNext2 = true;
    }
    else{
      pushNext2 = false;
    }
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
