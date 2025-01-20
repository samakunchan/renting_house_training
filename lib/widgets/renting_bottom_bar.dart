import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class RentingBottomBar extends StatelessWidget {
  const RentingBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kLightColor.withValues(alpha: 0),
                kLightColor.withValues(alpha: .7),
                kLightColor,
                kLightColor,
                kLightColor,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Price'),
                    Text('20 000€ / Year', style: kheadlineMedium),
                  ],
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Rent Now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
