import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class SportModePadding extends StatefulWidget {
  const SportModePadding({
    super.key,
  });

  @override
  State<SportModePadding> createState() => _SportModePaddingState();
}

class _SportModePaddingState extends State<SportModePadding> {
  bool isbottonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                isbottonPressed = !isbottonPressed;
              });
            },
            child: Container(
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
                      Icon(
                        Icons.local_fire_department_sharp,
                        size: 30,
                        color:
                            isbottonPressed ? kButtonActiveColor : Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sport Mode",
                        style: TextStyle(
                          color: isbottonPressed
                              ? kButtonActiveColor
                              : Colors.white,
                        ),
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
