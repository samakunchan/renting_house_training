import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renting_house_training/core/constantes.dart';
import 'package:renting_house_training/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: kThemeData,
      initialRoute: '/home',
      locale: const Locale('en', 'US'),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultWidgetsLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
      ],
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(
            key: ValueKey<String>('Main page'),
          ),
          transition: Transition.fade,
          // ),
          // GetPage(
          //   name: '/detail',
          //   page: () => const DetailsPage(
          //     key: ValueKey<String>('Settings page'),
          //   ),
        ),
      ],
    );
  }
}
