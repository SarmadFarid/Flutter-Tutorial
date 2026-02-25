/// ***************************************************************************
/// ! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
/// ? WEEK 2 — LECTURE 2
/// ? TOPIC: IF / ELSE STATEMENTS & NESTED CONDITIONS
/// ***************************************************************************


/// ---------------------------------------------------------------------------
/// ! 🔹 WHAT IS A CONDITIONAL STATEMENT?
/// ---------------------------------------------------------------------------
/// ? A conditional statement allows the program to make decisions.
///
/// * It executes different blocks of code depending on a condition.
/// * The condition must return a boolean value (true or false).
///
/// ADVANCED:
/// * Decision-making is the core of business logic.
/// * All authentication, validation, filtering depend on conditions.


/// ---------------------------------------------------------------------------
/// ! 🔹 BASIC IF STATEMENT
/// ---------------------------------------------------------------------------
/// ? Executes code ONLY if condition is true.

void basicIfExample() {
  int age = 20;

  if (age >= 18) {
    print("You are an adult.");
  }
}

/// NOTE:
/// * If condition is false → block will NOT execute.
/// * Condition must be boolean.


/// ---------------------------------------------------------------------------
/// ! 🔹 IF - ELSE
/// ---------------------------------------------------------------------------
/// ? Used when you have two possible outcomes.

void ifElseExample() {
  int age = 16;

  if (age >= 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }
}

/// WARNING:
/// * else does NOT take a condition.


/// ---------------------------------------------------------------------------
/// ! 🔹 IF - ELSE IF - ELSE
/// ---------------------------------------------------------------------------
/// ? Used when there are multiple conditions.

void multipleConditionsExample() {
  int marks = 85;

  if (marks >= 90) {
    print("Grade A");
  } else if (marks >= 75) {
    print("Grade B");
  } else if (marks >= 50) {
    print("Grade C");
  } else {
    print("Fail");
  }
}

/// IMPORTANT:
/// * Conditions are checked from TOP to BOTTOM.
/// * First true condition stops execution.


/// ---------------------------------------------------------------------------
/// ! 🔹 NESTED IF STATEMENTS
/// ---------------------------------------------------------------------------
/// ? An if statement inside another if statement.

void nestedIfExample() {
  bool isLoggedIn = true;
  bool isAdmin = true;

  if (isLoggedIn) {
    print("User is logged in.");

    if (isAdmin) {
      print("Access granted to Admin Panel.");
    } else {
      print("Access denied. Not an admin.");
    }

  } else {
    print("Please login first.");
  }
}

/// ADVANCED:
/// * Nested conditions are common in:
///   - Authentication systems
///   - Role-based access control
///   - Payment validation
///   - API authorization


/// ---------------------------------------------------------------------------
/// ! 🔹 LOGICAL OPERATORS WITH IF
/// ---------------------------------------------------------------------------
/// ? We combine conditions using:
///   && (AND)
///   || (OR)
///   !  (NOT)

void logicalIfExample() {
  int age = 22;
  bool hasID = true;

  if (age >= 18 && hasID) {
    print("Entry allowed.");
  } else {
    print("Entry denied.");
  }
}

/// NOTE:
/// * && requires both conditions true.
/// * || requires at least one true.


/// ---------------------------------------------------------------------------
/// ! 🔹 REAL-WORLD EXAMPLE (BUSINESS LOGIC)
/// ---------------------------------------------------------------------------

void ecommerceExample() {
  double cartTotal = 1200;
  bool isPremiumUser = true;

  if (cartTotal > 1000) {
    if (isPremiumUser) {
      print("You get 20% discount.");
    } else {
      print("You get 10% discount.");
    }
  } else {
    print("No discount applied.");
  }
}

/// ADVANCED INSIGHT:
/// * Complex apps rely heavily on layered conditional logic.


/// ---------------------------------------------------------------------------
/// ! 🔹 COMMON MISTAKES
/// ---------------------------------------------------------------------------
/// WARNING:
/// ❌ Using = instead of ==
/// ❌ Forgetting curly braces {}
/// ❌ Wrong condition order
/// ❌ Deep nesting causing unreadable code
///
/// BAD PRACTICE:
void badExample() {
  int marks = 85;

  if (marks >= 50) {
    print("Pass");
  } else if (marks >= 75) { // ❌ This will NEVER run
    print("Grade B");
  }
}

/// WHY?
/// Because 85 >= 50 already true.
/// Order matters!


/// ---------------------------------------------------------------------------
/// ! 🔹 PERFORMANCE & READABILITY
/// ---------------------------------------------------------------------------
/// ADVANCED:
/// * Avoid deep nesting (more than 3 levels).
/// * Use early returns in functions.
/// * Keep conditions readable.
/// * Break complex logic into small functions.


/// ---------------------------------------------------------------------------
/// ! 📝 TODO: TASK
/// ---------------------------------------------------------------------------
/// 1️⃣ Create a program that:
///     - Takes temperature input
///     - If > 40 → "Very Hot"
///     - If 30–40 → "Hot"
///     - If 20–29 → "Normal"
///     - Else → "Cold"
///
/// 2️⃣ Create login system logic:
///     - If username & password correct → Success
///     - If wrong password → Error message
///     - If user not found → Different message
///
/// 3️⃣ Create nested condition for:
///     - Student result
///     - If pass → Check distinction
///     - If fail → Check reattempt eligibility
///
/// ADVANCED TASK:
/// * Refactor nested conditions into cleaner structure.


/// ***************************************************************************
/// ! END OF LECTURE
/// ***************************************************************************
