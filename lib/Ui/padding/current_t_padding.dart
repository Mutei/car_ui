import 'package:car_ui/reused_sum_minus.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class CurrentTPadding extends StatefulWidget {
  const CurrentTPadding({
    super.key,
  });

  @override
  State<CurrentTPadding> createState() => _CurrentTPaddingState();
}

class _CurrentTPaddingState extends State<CurrentTPadding> {
  int num = 41;
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.speed,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusedSumMinButton(
                            icon: Icons.minimize,
                            bottomSize: 200,
                            onPressed: () {
                              setState(
                                () {
                                  num--;
                                },
                              );
                            }),
                        Text(
                          '$num',
                          style: const TextStyle(fontSize: 22),
                        ),
                        ReusedSumMinButton(
                            icon: Icons.add,
                            bottomSize: 0,
                            onPressed: () {
                              setState(
                                () {
                                  num++;
                                },
                              );
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
