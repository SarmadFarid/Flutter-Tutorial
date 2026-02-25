/// ***************************************************************************
/// ! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
/// ? MONTH 1 — LECTURE 6
/// ? TOPIC: STRING MANIPULATION & INTERPOLATION
/// ***************************************************************************

library;

/// ---------------------------------------------------------------------------
/// ! 🔹 WHAT IS A STRING?
/// ---------------------------------------------------------------------------
/// ? A String is a sequence of characters used to represent text.
///
/// * Strings are immutable in Dart.
/// * Once created, they cannot be changed.
/// * Any modification creates a new String object.
///
/// Example:
String name = "Ahmed";

/// ADVANCED:
/// * Internally, Strings are UTF-16 encoded.
/// * They are stored in Heap memory.
/// * Because they are immutable, Dart can optimize memory usage.


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING DECLARATION
/// ---------------------------------------------------------------------------

String singleQuotes = 'Hello';
String doubleQuotes = "World";

/// NOTE:
/// * Both single and double quotes work the same.
/// * Use double quotes if your string contains single quote.
///
/// Example:
String message = "It's a beautiful day";


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING CONCATENATION
/// ---------------------------------------------------------------------------
/// ? Combining two or more strings.

void concatenationExample() {
  String firstName = "Ahmed";
  String lastName = "Ali";

  String fullName = firstName +  lastName;

  print(fullName); // Ahmed Ali
}

/// WARNING:
/// * Using + repeatedly in loops reduces performance.
///
/// ADVANCED:
/// * Prefer StringBuffer for heavy concatenation operations.


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING INTERPOLATION
/// ---------------------------------------------------------------------------
/// ? Inserting variables directly inside a string using $.
///
/// Syntax:
/// $variableName
/// ${expression}

void interpolationExample() {
  String name = "Ahmed";
  int age = 25;

  print("My name is $name and I am $age years old.");
  print("Next year I will be ${age + 1} years old.");
}

/// NOTE:
/// * Use ${} when inserting expressions.
/// * Improves readability compared to + operator.
///
/// BEST PRACTICE:
/// ✔ Always prefer interpolation over concatenation.


/// ---------------------------------------------------------------------------
/// ! 🔹 MULTI-LINE STRINGS
/// ---------------------------------------------------------------------------
/// ? Use triple quotes for multi-line strings.

String multiLine = '''
This is line one.
This is line two.
This is line three.
''';


/// ---------------------------------------------------------------------------
/// ! 🔹 COMMON STRING METHODS
/// ---------------------------------------------------------------------------

void stringMethodsExample() {
  String text = "  Flutter Development  ";

  print(text.toLowerCase());      // flutter development
  print(text.toUpperCase());      // FLUTTER DEVELOPMENT
  print(text.trim());             // Flutter Development
  print(text.length);             // Includes spaces
  print(text.contains("Flutter"));// true
  print(text.startsWith(" "));    // true
  print(text.endsWith(" "));      // true
}

/// ---------------------------------------------------------------------------
/// ! 🔹 REPLACING & SPLITTING
/// ---------------------------------------------------------------------------

void replaceSplitExample() {
  String sentence = "I love Dart and Flutter";

  print(sentence.replaceAll("Dart", "Programming"));
  print(sentence.split(" "));
}

/// NOTE:
/// * split() returns List<String>.
/// * Very useful in parsing data.


/// ---------------------------------------------------------------------------
/// ! 🔹 SUBSTRING & INDEXING
/// ---------------------------------------------------------------------------

void substringExample() {
  String word = "Flutter";

  print(word[0]);           // F
  print(word.substring(0,4)); // Flut
}

/// WARNING:
/// * Index out of range causes runtime error.


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING COMPARISON
/// ---------------------------------------------------------------------------

void comparisonExample() {
  String a = "dart";
  String b = "Dart";

  print(a == b); // false
}

/// NOTE:
/// * String comparison is case-sensitive.
/// * Use toLowerCase() for case-insensitive comparison.


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING TO OTHER TYPES (TYPE CONVERSION)
/// ---------------------------------------------------------------------------

void typeConversionExample() {
  String number = "123";

  int converted = int.parse(number);
  double decimal = double.parse("3.14");

  print(converted);
  print(decimal);
}

/// WARNING:
/// * Invalid parsing throws runtime error.
///
/// ADVANCED:
/// * Use tryParse() to avoid crash.

void safeParsing() {
  String value = "abc";

  int? result = int.tryParse(value);
  print(result); // null instead of crash
}


/// ---------------------------------------------------------------------------
/// ! 🔹 STRING PERFORMANCE (ADVANCED)
/// ---------------------------------------------------------------------------
/// ? Because Strings are immutable:
/// * Every modification creates a new object.
///
/// Example (Inefficient):
void badPractice() {
  String text = "";
  for (int i = 0; i < 1000; i++) {
    text += i.toString();
  }
}

/// ADVANCED SOLUTION:
void goodPractice() {
  StringBuffer buffer = StringBuffer();

  for (int i = 0; i < 1000; i++) {
    buffer.write(i);
  }

  print(buffer.toString());
}

/// ADVANCED:
/// * StringBuffer is optimized for heavy concatenation.
/// * Used in production-level systems.


/// ---------------------------------------------------------------------------
/// ! 🔹 REAL-WORLD USE CASES
/// ---------------------------------------------------------------------------
/// * ✔ API response formatting
/// * ✔ Logging
/// * ✔ Dynamic UI text
/// * ✔ Validation messages
/// * ✔ JSON parsing
/// * ✔ Error handling


/// ---------------------------------------------------------------------------
/// TODO 📝  — TASK
/// ---------------------------------------------------------------------------
/// ? 1️⃣ Create a program that:
/// *    - Takes first name & last name
///  *   - Prints full name using interpolation
///
/// ? 2️⃣ Create a sentence and:
/// *    - Convert to uppercase
/// *    - Replace one word
/// *    - Split into words
///
/// ? 3️⃣ Convert string "250" to int and multiply by 4.
///
/// ? 4️⃣ Write a program that checks if a word is palindrome.
///
/// TODO ADVANCED TASK:
/// * Create a function that formats currency output properly.


/// ***************************************************************************
/// ! END OF LECTURE
/// ***************************************************************************
