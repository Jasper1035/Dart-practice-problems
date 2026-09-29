class SecretHandshake {
  List commands(int code) {
    final List actions = [];

    // 00001 (1) = wink
    if ((code & 1) != 0) {
      actions.add('wink');
    }
    // 00010 (2) = double blink
    if ((code & 2) != 0) {
      actions.add('double blink');
    }
    // 00100 (4) = close your eyes
    if ((code & 4) != 0) {
      actions.add('close your eyes');
    }
    // 01000 (8) = jump
    if ((code & 8) != 0) {
      actions.add('jump');
    }
    // 10000 (16) = reverse the order
    if ((code & 16) != 0) {
      return actions.reversed.toList();
    }

    return actions;
  }
}
