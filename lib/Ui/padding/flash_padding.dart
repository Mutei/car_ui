import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class FlashPadding extends StatefulWidget {
  const FlashPadding({
    super.key,
  });

  @override
  State<FlashPadding> createState() => _FlashPaddingState();
}

class _FlashPaddingState extends State<FlashPadding> {
  bool isbottonPressed = false;
  String flashOff = 'Off';
  String flashOn = 'On';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 160,
            height: 90,
            decoration: BoxDecoration(
              color: kBoxDecorationColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 2),
                      child: Column(
                        children: [
                          const Text('Flash'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            isbottonPressed ? flashOn : flashOff,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Switch(
                      value: isbottonPressed,
                      onChanged: (value) {
                        setState(() {
                          isbottonPressed = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
