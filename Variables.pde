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
      NewQuizNameX = width * 0.3;
      NewQuizNameY = height * 0.3;
      NewQuizNameXSize = width * 0.4;
      NewQuizNameYSize = height * 0.1;
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


//QuizData
  String[] QuizName;
  String[] QuizFirstLine;
  String[] QuizSecondLine;
  String[] QuizThirdLine;
  float[] QuizColor;
  


//int
  int TimerQuestion = 1;
  int QuestionNumber;
  int Combo = 0;
  int TestAmount;
  int NewQuizColorInt;


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
    String NewQuizColorString = "";
    String NewQuizFirstLine = "";
    String NewQuizSecondLine = "";
    String NewQuizThirdLine = "";


//class
  QuizClass[] QuizClasses;
  QuestionClass[] QuestionClasses;
  QuizScrollbar QSM, QSQ;


//boolean
  //CreateQuiz
    boolean NewQuizSubmit = false;
    boolean ShowQuizNameError = false;
    boolean WriteNewQuizName = false;


//XML
  XML QuizXML;
  XML Data;


//File
  File dir;
  File[] Quiz;


//PrintWriter
  PrintWriter WriteQuizFile;
  
