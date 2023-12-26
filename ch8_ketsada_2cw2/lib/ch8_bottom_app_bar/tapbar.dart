// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'birthdays.dart';
import 'gratitude.dart';
import 'reminders.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar'),
      ),
      body: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black54,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays',
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude',
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders',
            ),
          ],
        ),
      ),
    );
  }
}
