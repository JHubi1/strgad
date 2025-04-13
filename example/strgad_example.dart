import 'package:strgad/strgad.dart';

void main() {
  String s = "hello";
  String t = "helloo";

  print(s.levenshteinDistance(t)); // Output: 1
}
