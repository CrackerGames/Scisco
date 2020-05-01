void NewQuiz(){
  fill(360);
  rect(SubmitX, SubmitY, SubmitXSize, SubmitYSize);
  rect(NewQuizNameX, NewQuizNameYSize,NewQuizNameXSize, NewQuizNameYSize);
  
  //NewQuizColorString = Integer.parseInt(NewQuizColorInt);
  
  fill(0);
  textSize(width / 60.0);
  text("Submit", SubmitX, SubmitY, SubmitXSize, SubmitYSize);
  text(NewQuizName, NewQuizNameX, NewQuizNameYSize,NewQuizNameXSize, NewQuizNameYSize);
  
  if (ShowQuizNameError == true){
    fill(360,360,360);
    text("Not a valid name.", width * 0.5, height * 0.9);
  }
  if (NewQuizSubmit == true){
    if (NewQuizName != "" && NewQuizName != " " && NewQuizName != "  " && NewQuizName != "   "){
      WriteQuizFile = createWriter("Data/Tests/" + NewQuizName + ".xml");
      QuizFileTemplate();
      QuizNewQuestion();
      NewQuizName = "";
      Screen = "EditQuiz";
    } else {
      ShowQuizNameError = true;
    }
    NewQuizSubmit = false;
  }
}

void QuizFileTemplate(){
  WriteQuizFile.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
  WriteQuizFile.println("<Data>");
  WriteQuizFile.println("</Data>");
  WriteQuizFile.close();
}

void QuizNewQuestion(){
  QuizXML = loadXML(sketchPath("Data/Tests/") + NewQuizName + ".xml");
  XML Questions = QuizXML.addChild("Questions");
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

void EditQuiz(){
  
  
}
