import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double height;
  final double width;
  const AppLogo({
    super.key,
    this.height = 128,
    this.width = 128,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Image.asset(
          "assets/app_icon.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
