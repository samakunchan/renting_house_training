import 'package:flutter/material.dart';
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
  scaffoldBackgroundColor: kLightColor,
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
