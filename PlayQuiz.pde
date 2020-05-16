void PlayQuiz(){
  if (QuestionNumber < QuestionClasses.length){
    QuestionClasses[QuestionNumber].DisplayQuestion();
    QuestionClasses[QuestionNumber].PlayQuestion();
  }
  if (QuestionNumber == QuestionClasses.length){
    fill(201,20,89); //farve 9
    textSize(width / 20);
    text(CurrectAmount + " Out Of " + QuestionClasses.length + " Correct", QuizDoneAmountCorrectX, QuizDoneAmountCorrectY);
    if (ScoreActive == true){
      text(floor(Score) + " Points", QuizDoneScoreX, QuizDoneScoreY);
    }
    noStroke();
    fill(219, 36, 19); //farve 3
    rect(QuizDoneMenuX, QuizDoneMenuY, QuizDoneMenuXSize, QuizDoneMenuYSize,10);
    fill(0,0,50); //farve 5
    textSize(width / 30);
    text("Menu", QuizDoneMenuX, QuizDoneMenuY - height * 0.003, QuizDoneMenuXSize, QuizDoneMenuYSize);
  }
}
