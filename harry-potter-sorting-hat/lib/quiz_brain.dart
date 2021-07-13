import 'package:quizzler/questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    new Question('e verdade que a casa do harry e grifnorria?', true),
    new Question('e verdade que a casa do harry e sonserina?', false),
    new Question('e verdade que a harry beijou hermione?', false),
    new Question('a cor da grifinoria e vermelho e amarelo', false),
    new Question('quarto filme da saga chama harry porra', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }

}