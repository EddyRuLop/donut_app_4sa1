import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  //dynamic porque sera de tipo color
  final dynamic donutColor;
  final String imageName;
  final String donutStore;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutStore,
      required this.donutColor,
      required this.donutPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
            color: donutColor[50],
            //Esquinas redondeadas
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    "\$$donutPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
              child: Image.asset(imageName),
            ),
            Text(donutFlavor,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(donutStore,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: donutColor[800])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined,
                      color: donutColor[800]),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: donutColor[800]),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
