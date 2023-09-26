import 'package:flutter/material.dart';

class MyCon extends StatefulWidget {
  @override
  _MyConState createState() => _MyConState();
}

class _MyConState extends State<MyCon> {
  var _opacity = 1.0;
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _blurRadius = 0.0;
  var _size = 1.0;
  var _borderRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment(-0, -0.9),
          child: Container(
            width: _size,
            height: _size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: Colors.grey.shade100.withOpacity(_opacity),
              borderRadius: BorderRadius.circular(_borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(_xOffset, _yOffset),
                  blurRadius: _blurRadius,
                  spreadRadius: _opacity,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-_xOffset, -_yOffset),
                  blurRadius: _blurRadius,
                  spreadRadius: _opacity,
                ),
              ],
            ),
            child: Text(
              'Container',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Text("spreadRadius"),
                Slider(
                  value: _opacity,
                  min: 0.0,
                  max: 1.0,
                  onChanged: (newValue) =>
                      {setState(() => _opacity = newValue)},
                ),
                Text("xOffset"),
                Slider(
                  value: _xOffset,
                  min: -100,
                  max: 100,
                  onChanged: (newValue) =>
                      {setState(() => _xOffset = newValue)},
                ),
                Text("yOffset"),
                Slider(
                  value: _yOffset,
                  min: -100,
                  max: 100,
                  onChanged: (newValue) =>
                      {setState(() => _yOffset = newValue)},
                ),
                Text("BlurRadius"),
                Slider(
                  value: _blurRadius,
                  min: 0,
                  max: 100,
                  onChanged: (newValue) =>
                      {setState(() => _blurRadius = newValue)},
                ),
                Text("Size"),
                Slider(
                  value: _size,
                  min: 0,
                  max: 250.0,
                  onChanged: (newValue) => {
                    setState(() => _size = newValue),
                  },
                ),
                Text("BorderRadius"),
                Slider(
                  value: _borderRadius,
                  min: 0,
                  max: 200,
                  onChanged: (newValue) => {
                    setState(() => _borderRadius = newValue),
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}



// class MyCon extends StatelessWidget {
//   const MyCon({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         alignment: Alignment.center,
//         width: 150,
//         height: 150,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.grey[300],
//           // borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade500,
//               offset: Offset(4.0, 4.0),
//               blurRadius: 15.0,
//               spreadRadius: 1.0,
//             ),
//             BoxShadow(
//               color: Colors.white,
//               offset: Offset(-4.0, -4.0),
//               blurRadius: 15.0,
//               spreadRadius: 1.0,
//             ),
//           ],
//         ),
//         child: Text(
//           'Mike',
//           style: TextStyle(
//             color: Colors.grey[700],
//             fontSize: 30,
//           ),
//         ),
//       ),
//     );
//   }
// }
