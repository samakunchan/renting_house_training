import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          buildings.length,
          (int index) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ElevatedButton(
              onPressed: index != 0 ? null : () {},
              child: Text(buildings[index]),
            ),
          ),
        ),
      ),
    );
  }
}
