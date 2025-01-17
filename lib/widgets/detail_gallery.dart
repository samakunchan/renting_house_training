import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class DetailGallery extends StatelessWidget {
  const DetailGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Gallery', style: kheadlineMedium),
          Row(
            children: List.generate(10, imageGallery),
          ),
        ],
      ),
    );
  }

  Widget imageGallery(int index) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Card(
        child: Image.network(
          'https://picsum.photos/seed/${index + 1}/200/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
