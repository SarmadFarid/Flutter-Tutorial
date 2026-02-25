/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 2 — LECTURE 3
? TOPIC: SWITCH-CASE STATEMENTS (ADVANCED LEVEL)
***************************************************************************
*/

library;

/*
---------------------------------------------------------------------------
! WHAT IS A SWITCH STATEMENT?
---------------------------------------------------------------------------
?
A switch statement is a control flow statement used to execute 
different blocks of code based on a single variable’s value.

* It is used when you have multiple fixed possible values.
* It improves readability compared to long if-else chains.
* It works best with:
    - int
    - String
    - enum
    - constant values

*/
void basicSwitchExample() {
  int day = 3;

  switch (day) {
    case 1:
      print("Monday");
      break;

    case 2:
      print("Tuesday");
      break;

    case 3:
      print("Wednesday");
      break;

    default:
      print("Invalid day");
  }
}

/*
---------------------------------------------------------------------------
! HOW SWITCH WORKS
---------------------------------------------------------------------------
?
1. The expression inside switch() is evaluated once.
2. It compares the value with each case.
3. When a match is found, that block runs.
4. break stops further execution.
5. default runs if no case matches.

* Comparison is strict equality (==).
* Cases must be constant values.

*/


/*
---------------------------------------------------------------------------
! IMPORTANT: BREAK KEYWORD
---------------------------------------------------------------------------
?
break prevents fall-through behavior.

* Without break, execution continues to next case.

WARNING:
Forgetting break can cause logical errors.
*/

void breakExample() {
  int number = 1;

  switch (number) {
    case 1:
      print("One");
      break;

    case 2:
      print("Two");
      break;
  }
}


/*
---------------------------------------------------------------------------
! DEFAULT CASE
---------------------------------------------------------------------------
?
default runs if no case matches.

* Always recommended for safety.
* Prevents unexpected behavior.
*/

void defaultExample() {
  String role = "guest";

  switch (role) {
    case "admin":
      print("Full access");
      break;

    case "user":
      print("Limited access");
      break;

    default:
      print("Read-only access");
  }
}


/*
---------------------------------------------------------------------------
! SWITCH WITH STRING
---------------------------------------------------------------------------
?
Switch works perfectly with strings.

* Very common in:
    - Role systems
    - Menu selections
    - Command handling
*/

void stringSwitchExample() {
  String command = "start";

  switch (command) {
    case "start":
      print("System Starting...");
      break;

    case "stop":
      print("System Stopping...");
      break;

    case "pause":
      print("System Paused...");
      break;

    default:
      print("Unknown command");
  }
}


/*
---------------------------------------------------------------------------
! SWITCH VS IF-ELSE
---------------------------------------------------------------------------
?
Use switch when:
    - Checking ONE variable
    - Comparing against fixed values
    - Cleaner structure needed

Use if-else when:
    - Using ranges (>, <, >=)
    - Multiple different variables
    - Complex conditions (&&, ||)

Example where switch CANNOT be used:
*/

void invalidSwitchUse() {
  int marks = 85;

  // ❌ Cannot use switch for range conditions directly
  if (marks >= 90) {
    print("Grade A");
  } else if (marks >= 75) {
    print("Grade B");
  }
}


/*
---------------------------------------------------------------------------
! ADVANCED: GROUPING CASES
---------------------------------------------------------------------------
?
Multiple cases can execute same block.
*/

void groupedCasesExample() {
  int month = 12;

  switch (month) {
    case 12:
    case 1:
    case 2:
      print("Winter Season");
      break;

    case 3:
    case 4:
    case 5:
      print("Spring Season");
      break;

    default:
      print("Other Season");
  }
}


/*
---------------------------------------------------------------------------
! PERFORMANCE INSIGHT
---------------------------------------------------------------------------
*
Switch can be faster than long if-else chains 
when checking many fixed values.

* Dart internally optimizes switch efficiently.
* Especially useful in large menu systems.

*/


/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------
1️⃣ Create a program:
    - Input number (1–7)
    - Print weekday name

2️⃣ Create role-based access:
    - admin → full access
    - editor → edit access
    - viewer → read only
    - default → no access

3️⃣ Create simple calculator using switch:
    - +, -, *, /
    - Take operator as string

ADVANCED TASK:
* Convert nested if-else into switch structure 
  where possible and compare readability.
*/


/*
***************************************************************************
! END OF LECTURE
***************************************************************************
*/