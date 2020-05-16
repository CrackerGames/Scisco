void setup(){
  Data = loadXML(sketchPath("Data/") + "Data.xml");
  colorMode(HSB, 360, 100, 100);
  background(0);
  fullScreen();
  CallibrateVariables();
  frameRate(60);
  textAlign(CENTER, CENTER);
  strokeWeight(StrokeWeight);
  Images();
  LoadFiles();
}

void draw(){
  background(220,42,11); //Farve 2
  
  if (!Screen.equals("MainMenu") && !Screen.equals("AddedQuiz") && QuestionNumber < QuestionClassesTem){
    image(Return, ReturnX, ReturnY, ReturnXSize, ReturnYSize);
  }
  if (Screen.equals("MainMenu")){
    MainMenu();
  }
  if (Screen.equals("Quiz")){
    PlayQuiz();
  }
  if (Screen.equals("NewQuiz")){
    NewQuiz();
  }
  if (Screen.equals("PlayOrEdit")){
    PlayOrEdit();
  }
  if (Screen.equals("EditQuiz")){
    EditQuiz();
  }
  if (Screen.equals("AddedQuiz")){
    AddedQuiz();
  }
  if (Screen.equals("EditQuizName")){
    EditQuizName();
  }
}
