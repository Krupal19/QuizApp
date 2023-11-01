import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  /// Below it's named argument because it's not compulsory below use a methods or function
  // answerButton(this.answerText, this.onTap, {super.key});

  ///Below name argument in put in curly brackets it's required variable use in methods/ function
  answerButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            backgroundColor: Color(0xff48326e),
            // shadowColor: Color(0xFF8E24AA),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundColor: Colors.white),
        onPressed: onTap,
        child: Text(answerText),
      ),
    );
  }
}
