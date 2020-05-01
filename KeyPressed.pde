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
      ShowQuizNameError = false;
      NewQuizName = "";
    }
  }
}
