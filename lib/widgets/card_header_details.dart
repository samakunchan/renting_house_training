import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:renting_house_training/core/constantes.dart';

class CardHeaderDetails extends StatelessWidget {
  const CardHeaderDetails({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: Card(
        child: Stack(
          children: [
            /// Image
            SizedBox.expand(
              child: Image.network(
                'https://picsum.photos/seed/${{index + 1}}/1200/900',
                fit: BoxFit.cover,
              ),
            ),

            /// Filter
            SizedBox.expand(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black.withValues(alpha: .5),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kShadowColor.withValues(alpha: .5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios, color: kLightColor),
                        onPressed: Get.back<void>,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kShadowColor.withValues(alpha: .5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.bookmark_outline, color: kLightColor),
                      onPressed: Get.back<void>,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'Dreamsville House',
                            style: kTextButtonMedium.copyWith(fontSize: 30),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'J.L Sultan Inskandar Muda',
                            style: kBodyMedium.copyWith(color: kLightColor, fontSize: 20),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: kShadowColor.withValues(alpha: .5),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 6, right: 12, top: 8, bottom: 8),
                                      child: Icon(FontAwesomeIcons.bed, color: kLightColor),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text('6 bedrooms', style: kBodyMedium.copyWith(color: kLightColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: kShadowColor.withValues(alpha: .5),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.bathtub_outlined, color: kLightColor),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    '4 bathrooms',
                                    style: kBodyMedium.copyWith(color: kLightColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
