import 'package:flutter/material.dart';

class MYColu extends StatelessWidget {
  const MYColu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: ListTile(
            title: Align(
              alignment: Alignment.centerRight,
              child: Text('Item 1'),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.star),
                Icon(Icons.abc),
                Icon(Icons.yard),
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Item 2'),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.star),
                Icon(Icons.abc),
                Icon(Icons.yard),
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Align(
              alignment: Alignment.center,
              child: Text('Item 3'),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.star),
                Icon(Icons.abc),
                Icon(Icons.yard),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
