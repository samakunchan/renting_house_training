import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renting_house_training/core/constantes.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best for you',
              style: kheadlineMedium,
            ),
            const Text('See more'),
          ],
        ),
        Column(
          children: List.generate(
            6,
            (int index) => listTileHouse(index: index),
          ),
        )
      ],
    );
  }

  Widget listTileHouse({required int index}) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Card(
            child: Image.network(
              'https://picsum.photos/seed/${{index + 1}}/200/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Orchad House', style: kheadlineMedium),
              Text('20 000 / Year', style: kBodyMedium.copyWith(color: kTertiaryColor)),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.bed, color: Colors.grey),
                        SizedBox(width: 16),
                        Text('6 bedrooms'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Icon(Icons.bathtub_outlined, color: Colors.grey),
                        SizedBox(width: 16),
                        Text('4 bathrooms'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Expanded(child: Column())
      ],
    );
  }
}
