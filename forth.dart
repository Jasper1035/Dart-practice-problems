class Forth {
  final List<int> _stack = [];
  final Map<String, List<String>> _definitions = {};

  List<int> get stack => List.unmodifiable(_stack);

  void evaluate(String input) {
    List<String> tokens = input
        .split(RegExp(r'\s+'))
        .where((t) => t.isNotEmpty)
        .toList();
    _processTokens(tokens);
  }

  void _processTokens(List<String> tokens) {
    int i = 0;
    while (i < tokens.length) {
      String token = tokens[i];

      // Handle user-defined words: : name definition ;
      if (token == ':') {
        int endIdx = tokens.indexOf(';', i);
        if (endIdx == -1 || i + 1 >= endIdx) {
          throw Exception('Invalid definition');
        }

        String wordName = tokens[i + 1].toUpperCase();

        // Cannot redefine numbers
        if (int.tryParse(wordName) != null) {
          throw Exception('Invalid definition');
        }

        // Expand existing definitions inside the new definition
        List<String> rawBody = tokens.sublist(i + 2, endIdx);
        List<String> expandedBody = [];
        for (final item in rawBody) {
          String upperItem = item.toUpperCase();
          if (_definitions.containsKey(upperItem)) {
            expandedBody.addAll(_definitions[upperItem]!);
          } else {
            expandedBody.add(upperItem);
          }
        }

        _definitions[wordName] = expandedBody;
        i = endIdx + 1;
        continue;
      }

      String upperToken = token.toUpperCase();

      // Expand user-defined word
      if (_definitions.containsKey(upperToken)) {
        _processTokens(_definitions[upperToken]!);
        i++;
        continue;
      }

      // Parse integer
      int? num = int.tryParse(token);
      if (num != null) {
        _stack.add(num);
        i++;
        continue;
      }

      // Built-in operations
      _executeBuiltIn(upperToken);
      i++;
    }
  }

  void _executeBuiltIn(String op) {
    switch (op) {
      case '+':
        _ensureStackSize(2);
        int b = _stack.removeLast();
        int a = _stack.removeLast();
        _stack.add(a + b);
        break;

      case '-':
        _ensureStackSize(2);
        int b = _stack.removeLast();
        int a = _stack.removeLast();
        _stack.add(a - b);
        break;

      case '*':
        _ensureStackSize(2);
        int b = _stack.removeLast();
        int a = _stack.removeLast();
        _stack.add(a * b);
        break;

      case '/':
        _ensureStackSize(2);
        int b = _stack.removeLast();
        int a = _stack.removeLast();
        if (b == 0) {
          throw Exception('Division by zero');
        }
        _stack.add(a ~/ b);
        break;

      case 'DUP':
        _ensureStackSize(1);
        _stack.add(_stack.last);
        break;

      case 'DROP':
        _ensureStackSize(1);
        _stack.removeLast();
        break;

      case 'SWAP':
        _ensureStackSize(2);
        int top = _stack.removeLast();
        int second = _stack.removeLast();
        _stack.add(top);
        _stack.add(second);
        break;

      case 'OVER':
        _ensureStackSize(2);
        _stack.add(_stack[_stack.length - 2]);
        break;

      default:
        throw Exception('Unknown command');
    }
  }

  void _ensureStackSize(int required) {
    if (_stack.length < required) {
      throw Exception('Stack empty');
    }
  }
}
