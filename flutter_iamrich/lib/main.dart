import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// The main function is a starting point for our flutter apps
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('I Am Rich'),
        ),
        body: Center(
          child: Image(
            // image: NetworkImage('https://www.icypath.com/tron.jpg'),
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
