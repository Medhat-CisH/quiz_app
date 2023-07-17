import 'package:flutter/material.dart';
import '../widgets/gradient_container.dart';
import '../routes/start_page.dart';
import '../routes/questions_page.dart';
import '../data/questions.dart';
import '../routes/results_page.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-page';

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartPage(startQuiz: switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-page';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        //selectedAnswers = [];
        activeScreen='results-page';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-page';
    });
  }

  @override
  Widget build(BuildContext context) { 
    Widget screenWidget = StartPage(startQuiz: switchScreen,);

    if(activeScreen == 'questions-page'){
      screenWidget = QuestionsPage(onSelectAnswer: chooseAnswer
      );
    }
    if(activeScreen == 'results-page'){
      screenWidget =  ResultsPage(chosenAnswers: selectedAnswers, onRestart: restartQuiz,);
    }
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            child: screenWidget),
      ),
    );
  }
}
