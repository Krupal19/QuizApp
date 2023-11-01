import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/firstScreen.dart';
import 'package:quiz_app/questionScreen.dart';
import 'package:quiz_app/resultScreen.dart';
import 'package:quiz_app/theme.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "first_screen";

  // @override
  // void initState() {
  //   activeScreen = firstScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "QuestionsScreen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'QuestionScreen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidget =  activeScreen == "first_screen"
    //     ? firstScreen(switchScreen)
    //     : QuestionsScreen();

    Widget screenWidget = FirstScreen(switchScreen);

    if (activeScreen == "QuestionsScreen") {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz);
    }

    ///// if statement in list use

    // final myList = [
    //   1, 2,
    //   if (screenWidget == 'QuestionScreen')
    //     3
    //   else
    //     4
    // ];

    //// Ternary
    // screenWidget == "QuestionScreen" ? 3 : 4;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: appTheme(
          color1: Color(0xff673ab7),
          color2: Color(0xff6a3aa5),
          color3: Color(0xff693a94),
          color4: Color(0xff673b83),
          color5: Color(0xff623c74),
          child: screenWidget,
        ),
      ),
    );
  }
}
