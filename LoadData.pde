void LoadFiles(){
  dir = new File(sketchPath("Data/Tests"));
  Quiz = dir.listFiles();
  TestAmount = Quiz.length;
  FileName = new String[Quiz.length];
  QuizClasses = new QuizClass[Quiz.length];
  for (int i = 0; i < Quiz.length; i++){
    QuizClasses[i] = new QuizClass();
    QuizClasses[i].FirstLine = Quiz[i].getName();
    FileName[i] = Quiz[i].getName();
    QuizClasses[i].FirstLine = QuizClasses[i].FirstLine.replaceFirst(".xml","");
  }
}

void LoadData(){
  XML[] QuestionsData = QuizXML.getChildren("Questions/Question");
  QuestionClasses = new QuestionClass[QuestionsData.length];
  for (int i = 0; i < QuestionsData.length; i++){
    QuestionClasses[i] = new QuestionClass();
    
    XML QuestionNameData = QuestionsData[i].getChild("Title");
    QuestionClasses[i].Name = QuestionNameData.getContent();
    
    XML QuestionQuestionData = QuestionsData[i].getChild("Question");
    QuestionClasses[i].Question = QuestionQuestionData.getContent();
    
    XML QuestionDifficultyData = QuestionsData[i].getChild("Difficulty");
    QuestionClasses[i].Difficulty = QuestionDifficultyData.getInt("D");
    
    XML QuestionAnswerAData = QuestionsData[i].getChild("A/Answer");
    QuestionClasses[i].AnswerA = QuestionAnswerAData.getContent();
    XML QuestionAnswerBData = QuestionsData[i].getChild("B/Answer");
    QuestionClasses[i].AnswerB = QuestionAnswerBData.getContent();
    XML QuestionAnswerCData = QuestionsData[i].getChild("C/Answer");
    QuestionClasses[i].AnswerC = QuestionAnswerCData.getContent();
    XML QuestionAnswerDData = QuestionsData[i].getChild("D/Answer");
    QuestionClasses[i].AnswerD = QuestionAnswerDData.getContent();
    
    XML QuestionCorrectAData = QuestionsData[i].getChild("A/Correct");
    QuestionClasses[i].CorrectA = QuestionCorrectAData.getContent();
    if(QuestionClasses[i].CorrectA.equals("False")){
      QuestionClasses[i].AnswerAColorHSB[0] = 360;
    } else {
      QuestionClasses[i].AnswerAColorHSB[0] = 100;
    }
    XML QuestionCorrectBData = QuestionsData[i].getChild("B/Correct");
    QuestionClasses[i].CorrectB = QuestionCorrectBData.getContent();
    if(QuestionClasses[i].CorrectB.equals("False")){
      QuestionClasses[i].AnswerBColorHSB[0] = 360;
    } else {
      QuestionClasses[i].AnswerBColorHSB[0] = 100;
    }
    XML QuestionCorrectCData = QuestionsData[i].getChild("C/Correct");
    QuestionClasses[i].CorrectC = QuestionCorrectCData.getContent();
    if(QuestionClasses[i].CorrectC.equals("False")){
      QuestionClasses[i].AnswerCColorHSB[0] = 360;
    } else {
      QuestionClasses[i].AnswerCColorHSB[0] = 100;
    }
    XML QuestionCorrectDData = QuestionsData[i].getChild("D/Correct");
    QuestionClasses[i].CorrectD = QuestionCorrectDData.getContent();
    if(QuestionClasses[i].CorrectD.equals("False")){
      QuestionClasses[i].AnswerDColorHSB[0] = 360;
    } else {
      QuestionClasses[i].AnswerDColorHSB[0] = 100;
    }
  }
  println(QuestionsData.length);
  Screen = "Quiz";
}
