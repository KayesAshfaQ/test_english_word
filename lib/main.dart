import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  String englishWords() {
    String word = '';

    for (int i = 0; i < all.length; i++) {
      word = word + '\n' + "${i + 1}. " + all[i];
    }
    return word;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('English Words'),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
            child: Text(englishWords()),
          ),
        ),
      ),
    );
  }
}
