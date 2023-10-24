import 'package:car_ui/constant/colors.dart';
import 'package:flutter/material.dart';

class ReusedSumMinButton extends StatelessWidget {
  final IconData icon;
  final double bottomSize;
  final VoidCallback onPressed;
  const ReusedSumMinButton(
      {super.key,
      required this.icon,
      required this.bottomSize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kFloatingButton,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: bottomSize,
        ),
        child: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
