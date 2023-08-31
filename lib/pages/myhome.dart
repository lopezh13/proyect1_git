import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  String get title => null;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
double _volume = 0.0;
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('Volume : $_volume'),
          ],
        ),
      ),
    );
  }
}