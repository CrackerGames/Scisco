void keyPressed(){
  if (WriteQuestionQuestion == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      QuestionClasses[QuestionNumber].Question += key;
    }
    if (key == BACKSPACE){
      if (QuestionClasses[QuestionNumber].Question.length() >= 1){
        String QuestionClassesQuestionDeleteLetter;
        QuestionClassesQuestionDeleteLetter = QuestionClasses[QuestionNumber].Question.substring(0, (QuestionClasses[QuestionNumber].Question.length() - 1));
        QuestionClasses[QuestionNumber].Question = QuestionClassesQuestionDeleteLetter;
      }
    }
    if (key == DELETE){
      QuestionClasses[QuestionNumber].Question = "";
    }
    if (key == TAB && tab == 0){
      WriteQuestionQuestion = false;
      WriteQuestionAnswerA = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteQuestionQuestion
  
  if (WriteQuestionAnswerA == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      QuestionClasses[QuestionNumber].AnswerA += key;
    }
    if (key == BACKSPACE){
      if (QuestionClasses[QuestionNumber].AnswerA.length() >= 1){
        String QuestionClassesAnswerADeleteLetter;
        QuestionClassesAnswerADeleteLetter = QuestionClasses[QuestionNumber].AnswerA.substring(0, (QuestionClasses[QuestionNumber].AnswerA.length() - 1));
        QuestionClasses[QuestionNumber].AnswerA = QuestionClassesAnswerADeleteLetter;
      }
    }
    if (key == DELETE){
      QuestionClasses[QuestionNumber].AnswerA = "";
    }
    if (key == TAB && tab == 0){
      WriteQuestionAnswerA = false;
      WriteQuestionAnswerB = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteQuestionAnswerA
  
  if (WriteQuestionAnswerB == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      QuestionClasses[QuestionNumber].AnswerB += key;
    }
    if (key == BACKSPACE){
      if (QuestionClasses[QuestionNumber].AnswerB.length() >= 1){
        String QuestionClassesAnswerBDeleteLetter;
        QuestionClassesAnswerBDeleteLetter = QuestionClasses[QuestionNumber].AnswerB.substring(0, (QuestionClasses[QuestionNumber].AnswerB.length() - 1));
        QuestionClasses[QuestionNumber].AnswerB = QuestionClassesAnswerBDeleteLetter;
      }
    }
    if (key == DELETE){
      QuestionClasses[QuestionNumber].AnswerB = "";
    }
    if (key == TAB && tab == 0){
      WriteQuestionAnswerB = false;
      WriteQuestionAnswerC = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteQuestionAnswerB
  
  if (WriteQuestionAnswerC == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      QuestionClasses[QuestionNumber].AnswerC += key;
    }
    if (key == BACKSPACE){
      if (QuestionClasses[QuestionNumber].AnswerC.length() >= 1){
        String QuestionClassesAnswerCDeleteLetter;
        QuestionClassesAnswerCDeleteLetter = QuestionClasses[QuestionNumber].AnswerC.substring(0, (QuestionClasses[QuestionNumber].AnswerC.length() - 1));
        QuestionClasses[QuestionNumber].AnswerC = QuestionClassesAnswerCDeleteLetter;
      }
    }
    if (key == DELETE){
      QuestionClasses[QuestionNumber].AnswerC = "";
    }
    if (key == TAB && tab == 0){
      WriteQuestionAnswerC = false;
      WriteQuestionAnswerD = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteQuestionAnswerC
  
  if (WriteQuestionAnswerD == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      QuestionClasses[QuestionNumber].AnswerD += key;
    }
    if (key == BACKSPACE){
      if (QuestionClasses[QuestionNumber].AnswerD.length() >= 1){
        String QuestionClassesAnswerDDeleteLetter;
        QuestionClassesAnswerDDeleteLetter = QuestionClasses[QuestionNumber].AnswerD.substring(0, (QuestionClasses[QuestionNumber].AnswerD.length() - 1));
        QuestionClasses[QuestionNumber].AnswerD = QuestionClassesAnswerDDeleteLetter;
      }
    }
    if (key == DELETE){
      QuestionClasses[QuestionNumber].AnswerD = "";
    }
    if (key == TAB && tab == 0){
      WriteQuestionAnswerD = false;
      WriteDifficulty = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteQuestionAnswerD
  
  if (WriteDifficulty == true){
    if (key >= '1' && key <= '4'){
      QuestionClasses[QuestionNumber].Difficulty = key - 48;
    }
    QuestionClasses[QuestionNumber].DifficultyString = str(QuestionClasses[QuestionNumber].Difficulty);
    if (key == TAB && tab == 0){
      WriteDifficulty = false;
      WriteQuestionQuestion = true;
      tab = 1;
    }
    if (tab != 0){
      tab--;
    }
    SaveQuestionData = true;
  } //WriteDifficulty
  
  
  
  if (WriteNewQuizName == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      ShowQuizNameError = false;
      NewQuizName += key;
    }
    if (key == BACKSPACE){
      if (NewQuizName.length() >= 1){
        ShowQuizNameError = false;
        String NewQuizNameDeleteLetter;
        NewQuizNameDeleteLetter = NewQuizName.substring(0, (NewQuizName.length() - 1));
        NewQuizName = NewQuizNameDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizName = "";
    }
    if (key == TAB && tab == 0){
      WriteNewQuizName = false;
      WriteFirstLine = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteNewQuizName
  
  if (WriteFirstLine == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      NewQuizFirstLine += key;
    }
    if (key == BACKSPACE){
      if (NewQuizFirstLine.length() >= 1){
        String NewQuizFirstLineDeleteLetter;
        NewQuizFirstLineDeleteLetter = NewQuizFirstLine.substring(0, (NewQuizFirstLine.length() - 1));
        NewQuizFirstLine = NewQuizFirstLineDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizFirstLine = "";
    }
    if (key == TAB && tab == 0){
      WriteFirstLine = false;
      WriteSecondLine = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteFirstLine
  
  if (WriteSecondLine == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      NewQuizSecondLine += key;
    }
    if (key == BACKSPACE){
      if (NewQuizSecondLine.length() >= 1){
        String NewQuizSecondLineDeleteLetter;
        NewQuizSecondLineDeleteLetter = NewQuizSecondLine.substring(0, (NewQuizSecondLine.length() - 1));
        NewQuizSecondLine = NewQuizSecondLineDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizSecondLine = "";
    }
    if (key == TAB && tab == 0){
      WriteSecondLine = false;
      WriteThirdLine = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteSecondLine
  
  if (WriteThirdLine == true){
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') || key == ' ' || key == ',' || key == ';' || key == '.' || key == ':' || key == '?' || key == '-' || key == '_' || key == '!' || key == '%' || key == '&' || key == '/' || key == '(' || key == ')' || key == '"' || (key >= '0' && key <= '9') || key == 'æ' || key == 'Æ' || key == 'ø' || key == 'Ø' || key == 'å' || key == 'Å' || key == '´'){
      NewQuizThirdLine += key;
    }
    if (key == BACKSPACE){
      if (NewQuizThirdLine.length() >= 1){
        String NewQuizThirdLineDeleteLetter;
        NewQuizThirdLineDeleteLetter = NewQuizThirdLine.substring(0, (NewQuizThirdLine.length() - 1));
        NewQuizThirdLine = NewQuizThirdLineDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizThirdLine = "";
    }
    if (key == TAB && tab == 0){
      WriteThirdLine = false;
      WriteHColor = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteThirdLine
  
  if (WriteHColor == true){
    if (key >= '0' && key <= '9'){
      NewQuizHColorString += key;
    }
    if (key == BACKSPACE){
      if (NewQuizHColorString.length() >= 1){
        String NewQuizHColorStringDeleteLetter;
        NewQuizHColorStringDeleteLetter = NewQuizHColorString.substring(0, (NewQuizHColorString.length() - 1));
        NewQuizHColorString = NewQuizHColorStringDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizHColorString = "";
    }
    HColorEx = int(NewQuizHColorString);
    if (HColorEx > 360){
      HColorEx = 360;
      NewQuizHColorString = "360";
    } else if (HColorEx < 0){
      HColorEx = 0;
      NewQuizHColorString = "0";
    }
    if (key == TAB && tab == 0){
      WriteHColor = false;
      WriteSColor = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteHColorString
  
  if (WriteSColor == true){
    if (key >= '0' && key <= '9'){
      NewQuizSColorString += key;
    }
    if (key == BACKSPACE){
      if (NewQuizSColorString.length() >= 1){
        String NewQuizSColorStringDeleteLetter;
        NewQuizSColorStringDeleteLetter = NewQuizSColorString.substring(0, (NewQuizSColorString.length() - 1));
        NewQuizSColorString = NewQuizSColorStringDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizSColorString = "";
    }
    //SColorEx = Integer.parseInt("NewQuizSColorString");
    SColorEx = int(NewQuizSColorString);
    if (SColorEx > 360){
      SColorEx = 360;
      NewQuizSColorString = "360";
    } else if (SColorEx < 0){
      SColorEx = 0;
      NewQuizSColorString = "";
    }
    if (key == TAB && tab == 0){
      WriteSColor = false;
      WriteBColor = true;
      tab = 2;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteSColorString
  
  if (WriteBColor == true){
    if (key >= '0' && key <= '9'){
      NewQuizBColorString += key;
    }
    if (key == BACKSPACE){
      if (NewQuizBColorString.length() >= 1){
        String NewQuizBColorStringDeleteLetter;
        NewQuizBColorStringDeleteLetter = NewQuizBColorString.substring(0, (NewQuizBColorString.length() - 1));
        NewQuizBColorString = NewQuizBColorStringDeleteLetter;
      }
    }
    if (key == DELETE){
      NewQuizBColorString = "";
    }
    BColorEx = int(NewQuizBColorString);
    if (BColorEx > 360){
      BColorEx = 360;
      NewQuizBColorString = "360";
    } else if (BColorEx < 0){
      BColorEx = 0;
      NewQuizBColorString = "0";
    }
    if (key == TAB && tab == 0){
      WriteBColor = false;
      if (!Screen.equals("AddedQuiz")){
        WriteNewQuizName = true;
      } else {
        WriteFirstLine = true;
      }
      tab = 1;
    }
    if (tab != 0){
      tab--;
    }
  } //WriteBColorString
}
