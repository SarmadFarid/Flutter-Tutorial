/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 2 — LECTURE 5
? TOPIC: WHILE / DO-WHILE LOOPS, BREAK & CONTINUE
***************************************************************************
*/


/*
---------------------------------------------------------------------------
! WHAT IS A WHILE LOOP?
---------------------------------------------------------------------------
?
A while loop executes a block of code 
as long as the condition remains true.

Structure:

while (condition) {
    // code
}

Execution Flow:
1️⃣ Condition is checked FIRST.
2️⃣ If true → code runs.
3️⃣ Loop repeats until condition becomes false.

IMPORTANT:
If condition is false at the beginning,
the loop will NOT execute even once.
*/

void basicWhileExample() {
  int i = 1;

  while (i <= 5) {
    print("Iteration: $i");
    i++;
  }
}




/*
---------------------------------------------------------------------------
! WHEN TO USE WHILE LOOP?
---------------------------------------------------------------------------
?
Use while when:
✔ Number of iterations is NOT known
✔ Loop depends on dynamic condition
✔ Waiting for user input
✔ Processing until a value changes

Real-world Example:
Login system retry until correct password.
*/

void loginRetryExample() {
  String password = "1234";
  String entered = "";
  int attempts = 0;

  while (entered != password && attempts < 3) {
    print("Attempt ${attempts + 1}: Incorrect password");
    entered = "wrong"; // Simulated wrong input
    attempts++;
  }

  if (attempts == 3) {
    print("Account locked.");
  }
}




/*
---------------------------------------------------------------------------
! INFINITE LOOP WARNING
---------------------------------------------------------------------------
WARNING:
If condition never becomes false,
loop becomes infinite.

Example (DON'T RUN):
*/

// while (true) {
//   print("Infinite Loop");
// }

/*
Always ensure:
✔ Condition changes inside loop
✔ Exit strategy exists
*/




/*
---------------------------------------------------------------------------
! DO-WHILE LOOP
---------------------------------------------------------------------------
?
A do-while loop executes code FIRST,
then checks condition.

Structure:

do {
   // code
} while (condition);

Key Difference:
While → Checks before execution
Do-While → Executes at least once
*/

void doWhileExample() {
  int i = 1;

  do {
    print("Iteration: $i");
    i++;
  } while (i <= 5);
}




/*
---------------------------------------------------------------------------
! DIFFERENCE BETWEEN WHILE & DO-WHILE
---------------------------------------------------------------------------
*/

void differenceExample() {
  int number = 10;

  while (number < 5) {
    print("While loop executed");
  }

  do {
    print("Do-While executed once");
  } while (number < 5);
}

/*
Output:
Do-While executed once

Because:
While → condition false initially → skipped
Do-While → executed once before checking
*/




/*
---------------------------------------------------------------------------
! BREAK STATEMENT
---------------------------------------------------------------------------
?
break immediately terminates the loop.

Used when:
✔ Desired result found
✔ Error condition reached
✔ Exit condition triggered
*/

void breakExample() {
  int i = 1;

  while (i <= 10) {
    if (i == 5) {
      break;
    }

    print(i);
    i++;
  }

  print("Loop stopped at 5");
}




/*
---------------------------------------------------------------------------
! CONTINUE STATEMENT
---------------------------------------------------------------------------
?
continue skips current iteration
and moves to next cycle.
*/

void continueExample() {
  int i = 0;

  while (i < 5) {
    i++;

    if (i == 3) {
      continue;
    }

    print(i);
  }
}

/*
Output:
1
2
4
5

3 is skipped.
*/




/*
---------------------------------------------------------------------------
! PERFORMANCE & MEMORY INSIGHT
---------------------------------------------------------------------------
*
- Loop variable stored in stack.
- Condition checked every iteration.
- Heavy operations inside loop affect performance.

ADVANCED:
Avoid:
❌ API calls inside infinite loop
❌ Heavy string concatenation without StringBuffer
❌ Complex nested loops without optimization
*/




/*
---------------------------------------------------------------------------
! COMPARISON: FOR vs WHILE
---------------------------------------------------------------------------
?
Use FOR:
✔ Known iteration count
✔ Index-based loops

Use WHILE:
✔ Unknown iteration count
✔ Condition-based loops

Use DO-WHILE:
✔ Must execute at least once
*/




/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------
1️⃣ Print numbers 1 to 20 using while loop.
2️⃣ Print even numbers from 1 to 50.
3️⃣ Create a password retry system using do-while.
4️⃣ Create a menu system that keeps running until user exits.
5️⃣ Use break to stop loop when number divisible by 7 is found.

ADVANCED TASK:
* Build a small ATM simulation:
   - Show menu
   - Deposit
   - Withdraw
   - Exit using loop control
*/




/*
***************************************************************************
! END OF LECTURE
***************************************************************************
*/