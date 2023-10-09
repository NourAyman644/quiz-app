import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/question_model.dart';
import '../view/results.dart';

class QuizController extends GetxController {
  List<QuestionModel> quiz = question;
  int ind = 0;
  void changeIndex() {
    if (ind < quiz.length - 1) {
      ind++;
    } else {
      Get.to(Results());
    }
    update();
  }

  void Reset() {
    ind = 0;
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
    id: 6,
    correct: 'Sunlight hitting different parts of the Moon',
    question: ' What causes the phases of the Moon?',
    answers: [
      'Shadows from Earth',
      'Changes in Moon\'s color',
      'Changes in Moon\'s size',
      'Sunlight hitting different parts of the Moon',
    ],
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
