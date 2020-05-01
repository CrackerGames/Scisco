void setup(){
  Data = loadXML(sketchPath("Data/") + "Data.xml");
  LoadFiles();
  colorMode(HSB, 360);
  background(360);
  fullScreen();
  frameRate(60);
  textAlign(CENTER, CENTER);
  TextSize = width / 20.0;
  Images();
  Button();
}

void draw(){
  background(360);
  
  if (!Screen.equals("MainMenu") && !Screen.equals("AddedQuiz")){
    fill(360);
    image(Return, ReturnX, ReturnY, ReturnXSize, ReturnYSize);
  }
  if (Screen.equals("MainMenu")){
    MainMenu();
  } else if (Screen.equals("Quiz")){
    if (QuestionNumber < QuestionClasses.length){
      QuestionClasses[QuestionNumber].DisplayQuestion();
    }
  } else if (Screen.equals("NewQuiz")){
    NewQuiz();
  } else if (Screen.equals("EditQuiz")){
    EditQuiz();
  } else if (Screen.equals("AddedQuiz")){
    AddedQuiz();
  }
}
