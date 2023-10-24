import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class FinalPadding extends StatefulWidget {
  const FinalPadding({
    super.key,
  });

  @override
  State<FinalPadding> createState() => _FinalPaddingState();
}

class _FinalPaddingState extends State<FinalPadding> {
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
            width: 350,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('tasks'),
                          Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: kPowerActiveColor,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: kPowerActiveColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.notifications),
                          const Icon(Icons.account_circle),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
