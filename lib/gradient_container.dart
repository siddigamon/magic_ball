//clases pascal case (GradientContainer)
// variable names will be camel case (bottomCenter)
//naming conventions for files is snake case (gradient_container.dart)
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';
import 'package:magic_ball/styled_text.dart';
// import 'package:magic_ball/styled_text.dart';

//dart is a type safe language, which means that
// it will not allow you to set a value of the wrong type.
//this uses type inferencing
// var alignmentTopLeft - data type is dynamic (lowest for the dart) it can be anything

const Alignment alignmentTopLeft = Alignment.topLeft;
//type annotation. explicitly stating the type of the variable
const alignmentBottomRight = Alignment.bottomRight;
//type inference. base on initial value, dart infers the type

List<String> listOfWords = ["Hello", "World"];
List<int> listOfNumbers = [1, 2, 3, 4, 5];

const topLeft = Alignment.topLeft;
//constant variable, values are actually replaced during compile time,
//values should already be known like literals

final bottomRight = Alignment.bottomRight;
//final variable, can only be set once, during runtime

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 214, 8, 251),
            Color.fromARGB(210, 224, 216, 162),
          ],
          begin: alignmentTopLeft,
          end: alignmentBottomRight,
        ),
      ),
      child: Center(
        child: MagicBallWidget(),
      ),
    );
  }
}
