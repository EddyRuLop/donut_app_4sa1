import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //prepa 1: como se va organizar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //número de columnas
            crossAxisCount: 4),
        //cuantos elementos se van a mostrar
        itemCount: 10, // specify the number of items
        padding: const EdgeInsets.all(12),
        //que elemento se construira
        itemBuilder: (context, index) {
          return Card(
            child: Center(child: Text('Item $index')),
          );
        });
  }
}
