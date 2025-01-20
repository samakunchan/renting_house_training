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
          width: 90,
          height: 90,
          child: Card(
            child: Image.network(
              'https://picsum.photos/seed/${{index + 1}}/200/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Orchad House', style: kheadlineMedium),
              Text('20 000 / Year', style: kBodyMedium.copyWith(color: kTertiaryColor)),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.bed,
                        color: Colors.grey,
                        size: 13,
                      ),
                      SizedBox(width: 16),
                      Text(
                        '6 bedrooms',
                        style: TextStyle(overflow: TextOverflow.fade),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bathtub_outlined,
                        color: Colors.grey,
                        size: 13,
                      ),
                      SizedBox(width: 16),
                      Text(
                        '4 bathrooms',
                        style: TextStyle(overflow: TextOverflow.fade),
                      ),
                    ],
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
