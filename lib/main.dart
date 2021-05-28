import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'hello world',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pattaya',
                )
            ),
            Text('i am naol')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('hello world'),
        child: Text('World'),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}

