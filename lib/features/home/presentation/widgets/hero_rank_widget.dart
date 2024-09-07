import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroRankWidget extends StatelessWidget {
  final int win;
  final int pick;
  final String assets;

  const HeroRankWidget(
      {super.key, required this.win, required this.pick, required this.assets});

  @override
  Widget build(BuildContext context) {
    dynamic resp = Calculator(WinRate(win, pick)).sum();
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Image(image: AssetImage(assets)),
        ),
        Text("${resp[0] ? '↑' : '↓'}${resp[1].toString().substring(0, 5)}",
            style: TextStyle(
                color: resp[0] ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class Shape extends Equatable {
  final int win;
  final int pick;

  const Shape({required this.win, required this.pick});

  area() {
    throw UnimplementedError();
  }

  @override
  List<Object> get props => [win, pick];
}

class WinRate extends Shape {
  const WinRate(win, pick) : super(win: win, pick: pick);

  @override
  area() {
    dynamic winRate = win / ((pick) / 100);
    return [winRate < 50 ? false : true, winRate];
  }
}

class Calculator {
  final Shape shape;

  Calculator(this.shape);

  sum() {
    return shape.area();
  }
}
