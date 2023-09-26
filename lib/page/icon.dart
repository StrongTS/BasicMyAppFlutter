import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Icons',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('ชื่อ')),
                DataColumn(label: Text('ไอคอน')),
                DataColumn(label: Text('ไอคอน')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('ไข่')),
                  DataCell(Icon(Icons.local_dining)),
                  DataCell(Icon(Icons.egg)),
                ]),
                DataRow(cells: [
                  DataCell(Text('นม')),
                  DataCell(Icon(Icons.no_drinks)),
                  DataCell(Icon(Icons.local_cafe)),
                ]),
                DataRow(cells: [
                  DataCell(Text('อาหาร')),
                  DataCell(Icon(Icons.coffee_outlined)),
                  DataCell(Icon(Icons.food_bank)),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
