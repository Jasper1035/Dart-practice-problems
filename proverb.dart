class Proverb {
  List<String> recite(List<String> inputs) {
    if (inputs.isEmpty) {
      return [];
    }

    final List<String> lines = [];

    for (int i = 0; i < inputs.length - 1; i++) {
      lines.add('For want of a ${inputs[i]} the ${inputs[i + 1]} was lost.');
    }

    lines.add('And all for the want of a ${inputs[0]}.');

    return lines;
  }
}
