import 'package:quizzler_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Python,Kotlin y Swift usan ;', false),
    Question('Javascript y Java son el mismo lenguaje', false),
    Question('Flutter sirve para movil y web?', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }


  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}