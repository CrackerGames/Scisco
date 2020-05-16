void MainMenu(){
  strokeWeight(StrokeWeight);
  QSM = new QuizScrollbar();
  //Banner
  QuizOptions();
  fill(220,42,11);
  noStroke();
  rect(0, 0, width, QSM.BarYPos);
  rect(0, QSM.BarYPos + QSM.BarHeight, width, height);
  fill(0, 0,100);
  textSize(width / 20);
  text("Scisco", width / 2.0, height / 7.0);
  //Exit Button
  fill(219,35,19); //farve 3
  noStroke();
  rect(ExitX, ExitY, ExitXSize, ExitYSize,10);
  fill(0,100,67); //farve 7
  textSize(width / 60.0);
  text("Quit", ExitX, ExitY - height * 0.003, ExitXSize, ExitYSize);
  //New Quiz Button
  fill(219,35,19); //farve 3
  noStroke();
  rect(NewX, NewY, NewXSize, NewYSize,10);
  fill(100, 100, 50); //farve 8
  textSize(width / 60.0);
  text("New", NewX, NewY - height * 0.003, NewXSize, NewYSize);

  image(Reload, ReloadX, ReloadY, ReloadXSize, ReloadYSize);
  image(Settings, SettingsX, SettingsY, SettingsXSize, SettingsYSize);

  if (QuizClasses.length > QSM.BarHeight / (QuizClasses[0].RectYSize * QuizMenuWhiteSpace) * 3){
    QSM.Display();
  }
  if (SettingsActive == true){
    noStroke();
    fill(221, 35, 19); //farve 3
    rect(SettingsBoxX, SettingsBoxY, SettingsBoxXSize, SettingsBoxYSize, 10);
    if (ScoreActive == true){
      fill(100, 100, 50); //farve 8
    } else {
      fill(0, 100, 67); //farve 7
    }
    rect(SettingsScoreX, SettingsScoreY, SettingsScoreXSize, SettingsScoreYSize, 10);
    if (DifficultyActive == true){
      fill(100, 100, 50); //farve 8
    } else {
      fill(0, 100, 67); //farve 7
    }
    rect(SettingsDifficultyX, SettingsDifficultyY, SettingsDifficultyXSize, SettingsDifficultyYSize, 10);
    if (ComboActive == true){
      fill(100, 100, 50);//farve 8
    } else {
      fill(0, 100, 67); //farve 7
    }
    rect(SettingsComboX, SettingsComboY, SettingsComboXSize, SettingsComboYSize, 10);
    if (ShowCorrectActive == true){
      fill(100, 100, 50); //farve 8
    } else {
      fill(0, 100, 67); //farve 7
    }
    rect(SettingsShowCorrectX, SettingsShowCorrectY, SettingsShowCorrectXSize, SettingsShowCorrectYSize, 10);

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

    fill(221,61,6);
    noStroke();
    rect(BarXPos, BarYPos, BarWidth, BarHeight, 5);
    fill(221,25,20);
    rect(BarXPos, RectYPos, BarWidth, RectHeight, 5);
    strokeWeight(StrokeWeight);
    stroke(0);
  }
}
