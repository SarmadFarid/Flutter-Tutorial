/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 2 — LECTURE 4
? TOPIC: FOR LOOPS & ITERATIONS (ADVANCED LEVEL)
***************************************************************************
*/

library;

/*
---------------------------------------------------------------------------
! WHAT IS A LOOP?
---------------------------------------------------------------------------
?
A loop is a control structure that allows us to execute 
a block of code multiple times.

* Instead of writing repetitive code manually,
  loops automate repetition.
* Used when working with:
    - Lists
    - Data collections
    - API results
    - UI rendering
    - Calculations

Real-world example:
Displaying 100 products in an e-commerce app.
*/




/*
---------------------------------------------------------------------------
! WHAT IS A FOR LOOP?
---------------------------------------------------------------------------
?
A for loop is used when:
    - The number of iterations is known.
    - We want full control over counter variable.

Basic Structure:

for (initialization; condition; increment/decrement) {
    // code block
}

Execution Flow:
1️⃣ Initialization runs once.
2️⃣ Condition is checked.
3️⃣ If true → code runs.
4️⃣ Increment executes.
5️⃣ Repeat until condition becomes false.
*/

void basicForExample() {
  for (int i = 1; i <= 5; i++) {
    print("Iteration number: $i");
  }
}



/*
---------------------------------------------------------------------------
! UNDERSTANDING THE THREE PARTS
---------------------------------------------------------------------------
*/

void breakdownExample() {

  // Initialization
  // int i = 0

  // Condition
  // i < 5

  // Increment
  // i++

  for (int i = 0; i < 5; i++) {
    print(i);
  }
}

/*
NOTE:
* i++ means i = i + 1
* Loop stops when condition becomes false.
*/




/*
---------------------------------------------------------------------------
! MEMORY & PERFORMANCE INSIGHT
---------------------------------------------------------------------------
*
- The loop variable (i) is stored in stack memory.
- Each iteration reuses the same variable.
- Loops themselves are lightweight.
- Heavy operations inside loops cause performance issues.

ADVANCED:
Avoid expensive operations (like API calls or large string concatenations)
inside loops without optimization.
*/




/*
---------------------------------------------------------------------------
! REVERSE LOOP
---------------------------------------------------------------------------
?
We can decrement instead of increment.
*/

void reverseLoopExample() {
  for (int i = 5; i >= 1; i--) {
    print(i);
  }
}




/*
---------------------------------------------------------------------------
! LOOP WITH CONDITIONS (REVISION OF IF + OPERATORS)
---------------------------------------------------------------------------
?
Combining loops with conditions is very powerful.
*/

void evenNumbersExample() {
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i is even");
    }
  }
}

/*
This example revises:
- Modulus operator %
- Comparison operator ==
- If condition
*/




/*
---------------------------------------------------------------------------
! LOOPING THROUGH LIST (VERY IMPORTANT)
---------------------------------------------------------------------------
*/

void listIterationExample() {
  List<String> students = ["Ali", "Ahmed", "Sara", "Zara"];

  for (int i = 0; i < students.length; i++) {
    print("Student: ${students[i]}");
  }
}

/*
IMPORTANT:
students.length gives total elements.
Index always starts from 0.
*/




/*
---------------------------------------------------------------------------
! FOR-IN LOOP (ENHANCED FOR LOOP)
---------------------------------------------------------------------------
?
Used for cleaner iteration over collections.
*/

void forInExample() {
  List<int> numbers = [10, 20, 30, 40];

  for (var number in numbers) {
    print(number);
  }
}

/*
When to use:
✔ When you don't need index.
✔ Cleaner and more readable.
*/




/*
---------------------------------------------------------------------------
! NESTED FOR LOOP
---------------------------------------------------------------------------
?
A loop inside another loop.
*/

void nestedLoopExample() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("i: $i, j: $j");
    }
  }
}

/*
ADVANCED:
Nested loops are used in:
- Matrix operations
- Grid layouts
- Pattern printing
- Complex comparisons
*/




/*
---------------------------------------------------------------------------
! BREAK & CONTINUE
---------------------------------------------------------------------------
*/

void breakContinueExample() {
  for (int i = 1; i <= 10; i++) {

    if (i == 5) {
      break; // stops loop completely
    }

    print(i);
  }

  print("Loop ended.");
}


/*
continue example
*/

void continueExample() {
  for (int i = 1; i <= 5; i++) {

    if (i == 3) {
      continue; // skips this iteration
    }

    print(i);
  }
}

/*
Difference:
break → exit loop
continue → skip current iteration
*/




/*
---------------------------------------------------------------------------
! COMMON MISTAKES
---------------------------------------------------------------------------
WARNING:
❌ Infinite loop (wrong condition)
❌ Using <= instead of < with index
❌ Accessing out-of-range index
❌ Heavy operations inside loop

Example of infinite loop:
*/

void infiniteLoopExample() {
  // for (int i = 0; i >= 0; i++) {
  //   print(i);  // Infinite loop
  // }
}




/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------
1️⃣ Print numbers from 1 to 50.
2️⃣ Print only odd numbers between 1 and 30.
3️⃣ Calculate sum of numbers from 1 to 100.
4️⃣ Reverse a list using loop.
5️⃣ Create multiplication table of any number.

ADVANCED TASK:
* Create a small CLI menu system using loop + switch.
* Build a mini student grading system using loop + conditions.
*/




/*
***************************************************************************
! END OF LECTURE
***************************************************************************
*/