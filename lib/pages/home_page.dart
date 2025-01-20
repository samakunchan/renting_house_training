import 'package:flutter/material.dart';
import 'package:renting_house_training/pages/layout_page.dart';
import 'package:renting_house_training/widgets/filter_buttons.dart';
import 'package:renting_house_training/widgets/header.dart';
import 'package:renting_house_training/widgets/result_big_cards.dart';
import 'package:renting_house_training/widgets/result_list_view.dart';
import 'package:renting_house_training/widgets/search_address_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      ],
    );
  }

  Widget layout() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(),
        SearchAddressBar(),
        FilterButtons(),
        ResultBigCards(),
        ResultListView(),
      ],
    );
  }
}
