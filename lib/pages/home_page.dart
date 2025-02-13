import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
              )

              //pestañas (TabBar)

              //3. Contenido de pestañas (TabBarView)

              //4. carrito
            ]));
  }
}
