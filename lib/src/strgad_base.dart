import 'dart:math';

extension LevenshteinDistance on String {
  /// Calculates the Levenshtein distance between this string and another string.
  ///
  /// The Levenshtein distance is a measure of the difference between two
  /// strings. It is defined as the minimum number of single-character edits
  /// (insertions, deletions, or substitutions) required to change one string
  /// into the other.
  /// This method loosely implements the algorithm described here:
  /// https://en.wikipedia.org/wiki/Levenshtein_distance#Iterative_with_two_matrix_rows
  ///
  /// To use this method, simply call it on a string and pass the other string
  /// as an argument.
  ///
  /// ```dart
  /// String s = "kitten";
  /// String t = "sitting";
  /// int distance = s.levenshteinDistance(t);
  /// print(distance); // 3
  /// ```
  ///
  /// It doesn't matter what string you call it on; the result will be the same.
  ///
  /// ```dart
  /// int distance1 = s.levenshteinDistance(t);
  /// int distance2 = t.levenshteinDistance(s);
  /// print(distance1 == distance2); // true
  /// ```
  int levenshteinDistance(String other) {
    if (isEmpty) return other.length;
    if (other.isEmpty) return length;
    if (this == other) return 0;

    List<int> v0 = List<int>.generate(other.length + 1, (i) => i);
    List<int> v1 = List<int>.filled(other.length + 1, 0);

    for (int i = 0; i < length; i++) {
      v1[0] = i + 1;

      for (int j = 0; j < other.length; j++) {
        v1[j + 1] = [
          (v0[j + 1] + 1), // deletion
          (v1[j] + 1), // insertion
          (this[i] == other[j] ? v0[j] : v0[j] + 1), // substitution
        ].reduce(min);
      }

      (v0, v1) = (v1, v0);
    }

    return v0[other.length];
  }
}
