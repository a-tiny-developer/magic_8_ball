import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Ask Me Anything'),
      ),
      body: const Center(
        child: Expanded(
          child: Ball(),
        ),
      ),
    );
  }
}
