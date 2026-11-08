class MatchingBrackets {
  bool isPaired(String input) {
    final List<String> stack = [];
    final Map<String, String> matchingPair = {')': '(', '}': '{', ']': '['};

    for (int j = 0; j < input.length; j++) {
      final char = input[j];

      // If it's an opening bracket, push onto the stack
      if (matchingPair.containsValue(char)) {
        stack.add(char);
      }
      // If it's a closing bracket, verify it matches the most recent opening bracket
      else if (matchingPair.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != matchingPair[char]) {
          return false;
        }
      }
      // Non-bracket characters are automatically ignored
    }

    // A valid string leaves no unclosed brackets on the stack
    return stack.isEmpty;
  }
}
