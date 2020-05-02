void LoadFiles(){
  dir = new File(sketchPath("Data/Tests"));
  Quiz = dir.listFiles();
  QuizClasses = new QuizClass[Quiz.length];
  FileName = new String[Quiz.length];
  XML QuizDataArray = Data.getChild("QuizDataArray");
  XML[] QuizData = QuizDataArray.getChildren("QuizData");
  QuizFileName = new String[QuizData.length];
  QuizFirstLine = new String[QuizData.length];
  QuizSecondLine = new String[QuizData.length];
  QuizThirdLine = new String[QuizData.length];
  QuizHColor = new int[QuizData.length];
  QuizSColor = new int[QuizData.length];
  QuizBColor = new int[QuizData.length];
  
  XML SettingsData = Data.getChild("Settings");
  XML ScoreActiveData = SettingsData.getChild("ScoreActive");
  XML DifficultyActiveData = SettingsData.getChild("DifficultyActive");
  XML ComboActiveData = SettingsData.getChild("ComboActive");
  XML ShowCorrectActiveData = SettingsData.getChild("ShowCorrectActive");
  
  if (ScoreActiveData.getContent().equals("True")){
    ScoreActive = true;
  } else {
    ScoreActive = false;
  }
  if (DifficultyActiveData.getContent().equals("True")){
    DifficultyActive = true;
  } else {
    DifficultyActive = false;
  }
  if (ComboActiveData.getContent().equals("True")){
    ComboActive = true;
  } else {
    ComboActive = false;
  }
  if (ShowCorrectActiveData.getContent().equals("True")){
    ShowCorrectActive = true;
  } else {
    ShowCorrectActive = false;
  }
  
  
  for (int i = 0; i < Quiz.length; i++){      
    QuizClasses[i] = new QuizClass();
    QuizClasses[i].FileName = Quiz[i].getName();
    FileName[i] = Quiz[i].getName();
  }
  
  for (int i = 0; i < QuizData.length; i++){
    XML QuizFileNameData = QuizData[i].getChild("FileName");
    QuizFileName[i] = QuizFileNameData.getContent();
    
    XML QuizFirstLineData = QuizData[i].getChild("FirstLine");
    QuizFirstLine[i] = QuizFirstLineData.getContent();
    
    XML QuizSecondLineData = QuizData[i].getChild("SecondLine");
    QuizSecondLine[i] = QuizSecondLineData.getContent();
    
    XML QuizThirdLineData = QuizData[i].getChild("ThirdLine");
    QuizThirdLine[i] = QuizThirdLineData.getContent();
    
    XML QuizColorData = QuizData[i].getChild("Color");
    QuizHColor[i] = QuizColorData.getInt("H");
    QuizSColor[i] = QuizColorData.getInt("S");
    QuizBColor[i] = QuizColorData.getInt("B");
  }
  
  for (int i = 0; i < Quiz.length; i++){
    for (int j = 0; j < QuizData.length; j++){
      if (QuizClasses[i].FileName.equals(QuizFileName[j])){
        QuizClasses[i].FirstLine = QuizFirstLine[j];
        QuizClasses[i].SecondLine = QuizSecondLine[j];
        QuizClasses[i].ThirdLine = QuizThirdLine[j];
        QuizClasses[i].HColor = QuizHColor[j];
        QuizClasses[i].SColor = QuizSColor[j];
        QuizClasses[i].BColor = QuizBColor[j];
      }
    }
  }
  
  if (Quiz.length > QuizData.length){
    Screen = "AddedQuiz";
  }
}

void LoadQuestionData(){
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
  QuestionClassesTem = QuestionClasses.length;
}
