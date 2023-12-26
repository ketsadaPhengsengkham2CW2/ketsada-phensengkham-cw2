import 'package:flutter/material.dart';
class Gratitude extends StatefulWidget {
  final int radioGroupValue;

  Gratitude({required Key key, required this.radioGroupValue}) : super(key: key);

  @override
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  List<String> _gratitudeList = ['Family', 'Friends', 'Coffee'];
  late int _radioGroupValue;
  
  var radio;

  @override
  void initState() {
    super.initState();
    _radioGroupValue = widget.radioGroupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _gratitudeList[_radioGroupValue]),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: _gratitudeList.length,
            itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  Radio(
                    value: index,
                    groupValue: _radioGroupValue,
                    onChanged: radio,
                  ),
                  Text(_gratitudeList[index]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _radioOnChanged(int value) {
    setState(() {
      _radioGroupValue = value;
    });
  }
}
