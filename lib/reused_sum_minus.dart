import 'package:flutter/material.dart';

class ReusedSumMinButton extends StatelessWidget {
  final IconData icon;
  final double bottomSize;
  const ReusedSumMinButton(
      {super.key, required this.icon, required this.bottomSize});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.grey,
      onPressed: () {},
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
