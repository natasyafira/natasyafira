import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBerwarna(
                      color: Colors.blue,
                      iconData: Icons.favorite,
                      text: 'Kotak 1'),
                  KotakBerwarna(
                      color: Colors.purpleAccent,
                      iconData: Icons.favorite,
                      text: 'Kotak 2'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBerwarna(
                      color: Colors.green,
                      iconData: Icons.favorite,
                      text: 'Kotak 3'),
                  KotakBerwarna(
                      color: Colors.yellow,
                      iconData: Icons.favorite,
                      text: 'Kotak 4'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBerwarna extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String text;

  KotakBerwarna(
      {required this.color, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
