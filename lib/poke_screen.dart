import 'package:flutter/material.dart';
import 'package:poke_app/component.dart';
import 'package:poke_app/details_screen.dart';

class PokeScreen extends StatelessWidget {
  const PokeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poke App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: names.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                            title: names[index], photo: images[index])));
              },
              child: Card(
                elevation: 10.0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        '${images[index]}',
                        width: 130.0,
                        // fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '${names[index]}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}