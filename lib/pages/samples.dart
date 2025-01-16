import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class Samples extends StatelessWidget {
  const Samples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kThemeData,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello World!',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontFamily: raleway,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Container(
                    width: 500,
                    height: 500,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'Hello World! 300',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontFamily: raleway,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade700,
                              ),
                        ),
                        TextButton(
                          onPressed: () {
                            print('House');
                          },
                          child: const Text('House World'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print('Apartment');
                          },
                          child: const Text('Apartment World'),
                        ),
                        const ElevatedButton(
                          onPressed: null,
                          child: Text('Apartment World'),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 600,
                        height: 600,
                        child: Card(
                          child: Stack(
                            children: [
                              SizedBox.expand(
                                child: Image.network(
                                  'https://picsum.photos/id/1/200/300',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.shadow.withValues(alpha: .3),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 4),
                                          child: Icon(Icons.location_on_rounded),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4),
                                          child: Text(
                                            'This is a card World',
                                            style: kTextButtonMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
