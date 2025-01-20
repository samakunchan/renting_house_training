import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renting_house_training/core/constantes.dart';

class SearchAddressBar extends StatelessWidget {
  const SearchAddressBar({super.key});

  @override
  Widget build(BuildContext context) {
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
}
