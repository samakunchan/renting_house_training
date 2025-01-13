import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello World!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  'Hello World!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  'Hello World!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  'Hello World!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                      ),
                ),
                Text(
                  'Hello World! (R Reg)',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                      ),
                ),
                Text(
                  'Bedroom! (R Reg)',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                      ),
                ),
                Text(
                  'Rent now! (R Reg)',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Raleway',
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
