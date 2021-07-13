class Question {
  String _question;

  String get question => _question;

  set question(String question) {
    _question = question;
  }
  bool _answer;

  bool get answer => _answer;

  set answer(bool answer) {
    _answer = answer;
  }

  Question(String q, bool a) {
    answer = a;
    question = q;
  }
}