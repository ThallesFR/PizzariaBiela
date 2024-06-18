import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Carousel extends StatefulWidget {
 List<String>? urlImagens; 
 bool automatico;

  Carousel({super.key, this.urlImagens,this.automatico = false}); 

  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  final List<String> imagensPadrao = [
    'https://picsum.photos/seed/picsum/200/300',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/200/300/?blur=5'
  ];

  late List<String> urlImagens; 

  int atual = 0;
  

  @override
  void initState() {
    super.initState();
    urlImagens = widget.urlImagens ?? imagensPadrao; 
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 150,
              autoPlay: widget.automatico,
              viewportFraction: 0.9,
              aspectRatio: 16 / 9,
              padEnds: false,         
              onPageChanged: (index, reason) {
                setState(() {
                  atual = index;
                });
              },
            ),
            items: urlImagens.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
            
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('Erro ao carregar a imagem'),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
