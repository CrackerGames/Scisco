//Selve quiz banneret på Main Menu
class QuizClass{
  float RectX = width * 0.2;
  float RectYStart = height * 0.3;
  float RectYUse;
  float RectXSize = width * 0.18;
  float RectYSize = height * 0.15;
  float WhiteSpace;
  float NameTextSize = width / 80.0;
  String FileName;
  String FirstLine = "";
  String SecondLine = "";
  String ThirdLine = "";
  int HColor = 200;
  int SColor = 200;
  int BColor = 200;
  
  boolean Moved = false;
  
  
  void Display(){
    colorMode(HSB, 360);
    fill(HColor, SColor, BColor);
    strokeWeight(width / 300.0);
    stroke(0);
    RectYUse = RectYStart - (MouseWheel * RectYSize * QuizMenuWhiteSpace / MouseWheelSpeed);
    rect(RectX, RectYUse, RectXSize, RectYSize);
    
    textSize(NameTextSize);
    fill(0);
    textAlign(LEFT, CENTER);
    text(FirstLine, RectX + width / 300.0, RectYUse, RectXSize, RectYSize / 3);
    text(SecondLine, RectX + width / 300.0, RectYUse + RectYSize / 3, RectXSize - width / 600.0, RectYSize / 3);
    text(ThirdLine, RectX + width / 300.0, RectYUse + RectYSize / 3 * 2, RectXSize - width / 600.0, RectYSize / 3);
    textAlign(CENTER, CENTER);
  }
}

//Visningen af flere quiz bannerer, og auto størrelses generaringen
void QuizOptions(){
  for (int i = 0; i < Quiz.length; i++){
    if (QuizClasses[i].Moved == false){
      QuizClasses[i].RectYStart += QuizClasses[i].RectYSize * QuizMenuWhiteSpace * floor(i / 3.0);
      if (i / 3.0 - floor(i / 3) > 0.2 && i / 3.0 - floor(i / 3) < 0.4){
        QuizClasses[i].RectX = width * 0.41;
      }  else if (i / 3.0 - floor(i / 3) > 0.4 && i / 3.0 - floor(i / 3) < 0.8){
        QuizClasses[i].RectX = width * 0.62;
      }
      QuizClasses[i].Moved = true;
    }
    QuizClasses[i].Display();
  }
}

class QuestionClass{
  String Name;
  String Question;
  int Difficulty;
  int TimerBlink;
  int TimerNextQuestion;
  
  int[] AnswerAColorHSB = {360,360,360};
  int[] AColorHSB = {360,0,360};
  String AnswerA;
  String CorrectA = "True";
  Boolean ClickA = false;
  int[] AnswerBColorHSB = {360,360,360};
  int[] BColorHSB = {360,0,360};
  String AnswerB;
  String CorrectB = "True";
  Boolean ClickB = false;
  int[] AnswerCColorHSB = {360,360,360};
  int[] CColorHSB = {360,0,360};
  String AnswerC;
  String CorrectC = "True";
  Boolean ClickC = false;
  int[] AnswerDColorHSB = {360,360,360};
  int[] DColorHSB = {360,0,360};
  String AnswerD;
  String CorrectD = "True";
  Boolean ClickD = false;
  
  void DisplayQuestion(){
    stroke(0);
    fill(360);
    rect(width * 0.2, height * 0.15, width * 0.6, height * 0.2);
    fill(0);
    text(Question, width * 0.2, height * 0.15, width * 0.6, height * 0.2);
    
    fill(AColorHSB[0], AColorHSB[1], AColorHSB[2]);
    rect(width * 0.2, height * 0.45, width * 0.275, height * 0.2);
    fill(BColorHSB[0], BColorHSB[1], BColorHSB[2]);
    rect(width * 0.2, height * 0.7, width * 0.275, height * 0.2);
    fill(CColorHSB[0], CColorHSB[1], CColorHSB[2]);
    rect(width * 0.525, height * 0.45, width * 0.275, height * 0.2);
    fill(DColorHSB[0], DColorHSB[1], DColorHSB[2]);
    rect(width * 0.525, height * 0.7, width * 0.275, height * 0.2);
    
    fill(0);
    text(AnswerA, width * 0.2, height * 0.45, width * 0.275, height * 0.2);
    text(AnswerB, width * 0.2, height * 0.7, width * 0.275, height * 0.2);
    text(AnswerC, width * 0.525, height * 0.45, width * 0.275, height * 0.2);
    text(AnswerD, width * 0.525, height * 0.7, width * 0.275, height * 0.2);
    
    text(QuestionNumber + 1 + "/" + QuestionClasses.length, width * 0.9, height * 0.1);
    text(floor(Score), width * 0.9, height * 0.15);
    
    TimerQuestion++;
    
    if(ClickA == true || ClickB == true || ClickC == true || ClickD == true){
      if(TimerBlink > 9){
        if(ClickA == true){
          AColorHSB[0] = AnswerAColorHSB[0];
          AColorHSB[1] = AnswerAColorHSB[1];
        } else if(ClickB == true){
          BColorHSB[0] = AnswerBColorHSB[0];
          BColorHSB[1] = AnswerBColorHSB[1];
        } else if(ClickC == true){
          CColorHSB[0] = AnswerCColorHSB[0];
          CColorHSB[1] = AnswerCColorHSB[1];
        } else if(ClickD == true){
          DColorHSB[0] = AnswerDColorHSB[0];
          DColorHSB[1] = AnswerDColorHSB[1];
        }
      } else {
        if(ClickA == true){
          AColorHSB[1] = 0;
        } else if(ClickB == true){
          BColorHSB[1] = 0;
        } else if(ClickC == true){
          CColorHSB[1] = 0;
        } else if(ClickD == true){
          DColorHSB[1] = 0;
        }
      }
      if(TimerBlink == 19){
        TimerBlink = 0;
      }
      TimerNextQuestion++;
      TimerBlink++;
      
      if(TimerNextQuestion == 119){
        TimerBlink = 20;
        TimerQuestion = 1;
        if(QuestionNumber < QuestionClasses.length - 1){
          QuestionNumber++;
        }
      }
    }
  }
}
