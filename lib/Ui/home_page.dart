import 'package:car_ui/Ui/padding/final_padding.dart';
import 'package:car_ui/Ui/padding/flash_padding.dart';
import 'package:car_ui/Ui/padding/sport_mode_padding.dart';
import 'package:car_ui/Ui/rows/PercentageBatteryRow.dart';
import 'package:car_ui/Ui/padding/current_t_padding.dart';
import 'package:flutter/material.dart';
import 'package:car_ui/Ui/padding/padding_column.dart';
import 'padding/padding_column.dart';
import 'padding/power_on_off_padding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isbuttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/car.jpg',
              height: 300,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaddingColumn(),
                PercentageBatteryRow(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Row(
              children: [
                PowerOnOffPadding(),
                CurrentTPadding(),
              ],
            ),
            const Row(
              children: [
                SportModePadding(),
                FlashPadding(),
              ],
            ),
            const FinalPadding(),
          ],
        ),
      ),
    );
  }
}
