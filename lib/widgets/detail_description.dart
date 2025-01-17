import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description', style: kheadlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              kLoremIpsum,
              style: kBodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Card(
                    shape: const CircleBorder(),
                    child: Image.network('https://i.pravatar.cc/205', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gary Allen', style: kheadlineMedium),
                      const SizedBox(height: 8),
                      Text('Owner', style: kBodyMedium),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.phone, color: kLightColor, size: 30),
                          onPressed: null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.message, color: kLightColor, size: 30),
                          onPressed: null,
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
    );
  }
}
