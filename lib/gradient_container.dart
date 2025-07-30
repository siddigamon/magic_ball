//clases pascal case (GradientContainer)
// variable names will be camel case (bottomCenter)
//naming conventions for files is snake case (gradient_container.dart)
import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 214, 8, 251),
            Color.fromARGB(210, 224, 216, 162),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
