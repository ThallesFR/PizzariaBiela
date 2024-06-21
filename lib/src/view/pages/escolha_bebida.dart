import 'package:flutter/material.dart';
import 'package:pizzaria_biella/src/view/widgets/widget_inferior.dart';
import 'package:pizzaria_biella/src/view/widgets/widget_superior.dart';
import 'package:pizzaria_biella/src/model/interface_bebidas.dart';
import 'package:pizzaria_biella/src/view/widgets/itens_bebidas.dart';

void main() => runApp(BiellaPizzaApp());

class BiellaPizzaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biella Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BebidasSelectionScreen(),
    );
  }
}

class BebidasSelectionScreen extends StatefulWidget {
  const BebidasSelectionScreen({super.key});

  @override
  _BebidasSelectionScreenState createState() => _BebidasSelectionScreenState();
}

class _BebidasSelectionScreenState extends State<BebidasSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBarSuperior(
        categoria: "Escolha sua Bebida",
        mostrarSeta: false,
      ),
      body: Container(
        color: Color.fromARGB(127, 198, 197, 197),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: Text('Alcoólicas',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                textColor: Colors.orange,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bebidasAlcolicas.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListaBebida(bebida: bebidasAlcolicas[index]),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: Text('Refrigerantes',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                textColor: Colors.orange,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: refrigerantes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListaBebida(bebida: refrigerantes[index]),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: Text('Sucos',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                textColor: Colors.orange,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sucos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListaBebida(bebida: sucos[index]),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarInferior(),
    );
  }
}

class ListaBebida extends StatefulWidget {
  final Bebida bebida;

  const ListaBebida({super.key, required this.bebida});

  @override
  _ListaBebidaState createState() => _ListaBebidaState();
}

class _ListaBebidaState extends State<ListaBebida> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(113, 123, 123, 123),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: BebidaItem(bebida: widget.bebida),
    );
  }
}
