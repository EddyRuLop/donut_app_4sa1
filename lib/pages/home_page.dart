import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = <Widget>[
    const MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            //se pone color al fondo
            backgroundColor: Colors.transparent,
            //icono de la izquierda
            leading: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
              //Texto principal (text)
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text("I want to",
                          style: TextStyle(
                            fontSize: 32,
                          )),
                      Text(
                        "Eat",
                        style: TextStyle(
                            //Tamaño de letra
                            fontSize: 32,
                            //negritas
                            fontWeight: FontWeight.bold,
                            //subrayado
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),

                //pestañas (TabBar)
                TabBar(tabs: myTabs),

                //3. Contenido de pestañas (TabBarView)
                Expanded(
                  child: TabBarView(children: [
                    DonutTab(),
                    BurgerTab(),
                    SmoothieTab(),
                    PanCakesTab(),
                    PizzaTab()
                  ]),
                ),

                //4. carrito
                const ShoppingCard()
              ])),
    );
  }
}
