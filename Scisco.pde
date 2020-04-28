float TextSize;
String Screen = "MainMenu";

QuizClass[] QuizClasses;
QuestionClass[] QuestionClasses;

void setup(){
  LoadFiles();
  colorMode(HSB, 360);
  background(360);
  fullScreen();
  TextSize = width / 20.0;
  Images();
}

void draw(){
  background(360);
  
  if (Screen == "MainMenu"){
    //Banner
    fill(0);
    textSize(TextSize);
    textAlign(CENTER, CENTER);
    text("Scisco", width / 2.0, height / 7.0);
    
    QuizOptions();
  } else if (Screen == "Quiz"){
    fill(360);
    image(Return, width * 0.94, height * 0.9, width * 0.025, width * 0.025);
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
  } else if (Screen == "Quiz"){
    if (mouseX >= width * 0.94 && mouseY >= height * 0.9 && mouseX <= width * 0.94 + width * 0.025 && mouseY <= height * 0.9 + width * 0.025){
      LoadFiles();
      Screen = "MainMenu";
    }
  }
}
