import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renting_house_training/core/themes/app_bar_theme.dart';
import 'package:renting_house_training/core/themes/card_theme.dart';
import 'package:renting_house_training/core/themes/color_scheme.dart';
import 'package:renting_house_training/core/themes/elevated_button_theme.dart';
import 'package:renting_house_training/core/themes/text_button_theme.dart';
import 'package:renting_house_training/core/themes/text_theme.dart';

const String raleway = 'Raleway';
const Color kLightColor = Colors.white;
const Color kPrimaryColor = Color(0xFF0A8ED9);
const Color kSecondaryColor = Color(0xFF5BB2E4);
const Color kTertiaryColor = Color(0xFF2F9FE1);
final Color kShadowColor = Colors.grey.shade500;
const Color kChipColor = Color(0xFF666666);
const Color kTextShadowColor = Color(0xFF525252);
const Color kLinearTopColor = Color(0xFF80c8f5);
const Color kLinearBottomColor = Color(0xFF30a0e1);

TextStyle kheadlineMedium = const TextStyle(
  fontFamily: raleway,
  fontWeight: FontWeight.w500,
  fontSize: 20,
);

TextStyle kBodyMedium = const TextStyle(
  fontFamily: raleway,
  fontWeight: FontWeight.w300,
  color: kTextShadowColor,
  fontSize: 16,
);

TextStyle kTextButtonMedium = const TextStyle(
  fontFamily: raleway,
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: kLightColor,
);

// TextStyle kTextChip = kheadlineMedium.copyWith(color: kLightColor);
TextStyle kTextChip = const TextStyle(
  fontFamily: raleway,
  fontWeight: FontWeight.w500,
  color: kLightColor,
);

final ThemeData kThemeData = ThemeData(
  appBarTheme: kAppBarTheme,
  scaffoldBackgroundColor: kPrimaryColor,
  colorScheme: kColorScheme,
  textTheme: kTextTheme,
  textButtonTheme: kTextButtonThemeData,
  elevatedButtonTheme: kElevatedButtonThemeData,
  cardTheme: kCardThemeData,

  /// For sub menu of dropdown.
  menuButtonTheme: MenuButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(kheadlineMedium),
      backgroundBuilder: (BuildContext context, Set<WidgetState> widgetState, Widget? child) {
        if (widgetState.contains(WidgetState.disabled)) {
          return Container(
            decoration: const BoxDecoration(color: kLinearTopColor),
            child: child,
          );
        }
        return child!;
      },
      elevation: const WidgetStatePropertyAll<double>(0),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: kheadlineMedium,
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
    ),
    menuStyle: MenuStyle(
      backgroundColor: const WidgetStatePropertyAll<Color>(kLightColor),
      shadowColor: WidgetStatePropertyAll<Color>(kShadowColor),
      elevation: const WidgetStatePropertyAll<double>(1),
    ),
  ),
  useMaterial3: true,
);

WidgetStateProperty<RoundedRectangleBorder> shape() {
  return WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

final ButtonStyle kButtonStyle = ButtonStyle(
  shape: shape(),
  textStyle: WidgetStateProperty.all<TextStyle>(kTextButtonMedium),
  foregroundColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return kShadowColor;
      }
      return kLightColor;
    },
  ),
  backgroundBuilder: (BuildContext context, Set<WidgetState> widgetState, Widget? child) {
    if (widgetState.contains(WidgetState.disabled)) {
      return Container(
        decoration: BoxDecoration(color: Colors.white.withValues(alpha: .5)),
        child: child,
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            kLinearTopColor,
            kLinearBottomColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  },
);

const String kLoremIpsum =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry‘s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

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

class AppMenu {
  const AppMenu({required this.icon, required this.text});

  final Icon icon;
  final Text text;
}

final List<AppMenu> menus = List<AppMenu>.of(
  [
    const AppMenu(icon: Icon(Icons.home, color: kLightColor), text: Text('Home')),
    const AppMenu(icon: Icon(Icons.person_rounded, color: kLightColor), text: Text('Profile')),
    const AppMenu(icon: Icon(FontAwesomeIcons.locationDot, color: kLightColor), text: Text('Nearby')),
    const AppMenu(icon: Icon(Icons.bookmark, color: kLightColor), text: Text('Bookmark')),
    const AppMenu(icon: Icon(Icons.notifications_rounded, color: kLightColor), text: Text('Notifications')),
    const AppMenu(icon: Icon(Icons.message, color: kLightColor), text: Text('Messages')),
    const AppMenu(icon: Icon(Icons.settings, color: kLightColor), text: Text('Settings')),
    const AppMenu(icon: Icon(Icons.help, color: kLightColor), text: Text('Help')),
    const AppMenu(icon: Icon(Icons.logout, color: kLightColor), text: Text('Logout')),
  ],
);
