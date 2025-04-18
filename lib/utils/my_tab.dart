import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
//Rutal del archivo
// C:/
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey[200],

            //Borde redondeado
            borderRadius: BorderRadius.circular(16)),
        child: Image.asset(
            //ruta del archivo
            iconPath,
            color: Colors.grey[600]),
      ),
    );
  }
}
