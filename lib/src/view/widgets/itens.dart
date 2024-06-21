import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pizzaria_biella/src/model/interface_item.dart';


class itens extends StatelessWidget {
  final String titulo;
  final List<Item> itens_;
  final bool automatico;

  const itens({
    super.key,
    this.automatico = false,
    this.titulo = 'Os mais pedidos', 
    this.itens_ = const [   
      Item(
        nome: 'Pizza com Refrigerante',
        preco: 39.95,
        imagem: 'https://www.minhareceita.com.br/app/uploads/2022/12/pizza-de-pepperoni-caseira-portal-minha-receita.jpg',
      ),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Text(
            titulo,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: automatico,
            viewportFraction: 0.4,
               padEnds: false,    
            aspectRatio: 16 / 9,),
          items: itens_.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),

                            ),
                            child: Image.network(
                              item.imagem,
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.width * 0.4,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color:const  Color.fromARGB(0, 255, 255, 255).withOpacity(0.6),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.nome,
                                style: const  TextStyle(
                                  color:  Color.fromARGB(255, 59, 59, 59),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "R\$ ${item.preco.toStringAsFixed(2)}",
                                style: const TextStyle(
                                  color: Color(0xFF00C569),
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
