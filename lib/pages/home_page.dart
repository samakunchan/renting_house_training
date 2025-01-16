import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renting_house_training/core/constantes.dart';

final List<String> cities = List<String>.of([
  'Jakarta',
  'Paris',
  'London',
  'Washington',
]);

final List<String> buildings = List<String>.of([
  'House',
  'Apartment',
  'Hotel',
  'Villa',
  'Camping',
]);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return layout();
          },
        ),
      ),
    );
  }

  Padding layout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          searchSide(),
          filterButtons(),
          resultBigCards(),
          resultListView(),
        ],
      ),
    );
  }

  Widget resultListView() {
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

  Column resultBigCards() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Near from you',
              style: kheadlineMedium,
            ),
            const Text('See more'),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(6, (int index) => buildingCard(index: index)),
          ),
        ),
      ],
    );
  }

  SizedBox buildingCard({required int index}) {
    return SizedBox(
      width: 272,
      height: 320,
      child: Card(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                'https://picsum.photos/seed/${{index + 1}}/200/300',
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
            infoLocationCard(),
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
                            style: kTextButtonMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'J.L Sultan Inskandar Muda',
                            style: kBodyMedium.copyWith(color: kLightColor),
                          ),
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

  Widget infoLocationCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: kShadowColor.withValues(alpha: .5),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(
                      FontAwesomeIcons.locationDot,
                      color: kLightColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      '1.8 km',
                      style: kTextButtonMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView filterButtons() {
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

  Row searchSide() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: searchForm(),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: 55,
            height: 55,
            child: IconButton(
              style: kButtonStyle,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.sliders,
                color: kLightColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextFormField searchForm() {
    return TextFormField(
      style: kBodyMedium,
      decoration: InputDecoration(
        hintText: 'Search address, or near you',
        labelStyle: kBodyMedium,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: .2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: .2),
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
      ),
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Location'),
            DropdownMenu<String>(
              initialSelection: cities.last,
              trailingIcon: const Icon(Icons.keyboard_arrow_down),
              onSelected: (String? city) {},
              dropdownMenuEntries: cities.map<DropdownMenuEntry<String>>(
                (String city) {
                  return DropdownMenuEntry<String>(
                    value: city,
                    label: city,
                    labelWidget: Text(city),
                    enabled: city != 'No City',
                  );
                },
              ).toList(),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.bell),
        ),
      ],
    );
  }
}
