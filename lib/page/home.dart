import 'package:flutter/material.dart';
import 'package:myapp/page/image.dart';

import 'alertdialog.dart';
import 'color.dart'; //MyColor
import 'column.dart'; // MYColu
import 'container.dart'; // MyCon
import 'icon.dart'; //MyIcon
import 'position.dart'; // MyPosi
import 'sizebox.dart'; // MySizeBox
import 'row.dart'; // MYRow
import 'stack.dart'; //MyStack
import 'textfield.dart'; // MyTextField
import 'image.dart';
import 'button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('BasicApp'),
        ),
        body: MyAlertDialog());
  }
}
