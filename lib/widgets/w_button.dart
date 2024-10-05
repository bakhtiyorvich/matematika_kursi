import 'package:flutter/material.dart';

class WButton extends StatefulWidget {
  final String text;
  const WButton({super.key, required this.text});

  @override
  State<WButton> createState() => _WButtonState();
}

class _WButtonState extends State<WButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2EC4B6)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
