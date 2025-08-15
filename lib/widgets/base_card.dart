import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,
    this.borderColor,
    this.color,
    this.height,
    this.width,
    this.child,
  });

  final Color? borderColor;
  final Color? color;
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? const Color(0x00000000)),
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
