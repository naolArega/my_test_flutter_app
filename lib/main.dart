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
    int count = 0;
    List<Widget> listOfWidgets = [];

    for(int i = 0; i < 10; i++){
      listOfWidgets.add(
        Text('Item $i')
      );
    }

    return  Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Expanded(
              child: Image.asset('assets/cyberpunk_2077.jpg')
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue[300],
              child: Text('Hello world 1')
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.red[300],
              child: Text('Hello world 2')
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.green[300],
              child: Text('Hello world 3')
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hello world');
          listOfWidgets.clear();
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}

