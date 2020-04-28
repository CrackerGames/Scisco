float TextSize;
String Screen = "MainMenu";

QuizClass[] QuizClasses;
QuestionClass[] QuestionClasses;

void setup(){
  LoadFiles();
  colorMode(HSB, 360);
  background(360);
  fullScreen();
  frameRate(60);
  textAlign(CENTER, CENTER);
  TextSize = width / 20.0;
  Images();
}

void draw(){
  background(360);
  
  if (Screen == "MainMenu"){
    //Banner
    fill(0);
    textSize(TextSize);
    text("Scisco", width / 2.0, height / 7.0);
    QuizOptions();
    fill(1,360,360);
    rect(width * 0.94, height * 0.9, width * 0.025, width * 0.025);
    
  } else if (Screen == "Quiz"){
    fill(360);
    image(Return, width * 0.94, height * 0.9, width * 0.025, width * 0.025);
    if (QuestionNumber < QuestionClasses.length){
      QuestionClasses[QuestionNumber].DisplayQuestion();
    }
  }
}

void mousePressed(){
  if (Screen == "MainMenu"){
    for (int i = 0; i < Quiz.length; i++){
      if (mouseX >= QuizClasses[i].RectX && mouseY >= QuizClasses[i].RectY && mouseX <= QuizClasses[i].RectX + QuizClasses[i].RectXSize && mouseY <= QuizClasses[i].RectY + QuizClasses[i].RectYSize){
        QuizXML = loadXML(sketchPath("Data/Tests/") + FileName[i]);
        LoadData();
      }
    }
    if (mouseX >= width * 0.94 && mouseY >= height * 0.9 && mouseX <= width * 0.94 + width * 0.025 && mouseY <= height * 0.9 + width * 0.025){
      exit();
    }
  } else if (Screen == "Quiz"){
    if (mouseX >= width * 0.94 && mouseY >= height * 0.9 && mouseX <= width * 0.94 + width * 0.025 && mouseY <= height * 0.9 + width * 0.025){
      LoadFiles();
      Screen = "MainMenu";
    }
    if (mouseX >= width * 0.2 && mouseY >= height * 0.45 && mouseX <= width * 0.2 + width * 0.275 && mouseY <= height * 0.45 + height * 0.2){
      if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
        QuestionClasses[QuestionNumber].ClickA = true;
        if(QuestionClasses[QuestionNumber].CorrectA.equals("True")){
          Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
          Combo++;
        } else {
          Combo = 0;
        }
      }
    }
    if (mouseX >= width * 0.2 && mouseY >= height * 0.7 && mouseX <= width * 0.2 + width * 0.275 && mouseY <= height * 0.7 + height * 0.2){
      if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
        QuestionClasses[QuestionNumber].ClickB = true;
        if(QuestionClasses[QuestionNumber].CorrectB.equals("True")){
          Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
          Combo++;
        } else {
          Combo = 0;
        }
      }
    }
    if (mouseX >= width * 0.525 && mouseY >= height * 0.45 && mouseX <= width * 0.525 + width * 0.275 && mouseY <= height * 0.45 + height * 0.2){
      if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
        QuestionClasses[QuestionNumber].ClickC = true;
        if(QuestionClasses[QuestionNumber].CorrectC.equals("True")){
          Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
          Combo++;
        } else {
          Combo = 0;
        }
      }
    }
    if (mouseX >= width * 0.525 && mouseY >= height * 0.7 && mouseX <= width * 0.525 + width * 0.275 && mouseY <= height * 0.7 + height * 0.2){
      if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
        QuestionClasses[QuestionNumber].ClickD = true;
        if(QuestionClasses[QuestionNumber].CorrectD.equals("True")){
          Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
          Combo++;
        } else {
          Combo = 0;
        }
      }
    }
  }
}
