import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:renting_house_training/core/constantes.dart';
import 'package:renting_house_training/widgets/app_maps.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return layout(context: context);
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: kLightColor,
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
            ),
          ],
        ),
      ),
    );
  }

  Widget layout({required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cardHeaderDetails(context: context),
        description(),
        gallery(),
        const AppMap(),
      ],
    );
  }

  Padding gallery() {
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

  Padding description() {
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardHeaderDetails({required BuildContext context}) {
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
