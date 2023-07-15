import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../constants/colors.dart';
import '../utilities/custom_theme.dart';

class ProfileTab extends StatelessWidget {
  final String title;
  final IconData iconName;
  final String titleValue;

  const ProfileTab({
    super.key,
    required this.title,
    required this.iconName,
    required this.titleValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconName,
              color: kGrayTextC,
              size: 25,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: kGrayTextC, fontSize: 14),
                ),
                Text(
                  titleValue,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Divider(
          thickness: 1,
          color: kGrayTextC.withOpacity(0.2),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
