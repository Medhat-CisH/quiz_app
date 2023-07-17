import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({required this.startQuiz, super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.6,
        //   child: Image.asset(
        //         'assets/images/quiz-logo.png',
        //         width: 300,
        //       ),
        // ),
        const SizedBox(
          height: 80,
        ),
         Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(fontSize: 25, color: const Color.fromARGB(255, 255, 214, 186),),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFFC38154),
              foregroundColor: Colors.white),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    );
  }
}
