File dir;
File[] Quiz;
String[] FileName;
int TestAmount;
int i;
XML QuizXML;


void LoadFiles(){
  dir = new File(sketchPath("Data/Tests"));
  Quiz = dir.listFiles();
  TestAmount = Quiz.length;
  FileName = new String[Quiz.length];
  QuizClasses = new QuizClass[Quiz.length];
  for (int i = 0; i < Quiz.length; i++){
    QuizClasses[i] = new QuizClass();
    QuizClasses[i].Name = Quiz[i].getName();
    FileName[i] = Quiz[i].getName();
    QuizClasses[i].Name = QuizClasses[i].Name.replaceFirst(".xml","");
  }
}

void LoadData(){
  XML[] QuestionsData = QuizXML.getChildren("Questions/Question");
  QuestionClasses = new QuestionClass[QuestionsData.length];
  println(QuestionsData.length);
}
