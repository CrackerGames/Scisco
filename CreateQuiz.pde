void NewQuiz(){
  fill(360);
  rect(SubmitX, SubmitY, SubmitXSize, SubmitYSize);
  fill(360);
  if (WriteNewQuizName == true){
    fill(300);
  }
  rect(NewQuizNameX, NewQuizNameY,NewQuizNameXSize, NewQuizNameYSize);
  fill(360);
  if (WriteFirstLine == true){
    fill(300);
  }
  rect(FirstLineX, FirstLineY, FirstLineXSize, FirstLineYSize);
  fill(360);
  if (WriteSecondLine == true){
    fill(300);
  }
  rect(SecondLineX, SecondLineY, SecondLineXSize, SecondLineYSize);
  fill(360);
  if (WriteThirdLine == true){
    fill(300);
  }
  rect(ThirdLineX, ThirdLineY, ThirdLineXSize, ThirdLineYSize);
  fill(360);
  if (WriteHColor == true){
    fill(300);
  }
  rect(HColorX, HColorY, HColorXSize, HColorYSize);
  fill(360);
  if (WriteSColor == true){
    fill(300);
  }
  rect(SColorX, SColorY, SColorXSize, SColorYSize);
  fill(360);
  if (WriteBColor == true){
    fill(300);
  }
  rect(BColorX, BColorY, BColorXSize, BColorYSize);
  fill(HColorEx, SColorEx, BColorEx);
  rect(ColorDisplayX, ColorDisplayY, ColorDisplayXSize, ColorDisplayYSize);
  
  fill(0);
  textSize(width / 60.0);
  text("Submit", SubmitX, SubmitY, SubmitXSize, SubmitYSize);
  text(NewQuizName, NewQuizNameX, NewQuizNameY, NewQuizNameXSize, NewQuizNameYSize);
  text(NewQuizFirstLine, FirstLineX, FirstLineY, FirstLineXSize, FirstLineYSize);
  text(NewQuizSecondLine, SecondLineX, SecondLineY, SecondLineXSize, SecondLineYSize);
  text(NewQuizThirdLine, ThirdLineX, ThirdLineY, ThirdLineXSize, ThirdLineYSize);
  text(NewQuizHColorString, HColorX, HColorY, HColorXSize, HColorYSize);
  text(NewQuizSColorString, SColorX, SColorY, SColorXSize, SColorYSize);
  text(NewQuizBColorString, BColorX, BColorY, BColorXSize, BColorYSize);
  
  
  if (ShowQuizNameError == true){
    fill(360, 360, 360);
    text("Not a valid name.", width * 0.5, height * 0.9);
  }
  if (NewQuizSubmit == true){
    XML[] QuizData = Data.getChildren("QuizDataArray/QuizData");
    String NewQuizNameCheck = NewQuizName + ".xml";
    for (int i = 0; i < QuizData.length; i++){
      if (!NewQuizName.equals("") && !NewQuizName.equals(" ") && !NewQuizName.equals("  ") && !NewQuizName.equals("   ") && !NewQuizNameCheck.equals(QuizFileName[i])){
        if (!Screen.equals(AddedQuiz)){
          WriteQuizFile = createWriter("Data/Tests/" + NewQuizName + ".xml");
          QuizFileTemplate();
          QuizNewQuestion();
          QuizSaveToData();
          NewQuizName = "";
          Screen = "EditQuiz";
        } else {
          QuizSaveToData();
          NewQuizName = "";
          Screen = "MainMenu";
          LoadFiles();
        }
      } else {
        ShowQuizNameError = true;
      }
      NewQuizSubmit = false;
    }
  }
}

void QuizFileTemplate(){
  WriteQuizFile.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
  WriteQuizFile.println("<Data>");
  WriteQuizFile.println("</Data>");
  WriteQuizFile.close();
  
  QuizXML = loadXML(sketchPath("Data/Tests/") + NewQuizName + ".xml");
  XML QuizNameData = QuizXML.addChild("QuizName");
  QuizNameData.setContent(NewQuizName);
  QuizXML.addChild("Questions");
  saveXML(QuizXML, sketchPath("Data/Tests/") + NewQuizName + ".xml");
}

void QuizNewQuestion(){
  QuizXML = loadXML(sketchPath("Data/Tests/") + NewQuizName + ".xml");
  XML Questions = QuizXML.getChild("Questions");
  XML Question = Questions.addChild("Question");
  Question.addChild("Title");
  XML Difficulty = Question.addChild("Difficulty");
  Difficulty.setInt("D", 1);
  Question.addChild("Question");
  XML A = Question.addChild("A");
  A.addChild("Answer");
  XML ACorrect = A.addChild("Correct");
  ACorrect.setContent("False");
  XML B = Question.addChild("B");
  B.addChild("Answer");
  XML BCorrect = B.addChild("Correct");
  BCorrect.setContent("False");
  XML C = Question.addChild("C");
  C.addChild("Answer");
  XML CCorrect = C.addChild("Correct");
  CCorrect.setContent("False");
  XML D = Question.addChild("D");
  D.addChild("Answer");
  XML DCorrect = D.addChild("Correct");
  DCorrect.setContent("False");
  saveXML(QuizXML, sketchPath("Data/Tests/") + NewQuizName + ".xml");
}

void QuizSaveToData(){
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML QuizData = QuizDataArray.addChild("QuizData");
  XML FileName = QuizData.addChild("FileName");
  XML FirstLine = QuizData.addChild("FirstLine");
  XML SecondLine = QuizData.addChild("SecondLine");
  XML ThirdLine = QuizData.addChild("ThirdLine");
  XML Color = QuizData.addChild("Color");
  
  FileName.setContent(NewQuizName + ".xml");
  FirstLine.setContent(NewQuizFirstLine);
  SecondLine.setContent(NewQuizSecondLine);
  ThirdLine.setContent(NewQuizThirdLine);
  Color.setInt("H", HColorEx);
  Color.setInt("S", SColorEx);
  Color.setInt("B", BColorEx);
  
  saveXML(Data, sketchPath("Data/Data.xml"));
}

void AddedQuiz(){
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML[] QuizData = QuizDataArray.getChildren("QuizData");
  
  for (int i = 0; i < Quiz.length; i++){
    for (int j = 0; j < QuizData.length; j++){
      if (!QuizClasses[i].FileName.equals(QuizFileName[j])){
        NewQuizName = QuizClasses[i].FileName;
      }
    }
  }
  NewQuiz();
}
