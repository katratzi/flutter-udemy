import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              foregroundImage: AssetImage('images/fizzgig.jpg'),
            ),
            Text(
              'R. Clifford',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  Text(
                    '00 123 1234',
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.5,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  Text(
                    'ric_clifford@hotmail.com',
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.5,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
