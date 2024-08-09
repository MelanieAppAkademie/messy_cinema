import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  String imageURL;
  String eventTime;
  String filmName;

  FilmCard({super.key, required this.imageURL, required this.eventTime, required this.filmName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: 350,
      child: Card(
        elevation: 8.0,
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                imageURL,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.movie, size: 40.0),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            filmName,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            eventTime,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt."),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                  content: Text('Ticket zu $filmName')));
                        },
                        child: const Text('Ticket kaufen'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                  content: Text('Vorschau zu $filmName')));
                        },
                        child: const Text('Vorschau'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
