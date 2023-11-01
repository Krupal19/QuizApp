import 'package:flutter/material.dart';
import 'package:quiz_app/questionSummary/summaryItem.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Column(
        children: summaryData.map((data) {
          return SummaryItem(data);
        }).toList(),
      ),
    );
  }
}
