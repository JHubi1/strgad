import 'package:strgad/strgad.dart';
import 'package:test/test.dart';

void main() {
  group("Levenshtein distance", () {
    test("Empty strings", () {
      expect("".levenshteinDistance(""), equals(0));
    });

    test("String vs empty string", () {
      expect("abc".levenshteinDistance(""), equals(3));
      expect("".levenshteinDistance("abc"), equals(3));
    });

    test("Identical strings", () {
      expect("abcdef".levenshteinDistance("abcdef"), equals(0));
    });

    test("Classic example (kitten vs sitting)", () {
      expect("kitten".levenshteinDistance("sitting"), equals(3));
    });

    test("Additional example (flaw vs lawn)", () {
      expect("flaw".levenshteinDistance("lawn"), equals(2));
    });

    test("Another example (gumbo vs gambol)", () {
      expect("gumbo".levenshteinDistance("gambol"), equals(2));
    });
  });
}
