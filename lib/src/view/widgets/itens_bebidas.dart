import 'package:flutter/material.dart';
import 'package:pizzaria_biella/src/model/interface_bebidas.dart';

  final List<Bebida> bebidasAlcolicas = [
    Bebida('Cerveja Brahma 350ml', '../assets/images/bebidas/brahma.png'),
    Bebida('Cerveja Império 350ml', '../assets/images/bebidas/imperio.png'),
    Bebida('Cerveja Antártica 350ml', '../assets/images/bebidas/antartica2.png'),
  ];

  final List<Bebida> refrigerantes = [
    Bebida('Coca Cola 2L', '../assets/images/bebidas/coca.png'),
    Bebida('Guaraná Antártica 1.5L', '../assets/images/bebidas/guarana-1,5.png'),
    Bebida('Fanta Uva 2L', '../assets/images/bebidas/fanta-uva.png'),
  ];

  final List<Bebida> sucos = [
    Bebida('Suco Laranja', '../assets/images/bebidas/suco-laranja.png'),
    Bebida('Suco Maracujá', '../assets/images/bebidas/suco-maracuja.png'),
    Bebida('Suco Morango','../assets/images/bebidas/suco-morango.png')
  ];


class BebidaItem extends StatelessWidget {
  final Bebida bebida;

  const BebidaItem({super.key, required this.bebida});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      leading: Image.asset(bebida.caminhoImagem),
      title: Text(bebida.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
      children: [
        const ListTile(
          title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar hendrerit sapien, ac facilisis sem tempus eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus sit amet viverra arcu.'),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            child: const Text('Adicionar ao carrinho'),
          ),
        ),
      ],
    );
  }
}

class ListaBebidas extends StatelessWidget {
  const ListaBebidas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        contruirSecao('Bebidas Alcoólicas', bebidasAlcolicas),
        contruirSecao('Refrigerantes', refrigerantes),
        contruirSecao('Sucos', sucos),
      ],
    );
  }

  Widget contruirSecao(String title, List<Bebida> bebidas) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ...bebidas.map((bebida) => BebidaItem(bebida: bebida)),
        
      ],
    );
  }
}
