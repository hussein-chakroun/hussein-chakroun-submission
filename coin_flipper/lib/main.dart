import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int heads = 0;
  int tails = 0;
  final Random random = Random();

  void flipCoin() {
    setState(() {
      if (random.nextInt(2) == 0) {
        heads++;
      } else {
        tails++;
      }
    });
  }

  void resetCounts() {
    setState(() {
      heads = 0;
      tails = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Coin Flipper'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Heads: $heads'),
            SizedBox(height: 30),
            Text('Tails: $tails'),
            ElevatedButton(onPressed: flipCoin, child: const Text('Flip Coin')),
            ElevatedButton(onPressed: resetCounts, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
