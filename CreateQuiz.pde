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
  if (WriteNewQuizName == true || !NewQuizName.equals("")){
    text(NewQuizName, NewQuizNameX, NewQuizNameY - height * 0.003, NewQuizNameXSize, NewQuizNameYSize);
  } else {
    fill(100);
    text(NewQuizNameTem, NewQuizNameX, NewQuizNameY - height * 0.003, NewQuizNameXSize, NewQuizNameYSize);
    fill(0);
  }
  if (WriteFirstLine == true || !NewQuizFirstLine.equals("")){
    text(NewQuizFirstLine, FirstLineX, FirstLineY - height * 0.003, FirstLineXSize, FirstLineYSize);
  } else {
    fill(100);
    text(NewQuizFirstLineTem, FirstLineX, FirstLineY - height * 0.003, FirstLineXSize, FirstLineYSize);
    fill(0);
  }
  if (WriteSecondLine == true || !NewQuizSecondLine.equals("")){
    text(NewQuizSecondLine, SecondLineX, SecondLineY - height * 0.003, SecondLineXSize, SecondLineYSize);
  } else {
    fill(100);
    text(NewQuizSecondLineTem, SecondLineX, SecondLineY - height * 0.003, SecondLineXSize, SecondLineYSize);
    fill(0);
  }
  if (WriteThirdLine == true || !NewQuizThirdLine.equals("")){
    text(NewQuizThirdLine, ThirdLineX, ThirdLineY - height * 0.003, ThirdLineXSize, ThirdLineYSize);
  } else {
    fill(100);
    text(NewQuizThirdLineTem, ThirdLineX, ThirdLineY - height * 0.003, ThirdLineXSize, ThirdLineYSize);
    fill(0);
  }
  if (WriteHColor == true || !NewQuizHColorString.equals("")){
    text(NewQuizHColorString, HColorX, HColorY - height * 0.003, HColorXSize, HColorYSize);
  } else {
    fill(100);
    text(NewQuizSColorStringTem, HColorX, HColorY - height * 0.003, HColorXSize, HColorYSize);
    fill(0);
  }
  text("Hue", HColorX + HColorXSize / 2, HColorY - height * 0.003 + HColorYSize * 1.5);
  if (WriteSColor == true || !NewQuizSColorString.equals("")){
    text(NewQuizSColorString, SColorX, SColorY - height * 0.003, SColorXSize, SColorYSize);
  } else {
    fill(100);
    text(NewQuizSColorStringTem, SColorX, SColorY - height * 0.003, SColorXSize, SColorYSize);
    fill(0);
  }
  text("Saturation", SColorX + SColorXSize / 2, SColorY - height * 0.003 + SColorYSize * 1.5);
  if (WriteBColor == true || !NewQuizBColorString.equals("")){
    text(NewQuizBColorString, BColorX, BColorY - height * 0.003, BColorXSize, BColorYSize);
  } else {
    fill(100);
    text(NewQuizBColorStringTem, BColorX, BColorY - height * 0.003, BColorXSize, BColorYSize);
    fill(0);
  }
  text("Brightness", BColorX + BColorXSize / 2, BColorY - height * 0.003 + BColorYSize * 1.5);
  
  if (ShowQuizNameError == true){
    fill(360, 360, 360);
    text("Not a valid name.", width * 0.5, height * 0.9);
  }
  if (NewQuizSubmit == true){
    XML[] QuizData = Data.getChildren("QuizDataArray/QuizData");
    LoadFiles();
    boolean NameCheck = false;
    String NewQuizNameCheck = NewQuizName + ".xml";
    for (int i = 0; i < QuizData.length; i++){
      if (NewQuizNameCheck.equals(FileName[i])){
        NameCheck = true;
      }
    }
    if (!Screen.equals("AddedQuiz") && !Screen.equals("EditQuizName")){
      if (!NewQuizName.equals("") && !NewQuizName.equals(" ") && !NewQuizName.equals("  ") && !NewQuizName.equals("   ") && NameCheck == false){
        WriteQuizFile = createWriter("Data/Tests/" + NewQuizName + ".xml");
        QuizFileTemplate();
        QuizNewQuestion();
        QuizSaveToData();
        EditQuiz = NewQuizName + ".xml";
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
        LoadFiles();
        LoadQuestionData();
        Screen = "EditQuiz";
        NewQuizSubmit = false;
      } else {
        ShowQuizNameError = true;
      }
    } else if (!Screen.equals("EditQuizName")){
      QuizSaveToData();
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
      LoadFiles();
      Screen = "MainMenu";
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
  if (!NewQuizName.equals("")){
    QuizXML = loadXML(sketchPath("Data/Tests/") + NewQuizName + ".xml");
  } else {
    QuizXML = loadXML(sketchPath("Data/Tests/") + EditQuiz);
  }
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
  if (!NewQuizName.equals("")){
    saveXML(QuizXML, sketchPath("Data/Tests/") + NewQuizName + ".xml");
  } else {
    saveXML(QuizXML, sketchPath("Data/Tests/") + EditQuiz);
  }
  
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
void EditQuizName(){
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML[] QuizData = QuizDataArray.getChildren("QuizData");
  XML FirstLineData;
  XML SecondLineData;
  XML ThirdLineData;
  XML ColorData;
  
  if (CorrectData == true){
    
    NewQuizName = EditQuiz;
    NewQuizName = NewQuizName.replace(".xml","");
    
    for (int i = 0; i < Quiz.length; i++){
      if (QuizClasses[i].FileName.equals(EditQuiz)){
        FirstLineData = QuizData[i].getChild("FirstLine");
        SecondLineData = QuizData[i].getChild("SecondLine");
        ThirdLineData = QuizData[i].getChild("ThirdLine");
        ColorData = QuizData[i].getChild("Color");
        
        NewQuizFirstLine = FirstLineData.getContent();
        NewQuizSecondLine = SecondLineData.getContent();
        NewQuizThirdLine = ThirdLineData.getContent();
        HColorEx = ColorData.getInt("H");
        SColorEx = ColorData.getInt("S");
        BColorEx = ColorData.getInt("B");
        NewQuizHColorString = str(HColorEx);
        NewQuizSColorString = str(SColorEx);
        NewQuizBColorString = str(BColorEx);
      }
    }
    CorrectData = false;
  }
  NewQuiz();
  
  for (int i = 0; i < Quiz.length; i++){
    if (QuizClasses[i].FileName.equals(EditQuiz)){
      FirstLineData = QuizData[i].getChild("FirstLine");
      SecondLineData = QuizData[i].getChild("SecondLine");
      ThirdLineData = QuizData[i].getChild("ThirdLine");
      ColorData = QuizData[i].getChild("Color");
      FirstLineData.setContent(NewQuizFirstLine);
      ThirdLineData.setContent(NewQuizSecondLine);
      SecondLineData.setContent(NewQuizThirdLine);
      ColorData.setInt("H", HColorEx);
      ColorData.setInt("S", SColorEx);
      ColorData.setInt("B", BColorEx);
      saveXML(Data, sketchPath("Data/Data.xml"));
    }
  }
  if (NewQuizSubmit == true){
    NewQuizSubmit = false;
    Screen = "MainMenu";
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
}

void AddedQuiz(){
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML[] QuizData = QuizDataArray.getChildren("QuizData");
  
  for (int i = 0; i < Quiz.length; i++){
    for (int j = 0; j < QuizData.length; j++){
      if (!QuizClasses[i].FileName.equals(QuizFileName[j])){
        NewQuizName = QuizClasses[i].FileName;
        NewQuizName = NewQuizName.replace(".xml","");
      }
    }
  }
  NewQuiz();
}
