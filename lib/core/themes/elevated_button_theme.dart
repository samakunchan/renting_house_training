import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

final ElevatedButtonThemeData kElevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
  ),
);
