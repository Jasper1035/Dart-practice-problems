import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart'; // Ensure 'intl' package is installed

void main() {
  // 1. Read the JSON file
  File file = File("birthdays.json");
  String content = file.readAsStringSync();
  Map<String, dynamic> data = jsonDecode(content);

  // 2. Extract months using the formatter helper
  DateFormat extractor = DateFormat("MMMM");

  // We cast 'd' to String so the formatter function accepts it
  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d as String)),
  ];

  // 3. Count and print the occurrences
  counter(months);
}

// Helper to convert String date to DateTime object
DateTime formatter(String birthday) {
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

// Function to count occurrences of each month
void counter(List<String> m) {
  Map<String, int> occurrences = {};

  for (var month in m) {
    // If the month exists, increment; otherwise, start at 1
    occurrences[month] = (occurrences[month] ?? 0) + 1;
  }

  // Print the final result to the console
  print("--- Birthday Counts by Month ---");
  occurrences.forEach((month, count) {
    print("$month: $count");
  });
}
