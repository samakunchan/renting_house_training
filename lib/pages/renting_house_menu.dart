import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class RentingHouseMenu extends StatelessWidget {
  const RentingHouseMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: menus.map(
        (AppMenu menu) {
          if (menus.indexOf(menu) % 3 == 2) {
            return Column(
              children: [
                ListTile(
                  leading: menu.icon,
                  title: menu.text,
                  titleTextStyle: kheadlineMedium,
                  iconColor: kLightColor,
                ),
                if (menus.indexOf(menu) != menus.indexOf(menus.last))
                  const Row(
                    children: [
                      SizedBox(
                        width: 180,
                        child: Divider(),
                      ),
                    ],
                  ),
              ],
            );
          }
          return ListTile(
            leading: menu.icon,
            title: menu.text,
            titleTextStyle: kheadlineMedium,
            iconColor: kLightColor,
          );
        },
      ).toList(),
    );
  }
}
