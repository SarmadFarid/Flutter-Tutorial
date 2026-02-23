/// ***************************************************************************
/// COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
/// MONTH 1 — LECTURE 2
/// TOPIC: DART FUNDAMENTALS (VARIABLES, DATA TYPES, MEMORY, RUNTIME)
/// ***************************************************************************
library;

/// ---------------------------------------------------------------------------
/// 🔹 WHAT IS DART?
/// ---------------------------------------------------------------------------
/// Dart is a programming language created by Google.
/// It is used to build mobile, web, and desktop apps.
/// Flutter uses Dart to create beautiful and fast applications.
///
/// Dart is:
/// - Object-Oriented (everything is based on objects)
/// - Type-Safe (every variable has a type)
/// - Compiled Language (code is converted before execution)


/// ---------------------------------------------------------------------------
/// 🔹 COMPILE TIME vs RUN TIME
/// ---------------------------------------------------------------------------

/// ✅ Compile Time:
/// The time when Dart checks your code BEFORE running it.
/// Dart checks:
/// - Syntax errors
/// - Type errors
/// - Undefined variables
///
/// Example:
/// int age = "Hello"; ❌ Error at compile time
/// Because "Hello" is a String, not an int.


/// ✅ Run Time:
/// The time when your program is actually running.
///
/// Example:
/// int number = 10;
/// print(number ~/ 0); ❌ Runtime Error (division by zero)
///
/// The code compiles correctly, but crashes while running.


/// ---------------------------------------------------------------------------
/// 🔹 MEMORY ALLOCATION (Simple Explanation)
/// ---------------------------------------------------------------------------
/// When you create a variable, Dart stores it in memory (RAM).
///
/// There are two main memory areas:
///
/// 1️⃣ Stack Memory
/// - Stores simple variables (int, double, bool)
/// - Fast access
///
/// 2️⃣ Heap Memory
/// - Stores objects (String, List, custom classes)
/// - Used for dynamic data
///
/// Example:
/// int age = 25;         → Stored in Stack
/// String name = "Ali";  → Object stored in Heap


/// ---------------------------------------------------------------------------
/// 🔹 VARIABLE DECLARATION KEYWORDS
/// ---------------------------------------------------------------------------
/// Dart uses 3 important keywords:
/// 1. var
/// 2. final
/// 3. const
///
/// They differ in:
/// - Reassignment ability
/// - Compile-time vs runtime
/// - Memory behavior


/// ---------------------------------------------------------------------------
/// 1️⃣ var
/// ---------------------------------------------------------------------------
/// - Type is inferred automatically.
/// - Can be changed later.
/// - Decided at compile time.
/// - Stored in memory normally (stack/heap depending on type).
///
/// Example:
var name = "Ahmed"; // Dart infers String
name = "Ali";       // ✅ Allowed

/// When to use?
/// - When value will change.
/// - When type is obvious.


/// ---------------------------------------------------------------------------
/// 2️⃣ final
/// ---------------------------------------------------------------------------
/// - Value can ONLY be set once.
/// - Value is determined at runtime.
/// - Cannot be reassigned.
/// - Memory allocated once.
///
/// Example:
final age = 30;
// age = 40; ❌ Error (cannot change)

/// Runtime Example:
final currentTime = DateTime.now(); 
/// This works because value is known at runtime.

/// When to use?
/// - API responses
/// - User input
/// - Values that should not change


/// ---------------------------------------------------------------------------
/// 3️⃣ const
/// ---------------------------------------------------------------------------
/// - Compile-time constant.
/// - Must be known BEFORE running program.
/// - Cannot change.
/// - Stored directly in memory as constant.
/// - More memory efficient.
///
/// Example:
const pi = 3.14;
// const time = DateTime.now(); ❌ Error
/// Because DateTime.now() is runtime value.


/// ---------------------------------------------------------------------------
/// 🔹 DIFFERENCE BETWEEN final AND const
/// ---------------------------------------------------------------------------
/// final:
/// - Value decided at runtime.
/// - Can store dynamic values.
/// - Created once.
///
/// const:
/// - Value decided at compile time.
/// - Cannot use runtime values.
/// - More optimized and fixed.


/// ---------------------------------------------------------------------------
/// 🔹 CORE DATA TYPES
/// ---------------------------------------------------------------------------

/// 1️⃣ int
/// Whole numbers (no decimal).
int age = 25;

/// 2️⃣ double
/// Decimal numbers.
double price = 19.99;

/// 3️⃣ String
/// Text values.
String message = "Hello Dart";

/// 4️⃣ bool
/// True or false only.
bool isLoggedIn = true;

/// 5️⃣ num
/// Parent type of int and double.
num number = 10;
number = 3.14; // ✅ Allowed


/// ---------------------------------------------------------------------------
/// 🔹 TYPE INFERENCE
/// ---------------------------------------------------------------------------
/// Dart automatically detects type when using var.
///
/// Example:
var city = "Cairo";  // String
var score = 100;     // int
var height = 5.9;    // double


/// ---------------------------------------------------------------------------
/// 🔹 COMMENTS IN DART
/// ---------------------------------------------------------------------------
/// //  → Single line comment
/// /* */ → Multi-line comment
/// /// → Documentation comment (used for classes & functions)


/// ---------------------------------------------------------------------------
/// 🔹 BEST PRACTICES
/// ---------------------------------------------------------------------------
/// ✔ Use const whenever possible (better performance).
/// ✔ Use final for values that should not change.
/// ✔ Use var only when variable will change.
/// ✔ Always understand difference between runtime and compile time.
/// ✔ Prefer explicit types in large projects for clarity.


/// ---------------------------------------------------------------------------
// 📝 TODO
/// ---------------------------------------------------------------------------
/// 1️⃣ Create 5 variables:
/// - 1 using var
/// - 2 using final
/// - 2 using const
///
/// 2️⃣ Create examples of:
/// - Compile-time error
/// - Runtime error
///
/// 3️⃣ Create a program that:
/// - Stores your name, age, height, and student status.
/// - Prints them to console.
///
/// 4️⃣ Explain in your own words:
/// - What is the difference between final and const?
/// - What happens in memory when a variable is created?


/// ***************************************************************************
/// END OF LECTURE
/// ***************************************************************************
