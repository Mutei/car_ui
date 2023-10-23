import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class PercentageBatteryRow extends StatelessWidget {
  const PercentageBatteryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        bottom: 76,
        left: 100,
      ),
      child: Row(
        children: [
          Icon(FeatherIcons.batteryCharging),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Text('50%'),
          ),
        ],
      ),
    );
  }
}
