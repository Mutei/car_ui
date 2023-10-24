import 'package:flutter/material.dart';
import 'package:car_ui/constant/colors.dart';

class PaddingColumn extends StatelessWidget {
  const PaddingColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12),
      child: Column(
        children: [
          Text(
            "Mercedes Benz \nC Class",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 130.0),
            child: Column(
              children: [
                Text(
                  "Parked",
                  style: TextStyle(color: kStatusColor),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
