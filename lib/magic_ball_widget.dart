import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';

class MagicBallWidget extends StatefulWidget {
  @override
  State<MagicBallWidget> createState() {
    return _MagicBallState();
  }
}

class _MagicBallState extends State<MagicBallWidget> {
  var ballImage = "assets/images/ball_images/1.png";
  void shake() {
    ballImage = "assets/images/ball_images/2.png";
    print("Shake the magic ball!");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("Ask a question..."),
        const SizedBox(height: 50),
        Image.asset("assets/images/ball_images/1.png", width: 300),
        const SizedBox(height: 30),
        TextButton(
          onPressed: shake,
          child: const Text(
            "SHAKE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}
