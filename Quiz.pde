float RowAmount = 8.0;

//Selve quiz banneret på Main Menu
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
    fill(0);
    text(Name, RectX, RectY, RectXSize, RectYSize);
  }
}

//Visningen af flere quiz bannerer, og auto størrelses generaringen
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


int TimerQuestion = 1;
int QuestionNumber;
float Score;
int Combo = 0;

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
    //println(Combo);
    if(ClickA == true || ClickB == true || ClickC == true || ClickD == true){
      if(TimerBlink < 10){
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
