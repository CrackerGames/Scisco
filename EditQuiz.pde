void EditQuiz(){
  
  QuestionClasses[QuestionNumber].DisplayQuestion();
  QuestionClasses[QuestionNumber].QuestionEditQuiz();
  
  if (SaveQuestionData == true){
    XML[] QuestionsData = QuizXML.getChildren("Questions/Question");
    XML QuestionQuestionData = QuestionsData[QuestionNumber].getChild("Question");
    XML QuestionDifficultyData = QuestionsData[QuestionNumber].getChild("Difficulty");
    XML QuestionAnswerAData = QuestionsData[QuestionNumber].getChild("A/Answer");
    XML QuestionAnswerBData = QuestionsData[QuestionNumber].getChild("B/Answer");
    XML QuestionAnswerCData = QuestionsData[QuestionNumber].getChild("C/Answer");
    XML QuestionAnswerDData = QuestionsData[QuestionNumber].getChild("D/Answer");
    XML QuestionCorrectAData = QuestionsData[QuestionNumber].getChild("A/Correct");
    XML QuestionCorrectBData = QuestionsData[QuestionNumber].getChild("B/Correct");
    XML QuestionCorrectCData = QuestionsData[QuestionNumber].getChild("C/Correct");
    XML QuestionCorrectDData = QuestionsData[QuestionNumber].getChild("D/Correct");
    QuestionQuestionData.setContent(QuestionClasses[QuestionNumber].Question);
    QuestionDifficultyData.setInt("D", QuestionClasses[QuestionNumber].Difficulty);
    QuestionAnswerAData.setContent(QuestionClasses[QuestionNumber].AnswerA);
    QuestionAnswerBData.setContent(QuestionClasses[QuestionNumber].AnswerB);
    QuestionAnswerCData.setContent(QuestionClasses[QuestionNumber].AnswerC);
    QuestionAnswerDData.setContent(QuestionClasses[QuestionNumber].AnswerD);
    QuestionCorrectAData.setContent(QuestionClasses[QuestionNumber].CorrectA);
    QuestionCorrectBData.setContent(QuestionClasses[QuestionNumber].CorrectB);
    QuestionCorrectCData.setContent(QuestionClasses[QuestionNumber].CorrectC);
    QuestionCorrectDData.setContent(QuestionClasses[QuestionNumber].CorrectD);
    saveXML(QuizXML, sketchPath("Data/Tests/") + EditQuiz);
    LoadQuestionData();
    QuestionClasses[QuestionNumber].DifficultyString = str(QuestionClasses[QuestionNumber].Difficulty);
    SaveQuestionData = false;
  }
  if (DeleteQuestion == true){
    XML[] QuestionsData = QuizXML.getChildren("Questions/Question");
    XML DeleteQuestionData = QuizXML.getChild("Questions");
    if (QuestionsData.length > 1){
      DeleteQuestionData.removeChild(QuestionsData[QuestionNumber]);
    }
    DeleteQuestion = false;
    saveXML(QuizXML, sketchPath("Data/Tests/") + EditQuiz);
    LoadQuestionData();
    if (QuestionNumber + 1 > QuestionClasses.length){
      QuestionNumber--;
    }
  }
}


void PlayOrEdit(){
  noStroke();
  fill(220, 35, 23);
  rect(PlayX, PlayY, PlayXSize, PlayYSize, 10);
  rect(EditQuizX, EditQuizY, EditQuizXSize, EditQuizYSize, 10);
  rect(EditNameX, EditNameY, EditNameXSize, EditNameYSize, 10);
  rect(DeleteQuizX, DeleteQuizY, DeleteQuizXSize, DeleteQuizYSize,10);
  
  fill(201,20,89); //Lys blå
  textSize(width / 20);
  text("Play", PlayX, PlayY, PlayXSize, PlayYSize);
  text("Edit Quiz", EditQuizX, EditQuizY - height * 0.003, EditQuizXSize, EditQuizYSize);
  text("Edit Name", EditNameX, EditNameY - height * 0.003, EditNameXSize, EditNameYSize);
  textSize(width / 20.0);
  text("Delete", DeleteQuizX, DeleteQuizY - height * 0.003, DeleteQuizXSize, DeleteQuizYSize);
  
  if (SureDelete == true){
    fill(219, 35, 19); //farve 3
    rect(DeleteBoxX, DeleteBoxY, DeleteBoxXSize, DeleteBoxYSize, 10);
    if (QuizClasses.length > 1){
      rect(DeleteBoxNoX, DeleteBoxNoY, DeleteBoxNoXSize, DeleteBoxNoYSize);
      rect(DeleteBoxYesX, DeleteBoxYesY, DeleteBoxYesXSize, DeleteBoxYesYSize);
    } else {
      rect(DeleteBoxOkX, DeleteBoxOkY, DeleteBoxOkXSize, DeleteBoxOkYSize);
    }
    fill(201, 20, 89); //farve 9
    if (QuizClasses.length > 1){
      textSize(width / 30);
      text("Are you sure?", DeleteBoxX, DeleteBoxY - DeleteBoxYSize / 8, DeleteBoxXSize, DeleteBoxYSize);
      textSize(width / 60);
      text("No", DeleteBoxNoX, DeleteBoxNoY - height * 0.003, DeleteBoxNoXSize, DeleteBoxNoYSize);
      text("Yes", DeleteBoxYesX, DeleteBoxYesY - height * 0.003, DeleteBoxYesXSize, DeleteBoxYesYSize);
    } else {
      textSize(width / 40);
      text("Sorry, there must always be at least one quiz.", DeleteBoxX, DeleteBoxY - DeleteBoxYSize / 8, DeleteBoxXSize, DeleteBoxYSize);
      textSize(width / 60);
      text("Ok", DeleteBoxOkX, DeleteBoxOkY - height * 0.003, DeleteBoxOkXSize, DeleteBoxOkYSize);
    }
  }
    
  if (DeleteQuiz == true){
    File DeleteFile = new File(sketchPath("Data/Tests/") + EditQuiz);
    int QuizDataDelete = -1;
    
    XML QuizDataArray = Data.getChild("QuizDataArray");
    XML[] QuizData = QuizDataArray.getChildren("QuizData");
    for (int i = 0; i < QuizData.length; i++){
      XML FileNameData = QuizData[i].getChild("FileName");
      String QuizDataDeleteTest = FileNameData.getContent();
      if (EditQuiz.equals(QuizDataDeleteTest)){
        QuizDataDelete = i;
      }
    }
    DeleteFile.delete();
    QuizDataArray.removeChild(QuizData[QuizDataDelete]);
    saveXML(Data, sketchPath("Data/Data.xml"));
    LoadFiles();
    DeleteQuiz = false;
    Screen = "MainMenu";
  }
}
