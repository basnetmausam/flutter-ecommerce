import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: context.textTheme.bodyText1?.copyWith(color: Colors.black),
      ).pOnly(left: 8, top: 8),
    );
  }
}
