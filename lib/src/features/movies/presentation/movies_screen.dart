import 'package:flutter/material.dart';
import 'package:messy_cinema/src/features/movies/presentation/film_card.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.local_movies_rounded),
        title: const Text("Batch #5 Kino"),
      ),
      body: 
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 450),
              child: CarouselView(itemExtent: 380,
              itemSnapping: false,
               children: [
                
                FilmCard(
                    imageURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU',
                    eventTime: '20:15 - 23:05',
                    filmName: "Star Wars"),
                FilmCard(
                    imageURL:
                        'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
                    eventTime: '18:00 - 21:13',
                    filmName: "Herr der Ringe"),
                FilmCard(
                    imageURL:
                        'https://images.cgames.de/images/gsgp/290/harry-potter-filme_6229276.jpg',
                    eventTime: '20:15 - 23:05',
                    filmName: "Harry Potter"),
              
              ]),
            ),
            // Row(children: [
            //   FilmCard(
            //       imageURL:
            //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU',
            //       eventTime: '20:15 - 23:05',
            //       filmName: "Star Wars"),
            //   FilmCard(
            //       imageURL:
            //           'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
            //       eventTime: '18:00 - 21:13',
            //       filmName: "Herr der Ringe"),
            //   FilmCard(
            //       imageURL:
            //           'https://images.cgames.de/images/gsgp/290/harry-potter-filme_6229276.jpg',
            //       eventTime: '20:15 - 23:05',
            //       filmName: "Harry Potter"),
            //   FilmCard(
            //       imageURL:
            //           'https://cdn.prod.www.spiegel.de/images/79703aee-0001-0004-0000-000000776367_w960_r1.778_fpx42_fpy45.jpg',
            //       eventTime: '20:15 - 23:05',
            //       filmName: "Hunger Games"),
            // ]),
    );
  }
}
