import 'package:dota2_heroes/utils/rank_calulate.dart';
import 'package:flutter_test/flutter_test.dart';

final rankData = [
  [10641, 21679, 49.08436736011809],
  [30347, 61963, 48.9760018075303],
  [40755, 82835, 49.20021729945071],
  [38757, 79043, 49.03280492896272],
];

void main() {
  for (var answer in rankData) {
    rank(answer[0], answer[1], answer[2]);
  }
}

void rank(win, play, answer) {
  test("Ranking unit test", () {
    final rank = WinRate(win, play);
    final result = Calculator(rank).sum();
    expect(result[1], answer);
  });
}