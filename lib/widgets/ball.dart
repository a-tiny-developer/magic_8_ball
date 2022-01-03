import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  final random = Random();
  late int ballNumber;
  late List<Image> images;

  @override
  void initState() {
    super.initState();
    ballNumber = random.nextInt(5);
    images = [
      Image.asset("assets/images/ball1.png"),
      Image.asset("assets/images/ball2.png"),
      Image.asset("assets/images/ball3.png"),
      Image.asset("assets/images/ball4.png"),
      Image.asset("assets/images/ball5.png"),
    ];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var image in images) {
      precacheImage(image.image, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ballNumber = random.nextInt(5);
        });
      },
      child: Image(
        image: images[ballNumber].image,
      ),
    );
  }
}
