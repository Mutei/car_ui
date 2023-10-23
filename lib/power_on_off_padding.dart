import 'package:flutter/material.dart';

import 'constant/colors.dart';

class PowerOnOffPadding extends StatefulWidget {
  const PowerOnOffPadding({
    super.key,
  });

  @override
  State<PowerOnOffPadding> createState() => _PowerOnOffPaddingState();
}

class _PowerOnOffPaddingState extends State<PowerOnOffPadding> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              color: kBoxDecorationColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Center(
              child: FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {
                  setState(() {
                    isButtonPressed = !isButtonPressed;
                  });
                },
                child: Icon(
                  Icons.power_settings_new_sharp,
                  size: 30,
                  color:
                      isButtonPressed ? kPowerActiveColor : kPowerInActiveColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
