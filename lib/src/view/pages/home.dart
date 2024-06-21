import 'package:flutter/material.dart';
import 'package:pizzaria_biella/src/view/widgets/carrousel.dart';
import 'package:pizzaria_biella/src/view/widgets/itens.dart';
import 'package:pizzaria_biella/src/view/widgets/widget_inferior.dart';
import 'package:pizzaria_biella/src/view/widgets/widget_superior.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Biella Pizza',
      debugShowCheckedModeBanner: false,
      home: Home_(),
    );
  }
}

class Home_ extends StatelessWidget {
  const Home_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBarSuperior(mostrarSeta: true),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            carroussel(),
            itens(),
            itens(
              titulo: 'Seus ultimos pedidos',
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarInferior(),
    );
  }
}
