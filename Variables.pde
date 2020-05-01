//Buttons
  void Button(){
    //Exit
      ExitX = width * 0.94;
      ExitY = height * 0.9;
      ExitXSize = width * 0.025;
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
  int SColorEx = 360;
  int BColorEx = 360;


//float
  float TextSize;
  float Score;
  float QuizMenuWhiteSpace = 1.3;  //Amount of white space between quiz banners on MainMenu: RectYSize * (amount)
  float MouseWheel = 0;
  float MouseWheelMax;
  float MouseWheelSpeed = 4;        //Can't be below 1!! How slow the speed is: 1 / (amount)
  


//String
  String Screen = "MainMenu";
  String[] FileName;
  //CreateQuiz
    String NewQuizName = "";
    String NewQuizFirstLine = "";
    String NewQuizSecondLine = "";
    String NewQuizThirdLine = "";
    String NewQuizHColorString = "360";
    String NewQuizSColorString = "360";
    String NewQuizBColorString = "360";


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


//XML
  XML QuizXML;
  XML Data;


//File
  File dir;
  File[] Quiz;


//PrintWriter
  PrintWriter WriteQuizFile;
  
