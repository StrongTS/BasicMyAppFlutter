import 'package:flutter/material.dart';

class MyPosi extends StatelessWidget {
  const MyPosi({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 15.0,
          right: 20.0,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
          ),
        ),
        Positioned(
          left: 1.0,
          bottom: -5,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
          ),
        )
      ],
    );
  }
}
