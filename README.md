# strgad

[![Pub Version](https://img.shields.io/pub/v/strgad)](https://pub.dev/packages/strgad) [![Pub Points](https://img.shields.io/pub/points/strgad)](https://pub.dev/packages/strgad/score)

A helper library providing various functions to assist with string manipulation and formatting.

These functions include:

- `String.levenshteinDistance(String)`
  - Calculates the Levenshtein distance between two strings

## Usage

This package has zero dependencies and can be used without any dependency issues. To use it, simply install it via PUB and import it into your code. To learn more about each function, check out the API documentation.

```dart
import 'package:strgad/strgad.dart';

void main() {
  String str1 = "kitten";
  String str2 = "sitting";

  print(str1.levenshteinDistance(str2)); // Output: 1
}
```

## Contributing

If you would like to contribute to this package, please open an issue first and propose your changes. After that, you can create a pull request with your changes, or let us do the changes for you. We will review your changes and merge them if they are appropriate.
