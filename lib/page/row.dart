import 'package:flutter/material.dart';

class MYRow extends StatelessWidget {
  const MYRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 175, 175, 175),
            blurRadius: 5,
          ),
        ],
      ),
      child: const Row(
        children: <Widget>[
          FlutterLogo(),
          Expanded(
            child: Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
          ),
          Icon(Icons.theater_comedy_outlined),
        ],
      ),
    );
  }
}
