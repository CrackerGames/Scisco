void PlayQuiz(){
  if (QuestionNumber < QuestionClasses.length){
    QuestionClasses[QuestionNumber].DisplayQuestion();
    QuestionClasses[QuestionNumber].PlayQuestion();
  }
  if (QuestionNumber == QuestionClasses.length){
    fill(0);
    textSize(width / 20);
    text(CurrectAmount + " Out Of " + QuestionClasses.length + " Correct", QuizDoneAmountCorrectX, QuizDoneAmountCorrectY);
    if (ScoreActive == true){
      text(floor(Score) + " Points", QuizDoneScoreX, QuizDoneScoreY);
    }
    
    fill(360);
    rect(QuizDoneMenuX, QuizDoneMenuY, QuizDoneMenuXSize, QuizDoneMenuYSize);
    fill(0);
    textSize(width / 30);
    text("Menu", QuizDoneMenuX, QuizDoneMenuY - height * 0.003, QuizDoneMenuXSize, QuizDoneMenuYSize);
  }
}
