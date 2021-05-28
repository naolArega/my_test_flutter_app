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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30
                ),
                child: Text('This is a row'),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.account_circle
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.account_circle
                ),
              ),
            ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('This is a column'),
              ),
              Container(
                color: Colors.deepPurpleAccent,
                padding: EdgeInsets.all(20),
                child: Text(
                    'Item one',
                  style: TextStyle(
                    fontFamily: 'Pattaya',
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.redAccent,
                padding: EdgeInsets.all(20),
                child: Text(
                    'Item two',
                  style: TextStyle(
                    fontFamily: 'Pattaya',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
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

