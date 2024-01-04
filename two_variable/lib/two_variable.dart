class TwoVariable {
  String operationsOnTwoNumber(
      {required int numberOne, required int numberTwo}) {
    if (numberOne + numberTwo < 100) {
      return "Need the Exceeded";
    } else {
      return (numberOne - numberTwo).toString();
    }
  }
}
