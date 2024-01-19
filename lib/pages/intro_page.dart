import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(children: [
          // logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              'lib/images/nikeLogo.png',
              height: 240,
            ),
          ),

          const SizedBox(height: 48),

          // title
          const Text(
            'Just Do It',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(
            height: 24,
          ),
          // sub title
          const Text(
            'Brand new sneakers and custom kicks made with premium qaulity',
            style: TextStyle(
              fontSize: 16,
            ),
          )

          // start now btn
        ]),
      ),
    );
  }
}
