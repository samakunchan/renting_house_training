import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';
import 'package:renting_house_training/pages/renting_house_menu.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({required this.children, super.key});

  final List<Widget> children;

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> with TickerProviderStateMixin {
  late AnimationController animationController;
  double layoutCorner = 0;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          final double scale = 1 - (animationController.value * .1);
          final double maxSide = MediaQuery.of(context).size.width;
          final double side = maxSide * (animationController.value * .5);

          return Stack(
            children: [
              const RentingHouseMenu(),
              GestureDetector(
                onPanUpdate: (DragUpdateDetails details) {
                  // Swiping in right direction.
                  if (details.delta.dx > 0) {
                    animationController.forward();
                    layoutCorner = 20;
                  }

                  // Swiping in left direction.
                  if (details.delta.dx < 0) {
                    animationController.reverse().then((_) => layoutCorner = 0);
                  }
                },
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(side)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kLightColor,
                      borderRadius: BorderRadius.circular(layoutCorner),
                    ),
                    child: SafeArea(
                      child: Stack(
                        children: [
                          ...widget.children,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
