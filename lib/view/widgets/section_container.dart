import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer(
      {super.key, this.width, this.color, this.child, this.height});

  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: width,
      decoration: BoxDecoration(
        color: color ?? primaryColor,
      ),
      child: child,
    );
  }
}
