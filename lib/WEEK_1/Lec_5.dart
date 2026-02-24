/// ***************************************************************************
/// ! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
/// ?  MONTH 1 — DAY 5
/// ? TOPIC: OPERATORS & EXPRESSIONS 
/// ***************************************************************************

/// ---------------------------------------------------------------------------
/// ! WHAT IS AN OPERATOR?
/// ---------------------------------------------------------------------------
///? An operator is a symbol that performs an operation on one or more values.
///? These values are called operands.
///
/// Example:
/// int result = 5 + 3;
/// Here:
/// 5 and 3 → operands
/// + → operator
/// 5 + 3 → expression
///
///* An expression is anything that produces a value.


/// ---------------------------------------------------------------------------
/// ! TYPES OF OPERATORS IN DART
/// ---------------------------------------------------------------------------
/// 1️⃣ Arithmetic Operators
/// 2️⃣ Comparison Operators
/// 3️⃣ Logical Operators
/// 4️⃣ Assignment Operators
/// 5️⃣ Operator Precedence


/// ***************************************************************************
/// 1️⃣ ARITHMETIC OPERATORS
/// ***************************************************************************

///? Used for mathematical calculations.

/// ---------------------------------------------------------------------------
/// +  Addition
/// -  Subtraction
/// *  Multiplication
/// /  Division (returns double)
/// ~/ Integer Division (returns int)
/// %  Modulus (remainder)
/// ---------------------------------------------------------------------------

void arithmeticExamples() {
  int a = 10;
  int b = 3;

  print(a + b);   // 13
  print(a - b);   // 7
  print(a * b);   // 30
  print(a / b);   // 3.333...
  print(a ~/ b);  // 3
  print(a % b);   // 1
}

///* % (modulus) is heavily used in:
/// - Even/odd detection
/// - Pagination logic
/// - Cyclic UI patterns

/// Example:
bool isEven(int number) {
  return number % 2 == 0;
}



/// ***************************************************************************
/// 2️⃣ COMPARISON OPERATORS
/// ***************************************************************************

///? Used to compare two values.
///? Always return bool (true/false).

/// ==  Equal
/// !=  Not equal
/// >   Greater than
/// <   Less than
/// >=  Greater than or equal
/// <=  Less than or equal

void comparisonExamples() {
  int x = 10;
  int y = 20;

  print(x == y);  // false
  print(x != y);  // true
  print(x < y);   // true
  print(x > y);   // false
}

///* In Dart, == checks value equality.
///* For objects, you can override == operator.

/// ---------------------------------------------------------------------------
/// ! WHERE USED?
/// ---------------------------------------------------------------------------
/// - Conditional statements (if/else)
/// - Loops
/// - Filtering data
/// - Form validation


/// ***************************************************************************
/// 3️⃣ LOGICAL OPERATORS
/// ***************************************************************************

///? Used to combine multiple boolean expressions.

/// &&  AND  → Both must be true
/// ||  OR   → At least one true
/// !   NOT  → Reverse boolean

void logicalExamples() {
  bool isLoggedIn = true;
  bool isAdmin = false;

  print(isLoggedIn && isAdmin); // false
  print(isLoggedIn || isAdmin); // true
  print(!isLoggedIn);           // false
}

/// ---------------------------------------------------------------------------
/// ! SHORT-CIRCUIT BEHAVIOR
/// ---------------------------------------------------------------------------
///* Dart uses short-circuit evaluation:
///
/// In AND (&&):
/// If first condition is false → second condition NOT checked.
///
/// In OR (||):
/// If first condition is true → second condition NOT checked.
///
///* Important for performance and null safety.


/// ***************************************************************************
/// 4️⃣ ASSIGNMENT OPERATORS
/// ***************************************************************************

///? Used to assign values to variables.

/// =
/// +=
/// -=
/// *=
/// /=
/// ~/=
/// %=

void assignmentExamples() {
  int number = 10;

  number += 5;  // number = number + 5
  number -= 3;
  number *= 2;
  number ~/= 4;
  number %= 3;
}

///* These are compound assignment operators.
///* Improve readability and reduce repetition.


/// ---------------------------------------------------------------------------
/// ! INCREMENT & DECREMENT
/// ---------------------------------------------------------------------------
/// ++  Pre/Post Increment
/// --  Pre/Post Decrement

void incrementExample() {
  int a = 5;

  print(a++); // 5 (post increment)
  print(a);   // 6

  print(++a); // 7 (pre increment)
}

///* Pre-increment → value increases BEFORE usage.
///* Post-increment → value increases AFTER usage.


/// ***************************************************************************
/// 5️⃣ OPERATOR PRECEDENCE
/// ***************************************************************************

///? Determines which operation runs first in an expression.
///
/// Highest → Lowest:
/// 1. ()
/// 2. Unary (!, ++, --)
/// 3. *, /, ~/, %
/// 4. +, -
/// 5. Comparison
/// 6. Logical AND (&&)
/// 7. Logical OR (||)
/// 8. Assignment (=)

void precedenceExample() {
  int result = 10 + 5 * 2;
  print(result); // 20 (not 30)
}

///* Always use parentheses () for clarity.


/// ***************************************************************************
/// ! REAL-WORLD ADVANCED USAGE
/// ***************************************************************************

///? Complex Condition Example

bool canAccess(bool isLoggedIn, bool isVerified, int age) {
  return isLoggedIn && isVerified && age >= 18;
}

///? Financial Calculation Example

double calculateTotal(double price, double taxRate) {
  return price + (price * taxRate);
}


/// ***************************************************************************
/// TODO: TASK — SIMPLE CALCULATOR
/// ***************************************************************************

void simpleCalculator() {
  double num1 = 20;
  double num2 = 5;

  print("Addition: ${num1 + num2}");
  print("Subtraction: ${num1 - num2}");
  print("Multiplication: ${num1 * num2}");
  print("Division: ${num1 / num2}");
  print("Modulus: ${num1 % num2}");
}


/// ***************************************************************************
/// TODO: HOMEWORK — COMPLEX OPERATIONS PROGRAM
/// ***************************************************************************

/// Requirements:
/// 1️⃣ Ask user for 3 numbers.
/// 2️⃣ Perform:
///     - Combined arithmetic expression
///     - Comparison checks
///     - Logical evaluation
/// 3️⃣ Use operator precedence intentionally.
/// 4️⃣ Use increment/decrement operators.
/// 5️⃣ Print detailed output.


/// ***************************************************************************
/// ! COMMON MISTAKES
/// ***************************************************************************

/// WARNING:
/// - Confusing = with ==
/// - Forgetting division returns double
/// - Not understanding short-circuit logic
/// - Ignoring operator precedence


/// ***************************************************************************
/// ! PROFESSIONAL INSIGHT
/// ***************************************************************************

/// ADVANCED:
/// - Operators can be overloaded in custom classes.
/// - Dart treats operators as methods internally.
/// - Clean expressions improve performance and readability.
/// - Always prioritize clarity over clever one-line logic.


/// ***************************************************************************
/// END OF LECTURE
/// ***************************************************************************
