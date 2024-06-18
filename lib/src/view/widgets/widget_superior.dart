import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget implements PreferredSizeWidget {
  final bool mostrarSeta;
  final String categoria;

  const NavBarSuperior(
      {super.key, this.mostrarSeta = true, this.categoria = 'categoria'});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Image.asset(
              '../assets/images/home/biella_logo.png',
              height: MediaQuery.of(context).size.height * 0.04,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            '../assets/images/home/sino.png',
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ),
      ],
      bottom: mostrarSeta
          ? PreferredSize(
              preferredSize: const Size.fromHeight(160),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Color.fromARGB(255, 255, 153, 10),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar...',
                          suffixIcon:
                              const Icon(Icons.search, color: Colors.orange),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 71, 10, 1),
                              width: 1,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Color.fromARGB(255, 255, 153, 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 13),
                    child: Row(children: [
                      Image.asset('assets/images/home/seta.png'),
                      Expanded(
                        child: Text(
                          categoria,
                          textAlign: TextAlign
                              .center, 
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 153, 10),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(105);
}
