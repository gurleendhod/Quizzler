import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _qbank = [
    Question(
        'Small talk was developed as the first purely object programming language.',
        true),
    Question('Dennis Retchie developed Small Talk.', false),
    Question('Polymorphism can be used in C programming language.', true),
    Question(
        'Object-based languages are those languages which support the definition of classes but not the polymorphism.',
        true),
    Question('There are 3 types of polymorphism in C++.', false),
    Question(
        'Protected member of the superclass is never accessible to the subclass.',
        false),
    Question(
        'Encapsulation adds the function in a user-defined structure.', false),
    Question(
        'The principle of abstraction is used to avoid the code duplicacy.',
        true),
    Question('Data items in a class must always be private.', false),
    Question(
        ' Java, unlike other object-oriented programming languages like C++, does not allow multiple inheritance.',
        true),
    Question('Abstract class cannot create its own object.', true),
    Question('Class members are public by default.', false),
    Question('Functions cannot return class objects.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _qbank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _qbank[_questionNumber].question;
  }

  bool getQuestionAnswer() {
    return _qbank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _qbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
