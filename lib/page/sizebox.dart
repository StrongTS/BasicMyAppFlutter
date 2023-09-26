import 'package:flutter/material.dart';

class MySizeBox extends StatefulWidget {
  @override
  __SizeBoxState createState() => __SizeBoxState();
}

class __SizeBoxState extends State<MySizeBox> {
  var _size = 50.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Center(
              child: SizedBox(
                width: _size,
                height: _size,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'SIZEBOX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Slider(
              value: _size,
              min: 0.0,
              max: 500.0,
              onChanged: (newValue) => {
                setState(() => _size = newValue),
              },
            ),
          )
        ],
      ),
    );
  }
}
