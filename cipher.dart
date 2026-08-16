class AtbashCipher {
  String encode(String text) {
    StringBuffer encoded = StringBuffer();
    int letterCount = 0;

    for (int i = 0; i < text.length; i++) {
      int code = text.codeUnitAt(i);

      // Handle uppercase letters (A-Z) -> convert to lowercase
      if (code >= 65 && code <= 90) {
        code += 32;
      }

      // Handle lowercase letters (a-z)
      if (code >= 97 && code <= 122) {
        if (letterCount > 0 && letterCount % 5 == 0) {
          encoded.write(' ');
        }
        // Atbash letter transpose: 'a' + 'z' - char
        int transposed = 97 + 122 - code;
        encoded.writeCharCode(transposed);
        letterCount++;
      }
      // Handle digits (0-9): preserve unchanged
      else if (code >= 48 && code <= 57) {
        if (letterCount > 0 && letterCount % 5 == 0) {
          encoded.write(' ');
        }
        encoded.writeCharCode(code);
        letterCount++;
      }
      // All other characters (spaces, punctuation) are skipped
    }

    return encoded.toString();
  }

  String decode(String text) {
    StringBuffer decoded = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      int code = text.codeUnitAt(i);

      // Handle uppercase letters (A-Z) -> convert to lowercase
      if (code >= 65 && code <= 90) {
        code += 32;
      }

      // Handle lowercase letters (a-z)
      if (code >= 97 && code <= 122) {
        int transposed = 97 + 122 - code;
        decoded.writeCharCode(transposed);
      }
      // Handle digits (0-9)
      else if (code >= 48 && code <= 57) {
        decoded.writeCharCode(code);
      }
      // Spaces in ciphertext are skipped during decode
    }

    return decoded.toString();
  }
}

void main() {
  final cipher = AtbashCipher();

  print(cipher.encode("mzsrw"));
  // Output: gvhg

  print(cipher.encode("x123 yes"));
  // Output: c123b vh

  print(cipher.decode("gvhg"));
  // Output: test

  print(cipher.decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"));
  // Output: thequickbrownfoxjumpsoverthelazydog
}
