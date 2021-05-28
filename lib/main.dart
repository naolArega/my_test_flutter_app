import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('An Actual Flutter App'),
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
      ),
    )
  );
}
