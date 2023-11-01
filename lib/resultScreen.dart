import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questionSummary/questionSummary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummerData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body
      summary.add(
        {
          'questionIndex': i,
          'question': questions[i].text,
          'correctAnswer': questions[i].answers[0],
          'userAnswer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummerData();
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectQuestions = summaryData.where((data) {
      return data['userAnswer'] == data['correctAnswer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You answered $numberOfCorrectQuestions out of $numberOfTotalQuestions questions correctly!"),
          SizedBox(height: 30),
          QuestionSummary(summaryData),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(12),
              backgroundColor: Color(0xff693a94),
              // shadowColor: Color(0xFF8E24AA),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onRestart,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Restart quiz",
                  style: TextStyle(
                      fontSize: 24, color: Color.fromARGB(150, 255, 255, 255)),
                ),
                SizedBox(width: 9),
                Icon(Icons.restart_alt),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
