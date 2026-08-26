class Proverb {
  String recite(List<String> words) {
    if (words.isEmpty) {
      return '';
    }

    List<String> lines = [];

    // Build the sequential loss chains
    for (int i = 0; i < words.length - 1; i++) {
      lines.add('For want of a ${words[i]} the ${words[i + 1]} was lost.');
    }

    // Add the final concluding line referencing the first item
    lines.add('And all for the want of a ${words[0]}.');

    return lines.join('\n');
  }
}

void main() {
  final proverb = Proverb();

  List<String> inputs = [
    "nail",
    "shoe",
    "horse",
    "rider",
    "message",
    "battle",
    "kingdom",
  ];

  print(proverb.recite(inputs));
}
