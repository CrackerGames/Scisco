void keyPressed(){
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
      NewQuizHColorString = "0";
    }
    HColorEx = int(NewQuizHColorString);
    if (HColorEx > 360){
      HColorEx = 360;
      NewQuizHColorString = "360";
    } else if (HColorEx < 0){
      HColorEx = 0;
      NewQuizHColorString = "0";
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
  } //WriteBColorString
}
