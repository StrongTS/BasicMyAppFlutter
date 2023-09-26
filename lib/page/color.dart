import 'package:flutter/material.dart';

class MyColor extends StatelessWidget {
  const MyColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Color.fromARGB(25, 53, 33, 52),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            width: double.infinity,
            height: 50,
            color: Colors.green[900],
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          color: Color(0xFFFFD54F),
        ),
        Container(
          width: double.infinity,
          height: 50,
          color: Color.fromRGBO(66, 165, 245, 1.0),
        ),
      ],
    );
  }
}
