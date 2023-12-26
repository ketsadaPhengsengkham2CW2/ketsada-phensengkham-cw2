// gratitude.dart
import 'package:flutter/material.dart';
class Gratitude extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Center(
 child: Icon(
 Icons.sentiment_satisfied,
size: 120.0,
 color: Colors.lightGreen,
 ),
 ),
 );
 }
}
// reminders.dart
class Reminders extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Center(
 child: Icon(
 Icons.access_alarm,
 size: 120.0,
 color: Colors.purple,
 ),
 ),
 );
 }
}