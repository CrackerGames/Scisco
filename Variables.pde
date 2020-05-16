//CallibrateVariables (Mostly Buttons)
  void CallibrateVariables(){
    //Exit
      ExitX = width * 0.94;
      ExitY = height * 0.9;
      ExitXSize = width * 0.04;
      ExitYSize = width * 0.025;
    //New
      NewX = width * 0.88;
      NewY = height * 0.9;
      NewXSize = width * 0.045;
      NewYSize = width * 0.025;
    //Return
      ReturnX = width * 0.94;
      ReturnY = height * 0.9;
      ReturnXSize = width * 0.025;
      ReturnYSize = width * 0.025;
    //Submit
      SubmitX = width * 0.45;
      SubmitY = height * 0.8;
      SubmitXSize = width * 0.1;
      SubmitYSize = height * 0.05;
    //NewQuizName
      NewQuizNameX = width * 0.35;
      NewQuizNameY = height * 0.15;
      NewQuizNameXSize = width * 0.3;
      NewQuizNameYSize = height * 0.05;
    //FirstLine
      FirstLineX = width * 0.3;
      FirstLineY = height * 0.25;
      FirstLineXSize = width * 0.4;
      FirstLineYSize = height * 0.08;
    //SecondLine
      SecondLineX = width * 0.3;
      SecondLineY = height * 0.35;
      SecondLineXSize = width * 0.4;
      SecondLineYSize = height * 0.08;
    //ThirdLine
      ThirdLineX = width * 0.3;
      ThirdLineY = height * 0.45;
      ThirdLineXSize = width * 0.4;
      ThirdLineYSize = height * 0.08;
    //HColor
      HColorX = width * 0.3;
      HColorY = height * 0.55;
      HColorXSize = width * 0.05;
      HColorYSize = height * 0.04;
    //HColorSelect
      HColorSelectXSize = width * 0.05;
      HColorSelectYSize = 360 * height / 1080;
      HColorSelectX = width * 0.2;
      HColorSelectY = height * 0.55 - HColorSelectYSize / 2;
    //SColor
      SColorX = width * 0.475;
      SColorY = height * 0.55;
      SColorXSize = width * 0.05;
      SColorYSize = height * 0.04;
    //BColor
      BColorX = width * 0.65;
      BColorY = height * 0.55;
      BColorXSize = width * 0.05;
      BColorYSize = height * 0.04;
    //ColorDisplay
      ColorDisplayX = width * 0.3;
      ColorDisplayY = height * 0.65;
      ColorDisplayXSize = width * 0.4;
      ColorDisplayYSize = height * 0.1;
    //QuestionQuestion
      QuestionQuestionX = width * 0.2;
      QuestionQuestionY = height * 0.15;
      QuestionQuestionXSize = width * 0.6;
      QuestionQuestionYSize = height * 0.2;
    //QuestionAnswerA
      QuestionAnswerAX = width * 0.2;
      QuestionAnswerAY = height * 0.45;
      QuestionAnswerAXSize = width * 0.275;
      QuestionAnswerAYSize = height * 0.2;
    //QuestionAnswerACorrect
      QuestionAnswerACorrectX = width * 0.15;
      QuestionAnswerACorrectY = height * 0.55 - width * 0.03 / 2;
      QuestionAnswerACorrectXSize = width * 0.03;
      QuestionAnswerACorrectYSize = width * 0.03;
    //QuestionAnswerB
      QuestionAnswerBX = width * 0.525;
      QuestionAnswerBY = height * 0.45;
      QuestionAnswerBXSize = width * 0.275;
      QuestionAnswerBYSize = height * 0.2;
    //QuestionAnswerBCorrect
      QuestionAnswerBCorrectX = width * 0.82;
      QuestionAnswerBCorrectY = height * 0.55 - width * 0.03 / 2;
      QuestionAnswerBCorrectXSize = width * 0.03;
      QuestionAnswerBCorrectYSize = width * 0.03;
    //QuestionAnswerC
      QuestionAnswerCX = width * 0.2;
      QuestionAnswerCY = height * 0.7;
      QuestionAnswerCXSize = width * 0.275;
      QuestionAnswerCYSize = height * 0.2;
    //QuestionAnswerCCorrect
      QuestionAnswerCCorrectX = width * 0.15;
      QuestionAnswerCCorrectY = height * 0.8 - width * 0.03 / 2;
      QuestionAnswerCCorrectXSize = width * 0.03;
      QuestionAnswerCCorrectYSize = width * 0.03;
    //QuestionAnswerD
      QuestionAnswerDX = width * 0.525;
      QuestionAnswerDY = height * 0.7;
      QuestionAnswerDXSize = width * 0.275;
      QuestionAnswerDYSize = height * 0.2;
    //QuestionAnswerDCorrect
      QuestionAnswerDCorrectX = width * 0.82;
      QuestionAnswerDCorrectY = height * 0.8 - width * 0.03 / 2;
      QuestionAnswerDCorrectXSize = width * 0.03;
      QuestionAnswerDCorrectYSize = width * 0.03;
    //Play
      PlayX = width * 0.2;
      PlayY = height * 0.2;
      PlayXSize = width * 0.6;
      PlayYSize = height * 0.2;
    //Edit Quiz
      EditQuizX = width * 0.2;
      EditQuizY = height * 0.45;
      EditQuizXSize = width * 0.28;
      EditQuizYSize = height * 0.2;
    //Edit Name
      EditNameX = width * 0.52;
      EditNameY = height * 0.45;
      EditNameXSize = width * 0.28;
      EditNameYSize = height * 0.2;
    //Next/New Question
      NextX = width * 0.88;
      NextY = height * 0.9;
      NextXSize = width * 0.045;
      NextYSize = width * 0.025;
    //Previous Question
      PreviousX = width * 0.82;
      PreviousY = height * 0.9;
      PreviousXSize = width * 0.045;
      PreviousYSize = width * 0.025;
    //Difficulty
      DifficultyX = width * 0.8775;
      DifficultyY = height * 0.135;
      DifficultyXSize = width * 0.045;
      DifficultyYSize = width * 0.025;
    //Delete Question
      DeleteQuestionX = width * 0.05;
      DeleteQuestionY = height * 0.9;
      DeleteQuestionXSize = width * 0.06;
      DeleteQuestionYSize = width * 0.025;
    //Delete Quiz
      DeleteQuizX = width * 0.2;
      DeleteQuizY = height * 0.7;
      DeleteQuizXSize = width * 0.6;
      DeleteQuizYSize = width * 0.1;
    //Delete Question Box
      DeleteBoxX = width * 0.3;
      DeleteBoxY = height * 0.3;
      DeleteBoxXSize = width * 0.4;
      DeleteBoxYSize = height * 0.4;
    //Delete Question Box Yes
      DeleteBoxYesX = width * 0.4;
      DeleteBoxYesY = height * 0.6;
      DeleteBoxYesXSize = width * 0.06;
      DeleteBoxYesYSize = width * 0.025;
    //Delete Question Box No
      DeleteBoxNoX = width * 0.54;
      DeleteBoxNoY = height * 0.6;
      DeleteBoxNoXSize = width * 0.06;
      DeleteBoxNoYSize = width * 0.025;
    //Delete Question Box Ok
      DeleteBoxOkX = width * 0.47;
      DeleteBoxOkY = height * 0.6;
      DeleteBoxOkXSize = width * 0.06;
      DeleteBoxOkYSize = width * 0.025;
    //Quiz Done Amount Correct
      QuizDoneAmountCorrectX = width * 0.5;
      QuizDoneAmountCorrectY = height * 0.3;
    //Quiz Done Score
      QuizDoneScoreX = width * 0.5;
      QuizDoneScoreY = height * 0.5;
    //Quiz Done Menu
      QuizDoneMenuX = width * 0.4;
      QuizDoneMenuY = height * 0.7;
      QuizDoneMenuXSize = width * 0.2;
      QuizDoneMenuYSize = height * 0.1;
    //Reload Button
      ReloadX = width * 0.845;
      ReloadY = height * 0.9;
      ReloadXSize = width * 0.025;
      ReloadYSize = width * 0.025;
    //Settings Button
      SettingsX = width * 0.815;
      SettingsY = height * 0.9;
      SettingsXSize = width * 0.025;
      SettingsYSize = width * 0.025;
    //Settings Box
      SettingsBoxX = width * 0.6;
      SettingsBoxY = height * 0.65;
      SettingsBoxXSize = width * 0.3;
      SettingsBoxYSize = height * 0.23;
    //Settings Score
      SettingsScoreX = width * 0.65;
      SettingsScoreY = height * 0.67;
      SettingsScoreXSize = width * 0.2;
      SettingsScoreYSize = height * 0.04;
    //Settings Difficulty
      SettingsDifficultyX = width * 0.65;
      SettingsDifficultyY = height * 0.72;
      SettingsDifficultyXSize = width * 0.2;
      SettingsDifficultyYSize = height * 0.04;
    //Settings Combo
      SettingsComboX = width * 0.65;
      SettingsComboY = height * 0.77;
      SettingsComboXSize = width * 0.2;
      SettingsComboYSize = height * 0.04;
    //Settings ShowCorrect
      SettingsShowCorrectX = width * 0.65;
      SettingsShowCorrectY = height * 0.82;
      SettingsShowCorrectXSize = width * 0.2;
      SettingsShowCorrectYSize = height * 0.04;
    
    StrokeWeight = width / 400;
  } //End of void
  //Exit
    float ExitX;
    float ExitY;
    float ExitXSize;
    float ExitYSize;
  //New
    float NewX;
    float NewY;
    float NewXSize;
    float NewYSize;
  //Return
    float ReturnX;
    float ReturnY;
    float ReturnXSize;
    float ReturnYSize;
  //Submit
    float SubmitX;
    float SubmitY;
    float SubmitXSize;
    float SubmitYSize;
  //NewQuizName
    float NewQuizNameX;
    float NewQuizNameY;
    float NewQuizNameXSize;
    float NewQuizNameYSize;
  //FirstLine
    float FirstLineX;
    float FirstLineY;
    float FirstLineXSize;
    float FirstLineYSize;
  //SecondLine
    float SecondLineX;
    float SecondLineY;
    float SecondLineXSize;
    float SecondLineYSize;
  //ThirdLine
    float ThirdLineX;
    float ThirdLineY;
    float ThirdLineXSize;
    float ThirdLineYSize;
  //HColor
    float HColorX;
    float HColorY;
    float HColorXSize;
    float HColorYSize;
  //HColorSelect
    float HColorSelectX;
    float HColorSelectY;
    float HColorSelectXSize;
    float HColorSelectYSize;
  //SColor
    float SColorX;
    float SColorY;
    float SColorXSize;
    float SColorYSize;
  //BColor
    float BColorX;
    float BColorY;
    float BColorXSize;
    float BColorYSize;
  //ColorDisplay
    float ColorDisplayX;
    float ColorDisplayY;
    float ColorDisplayXSize;
    float ColorDisplayYSize;
  //QuestionQuestion
    float QuestionQuestionX;
    float QuestionQuestionY;
    float QuestionQuestionXSize;
    float QuestionQuestionYSize;
  //QuestionAnswerA
    float QuestionAnswerAX;
    float QuestionAnswerAY;
    float QuestionAnswerAXSize;
    float QuestionAnswerAYSize;
  //QuestionAnswerACorrect
    float QuestionAnswerACorrectX;
    float QuestionAnswerACorrectY;
    float QuestionAnswerACorrectXSize;
    float QuestionAnswerACorrectYSize;
  //QuestionAnswerB
    float QuestionAnswerBX;
    float QuestionAnswerBY;
    float QuestionAnswerBXSize;
    float QuestionAnswerBYSize;
  //QuestionAnswerBCorrect
    float QuestionAnswerBCorrectX;
    float QuestionAnswerBCorrectY;
    float QuestionAnswerBCorrectXSize;
    float QuestionAnswerBCorrectYSize;
  //QuestionAnswerC
    float QuestionAnswerCX;
    float QuestionAnswerCY;
    float QuestionAnswerCXSize;
    float QuestionAnswerCYSize;
  //QuestionAnswerCCorrect
    float QuestionAnswerCCorrectX;
    float QuestionAnswerCCorrectY;
    float QuestionAnswerCCorrectXSize;
    float QuestionAnswerCCorrectYSize;
  //QuestionAnswerD
    float QuestionAnswerDX;
    float QuestionAnswerDY;
    float QuestionAnswerDXSize;
    float QuestionAnswerDYSize;
  //QuestionAnswerDCorrect
    float QuestionAnswerDCorrectX;
    float QuestionAnswerDCorrectY;
    float QuestionAnswerDCorrectXSize;
    float QuestionAnswerDCorrectYSize;
  //Play
    float PlayX;
    float PlayY;
    float PlayXSize;
    float PlayYSize;
  //Edit Quiz
    float EditQuizX;
    float EditQuizY;
    float EditQuizXSize;
    float EditQuizYSize;
  //Edit Name
    float EditNameX;
    float EditNameY;
    float EditNameXSize;
    float EditNameYSize;
  //Next/New Question
    float NextX;
    float NextY;
    float NextXSize;
    float NextYSize;
  //Previous Question
    float PreviousX;
    float PreviousY;
    float PreviousXSize;
    float PreviousYSize;
  //Difficulty
    float DifficultyX;
    float DifficultyY;
    float DifficultyXSize;
    float DifficultyYSize;
  //Delete Question
    float DeleteQuestionX;
    float DeleteQuestionY;
    float DeleteQuestionXSize;
    float DeleteQuestionYSize;
  //Delete Quiz
    float DeleteQuizX;
    float DeleteQuizY;
    float DeleteQuizXSize;
    float DeleteQuizYSize;
  //Delete Question Box
    float DeleteBoxX;
    float DeleteBoxY;
    float DeleteBoxXSize;
    float DeleteBoxYSize;
  //Delete Question Box Yes
    float DeleteBoxYesX;
    float DeleteBoxYesY;
    float DeleteBoxYesXSize;
    float DeleteBoxYesYSize;
  //Delete Question Box No
    float DeleteBoxNoX;
    float DeleteBoxNoY;
    float DeleteBoxNoXSize;
    float DeleteBoxNoYSize;
  //Delete Question Box Ok
    float DeleteBoxOkX;
    float DeleteBoxOkY;
    float DeleteBoxOkXSize;
    float DeleteBoxOkYSize;
  //Quiz Done Amount Correct
    float QuizDoneAmountCorrectX;
    float QuizDoneAmountCorrectY;
  //Quiz Done Score
    float QuizDoneScoreX;
    float QuizDoneScoreY;
  //Quiz Done Menu
    float QuizDoneMenuX;
    float QuizDoneMenuY;
    float QuizDoneMenuXSize;
    float QuizDoneMenuYSize;
  //Reload Button
    float ReloadX;
    float ReloadY;
    float ReloadXSize;
    float ReloadYSize;
  //Settings Button
    float SettingsX;
    float SettingsY;
    float SettingsXSize;
    float SettingsYSize;
  //Settings Box
    float SettingsBoxX;
    float SettingsBoxY;
    float SettingsBoxXSize;
    float SettingsBoxYSize;
  //Settings Score
    float SettingsScoreX;
    float SettingsScoreY;
    float SettingsScoreXSize;
    float SettingsScoreYSize;
  //Settings Difficulty
    float SettingsDifficultyX;
    float SettingsDifficultyY;
    float SettingsDifficultyXSize;
    float SettingsDifficultyYSize;
  //Settings Combo
    float SettingsComboX;
    float SettingsComboY;
    float SettingsComboXSize;
    float SettingsComboYSize;
  //Settings ShowCorrect
    float SettingsShowCorrectX;
    float SettingsShowCorrectY;
    float SettingsShowCorrectXSize;
    float SettingsShowCorrectYSize;


//QuizData
  String[] QuizFileName;
  String[] QuizFirstLine;
  String[] QuizSecondLine;
  String[] QuizThirdLine;
  int[] QuizHColor;
  int[] QuizSColor;
  int[] QuizBColor;
  


//int
  int TimerQuestion = 1;
  int QuestionNumber;
  int Combo = 0;
  int TestAmount;
  int NewQuizColorInt;
  int HColorEx = 360;
  int SColorEx = 100;
  int BColorEx = 100;
  int tab = 0;
  int CurrectAmount = 0;
  int QuestionClassesTem = 1;


//float
  float TextSize;
  float Score;
  float QuizMenuWhiteSpace = 1.3;  //Amount of white space between quiz banners on MainMenu: RectYSize * (amount)
  float MouseWheel = 0;
  float MouseWheelMax;
  float MouseWheelSpeed = 4;        //Can't be below 1!! How slow the speed is: 1 / (amount)
  float StrokeWeight;
  


//String
  String Screen = "MainMenu";
  String[] FileName;
  //CreateQuiz
    String NewQuizName = "";
    String NewQuizFirstLine = "";
    String NewQuizSecondLine = "";
    String NewQuizThirdLine = "";
    String NewQuizNameTem = "Filename";
    String NewQuizFirstLineTem = "Name: Math";
    String NewQuizSecondLineTem = "Theme: Vectors in 3D";
    String NewQuizThirdLineTem = "Difficulty: Hard";
    String NewQuizHColorString = "";
    String NewQuizSColorString = "";
    String NewQuizBColorString = "";
    String NewQuizHColorStringTem = "360";
    String NewQuizSColorStringTem = "100";
    String NewQuizBColorStringTem = "100";
  //EditQuiz
    String EditQuiz;


//class
  QuizClass[] QuizClasses;
  QuestionClass[] QuestionClasses;
  QuizScrollbar QSM, QSQ;


//boolean
  //CreateQuiz
    boolean NewQuizSubmit = false;
    boolean ShowQuizNameError = false;
    boolean WriteNewQuizName = false;
    boolean WriteFirstLine = false;
    boolean WriteSecondLine = false;
    boolean WriteThirdLine = false;
    boolean WriteHColor = false;
    boolean WriteSColor = false;
    boolean WriteBColor = false;
  boolean AddedQuiz = false;
  //EditQuiz
    boolean WriteQuestionQuestion = false;
    boolean WriteQuestionAnswerA = false;
    boolean WriteQuestionAnswerB = false;
    boolean WriteQuestionAnswerC = false;
    boolean WriteQuestionAnswerD = false;
    boolean SaveQuestionData = false;
    boolean DeleteQuestion = false;
    boolean DeleteQuiz = false;
    boolean SureDelete = false;
    boolean WriteDifficulty = false;
    boolean CorrectData = false;
  boolean SettingsActive = false;
  boolean ShowCorrectActive = true;
  boolean ScoreActive = true;
  boolean DifficultyActive = true;
  boolean ComboActive = true;


//XML
  XML QuizXML;
  XML Data;


//File
  File dir;
  File[] Quiz;


//PrintWriter
  PrintWriter WriteQuizFile;
  
