/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 3 — LECTURE 1
? TOPIC: FUNCTION BASICS (PARAMETERS, RETURNS, SCOPE)
***************************************************************************
*/

library;

/*
---------------------------------------------------------------------------
? WHAT IS A FUNCTION?
---------------------------------------------------------------------------

* A function is a reusable block of code designed to perform a specific task.

Instead of writing the same code multiple times,
we place it inside a function and call it whenever needed.

Benefits:
* Code reusability
* Cleaner structure
* Easier debugging
* Better program organization

Real-world example:
Login validation
Price calculation
API request handling
*/




/*
---------------------------------------------------------------------------
! BASIC FUNCTION STRUCTURE
---------------------------------------------------------------------------
*/

void greetUser() {
  print("Welcome to Flutter Development!");
}

/*
Explanation:

void → return type (nothing returned)
greetUser → function name
() → parameters
{} → function body
*/




/*
---------------------------------------------------------------------------
! CALLING A FUNCTION
---------------------------------------------------------------------------
*/

void callExample() {
  greetUser();
}

/*
NOTE:
Function will NOT run unless it is called.
*/




/*
---------------------------------------------------------------------------
! FUNCTION WITH PARAMETERS
---------------------------------------------------------------------------
?
Parameters allow functions to receive input values.
*/

void greetPerson(String name) {
  print("Hello $name");
}

/*
Usage:
*/

void parameterExample() {
  greetPerson("Ali");
  greetPerson("Sara");
}

/*
Explanation:
name → parameter
"Ali" → argument (actual value passed)
*/




/*
---------------------------------------------------------------------------
! MULTIPLE PARAMETERS
---------------------------------------------------------------------------
*/

void studentInfo(String name, int age) {
  print("Student: $name");
  print("Age: $age");
}

void multipleParameterExample() {
  studentInfo("Ahmed", 21);
}




/*
---------------------------------------------------------------------------
! FUNCTION WITH RETURN VALUE
---------------------------------------------------------------------------
?
Some functions calculate something and return the result.
*/

int addNumbers(int a, int b) {
  return a + b;
}

void returnExample() {
  int result = addNumbers(10, 5);
  print("Sum = $result");
}

/*
Explanation:

int → return type
return → sends value back to caller
*/




/*
---------------------------------------------------------------------------
! RETURNING DIFFERENT DATA TYPES
---------------------------------------------------------------------------
*/

double calculateArea(double radius) {
  const double pi = 3.14;
  return pi * radius * radius;
}

void areaExample() {
  double area = calculateArea(5);
  print("Area = $area");
}




/*
---------------------------------------------------------------------------
! VOID VS RETURN FUNCTION
---------------------------------------------------------------------------
*/

void printMessage() {
  print("This function returns nothing.");
}

int multiply(int a, int b) {
  return a * b;
}

/*
Difference:

void function:
* Performs action
* Returns nothing

return function:
* Calculates value
* Sends result back
*/




/*
---------------------------------------------------------------------------
! VARIABLE SCOPE
---------------------------------------------------------------------------
* Scope defines where a variable can be accessed.

Types:
1️⃣ Local Scope
2️⃣ Global Scope
*/




/*
---------------------------------------------------------------------------
! LOCAL SCOPE
---------------------------------------------------------------------------
*/

void localScopeExample() {
  int number = 10; // local variable

  print(number);
}

/*
WARNING:
Local variables cannot be accessed outside function.
*/

// print(number); ❌ Error




/*
---------------------------------------------------------------------------
! GLOBAL SCOPE
---------------------------------------------------------------------------
*/

int globalValue = 50;

void globalScopeExample() {
  print(globalValue);
}

/*
NOTE:
Global variables can be accessed anywhere in the file.
*/




/*
---------------------------------------------------------------------------
! VARIABLE SHADOWING
---------------------------------------------------------------------------
*/

int score = 100;

void shadowExample() {
  int score = 50;

  print(score); // prints local variable
}

/*
Explanation:
Local variable overrides global variable.
*/




/*
---------------------------------------------------------------------------
! FUNCTION BEST PRACTICES
---------------------------------------------------------------------------
*
✔ Keep functions small and focused
✔ Use clear function names
✔ Avoid too many parameters
✔ Return values when needed
✔ Use functions to avoid code repetition
*/



/*
---------------------------------------------------------------------------
! REAL WORLD EXAMPLE
---------------------------------------------------------------------------
*/

double calculateDiscount(double price, double percent) {
  double discount = price * percent / 100;
  return price - discount;
}

void shoppingExample() {
  double finalPrice = calculateDiscount(1000, 10);

  print("Final Price = $finalPrice");
}




/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------
1️⃣ Create a function that prints your name.

2️⃣ Create a function that takes two numbers
    and returns their multiplication.

3️⃣ Create a function that calculates
    area of rectangle.

4️⃣ Create a function that checks
    if number is even or odd.

ADVANCED TASK:

* Create a function that checks
  if a string is palindrome.

* Create a function that formats currency output
  (example: 1500 → $1,500).
*/




/*
***************************************************************************
! END OF LECTURE
***************************************************************************
*/