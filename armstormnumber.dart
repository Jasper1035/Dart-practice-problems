class ArmstrongNumbers {
  bool isArmstrongNumber(dynamic number) {
    // Convert to string to easily count digits and iterate
    String numStr = number.toString();
    int power = numStr.length;

    // Use BigInt to handle large numbers without overflow
    BigInt sum = BigInt.zero;
    BigInt original = BigInt.parse(numStr);

    for (int i = 0; i < numStr.length; i++) {
      int digit = int.parse(numStr[i]);
      // digit^power using BigInt.pow
      sum += BigInt.from(digit).pow(power);
    }

    return sum == original;
  }
}

void main() {
  final armstrong = ArmstrongNumbers();

  print(armstrong.isArmstrongNumber(9)); // true (9^1 = 9)
  print(armstrong.isArmstrongNumber(10)); // false (1^2 + 0^2 = 1)
  print(armstrong.isArmstrongNumber(153)); // true (1^3 + 5^3 + 3^3 = 153)
  print(armstrong.isArmstrongNumber(154)); // false (1^3 + 5^3 + 4^3 = 190)
}
