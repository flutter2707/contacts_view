import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  bool showInternalWindow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internal Window Example'),
        ),
        body: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showInternalWindow = !showInternalWindow;
                  });
                },
                child: Text('Enter'),
              ),
            ),
            Visibility(
              visible: showInternalWindow,
              child: Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text('enter new window'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}