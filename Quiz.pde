float RowAmount = 8.0;

class QuizClass{
  float RectX = width * 0.2;
  float RectY = height * 0.3;
  float RectXSize = width * 0.6;
  float RectYSize = height * 0.05;
  float WhiteSpace;
  float NameTextSize;
  String Name;
  boolean Moved = false;
  
  
  void Display(){
    colorMode(HSB, 360);
    fill(360);
    strokeWeight(width / 300.0);
    stroke(0);
    rect(RectX, RectY, RectXSize, RectYSize);
    
    if (Quiz.length <= 24){
      textSize(width / 60.0);
    } else if (Quiz.length > 24 && Quiz.length <= 48){
      textSize(width / 80.0);
    } else if (Quiz.length > 48){
      textSize(width / 120.0);
    }
    textAlign(CENTER, CENTER);
    fill(0);
    text(Name, RectX, RectY, RectXSize, RectYSize);
  }
}

void QuizOptions(){
  for (int i = 0; i < Quiz.length; i++){
    if (QuizClasses[i].Moved == false){
      QuizClasses[i].RectY += QuizClasses[i].RectYSize * 1.5 * (i - (floor(i / RowAmount) * RowAmount));
      if (Quiz.length > RowAmount - 1){
        QuizClasses[i].WhiteSpace = QuizClasses[i].RectXSize / (floor(Quiz.length / (RowAmount + 1.0)) * 10.0);
        QuizClasses[i].RectXSize = QuizClasses[i].RectXSize / floor((Quiz.length - 1) / RowAmount + 1.0) - (QuizClasses[i].WhiteSpace * (floor(Quiz.length / RowAmount) / (floor(Quiz.length / RowAmount) + 1.0)));
      }
      QuizClasses[i].RectX += floor(i / RowAmount) * (QuizClasses[i].RectXSize + (QuizClasses[i].WhiteSpace));
      QuizClasses[i].Moved = true;
    }
    QuizClasses[i].Display();
  }
}

class QuestionClass{
  
  
}
