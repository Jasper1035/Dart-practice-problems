class Proverb {
  List<String> recite(List<String> inpts) {
    if (inpts.isEmpty) {
      return [];
    }

    final List<String> lines = [];

    for (int i = 0; i < inpts.length - 1; i++) {
      lines.add('For want of a ${inpts[i]} the ${inpts[i + 1]} was lost.');
    }

    lines.add('And all for the want of a ${inpts[0]}.');

    return lines;
  }
}
