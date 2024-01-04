import 'package:flutter_test/flutter_test.dart';
import 'package:two_variable/two_variable.dart';

void main() {
  final twoVariable = TwoVariable();

  test("For the TwoVariable operations: ", () {
    expect(twoVariable.operationsOnTwoNumber(numberOne: 10, numberTwo: 20),
        "Need the Exceeded");
    expect(twoVariable.operationsOnTwoNumber(numberOne: 100, numberTwo: 200),
        "-100");
  });
}
