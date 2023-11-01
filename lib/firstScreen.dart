import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {Key? key});

  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 300,
            width: 350,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     height: 300,
          //     width: 350,
          //   ),
          // ),
          SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.raleway(
                color: Color.fromARGB(150, 255, 255, 255),
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40),
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
            onPressed: startQuiz,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Start quiz",
                  style: TextStyle(
                      fontSize: 24, color: Color.fromARGB(150, 255, 255, 255)),
                ),
                SizedBox(width: 9),
                Icon(Icons.arrow_right_alt_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
