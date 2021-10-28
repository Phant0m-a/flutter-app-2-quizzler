import 'package:quizzler/question.dart';

class QuizMain {
  int _questionNumber = 0;

  List<Question> _questionsList = [
    Question('Elon Musk is the CEO of SpaceX', true),
    Question('Mark Zuckerberg is the CEO of Tesla', false),
    Question('Sunder Pachai is the CEO of Google', true),
    Question('NASA is a private Company', false),
    Question('Bill Gates is the Creator of Windows', true),
  ];

  // next question
  void nextQuestion() {
    if (_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  // get QuestionText
  String getQuestion() {
    return _questionsList[_questionNumber].questionText;
  }

  // get correctAnswer
  bool getCorrectAnswer() {
    return _questionsList[_questionNumber].questionAnswer;
  }

  bool finished() {
    if (_questionNumber >= _questionsList.length - 1) {
      // _questionNumber = 0;
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
