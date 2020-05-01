void setup(){
  LoadFiles();
  Data = loadXML(sketchPath("Data/") + "Data.xml");
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
  
  if (Screen != "MainMenu"){
    fill(360);
    image(Return, ReturnX, ReturnY, ReturnXSize, ReturnYSize);
  }
  if (Screen == "MainMenu"){
    MainMenu();
  } else if (Screen == "Quiz"){
    if (QuestionNumber < QuestionClasses.length){
      QuestionClasses[QuestionNumber].DisplayQuestion();
    }
  } else if (Screen == "NewQuiz"){
    NewQuiz();
  } else if (Screen == "EditQuiz"){
    EditQuiz();
  }
}
