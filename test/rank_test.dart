import 'package:dota2_heroes/features/home/presentation/widgets/hero_rank_widget.dart';
import 'package:flutter_test/flutter_test.dart';

List<List<dynamic>> rankData = [
  [49, 100, [false, 49.0]],
  [51, 100, [true, 51.0]],
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
    expect(result, answer);
  });
}