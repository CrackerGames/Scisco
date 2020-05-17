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
  int HColor = 360;
  int SColor = 100;
  int BColor = 100;

  boolean Moved = false;


  void Display(){
    noStroke();
    fill(HColor, SColor, BColor*0.7);
    RectYUse = RectYStart - (MouseWheel * RectYSize * QuizMenuWhiteSpace / MouseWheelSpeed);
    rect(RectX, RectYUse, RectXSize, RectYSize, 10);

    textSize(NameTextSize);
    fill(0, 0, 100);
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

  int[] AnswerAColorHSB = {0,100,67};
  int[] AColorHSB = {219,35,19};
  String AnswerA = "";
  String CorrectA = "True";
  Boolean ClickA = false;
  int[] AnswerBColorHSB = {0,100,67};
  int[] BColorHSB = {219,35,19};
  String AnswerB = "";
  String CorrectB = "True";
  Boolean ClickB = false;
  int[] AnswerCColorHSB = {0,100,67};
  int[] CColorHSB = {219,35,19};
  String AnswerC = "";
  String CorrectC = "True";
  Boolean ClickC = false;
  int[] AnswerDColorHSB = {0,100,67};
  int[] DColorHSB = {219,35,19};
  String AnswerD = "";
  String CorrectD = "True";
  Boolean ClickD = false;

  void DisplayQuestion(){
    textSize(width / 60);
    noStroke();
    fill(220, 43, 7); //farve 3 (-12 b)
    if (WriteQuestionQuestion == true){
      fill(219, 35, 30); //(farve 3)
    }
    rect(QuestionQuestionX, QuestionQuestionY, QuestionQuestionXSize, QuestionQuestionYSize, 10);
    fill(201, 20, 89); //farve 9
    text(Question, QuestionQuestionX, QuestionQuestionY, QuestionQuestionXSize, QuestionQuestionYSize);

    fill(AColorHSB[0], AColorHSB[1], AColorHSB[2]);
    if (WriteQuestionAnswerA == true){
      fill(219, 35, 30); //(farve 3)
    }
    rect(QuestionAnswerAX, QuestionAnswerAY, QuestionAnswerAXSize, QuestionAnswerAYSize, 10);
    fill(BColorHSB[0], BColorHSB[1], BColorHSB[2]);
    if (WriteQuestionAnswerB == true){
      fill(219, 35, 30); //(farve 3)
    }
    rect(QuestionAnswerBX, QuestionAnswerBY, QuestionAnswerBXSize, QuestionAnswerBYSize, 10);
    fill(CColorHSB[0], CColorHSB[1], CColorHSB[2]);
    if (WriteQuestionAnswerC == true){
      fill(219, 35, 30); //(farve 3)
    }
    rect(QuestionAnswerCX, QuestionAnswerCY, QuestionAnswerCXSize, QuestionAnswerCYSize, 10);
    fill(DColorHSB[0], DColorHSB[1], DColorHSB[2]);
    if (WriteQuestionAnswerD == true){
      fill(219, 35, 30); //(farve 3)
    }
    rect(QuestionAnswerDX, QuestionAnswerDY, QuestionAnswerDXSize, QuestionAnswerDYSize, 10);

    fill(201, 20, 89); //farve 9
    text(AnswerA, QuestionAnswerAX, QuestionAnswerAY, QuestionAnswerAXSize, QuestionAnswerAYSize);
    text(AnswerB, QuestionAnswerBX, QuestionAnswerBY, QuestionAnswerBXSize, QuestionAnswerBYSize);
    text(AnswerC, QuestionAnswerCX, QuestionAnswerCY, QuestionAnswerCXSize, QuestionAnswerCYSize);
    text(AnswerD, QuestionAnswerDX, QuestionAnswerDY, QuestionAnswerDXSize, QuestionAnswerDYSize);

    textSize(width / 60);
    text(QuestionNumber + 1 + "/" + QuestionClasses.length, width * 0.9, height * 0.1);
  }

  void PlayQuestion(){
    textSize(width / 60);
    if (ScoreActive == true && ShowCorrectActive == true){
      text(floor(Score), width * 0.9, height * 0.15);
    }

    TimerQuestion++;
    
    if (ShowCorrectActive == true){
      if(ClickA == true || ClickB == true || ClickC == true || ClickD == true){
        if(TimerBlink > 9){
          if(ShowCorrectAnswers == true){
            if(ClickA == true || CorrectA.equals("True")){
              AColorHSB[0] = AnswerAColorHSB[0];
              AColorHSB[1] = AnswerAColorHSB[1];
            }
            if(ClickB == true || CorrectB.equals("True")){
              BColorHSB[0] = AnswerBColorHSB[0];
              BColorHSB[1] = AnswerBColorHSB[1];
            }
            if(ClickC == true || CorrectC.equals("True")){
              CColorHSB[0] = AnswerCColorHSB[0];
              CColorHSB[1] = AnswerCColorHSB[1];
            }
            if(ClickD == true || CorrectD.equals("True")){
              DColorHSB[0] = AnswerDColorHSB[0];
              DColorHSB[1] = AnswerDColorHSB[1];
            }
          } else {
            if(ClickA == true){
              AColorHSB[0] = AnswerAColorHSB[0];
              AColorHSB[1] = AnswerAColorHSB[1];
            }
            if(ClickB == true){
              BColorHSB[0] = AnswerBColorHSB[0];
              BColorHSB[1] = AnswerBColorHSB[1];
            }
            if(ClickC == true){
              CColorHSB[0] = AnswerCColorHSB[0];
              CColorHSB[1] = AnswerCColorHSB[1];
            }
            if(ClickD == true){
              DColorHSB[0] = AnswerDColorHSB[0];
              DColorHSB[1] = AnswerDColorHSB[1];
            }
          };
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
    } else {
      if(ClickA == true || ClickB == true || ClickC == true || ClickD == true){
        TimerNextQuestion++;
        if(TimerNextQuestion == 19){
          TimerQuestion = 1;
          QuestionNumber++;
        }
      }
    }
  }

  void QuestionEditQuiz(){
    noStroke();
    fill(AnswerAColorHSB[0], AnswerAColorHSB[1], AnswerAColorHSB[2]);
    rect(QuestionAnswerACorrectX, QuestionAnswerACorrectY, QuestionAnswerACorrectXSize, QuestionAnswerACorrectYSize, 10);
    fill(AnswerBColorHSB[0], AnswerBColorHSB[1], AnswerBColorHSB[2]);
    rect(QuestionAnswerBCorrectX, QuestionAnswerBCorrectY, QuestionAnswerBCorrectXSize, QuestionAnswerBCorrectYSize, 10);
    fill(AnswerCColorHSB[0], AnswerCColorHSB[1], AnswerCColorHSB[2]);
    rect(QuestionAnswerCCorrectX, QuestionAnswerCCorrectY, QuestionAnswerCCorrectXSize, QuestionAnswerCCorrectYSize, 10);
    fill(AnswerDColorHSB[0], AnswerDColorHSB[1], AnswerDColorHSB[2]);
    rect(QuestionAnswerDCorrectX, QuestionAnswerDCorrectY, QuestionAnswerDCorrectXSize, QuestionAnswerDCorrectYSize, 10);

    fill(0); //farve 1
    if (WriteDifficulty == true){
      fill(219, 35, 19); //farve 3
    }
    textSize(width / 60);
    noStroke();
    rect(DifficultyX, DifficultyY, DifficultyXSize, DifficultyYSize, 10);
    fill(100,100,50); //farve 5
    text(DifficultyString, DifficultyX, DifficultyY - height * 0.003, DifficultyXSize, DifficultyYSize);

    textSize(width / 60);
    textAlign(CENTER, CENTER);
    fill(0,0,50); //farve 5
    text("Question", QuestionQuestionX + QuestionQuestionXSize / 2, QuestionQuestionY  - height * 0.03);
    text("Answer A", QuestionAnswerAX + QuestionAnswerAXSize / 2, QuestionAnswerAY - height * 0.03);
    text("Answer B", QuestionAnswerBX + QuestionAnswerBXSize / 2, QuestionAnswerBY  - height * 0.03);
    text("Answer C", QuestionAnswerCX + QuestionAnswerCXSize / 2, QuestionAnswerCY + QuestionAnswerAYSize + height * 0.02);
    text("Answer D", QuestionAnswerDX + QuestionAnswerDXSize / 2, QuestionAnswerDY + QuestionAnswerAYSize + height * 0.02);
    text("Difficulty", DifficultyX + DifficultyXSize / 2, DifficultyY + DifficultyYSize * 1.5);
    text("1 - 4", DifficultyX + DifficultyXSize / 2, DifficultyY + DifficultyYSize * 2.2);

    fill(219,35,19); //farve 3
    rect(NextX, NextY, NextXSize, NextYSize, 10);
    if (QuestionNumber != 0){
      rect(PreviousX, PreviousY, PreviousXSize, PreviousYSize, 10);
    }
    if (1 < QuestionClasses.length){
      rect(DeleteQuestionX, DeleteQuestionY, DeleteQuestionXSize, DeleteQuestionYSize, 10);
    }

    fill(100, 100, 50); //farve 8
    textSize(width / 60.0);
    if (QuestionNumber + 1 == QuestionClasses.length){
      text("Add", NextX, NextY - height * 0.003, NextXSize, NextYSize);
    } else {
      fill(201, 20, 89);
      text("Next", NextX, NextY - height * 0.003, NextXSize, NextYSize);
    }
    if (QuestionNumber != 0){
      fill(201, 20, 89);
      text("Prev", PreviousX, PreviousY - height * 0.003, PreviousXSize, PreviousYSize);
    }
    if (1 < QuestionClasses.length){
      fill(0, 100, 67);
      text("Delete", DeleteQuestionX, DeleteQuestionY - height * 0.003, DeleteQuestionXSize, DeleteQuestionYSize);
    }

    if (SureDelete == true){
      fill(219, 35, 19); //farve 3
      rect(DeleteBoxX, DeleteBoxY, DeleteBoxXSize, DeleteBoxYSize, 10);
      rect(DeleteBoxNoX, DeleteBoxNoY, DeleteBoxNoXSize, DeleteBoxNoYSize, 10);
      rect(DeleteBoxYesX, DeleteBoxYesY, DeleteBoxYesXSize, DeleteBoxYesYSize, 10);
      fill(201, 20, 89); //farve 9
      textSize(width / 30);
      text("Are you sure?", DeleteBoxX, DeleteBoxY - DeleteBoxYSize / 8, DeleteBoxXSize, DeleteBoxYSize);
      textSize(width / 60);
      text("No", DeleteBoxNoX, DeleteBoxNoY - height * 0.003, DeleteBoxNoXSize, DeleteBoxNoYSize);
      text("Yes", DeleteBoxYesX, DeleteBoxYesY - height * 0.003, DeleteBoxYesXSize, DeleteBoxYesYSize);
    }
  }
}
