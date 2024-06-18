import 'package:flutter/material.dart';

class NavBarInferior extends StatefulWidget {
  const NavBarInferior({super.key});

  @override
  State<NavBarInferior> createState() => _NavBarInferiorState();
}

class _NavBarInferiorState extends State<NavBarInferior> {
  int paginaAtual = 0;

  void selecionado(int indice) {
    setState(() {
      paginaAtual = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: paginaAtual,
      selectedItemColor: Colors.orange,
      showSelectedLabels: false,
      onTap: selecionado,
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
              child: paginaAtual == 0
                  ? Image.asset('../assets/images/home/home-selecionada.png')
                  : Image.asset('../assets/images/home/home-icone.png')),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            child: paginaAtual == 1
                ? Image.asset('../assets/images/home/menu-selecionado.png')
                : Image.asset('../assets/images/home/lista-icone.png'),
          ),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            child: paginaAtual == 2
                ? Image.asset('../assets/images/home/carrinho-selecionado.png')
                : Image.asset('../assets/images/home/carrinho-icone.png'),
          ),
          label: 'Carrinho',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            child: paginaAtual == 3
                ? Image.asset('../assets/images/home/perfil-selecionado.png')
                : Image.asset('../assets/images/home/perfil-icone.png'),
          ),
          label: 'Perfil',
        ),
      ],
    );
  }
}
