import 'package:flutter/material.dart';

import '../../../../utils/rank_calulate.dart';

class HeroRankWidget extends StatelessWidget {
  final int win;
  final int pick;
  final String assets;
  final double size;

  const HeroRankWidget({
    super.key,
    required this.win,
    required this.pick,
    required this.assets,
    this.size = 15,
  });

  @override
  Widget build(BuildContext context) {
    dynamic resp = Calculator(WinRate(win, pick)).sum();
    return Row(
      children: [
        SizedBox(
          height: size,
          child: Image(image: AssetImage(assets)),
        ),
        Text("${resp[0] ? '↑' : '↓'}${resp[1].toString().substring(0, 5)}",
            style: TextStyle(
                color: resp[0] ? Colors.green : Colors.red,
                fontWeight: FontWeight.normal)),
      ],
    );
  }
}
