// ignore_for_file: unused_import, duplicate_import, unused_label, dead_code, unused_local_variable, avoid_web_libraries_in_flutter


import 'package:flutter/material.dart';

import 'gratitude.dart';

import 'fly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigation'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => _openPageAbout(
                context: context,
                  fullscreenDialog: true,
              
              ),
            ),
        ],
     ),
    );
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Grateful for: $_howAreYou', style: const TextStyle(fontSize: 32.0),),
        ),
      );
    floatingActionButton: FloatingActionButton(onPressed: () => _openPageGratitude(context:context),
    tooltip: 'About',
    child: const Icon(Icons.sentiment_satisfied),
    );
  }
  
  _openPageAbout({required BuildContext context, required bool fullscreenDialog}) {}
}

_openPageGratitude({required BuildContext context}) {
}

class _howAreYou {
}
void _openPageAbout({required BuildContext context, bool fullscreenDialog = false}) {
 Navigator.push(
  context,
  MaterialPageRoute(
    fullscreenDialog: fullscreenDialog,
    builder: (context) => About(),
  ),
 );
}

About() {
}
class about extends StatelessWidget{
   @override
    Widget build(BuildContext context){
      return Scaffold(
 appBar: AppBar(
 title: Text('About'),
 ),
 body: SafeArea(
 child: Padding(
 padding: const EdgeInsets.all(16.0),
 child: Text('About Page'),
 ),
 ),
 );
 }
}
void o_openPageGratitude(
 {required BuildContext context, bool fullscreenDialog = false}) async {
 final String _gratitudeResponse = await Navigator.push(
 context,
 MaterialPageRoute(
 fullscreenDialog: fullscreenDialog,
 builder: (context) => Gratitude(
 radioGroupValue: -1,
 ),
),
 );
 var _how_are_You = _gratitudeResponse;
}

Gratitude({required int radioGroupValue}) {
}

