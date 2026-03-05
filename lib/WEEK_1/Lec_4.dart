/// ***************************************************************************
/// ! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
/// ? MONTH 1 — LECTURE 4
/// ? TOPIC: DART FUNDAMENTALS (VARIABLES, DATA TYPES, MEMORY, RUNTIME)
/// ***************************************************************************

library;

/// ---------------------------------------------------------------------------
/// ! 🔹 WHAT IS DART?
/// ---------------------------------------------------------------------------
/// TODO:
/// * Dart is a programming language created by Google.
/// * It is used to build mobile, web, and desktop apps.
/// * Flutter uses Dart to create beautiful and fast applications.
///
/// ? Dart is:
/// * - Object-Oriented (everything is based on objects)
/// * - Type-Safe (every variable has a type)
/// * - Compiled Language (code is converted before execution)
///
/// NOTE:
/// * Dart supports both JIT (Just-In-Time) and AOT (Ahead-Of-Time) compilation.
///
/// ADVANCED:
/// * JIT is used during development (Hot Reload).
/// * AOT is used in production for high performance.


/// ---------------------------------------------------------------------------
/// ! 🔹 COMPILE TIME vs RUN TIME
/// ---------------------------------------------------------------------------

/// ? ✅ Compile Time:
/// * The time when Dart checks your code BEFORE running it.
/// * Dart checks:
///   - Syntax errors
///   - Type errors
///   - Undefined variables
///
/// Example:
/// int age = "Hello"; ❌ Error at compile time
/// Because "Hello" is a String, not an int.
///
/// WARNING:
/// * Compile-time errors prevent the app from starting.


/// ? ✅ Run Time:
/// * The time when your program is actually running.
///
/// Example:
/// int number = 10;
/// print(number ~/ 0); ❌ Runtime Error (division by zero)
///
/// NOTE:
/// * The code compiles correctly, but crashes while running.
///
/// ADVANCED:
/// * Runtime errors are harder to detect and must be handled using
///   try-catch mechanisms.


/// ---------------------------------------------------------------------------
/// ! 🔹 MEMORY ALLOCATION (Simple Explanation)
/// ---------------------------------------------------------------------------
/// ? When you create a variable, Dart stores it in memory (RAM).
///
/// * There are two main memory areas:
///
/// 1️⃣ Stack Memory
/// * Stores simple variables (int, double, bool)
/// * Fast access
/// * Automatically managed
///
/// 2️⃣ Heap Memory
/// * Stores objects (String, List, custom classes)
/// * Used for dynamic data
/// * Managed by Garbage Collector
///
/// Example:
/// int age = 25;         → Stored in Stack
/// String name = "Ali";  → Object stored in Heap
///
/// ADVANCED:
/// * Dart uses automatic garbage collection to free unused heap memory.


/// ---------------------------------------------------------------------------
/// ! 🔹 VARIABLE DECLARATION KEYWORDS
/// ---------------------------------------------------------------------------
/// ? Dart uses 3 important keywords:
/// 1. var
/// 2. final
/// 3. const
///
/// * They differ in:
///   - Reassignment ability
///   - Compile-time vs runtime behavior
///   - Memory optimization


/// ---------------------------------------------------------------------------
/// ! 1️⃣ var
/// ---------------------------------------------------------------------------
/// ? - Type is inferred automatically.
/// ? - Can be changed later.
/// ? - Decided at compile time.
/// ? - Stored in memory normally (stack/heap depending on type).
///
/// Example:
var name = "Ahmed"; // Dart infers String
// name = "Ali";       // ✅ Allowed
///
/// NOTE:
/// * Once inferred, type cannot change.
///
/// WARNING:
/// * var name = "Ali";
///   name = 10; ❌ Error (type mismatch)
///
/// When to use?
/// * - When value will change.
/// * - When type is obvious.


/// ---------------------------------------------------------------------------
/// ! 2️⃣ final
/// ---------------------------------------------------------------------------
/// ? - Value can ONLY be set once.
/// ? - Value is determined at runtime.
/// ? - Cannot be reassigned.
/// ? - Memory allocated once.
///
/// Example:
final age = 30;
// age = 40; ❌ Error (cannot change)
///
/// Runtime Example:
final currentTime = DateTime.now();
/// This works because value is known at runtime.
///
/// NOTE:
/// * final variable itself cannot change,
///   but object inside it can change (if mutable).
///
/// ADVANCED:
/// * final improves safety in large-scale applications.
///
/// When to use?
/// * - API responses
/// * - User input
/// * - Values that should not change


/// ---------------------------------------------------------------------------
/// ! 3️⃣ const
/// ---------------------------------------------------------------------------
/// ? - Compile-time constant.
/// ? - Must be known BEFORE running program.
/// ? - Cannot change.
/// ? - Stored directly in memory as constant.
/// ? - More memory efficient.
///
/// Example:
const pi = 3.14;
// const time = DateTime.now(); ❌ Error
/// Because DateTime.now() is runtime value.
///
/// NOTE:
/// * const values are canonicalized (shared in memory).
///
/// ADVANCED:
/// * Using const reduces rebuild cost in Flutter widgets.


/// ---------------------------------------------------------------------------
/// ! 🔹 DIFFERENCE BETWEEN final AND const
/// ---------------------------------------------------------------------------
/// final:
/// * - Value decided at runtime.
/// * - Can store dynamic values.
/// * - Created once.
///
/// const:
/// * - Value decided at compile time.
/// * - Cannot use runtime values.
/// * - More optimized and fixed.
///
/// WARNING:
/// * Many developers confuse final with const.
/// * const is stronger restriction than final.


/// ---------------------------------------------------------------------------
/// ! 🔹 CORE DATA TYPES
/// ---------------------------------------------------------------------------

/// 1️⃣ int
/// * Whole numbers (no decimal).
// int age = 25;

/// 2️⃣ double
/// * Decimal numbers.
double price = 19.99;

/// 3️⃣ String
/// * Text values.
String message = "Hello Dart";

/// 4️⃣ bool
/// * True or false only.
bool isLoggedIn = true;

/// 5️⃣ num
/// * Parent type of int and double.
num number = 10;
// number = 3.14; // ✅ Allowed
///
/// NOTE:
/// * num gives flexibility but reduces strict type safety.


/// ---------------------------------------------------------------------------
/// ! 🔹 TYPE INFERENCE
/// ---------------------------------------------------------------------------
/// ? Dart automatically detects type when using var.
///
/// Example:
var city = "Cairo";  // String
var score = 100;     // int
var height = 5.9;    // double
///
/// ADVANCED:
/// * Type inference improves readability but explicit types
///   improve maintainability in large projects.


/// ---------------------------------------------------------------------------
/// ! 🔹 COMMENTS IN DART
/// ---------------------------------------------------------------------------
/// //  → Single line comment
/// /* */ → Multi-line comment
/// /// → Documentation comment (used for classes & functions)
///
/// NOTE:
/// * Documentation comments are used by IDE to generate API docs.


/// ---------------------------------------------------------------------------
/// ! 🔹 BEST PRACTICES
/// ---------------------------------------------------------------------------
/// ✔ Use const whenever possible (better performance).
/// ✔ Use final for values that should not change.
/// ✔ Use var only when variable will change.
/// ✔ Always understand difference between runtime and compile time.
/// ✔ Prefer explicit types in large projects for clarity.
/// ✔ Avoid unnecessary mutable variables.


/// ---------------------------------------------------------------------------
/// TODO 
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
///
/// ADVANCED TASK:
/// * Research difference between Stack & Heap in Dart VM.


/// ***************************************************************************
/// ! END OF LECTURE
/// ***************************************************************************
