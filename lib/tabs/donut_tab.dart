import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //List of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png",
      "Dunkin Donuts"
    ],
    [
      "Strawberry",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png",
      "Krispy Kreme"
    ],
    [
      "Grape Ape",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png",
      "Tizimin Donuts"
    ],
    [
      "Choco",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png",
      "Uman Donuts"
    ],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //prepa 1: como se va organizar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //número de columnas
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5),
        //cuantos elementos se van a mostrar
        itemCount: 4, // specify the number of items
        padding: const EdgeInsets.all(12),
        //que elemento se construira
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
            donutStore: donutsOnSale[index][4],
          );
        });
  }
}
