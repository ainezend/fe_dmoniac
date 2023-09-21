import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StadiumPage extends StatefulWidget {
  final double ppb; // Nilai ppb dari alat Bluetooth

  StadiumPage({required this.ppb});

  @override
  _StadiumPageState createState() => _StadiumPageState();
}

class _StadiumPageState extends State<StadiumPage> {
  double _calculatePercent() {
    double ppb = widget.ppb;
    double percent = 0.0;

    if (ppb < 636) {
      percent = 0.0;
    } else if (ppb >= 636 && ppb < 1020) {
      percent = (ppb - 636) / (1020 - 636);
    } else if (ppb >= 1020 && ppb < 1943) {
      percent = (ppb - 1020) / (1943 - 1020);
    } else if (ppb >= 1943 && ppb < 4421) {
      percent = (ppb - 1943) / (4421 - 1943);
    } else if (ppb >= 4421 && ppb < 12781) {
      percent = (ppb - 4421) / (12781 - 4421);
    } else if (ppb >= 12781) {
      percent = 1.0;
    }

    return percent;
  }

  @override
  Widget build(BuildContext context) {
    double percent = _calculatePercent();

    return Scaffold(
      body: Container(
        child: CircularPercentIndicator(
          radius: 200,
          lineWidth: 20,
          percent: percent,
          progressColor: Colors.deepPurple,
          backgroundColor: Colors.deepPurple.shade100,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(
            "${(percent * 100).toStringAsFixed(0)}%",
          ),
        ),
      ),
    );
  }
}