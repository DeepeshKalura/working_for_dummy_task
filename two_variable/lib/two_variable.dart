class TwoVariable {
  String operationsOnTwoNumber(
      {required int numberOne, required int numberTwo}) {
    if (numberOne + numberTwo < 100) {
      return "Sum of number should higher than 100";
    } else {
      return (numberOne - numberTwo).toString();
    }
  }
}
