import 'package:extensions_example/extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Extensions Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 212, 212),
      appBar: AppBar(
        title: const Text('Flutter Extensions - Mehmetali ÖZSERÇE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24),
            )
            .padAll(16)
            .withBorder(color: Colors.blue, width: 2)
            .withShadow(color: Colors.green, blurRadius: 8)
            .rotate(15)
            .scale(1.2),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Press Me! - Tıkla Bana!'),
            )
            .marginSymmetric(vertical: 10, horizontal: 20)
            .withBackgroundColor(Colors.green)
          ],
        ),
      ),
    );
  }
}