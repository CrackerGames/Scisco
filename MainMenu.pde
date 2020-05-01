void MainMenu(){
  strokeWeight(width / 300.0);
  QSM = new QuizScrollbar();
  //Banner
  QuizOptions();
  fill(360);
  noStroke();
  rect(0, 0, width, QSM.BarYPos);
  rect(0, QSM.BarYPos + QSM.BarHeight, width, height);
  fill(0);
  textSize(TextSize);
  text("Scisco", width / 2.0, height / 7.0);
  //Exit Button
  fill(1,360,360);
  stroke(0);
  rect(ExitX, ExitY, ExitXSize, ExitYSize);
  //New Quiz Button
  fill(360);
  rect(NewX, NewY, NewXSize, NewYSize);
  fill(0);
  textSize(width / 60.0);
  text("New", NewX, NewY - height * 0.003, NewXSize, NewYSize);
  
  if (QuizClasses.length > QSM.BarHeight / (QuizClasses[0].RectYSize * QuizMenuWhiteSpace) * 3){
    QSM.Display();
  }
}

class QuizScrollbar {
  float BarXPos = width * 0.805;
  float BarYPos = height * 0.297;
  float BarWidth = width * 0.02;
  float BarHeight = height * 0.58;
  float RectHeight;
  float RectYPos;
  
  void Display(){
    MouseWheelMax = (QuizClasses.length - (BarHeight / (QuizClasses[0].RectYSize * QuizMenuWhiteSpace) * 2.5)) / 3 * MouseWheelSpeed;
    RectYPos = BarYPos + MouseWheel;
    RectHeight = BarHeight - MouseWheelMax;
    
    fill(250);
    noStroke();
    rect(BarXPos, BarYPos, BarWidth, BarHeight);
    fill(150);
    rect(BarXPos, RectYPos, BarWidth, RectHeight);
  }
}
