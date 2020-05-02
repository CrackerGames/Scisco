void mousePressed(){
  if (Screen.equals("MainMenu")){
    if (SettingsActive == false){
      for (int i = 0; i < Quiz.length; i++){
        if (mouseX >= QuizClasses[i].RectX && mouseY >= QuizClasses[i].RectYUse && mouseX <= QuizClasses[i].RectX + QuizClasses[i].RectXSize && mouseY <= QuizClasses[i].RectYUse + QuizClasses[i].RectYSize){
          QuizXML = loadXML(sketchPath("Data/Tests/") + FileName[i]);
          EditQuiz = FileName[i];
          LoadQuestionData();
          Screen = "PlayOrEdit";
        }
      }
      //Exit Button
      if (mouseX >= ExitX && mouseY >= ExitY && mouseX <= ExitX + ExitXSize && mouseY <= ExitY + ExitYSize){
        exit();
      }
      //New Button
      if (mouseX >= NewX && mouseY >= NewY && mouseX <= NewX + NewXSize && mouseY <= NewY + NewYSize){
        Screen = "NewQuiz";
        NewQuizName = "";
        NewQuizFirstLine = "";
        NewQuizSecondLine = "";
        NewQuizThirdLine = "";
        NewQuizHColorString = "";
        NewQuizSColorString = "";
        NewQuizBColorString = "";
        HColorEx = 360;
        SColorEx = 360;
        BColorEx = 360;
      }
      //Reload Button
      if (mouseX >= ReloadX && mouseY >= ReloadY && mouseX <= ReloadX + ReloadXSize && mouseY <= ReloadY + ReloadYSize){
        LoadFiles();
        MouseWheel = 0;
        QuestionNumber = 0;
      }
      //Settings Button
      if (mouseX >= SettingsX && mouseY >= SettingsY && mouseX <= SettingsX + SettingsXSize && mouseY <= SettingsY + SettingsYSize){
        SettingsActive = true;
      }
    } else {
      if (mouseX >= SettingsBoxX && mouseY >= SettingsBoxY && mouseX <= SettingsBoxX + SettingsBoxXSize && mouseY <= SettingsBoxY + SettingsBoxYSize){
        XML SettingsData = Data.getChild("Settings");
        XML ScoreActiveData = SettingsData.getChild("ScoreActive");
        XML DifficultyActiveData = SettingsData.getChild("DifficultyActive");
        XML ComboActiveData = SettingsData.getChild("ComboActive");
        XML ShowCorrectActiveData = SettingsData.getChild("ShowCorrectActive");
        if (mouseX >= SettingsScoreX && mouseY >= SettingsScoreY && mouseX <= SettingsScoreX + SettingsScoreXSize && mouseY <= SettingsScoreY + SettingsScoreYSize){
          if (ScoreActive == true){
            ScoreActive = false;
            ScoreActiveData.setContent("False");
          } else {
            ScoreActive = true;
            ScoreActiveData.setContent("True");
          }
        }
        if (mouseX >= SettingsDifficultyX && mouseY >= SettingsDifficultyY && mouseX <= SettingsDifficultyX + SettingsDifficultyXSize && mouseY <= SettingsDifficultyY + SettingsDifficultyYSize){
          if (DifficultyActive == true){
            DifficultyActive = false;
            ComboActive = true;
            DifficultyActiveData.setContent("False");
            ComboActiveData.setContent("True");
          } else {
            DifficultyActive = true;
            DifficultyActiveData.setContent("True");
          }
        }
        if (mouseX >= SettingsComboX && mouseY >= SettingsComboY && mouseX <= SettingsComboX + SettingsComboXSize && mouseY <= SettingsComboY + SettingsComboYSize){
          if (ComboActive == true){
            ComboActive = false;
            DifficultyActive = true;
            ComboActiveData.setContent("False");
            DifficultyActiveData.setContent("True");
          } else {
            ComboActive = true;
            ComboActiveData.setContent("True");
          }
        }
        if (mouseX >= SettingsShowCorrectX && mouseY >= SettingsShowCorrectY && mouseX <= SettingsShowCorrectX + SettingsShowCorrectXSize && mouseY <= SettingsShowCorrectY + SettingsShowCorrectYSize){
          if (ShowCorrectActive == true){
            ShowCorrectActive = false;
            ShowCorrectActiveData.setContent("False");
          } else {
            ShowCorrectActive = true;
            ShowCorrectActiveData.setContent("True");
          }
        }
        saveXML(Data, sketchPath("Data/Data.xml"));
      } else {
        SettingsActive = false;
      }
    }
  } //MainMenu
  
  else if (Screen.equals("PlayOrEdit")){
    if (!SureDelete == true){
      if (mouseX >= PlayX && mouseY >= PlayY && mouseX <= PlayX + PlayXSize && mouseY <= PlayY + PlayYSize){
        Score = 0;
        CurrectAmount = 0;
        Combo = 0;
        Screen = "Quiz";
        QuestionNumber = 0;
      }
      if (mouseX >= EditQuizX && mouseY >= EditQuizY && mouseX <= EditQuizX + EditQuizXSize && mouseY <= EditQuizY + EditQuizYSize){
        Screen = "EditQuiz";
        QuestionNumber = 0;
        SaveQuestionData = true;
      }
      if (mouseX >= EditNameX && mouseY >= EditNameY && mouseX <= EditNameX + EditNameXSize && mouseY <= EditNameY + EditNameYSize){
        Screen = "EditQuizName";
        QuestionNumber = 0;
        CorrectData = true;
      }
      if (mouseX >= DeleteQuizX && mouseY >= DeleteQuizY && mouseX <= DeleteQuizX + DeleteQuizXSize && mouseY <= DeleteQuizY + DeleteQuizYSize){
        SureDelete = true;
      }
    } else {
      if (mouseX >= DeleteBoxX && mouseY >= DeleteBoxY && mouseX <= DeleteBoxX + DeleteBoxXSize && mouseY <= DeleteBoxY + DeleteBoxYSize){
        if (1 < QuizClasses.length){
          if (mouseX >= DeleteBoxNoX && mouseY >= DeleteBoxNoY && mouseX <= DeleteBoxNoX + DeleteBoxNoXSize && mouseY <= DeleteBoxNoY + DeleteBoxNoYSize){
            SureDelete = false;
          }
          if (mouseX >= DeleteBoxYesX && mouseY >= DeleteBoxYesY && mouseX <= DeleteBoxYesX + DeleteBoxYesXSize && mouseY <= DeleteBoxYesY + DeleteBoxYesYSize){
            DeleteQuiz = true;
            SureDelete = false;
          }
        } else {
          if (mouseX >= DeleteBoxOkX && mouseY >= DeleteBoxOkY && mouseX <= DeleteBoxOkX + DeleteBoxOkXSize && mouseY <= DeleteBoxOkY + DeleteBoxOkYSize){
            SureDelete = false;
          }
        }
      } else {
        SureDelete = false;
      }
    }
  } //PlayOrEdit
  
  else if (Screen.equals("EditQuiz")){
    if (SureDelete == false){
      if (mouseX >= QuestionQuestionX && mouseY >= QuestionQuestionY && mouseX <= QuestionQuestionX + QuestionQuestionXSize && mouseY <= QuestionQuestionY + QuestionQuestionYSize){
        WriteQuestionQuestion = true;
      } else {
        WriteQuestionQuestion = false;
      }
      if (mouseX >= QuestionAnswerAX && mouseY >= QuestionAnswerAY && mouseX <= QuestionAnswerAX + QuestionAnswerAXSize && mouseY <= QuestionAnswerAY + QuestionAnswerAYSize){
        WriteQuestionAnswerA = true;
      } else {
        WriteQuestionAnswerA = false;
      }
      if (mouseX >= QuestionAnswerACorrectX && mouseY >= QuestionAnswerACorrectY && mouseX <= QuestionAnswerACorrectX + QuestionAnswerACorrectXSize && mouseY <= QuestionAnswerACorrectY + QuestionAnswerACorrectYSize){
        if (QuestionClasses[QuestionNumber].CorrectA.equals("True")){
          QuestionClasses[QuestionNumber].CorrectA = "False";
          SaveQuestionData = true;
        } else {
          QuestionClasses[QuestionNumber].CorrectA = "True";
          SaveQuestionData = true;
        }
      }
      if (mouseX >= QuestionAnswerBX && mouseY >= QuestionAnswerBY && mouseX <= QuestionAnswerBX + QuestionAnswerBXSize && mouseY <= QuestionAnswerBY + QuestionAnswerBYSize){
        WriteQuestionAnswerB = true;
      } else {
        WriteQuestionAnswerB = false;
      }
      if (mouseX >= QuestionAnswerBCorrectX && mouseY >= QuestionAnswerBCorrectY && mouseX <= QuestionAnswerBCorrectX + QuestionAnswerBCorrectXSize && mouseY <= QuestionAnswerBCorrectY + QuestionAnswerBCorrectYSize){
        if (QuestionClasses[QuestionNumber].CorrectB.equals("True")){
          QuestionClasses[QuestionNumber].CorrectB = "False";
          SaveQuestionData = true;
        } else {
          QuestionClasses[QuestionNumber].CorrectB = "True";
          SaveQuestionData = true;
        }
      }
      if (mouseX >= QuestionAnswerCX && mouseY >= QuestionAnswerCY && mouseX <= QuestionAnswerCX + QuestionAnswerCXSize && mouseY <= QuestionAnswerCY + QuestionAnswerCYSize){
        WriteQuestionAnswerC = true;
      } else {
        WriteQuestionAnswerC = false;
      }
      if (mouseX >= QuestionAnswerCCorrectX && mouseY >= QuestionAnswerCCorrectY && mouseX <= QuestionAnswerCCorrectX + QuestionAnswerCCorrectXSize && mouseY <= QuestionAnswerCCorrectY + QuestionAnswerCCorrectYSize){
        if (QuestionClasses[QuestionNumber].CorrectC.equals("True")){
          QuestionClasses[QuestionNumber].CorrectC = "False";
          SaveQuestionData = true;
        } else {
          QuestionClasses[QuestionNumber].CorrectC = "True";
          SaveQuestionData = true;
        }
      }
      if (mouseX >= QuestionAnswerDX && mouseY >= QuestionAnswerDY && mouseX <= QuestionAnswerDX + QuestionAnswerDXSize && mouseY <= QuestionAnswerDY + QuestionAnswerDYSize){
        WriteQuestionAnswerD = true;
      } else {
        WriteQuestionAnswerD = false;
      }
      if (mouseX >= QuestionAnswerDCorrectX && mouseY >= QuestionAnswerDCorrectY && mouseX <= QuestionAnswerDCorrectX + QuestionAnswerDCorrectXSize && mouseY <= QuestionAnswerDCorrectY + QuestionAnswerDCorrectYSize){
        if (QuestionClasses[QuestionNumber].CorrectD.equals("True")){
          QuestionClasses[QuestionNumber].CorrectD = "False";
          SaveQuestionData = true;
        } else {
          QuestionClasses[QuestionNumber].CorrectD = "True";
          SaveQuestionData = true;
        }
      }
      if (mouseX >= DifficultyX && mouseY >= DifficultyY && mouseX <= DifficultyX + DifficultyXSize && mouseY <= DifficultyY + DifficultyYSize){
        WriteDifficulty = true;
      } else {
        WriteDifficulty = false;
      }
      if (mouseX >= NextX && mouseY >= NextY && mouseX <= NextX + NextXSize && mouseY <= NextY + NextYSize){
        if (QuestionNumber + 1 == QuestionClasses.length){
          QuizNewQuestion();
          LoadQuestionData();
          QuestionNumber++;
        } else {
          QuestionNumber++;
        }
      }
      if (mouseX >= PreviousX && mouseY >= PreviousY && mouseX <= PreviousX + PreviousXSize && mouseY <= PreviousY + PreviousYSize){
        if (QuestionNumber != 0){
          QuestionNumber--;
        }
      }
      if (QuestionClasses.length > 1){
        if (mouseX >= DeleteQuestionX && mouseY >= DeleteQuestionY && mouseX <= DeleteQuestionX + DeleteQuestionXSize && mouseY <= DeleteQuestionY + DeleteQuestionYSize){
          SureDelete = true;
        }
      }
    } else {
      if (mouseX >= DeleteBoxX && mouseY >= DeleteBoxY && mouseX <= DeleteBoxX + DeleteBoxXSize && mouseY <= DeleteBoxY + DeleteBoxYSize){
        if (mouseX >= DeleteBoxNoX && mouseY >= DeleteBoxNoY && mouseX <= DeleteBoxNoX + DeleteBoxNoXSize && mouseY <= DeleteBoxNoY + DeleteBoxNoYSize){
          SureDelete = false;
        }
        if (mouseX >= DeleteBoxYesX && mouseY >= DeleteBoxYesY && mouseX <= DeleteBoxYesX + DeleteBoxYesXSize && mouseY <= DeleteBoxYesY + DeleteBoxYesYSize){
          DeleteQuestion = true;
          SureDelete = false;
        }
      } else {
        SureDelete = false;
      }
    }
  } //EditQuiz
  
  else if (Screen.equals("Quiz")){
    if (QuestionNumber < QuestionClasses.length){
      if (mouseX >= QuestionAnswerAX && mouseY >= QuestionAnswerAY && mouseX <= QuestionAnswerAX + QuestionAnswerAXSize && mouseY <= QuestionAnswerAY + QuestionAnswerAYSize){
        if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
          QuestionClasses[QuestionNumber].ClickA = true;
          if(QuestionClasses[QuestionNumber].CorrectA.equals("True")){
            if (DifficultyActive == true && ComboActive == true){
              Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            } else if (DifficultyActive == false) {
              Score += 10.0 * (1.0 + (0.1 * Combo));
            } else {
              Score += 10.0 * (1.0 + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            }
            Combo++;
            CurrectAmount++;
          } else {
            Combo = 0;
          }
        }
      }
      if (mouseX >= QuestionAnswerBX && mouseY >= QuestionAnswerBY && mouseX <= QuestionAnswerBX + QuestionAnswerBXSize && mouseY <= QuestionAnswerBY + QuestionAnswerBYSize){
        if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
          QuestionClasses[QuestionNumber].ClickB = true;
          if(QuestionClasses[QuestionNumber].CorrectB.equals("True")){
            if (DifficultyActive == true && ComboActive == true){
              Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            } else if (DifficultyActive == false) {
              Score += 10.0 * (1.0 + (0.1 * Combo));
            } else {
              Score += 10.0 * (1.0 + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            }
            Combo++;
            CurrectAmount++;
          } else {
            Combo = 0;
          }
        }
      }
      if (mouseX >= QuestionAnswerCX && mouseY >= QuestionAnswerCY && mouseX <= QuestionAnswerCX + QuestionAnswerCXSize && mouseY <= QuestionAnswerCY + QuestionAnswerCYSize){
        if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
          QuestionClasses[QuestionNumber].ClickC = true;
          if(QuestionClasses[QuestionNumber].CorrectC.equals("True")){
            if (DifficultyActive == true && ComboActive == true){
              Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            } else if (DifficultyActive == false) {
              Score += 10.0 * (1.0 + (0.1 * Combo));
            } else {
              Score += 10.0 * (1.0 + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            }
            Combo++;
            CurrectAmount++;
          } else {
            Combo = 0;
          }
        }
      }
      if (mouseX >= QuestionAnswerDX && mouseY >= QuestionAnswerDY && mouseX <= QuestionAnswerDX + QuestionAnswerDXSize && mouseY <= QuestionAnswerDY + QuestionAnswerDYSize){
        if(QuestionClasses[QuestionNumber].ClickA == false && QuestionClasses[QuestionNumber].ClickB == false &&  QuestionClasses[QuestionNumber].ClickC == false && QuestionClasses[QuestionNumber].ClickD == false){
          QuestionClasses[QuestionNumber].ClickD = true;
          if(QuestionClasses[QuestionNumber].CorrectD.equals("True")){
            if (DifficultyActive == true && ComboActive == true){
              Score += 10.0 * (1.0 + (0.1 * Combo) + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            } else if (DifficultyActive == false) {
              Score += 10.0 * (1.0 + (0.1 * Combo));
            } else {
              Score += 10.0 * (1.0 + (0.1 * (QuestionClasses[QuestionNumber].Difficulty - 1)));
            }
            Combo++;
            CurrectAmount++;
          } else {
            Combo = 0;
          }
        }
      }
    } else if (QuestionNumber == QuestionClasses.length){
      if (mouseX >= QuizDoneMenuX && mouseY >= QuizDoneMenuY && mouseX <= QuizDoneMenuX + QuizDoneMenuXSize && mouseY <= QuizDoneMenuY + QuizDoneMenuYSize){
        LoadFiles();
        MouseWheel = 0;
        QuestionNumber = 0;
        Screen = "MainMenu";
      }
    }
  } //Quiz
  
  else if (Screen.equals("NewQuiz") || Screen.equals("AddedQuiz") || Screen.equals("EditQuizName")){
    if (!Screen.equals("AddedQuiz") && !Screen.equals("EditQuizName")){
      if (mouseX >= NewQuizNameX && mouseY >=  NewQuizNameY && mouseX <= NewQuizNameX + NewQuizNameXSize && mouseY <=  NewQuizNameY + NewQuizNameYSize){
        WriteNewQuizName = true;
      } else {
        WriteNewQuizName = false;
      }
    }//NewQuizName
    
    if (mouseX >= FirstLineX && mouseY >=  FirstLineY && mouseX <= FirstLineX + FirstLineXSize && mouseY <=  FirstLineY + FirstLineYSize){
      WriteFirstLine = true;
    } else {
      WriteFirstLine = false;
    } //FirstLine
    
    if (mouseX >= SecondLineX && mouseY >=  SecondLineY && mouseX <= SecondLineX + SecondLineXSize && mouseY <=  SecondLineY + SecondLineYSize){
      WriteSecondLine = true;
    } else {
      WriteSecondLine = false;
    } //SecondLine
    
    if (mouseX >= ThirdLineX && mouseY >=  ThirdLineY && mouseX <= ThirdLineX + ThirdLineXSize && mouseY <=  ThirdLineY + ThirdLineYSize){
      WriteThirdLine = true;
    } else {
      WriteThirdLine = false;
    } //ThirdLine
    
    if (mouseX >= HColorX && mouseY >=  HColorY && mouseX <= HColorX + HColorXSize && mouseY <=  HColorY + HColorYSize){
      WriteHColor = true;
    } else {
      WriteHColor = false;
    } //HColor
    
    if (mouseX >= HColorSelectX && mouseY >=  HColorSelectY && mouseX <= HColorSelectX + HColorSelectXSize && mouseY <=  HColorSelectY + HColorSelectYSize){
      HColorEx = int(mouseY - HColorSelectY);
      NewQuizHColorString = str(HColorEx);
    } //HColorSelect
    
    if (mouseX >= SColorX && mouseY >=  SColorY && mouseX <= SColorX + SColorXSize && mouseY <=  SColorY + SColorYSize){
      WriteSColor = true;
    } else {
      WriteSColor = false;
    } //SColor
    
    if (mouseX >= BColorX && mouseY >=  BColorY && mouseX <= BColorX + BColorXSize && mouseY <=  BColorY + BColorYSize){
      WriteBColor = true;
    } else {
      WriteBColor = false;
    } //BColor
    
    if (mouseX >= SubmitX && mouseY >= SubmitY && mouseX <= SubmitX + SubmitXSize && mouseY <=  SubmitY + SubmitYSize){
      NewQuizSubmit = true;
    }
  } //Edit QuizBanner Looks
  
  //Return Button
  if (!Screen.equals("MainMenu") && !Screen.equals("AddedQuiz") && QuestionNumber < QuestionClassesTem){
    if (mouseX >= ReturnX && mouseY >= ReturnY && mouseX <= ReturnX + ReturnXSize && mouseY <= ReturnY + ReturnYSize){
      LoadFiles();
      MouseWheel = 0;
      QuestionNumber = 0;
      Screen = "MainMenu";
    }
  }
}


void mouseWheel (MouseEvent event){
  if (Screen.equals("MainMenu")){
    if (MouseWheel >= 0 && MouseWheel <= MouseWheelMax){
      MouseWheel += event.getCount();
    }
    if (MouseWheel < 0){
      MouseWheel = 0;
    } 
    if (MouseWheel > MouseWheelMax){
      MouseWheel = MouseWheelMax;
    }
  }
  if (Screen.equals("NewQuiz") || Screen.equals("AddedQuiz") || Screen.equals("EditQuizName")){
    if (mouseX >= HColorX && mouseY >=  HColorY && mouseX <= HColorX + HColorXSize && mouseY <=  HColorY + HColorYSize){
      HColorEx -= event.getCount();
      if (HColorEx > 360){
        HColorEx = 360;
      } else if (HColorEx < 0){
        HColorEx = 0;
      }
    NewQuizHColorString = str(HColorEx);
    } //HColor
    
    if (mouseX >= SColorX && mouseY >=  SColorY && mouseX <= SColorX + SColorXSize && mouseY <=  SColorY + SColorYSize){
      SColorEx -= event.getCount();
      if (SColorEx > 360){
        SColorEx = 360;
      } else if (SColorEx < 0){
        SColorEx = 0;
      }
      NewQuizSColorString = str(SColorEx);
    } //SColor
    
    if (mouseX >= BColorX && mouseY >=  BColorY && mouseX <= BColorX + BColorXSize && mouseY <=  BColorY + BColorYSize){
      BColorEx -= event.getCount();
      if (BColorEx > 360){
        BColorEx = 360;
      } else if (BColorEx < 0){
        BColorEx = 0;
      }
      NewQuizBColorString = str(BColorEx);
    } //BColor
  }
}
