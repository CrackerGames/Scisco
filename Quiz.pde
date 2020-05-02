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
    strokeWeight(StrokeWeight);
    stroke(0);
    RectYUse = RectYStart - (MouseWheel * RectYSize * QuizMenuWhiteSpace / MouseWheelSpeed);
    rect(RectX, RectYUse, RectXSize, RectYSize);
    
    textSize(NameTextSize);
    fill(0);
    textAlign(LEFT, CENTER);
    text(FirstLine, RectX + StrokeWeight * 5, RectYUse, RectXSize - StrokeWeight * 10, RectYSize / 3);
    text(SecondLine, RectX + StrokeWeight * 5, RectYUse + RectYSize / 3, RectXSize - StrokeWeight * 10, RectYSize / 3);
    text(ThirdLine, RectX + StrokeWeight * 5, RectYUse + RectYSize / 3 * 2, RectXSize - StrokeWeight * 10, RectYSize / 3);
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
  String Question = "";
  String DifficultyString = "1";
  int Difficulty = 1;
  int TimerBlink;
  int TimerNextQuestion;
  
  int[] AnswerAColorHSB = {360,360,360};
  int[] AColorHSB = {360,0,360};
  String AnswerA = "";
  String CorrectA = "True";
  Boolean ClickA = false;
  int[] AnswerBColorHSB = {360,360,360};
  int[] BColorHSB = {360,0,360};
  String AnswerB = "";
  String CorrectB = "True";
  Boolean ClickB = false;
  int[] AnswerCColorHSB = {360,360,360};
  int[] CColorHSB = {360,0,360};
  String AnswerC = "";
  String CorrectC = "True";
  Boolean ClickC = false;
  int[] AnswerDColorHSB = {360,360,360};
  int[] DColorHSB = {360,0,360};
  String AnswerD = "";
  String CorrectD = "True";
  Boolean ClickD = false;
  
  void DisplayQuestion(){
    textSize(width / 60);
    stroke(0);
    fill(360);
    if (WriteQuestionQuestion == true){
      fill(300);
    }
    rect(QuestionQuestionX, QuestionQuestionY, QuestionQuestionXSize, QuestionQuestionYSize);
    fill(0);
    text(Question, QuestionQuestionX, QuestionQuestionY, QuestionQuestionXSize, QuestionQuestionYSize);
    
    fill(AColorHSB[0], AColorHSB[1], AColorHSB[2]);
    if (WriteQuestionAnswerA == true){
      fill(300);
    }
    rect(QuestionAnswerAX, QuestionAnswerAY, QuestionAnswerAXSize, QuestionAnswerAYSize);
    fill(BColorHSB[0], BColorHSB[1], BColorHSB[2]);
    if (WriteQuestionAnswerB == true){
      fill(300);
    }
    rect(QuestionAnswerBX, QuestionAnswerBY, QuestionAnswerBXSize, QuestionAnswerBYSize);
    fill(CColorHSB[0], CColorHSB[1], CColorHSB[2]);
    if (WriteQuestionAnswerC == true){
      fill(300);
    }
    rect(QuestionAnswerCX, QuestionAnswerCY, QuestionAnswerCXSize, QuestionAnswerCYSize);
    fill(DColorHSB[0], DColorHSB[1], DColorHSB[2]);
    if (WriteQuestionAnswerD == true){
      fill(300);
    }
    rect(QuestionAnswerDX, QuestionAnswerDY, QuestionAnswerDXSize, QuestionAnswerDYSize);
    
    fill(0);
    text(AnswerA, width * 0.2, height * 0.45, width * 0.275, height * 0.2);
    text(AnswerB, width * 0.2, height * 0.7, width * 0.275, height * 0.2);
    text(AnswerC, width * 0.525, height * 0.45, width * 0.275, height * 0.2);
    text(AnswerD, width * 0.525, height * 0.7, width * 0.275, height * 0.2);
    
    textSize(width / 60);
    text(QuestionNumber + 1 + "/" + QuestionClasses.length, width * 0.9, height * 0.1);
  }
  
  void PlayQuestion(){
    textSize(width / 60);
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
        QuestionNumber++;
      }
    }
  }
  
  void QuestionEditQuiz(){
    fill(AnswerAColorHSB[0], AnswerAColorHSB[1], AnswerAColorHSB[2]);
    rect(QuestionAnswerACorrectX, QuestionAnswerACorrectY, QuestionAnswerACorrectXSize, QuestionAnswerACorrectYSize);
    fill(AnswerBColorHSB[0], AnswerBColorHSB[1], AnswerBColorHSB[2]);
    rect(QuestionAnswerBCorrectX, QuestionAnswerBCorrectY, QuestionAnswerBCorrectXSize, QuestionAnswerBCorrectYSize);
    fill(AnswerCColorHSB[0], AnswerCColorHSB[1], AnswerCColorHSB[2]);
    rect(QuestionAnswerCCorrectX, QuestionAnswerCCorrectY, QuestionAnswerCCorrectXSize, QuestionAnswerCCorrectYSize);
    fill(AnswerDColorHSB[0], AnswerDColorHSB[1], AnswerDColorHSB[2]);
    rect(QuestionAnswerDCorrectX, QuestionAnswerDCorrectY, QuestionAnswerDCorrectXSize, QuestionAnswerDCorrectYSize);
    
    fill(360);
    if (WriteDifficulty == true){
      fill(300);
    }
    textSize(width / 60);
    rect(DifficultyX, DifficultyY, DifficultyXSize, DifficultyYSize);
    fill(0);
    text(DifficultyString, DifficultyX, DifficultyY - height * 0.003, DifficultyXSize, DifficultyYSize);
    
    textSize(width / 60);
    textAlign(CENTER, CENTER);
    fill(0);
    text("Question", QuestionQuestionX + QuestionQuestionXSize / 2, QuestionQuestionY  - height * 0.03);
    text("Answer A", QuestionAnswerAX + QuestionAnswerAXSize / 2, QuestionAnswerAY - height * 0.03);
    text("Answer B", QuestionAnswerBX + QuestionAnswerBXSize / 2, QuestionAnswerBY  - height * 0.03);
    text("Answer C", QuestionAnswerCX + QuestionAnswerCXSize / 2, QuestionAnswerCY + QuestionAnswerAYSize + height * 0.02);
    text("Answer D", QuestionAnswerDX + QuestionAnswerDXSize / 2, QuestionAnswerDY + QuestionAnswerAYSize + height * 0.02);
    text("Difficulty", DifficultyX + DifficultyXSize / 2, DifficultyY + DifficultyYSize * 1.5);
    text("1 - 4", DifficultyX + DifficultyXSize / 2, DifficultyY + DifficultyYSize * 2.2);
    
    fill(360);
    rect(NextX, NextY, NextXSize, NextYSize);
    if (QuestionNumber != 0){
      rect(PreviousX, PreviousY, PreviousXSize, PreviousYSize);
    }
    if (1 < QuestionClasses.length){
      rect(DeleteQuestionX, DeleteQuestionY, DeleteQuestionXSize, DeleteQuestionYSize);
    }
    
    fill(0);
    textSize(width / 60.0);
    if (QuestionNumber + 1 == QuestionClasses.length){
      text("New", NextX, NextY - height * 0.003, NextXSize, NextYSize);
    } else {
      text("Next", NextX, NextY - height * 0.003, NextXSize, NextYSize);
    }
    if (QuestionNumber != 0){
      text("Prev", PreviousX, PreviousY - height * 0.003, PreviousXSize, PreviousYSize);
    }
    if (1 < QuestionClasses.length){
      text("Delete", DeleteQuestionX, DeleteQuestionY - height * 0.003, DeleteQuestionXSize, DeleteQuestionYSize);
    }
    
    if (SureDelete == true){
      fill(360);
      rect(DeleteBoxX, DeleteBoxY, DeleteBoxXSize, DeleteBoxYSize);
      rect(DeleteBoxNoX, DeleteBoxNoY, DeleteBoxNoXSize, DeleteBoxNoYSize);
      rect(DeleteBoxYesX, DeleteBoxYesY, DeleteBoxYesXSize, DeleteBoxYesYSize);
      fill(0);
      textSize(width / 30);
      text("Are you sure?", DeleteBoxX, DeleteBoxY - DeleteBoxYSize / 8, DeleteBoxXSize, DeleteBoxYSize);
      textSize(width / 60);
      text("No", DeleteBoxNoX, DeleteBoxNoY - height * 0.003, DeleteBoxNoXSize, DeleteBoxNoYSize);
      text("Yes", DeleteBoxYesX, DeleteBoxYesY - height * 0.003, DeleteBoxYesXSize, DeleteBoxYesYSize);
    }
  }
}
