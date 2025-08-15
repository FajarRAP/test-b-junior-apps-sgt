import 'package:flutter/material.dart';
import 'package:test_b_junior_apps_sgt/widgets/base_card.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.text,
  });

  final IconData icon;
  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    final borderColor = isActive ? null : Color(0xFFDFDEDE);
    final backgroundColor = isActive ? Color(0xFF292526) : Color(0xFFFDFDFD);
    final foregroundColor = isActive ? Color(0xFFFDFDFD) : Color(0xFF292526);

    return BaseCard(
      borderColor: borderColor,
      color: backgroundColor,
      child: Row(
        children: <Widget>[
          Icon(icon, color: foregroundColor),
          Text(
            text,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
