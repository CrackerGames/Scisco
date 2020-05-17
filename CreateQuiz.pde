void NewQuiz(){
  fill(220,35,21);
  noStroke();
  rect(SubmitX, SubmitY, SubmitXSize, SubmitYSize, 10);
  fill(221,61,6);
  if (WriteNewQuizName == true){
    fill(219,35,15); //farve 3
  }
  rect(NewQuizNameX, NewQuizNameY,NewQuizNameXSize, NewQuizNameYSize, 10);
  fill(221,61,6);
  if (WriteFirstLine == true){
    fill(219,35,15); //farve 3
  }
  rect(FirstLineX, FirstLineY, FirstLineXSize, FirstLineYSize, 10);
  fill(221,61,6);
  if (WriteSecondLine == true){
    fill(219,35,15); //farve 3
  }
  rect(SecondLineX, SecondLineY, SecondLineXSize, SecondLineYSize, 10);
  fill(221,61,6);
  if (WriteThirdLine == true){
    fill(219,35,15); //farve 3
  }

  image(ColorSelect, HColorSelectX, HColorSelectY, HColorSelectXSize, HColorSelectYSize);
  //rect(HColorSelectX - height * 0.001, HColorSelectY - height * 0.001, HColorSelectXSize + height * 0.002, HColorSelectYSize + height * 0.002, 10);
  
  rect(ThirdLineX, ThirdLineY, ThirdLineXSize, ThirdLineYSize, 10);
  fill(221,61,6);
  if (WriteHColor == true){
    fill(219,35,15); //farve 3
  }
  
  rect(HColorX, HColorY, HColorXSize, HColorYSize, 10);
  fill(221,61,6);
  if (WriteSColor == true){
    fill(219,35,15); //farve 3
  }
  
  if (mouseX >= HColorSelectX && mouseY >=  HColorSelectY && mouseX <= HColorSelectX + HColorSelectXSize && mouseY <=  HColorSelectY + HColorSelectYSize){
    if(mousePressed == true){
      HColorEx = int(mouseY - HColorSelectY);
      NewQuizHColorString = str(HColorEx);
    }
  } //HColorSelect
  
  rect(SColorX, SColorY, SColorXSize, SColorYSize, 10);
  fill(221,61,6);
  if (WriteBColor == true){
    fill(219,35,15); //farve 3
  }
  rect(BColorX, BColorY, BColorXSize, BColorYSize, 10);
  fill(HColorEx, SColorEx, BColorEx * 0.7);
  rect(ColorDisplayX, ColorDisplayY, ColorDisplayXSize, ColorDisplayYSize, 10);
  
  fill(0,0,50);
  textSize(width / 60.0);
  text("Submit", SubmitX, SubmitY*0.995, SubmitXSize, SubmitYSize);
  if (WriteNewQuizName == true || !NewQuizName.equals("")){
    text(NewQuizName, NewQuizNameX, NewQuizNameY - height * 0.003, NewQuizNameXSize, NewQuizNameYSize);
  } else {
    fill(0, 100, 30); //farve 6
    text(NewQuizNameTem, NewQuizNameX, NewQuizNameY - height * 0.003, NewQuizNameXSize, NewQuizNameYSize);
    fill(0,0,50); //farve 5
  }
  if (WriteFirstLine == true || !NewQuizFirstLine.equals("")){
    text(NewQuizFirstLine, FirstLineX, FirstLineY - height * 0.003, FirstLineXSize, FirstLineYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizFirstLineTem, FirstLineX, FirstLineY - height * 0.003, FirstLineXSize, FirstLineYSize);
    fill(0,0,50); //farve 5
  }
  if (WriteSecondLine == true || !NewQuizSecondLine.equals("")){
    text(NewQuizSecondLine, SecondLineX, SecondLineY - height * 0.003, SecondLineXSize, SecondLineYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizSecondLineTem, SecondLineX, SecondLineY - height * 0.003, SecondLineXSize, SecondLineYSize);
    fill(0,0,50); //farve 5
  }
  if (WriteThirdLine == true || !NewQuizThirdLine.equals("")){
    text(NewQuizThirdLine, ThirdLineX, ThirdLineY - height * 0.003, ThirdLineXSize, ThirdLineYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizThirdLineTem, ThirdLineX, ThirdLineY - height * 0.003, ThirdLineXSize, ThirdLineYSize);
    fill(0,0,50); //farve 5
  }
  if (WriteHColor == true || !NewQuizHColorString.equals("")){
    text(NewQuizHColorString, HColorX, HColorY - height * 0.003, HColorXSize, HColorYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizHColorStringTem, HColorX, HColorY - height * 0.003, HColorXSize, HColorYSize);
    fill(0,0,50); //farve 5
  }
  text("Hue", HColorX + HColorXSize / 2, HColorY - height * 0.003 + HColorYSize * 1.5);
  if (WriteSColor == true || !NewQuizSColorString.equals("")){
    text(NewQuizSColorString, SColorX, SColorY - height * 0.003, SColorXSize, SColorYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizSColorStringTem, SColorX, SColorY - height * 0.003, SColorXSize, SColorYSize);
    fill(0,0,50); //farve 5
  }
  text("Saturation", SColorX + SColorXSize / 2, SColorY - height * 0.003 + SColorYSize * 1.5);
  if (WriteBColor == true || !NewQuizBColorString.equals("")){
    text(NewQuizBColorString, BColorX, BColorY - height * 0.003, BColorXSize, BColorYSize);
  } else {
    fill(0, 0, 25); //farve 4
    text(NewQuizBColorStringTem, BColorX, BColorY - height * 0.003, BColorXSize, BColorYSize);
    fill(0,0,50); //farve 5
  }
  text("Brightness", BColorX + BColorXSize / 2, BColorY - height * 0.003 + BColorYSize * 1.5);
  
  if (ShowQuizNameError == true){
    fill(0, 100, 67);
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
        SColorEx = 100;
        BColorEx = 100;
        LoadFiles();
        LoadQuestionData();
        Screen = "EditQuiz";
        NewQuizSubmit = false;
      } else {
        ShowQuizNameError = true;
        NewQuizSubmit = false;
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
      SColorEx = 100;
      BColorEx = 100;
      Screen = "MainMenu";
      NewQuizSubmit = false;
      LoadFiles();
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
  XML FileNameData;
  XML FirstLineData;
  XML SecondLineData;
  XML ThirdLineData;
  XML ColorData;
  
  if (CorrectData == true){
    
    NewQuizName = EditQuiz;
    NewQuizName = NewQuizName.replace(".xml","");
    
    for (int i = 0; i < Quiz.length; i++){
      FileNameData = QuizData[i].getChild("FileName");
      String FileNameXML = FileNameData.getContent();
      if (FileNameXML.equals(EditQuiz)){
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
  
  if (NewQuizSubmit == true){
    for (int i = 0; i < Quiz.length; i++){
      FileNameData = QuizData[i].getChild("FileName");
      String FileNameXML = FileNameData.getContent();
      if (FileNameXML.equals(EditQuiz)){
        FirstLineData = QuizData[i].getChild("FirstLine");
        SecondLineData = QuizData[i].getChild("SecondLine");
        ThirdLineData = QuizData[i].getChild("ThirdLine");
        ColorData = QuizData[i].getChild("Color");
        FirstLineData.setContent(NewQuizFirstLine);
        SecondLineData.setContent(NewQuizSecondLine);
        ThirdLineData.setContent(NewQuizThirdLine);
        ColorData.setInt("H", HColorEx);
        ColorData.setInt("S", SColorEx);
        ColorData.setInt("B", BColorEx);
        saveXML(Data, sketchPath("Data/Data.xml"));
      }
    }
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
    SColorEx = 100;
    BColorEx = 100;
    LoadFiles();
  }
}

void AddedQuiz(){
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML[] QuizData = QuizDataArray.getChildren("QuizData");
  boolean[] CheckQuizExistance;
  CheckQuizExistance = new boolean[Quiz.length];
  for (int i = 0; i < QuizData.length; i++){
    CheckQuizExistance[i] = false;
  }
  for (int j = 0; j < QuizData.length; j++){
    for (int i = 0; i < Quiz.length; i++){
      if (QuizClasses[i].FileName.equals(QuizFileName[j])){
        CheckQuizExistance[i] = true;
      }
    }
  }
  for (int i = 0; i < Quiz.length; i++){
    if (CheckQuizExistance[i] == false){
      NewQuizName = QuizClasses[i].FileName;
      NewQuizName = NewQuizName.replace(".xml","");
    }
  }
  NewQuiz();
}
