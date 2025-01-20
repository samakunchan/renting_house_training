import 'dart:math';

import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class DetailGallery extends StatefulWidget {
  const DetailGallery({super.key});

  @override
  State<DetailGallery> createState() => _DetailGalleryState();
}

class _DetailGalleryState extends State<DetailGallery> {
  late double widthDevice;
  late double sizeGalleryBox;
  final List<int> fakeList = List<int>.generate(Random().nextInt(20), (i) => i + 1);
  late final int fakeLength = fakeList.isEmpty ? 1 : fakeList.length;
  late int lengthGalleryAllowed;
  late int remindLength;

  @override
  Widget build(BuildContext context) {
    widthDevice = MediaQuery.of(context).size.width;
    sizeGalleryBox = 110;

    lengthGalleryAllowed = ((widthDevice + 8) / (sizeGalleryBox + 8)).floor();
    remindLength = fakeLength - lengthGalleryAllowed;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Gallery', style: kheadlineMedium),
          Row(
            children: List.generate(
              fakeLength < lengthGalleryAllowed ? fakeLength : lengthGalleryAllowed,
              imageGallery,
            ),
          ),
        ],
      ),
    );
  }

  Widget imageGallery(int index) {
    if ((lengthGalleryAllowed - 1) == index) {
      return Stack(
        children: [
          SizedBox(
            width: sizeGalleryBox,
            height: sizeGalleryBox,
            child: Card(
              child: Image.network(
                'https://picsum.photos/seed/${index + 1}/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// Filter
          SizedBox(
            width: sizeGalleryBox,
            height: sizeGalleryBox,
            child: const Opacity(
              opacity: .2,
              child: Card(
                child: ColoredBox(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: sizeGalleryBox,
            height: sizeGalleryBox,
            child: Center(
              child: Text(
                '+$remindLength',
                style: const TextStyle(color: kLightColor, fontSize: 20),
              ),
            ),
          ),
        ],
      );
    }
    return SizedBox(
      width: sizeGalleryBox,
      height: sizeGalleryBox,
      child: Card(
        child: Image.network(
          'https://picsum.photos/seed/${index + 1}/200/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
