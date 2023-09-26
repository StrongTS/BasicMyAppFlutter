import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.cyan,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                'Stack',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
