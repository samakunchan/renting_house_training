import 'package:flutter/material.dart';
import 'package:renting_house_training/pages/layout_page.dart';
import 'package:renting_house_training/widgets/app_maps.dart';
import 'package:renting_house_training/widgets/card_header_details.dart';
import 'package:renting_house_training/widgets/detail_description.dart';
import 'package:renting_house_training/widgets/detail_gallery.dart';
import 'package:renting_house_training/widgets/renting_bottom_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return layout();
              },
            ),
          ),
        ),
        const RentingBottomBar(),
      ],
    );
  }

  Widget layout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardHeaderDetails(index: index),
        const DetailDescription(),
        const DetailGallery(),
        const AppMap(),
      ],
    );
  }
}
