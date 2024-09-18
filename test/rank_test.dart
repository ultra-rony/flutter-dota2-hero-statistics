import 'package:dota2_heroes/features/home/presentation/widgets/hero_rank_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("testing", () {
    final win = WinRate(49, 100);
    final result = Calculator(win).sum();
    expect(result, [false, 49.0]);
  });
}