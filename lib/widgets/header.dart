import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renting_house_training/core/constantes.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
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
