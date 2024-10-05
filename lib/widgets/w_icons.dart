import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WIcons extends StatefulWidget {
  final String icon;
  const WIcons({super.key, required this.icon});

  @override
  State<WIcons> createState() => _WIconsState();
}

class _WIconsState extends State<WIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color(0xFFF4F4F4),
          )),
      child: Center(
        child: SvgPicture.asset(
          widget.icon,
          colorFilter: ColorFilter.mode(Color(0xFF697B7A), BlendMode.srcIn),
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}
