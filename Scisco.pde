float TextSize;

QuizClass[] QuizClasses;
QuestionClass[] QuestionClasses;

void setup(){
  LoadFiles();
  colorMode(HSB, 360);
  background(360);
  fullScreen();
  TextSize = width / 20.0;
}

void draw(){
  background(360);
  
  //Banner
  fill(0);
  textSize(TextSize);
  textAlign(CENTER, CENTER);
  text("Scisco", width / 2.0, height / 7.0);
  
  QuizOptions();
}

void mousePressed(){
  
  for (int i = 0; i < Quiz.length; i++){
    if (mouseX >= QuizClasses[i].RectX && mouseY >= QuizClasses[i].RectY && mouseX <= QuizClasses[i].RectX + QuizClasses[i].RectXSize && mouseY <= QuizClasses[i].RectY + QuizClasses[i].RectYSize){
      QuizXML = loadXML(sketchPath("Data/Tests/") + FileName[i]);
      LoadData();
    }
  }
  
}
