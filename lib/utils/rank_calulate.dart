import 'package:equatable/equatable.dart';

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