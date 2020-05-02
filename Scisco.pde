void setup(){
  Data = loadXML(sketchPath("Data/") + "Data.xml");
  colorMode(HSB, 360);
  background(360);
  fullScreen();
  CallibrateVariables();
  frameRate(60);
  textAlign(CENTER, CENTER);
  strokeWeight(StrokeWeight);
  Images();
  LoadFiles();
}

void draw(){
  background(360);
  
  if (!Screen.equals("MainMenu") && !Screen.equals("AddedQuiz") && QuestionNumber < QuestionClassesTem){
    image(Return, ReturnX, ReturnY, ReturnXSize, ReturnYSize);
  }
  if (Screen.equals("MainMenu")){
    MainMenu();
  } else if (Screen.equals("Quiz")){
    PlayQuiz();
  } else if (Screen.equals("NewQuiz")){
    NewQuiz();
  } else if (Screen.equals("PlayOrEdit")){
    PlayOrEdit();
  } else if (Screen.equals("EditQuiz")){
    EditQuiz();
  } else if (Screen.equals("AddedQuiz")){
    AddedQuiz();
  } else if (Screen.equals("EditQuizName")){
    EditQuizName();
  }
}
