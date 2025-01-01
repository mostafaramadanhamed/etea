import 'package:flutter/material.dart';

class ETeaApp extends StatelessWidget {
  const ETeaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ETea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(

        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
