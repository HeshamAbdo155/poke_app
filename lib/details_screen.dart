import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title, photo;

  const DetailsScreen({Key? key, required this.title, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 70.0, horizontal: 15.0),
            child: Card(
              color: Colors.white,
              child: Column(

                children: [
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: (28)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text('Height: 0.99 m'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text('Weight: 13.0 kg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Types',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Grass'),
                        ),
                      ),
                      SizedBox(width: 80),
                      Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Poison'),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Weakness',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Fire',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(width: 40),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Ice',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(width: 40),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Flying',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(width: 40),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Psychic',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 130.0,
                child: Image.asset(
                  photo,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
