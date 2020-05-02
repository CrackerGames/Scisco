void MainMenu(){
  strokeWeight(StrokeWeight);
  QSM = new QuizScrollbar();
  //Banner
  QuizOptions();
  fill(360);
  noStroke();
  rect(0, 0, width, QSM.BarYPos);
  rect(0, QSM.BarYPos + QSM.BarHeight, width, height);
  fill(0);
  textSize(width / 20);
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
  
  image(Reload, ReloadX, ReloadY, ReloadXSize, ReloadYSize);
  image(Settings, SettingsX, SettingsY, SettingsXSize, SettingsYSize);
  
  if (QuizClasses.length > QSM.BarHeight / (QuizClasses[0].RectYSize * QuizMenuWhiteSpace) * 3){
    QSM.Display();
  }
  if (SettingsActive == true){
    fill(360);
    rect(SettingsBoxX, SettingsBoxY, SettingsBoxXSize, SettingsBoxYSize);
    if (ScoreActive == true){
      fill(100, 360, 360);
    } else {
      fill(360, 360, 360);
    }
    rect(SettingsScoreX, SettingsScoreY, SettingsScoreXSize, SettingsScoreYSize);
    if (DifficultyActive == true){
      fill(100, 360, 360);
    } else {
      fill(360, 360, 360);
    }
    rect(SettingsDifficultyX, SettingsDifficultyY, SettingsDifficultyXSize, SettingsDifficultyYSize);
    if (ComboActive == true){
      fill(100, 360, 360);
    } else {
      fill(360, 360, 360);
    }
    rect(SettingsComboX, SettingsComboY, SettingsComboXSize, SettingsComboYSize);
    if (ShowCorrectActive == true){
      fill(100, 360, 360);
    } else {
      fill(360, 360, 360);
    }
    rect(SettingsShowCorrectX, SettingsShowCorrectY, SettingsShowCorrectXSize, SettingsShowCorrectYSize);
    
    fill(0);
    textSize(width / 80);
    text("Use score system", SettingsScoreX, SettingsScoreY - height * 0.003, SettingsScoreXSize, SettingsScoreYSize);
    text("Use difficulty in score", SettingsDifficultyX, SettingsDifficultyY - height * 0.003, SettingsDifficultyXSize, SettingsDifficultyYSize);
    text("Use combo in score", SettingsComboX, SettingsComboY - height * 0.003, SettingsComboXSize, SettingsComboYSize);
    text("Show if you're correct", SettingsShowCorrectX, SettingsShowCorrectY - height * 0.003, SettingsShowCorrectXSize, SettingsShowCorrectYSize);
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
    strokeWeight(StrokeWeight);
    stroke(0);
  }
}
