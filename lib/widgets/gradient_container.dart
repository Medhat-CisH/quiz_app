import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Color color_1;
  final Color color_2;

  const GradientContainer({super.key,
    required this.child ,
    this.color_1 = const Color(0xFFC38154) ,
    this.color_2  =  const Color(0xFF884A39),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color_1,
            color_2
          ],
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}