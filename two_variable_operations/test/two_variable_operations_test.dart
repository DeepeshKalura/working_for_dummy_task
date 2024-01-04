import 'package:two_variable_operations/two_variable_operations.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Operations in Two variable', () {
      expect(twoVariableOperations(10, 20), 30);
      expect(twoVariableOperations(1, 2), 3);
    });
  });
}
