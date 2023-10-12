import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/question_model.dart';
import '../view/results.dart';

class QuizController extends GetxController {
  List<QuestionModel> quiz = question;
  int ind = 0;
  int result = 0;
  bool Color = false;

  void changeIndex(index) {
    quiz[ind].answers[index] == quiz[ind].correct ? correct() : Wrong();

    // if (ind < quiz.length - 1) {
    //   ind++;
    // } else {
    //   Get.off(() => Results(
    //         result: result,
    //       ));
    // }
    update();
  }

  void Reset() {
    ind = 0;
    result = 0;
    update();
  }

  void correct() async {
    result += 10;
    Color = true;

    await Future.delayed(const Duration(milliseconds: 250));
    update();
    if (ind < quiz.length - 1) {
      ind++;
    } else {
      Get.off(() => Results(result: result));
    }
    Color = false;
    update();
  }

  void Wrong() {
    if (ind < quiz.length - 1) {
      ind++;
    } else {
      Get.off(() => Results(result: result));
    }
    update();
  }
}

List<QuestionModel> question = [
  QuestionModel(
      id: 1,
      correct: 'Jupiter',
      question: 'What is the largest planet in our solar system?',
      answers: ['Earth', 'Jupiter', 'Saturn', 'Mars']),
  QuestionModel(
    id: 2,
    correct: '1',
    question: 'How many moons does Earth have?',
    answers: ['0', '1', '2', '3'],
  ),
  QuestionModel(
    id: 3,
    correct: 'Neil Armstrong',
    question: 'Who was the first person to walk on the Moon?',
    answers: ['Buzz Aldrin', 'John Glenn', 'Yuri Gagarin', 'Neil Armstrong'],
  ),
  QuestionModel(
    id: 4,
    correct: 'Mercury',
    question: 'What is the closest planet to the Sun?',
    answers: ['Venus', 'Earth', 'Mercury', 'Mars'],
  ),
  QuestionModel(
    id: 5,
    correct: 'Mars',
    question: 'Which planet is known as the "Red Planet"?',
    answers: ['Venus', 'Earth', 'Mars', 'Jupiter'],
  ),
  QuestionModel(
    correct: 'Pluto',
    id: 6,
    question: 'Which former planet was reclassified as a dwarf planet in 2006?',
    answers: ['Mars', 'Venus', 'Pluto', 'Uranus'],
  ),
  QuestionModel(
    id: 7,
    correct: 'Saturn',
    question: 'Which planet is famous for its beautiful rings?',
    answers: ['Jupiter', 'Mars', 'Saturn', 'Uranus'],
  ),
  QuestionModel(
    id: 8,
    correct: 'Venus',
    question: 'Which planet is the hottest in the solar system?',
    answers: ['Mercury', 'Venus', 'Earth', 'Mars'],
  ),
  QuestionModel(
    id: 9,
    correct: 'Gravity',
    question:
        'What force keeps the planets in our solar system orbiting the Sun?',
    answers: ['Magnetism', 'Wind', 'Friction', 'Gravity'],
  ),
  QuestionModel(
    id: 10,
    correct: 'Uranus',
    question: 'Which planet is tipped on its side?',
    answers: ['Uranus', 'Neptune', 'Saturn', 'Jupiter'],
  ),
];
