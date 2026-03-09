/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 3 — LECTURE 2
? TOPIC: OPTIONAL PARAMETERS, NAMED PARAMETERS, LAMBDA FUNCTIONS
***************************************************************************
*/

library;

/*
---------------------------------------------------------------------------
! WHAT ARE PARAMETERS?
---------------------------------------------------------------------------
?
Parameters are values that a function receives when it is called.

They allow a function to work with different inputs.

Example:
*/

void greet(String name) {
  print("Hello $name");
}

/*
Calling the function:
greet("Ali");
*/




/*
---------------------------------------------------------------------------
! OPTIONAL PARAMETERS
---------------------------------------------------------------------------
?
Optional parameters are parameters that are NOT required
when calling a function.

They are placed inside square brackets [].
*/

void introduce(String name, [int? age]) {
  print("Name: $name");

  if (age != null) {
    print("Age: $age");
  }
}

void optionalExample() {
  introduce("Ali", 20);
  introduce("Sara");
}

/*
NOTE:
If optional value is not passed,
its value becomes null.
*/

/*
---------------------------------------------------------------------------
! NAMED PARAMETERS
---------------------------------------------------------------------------
?
Named parameters allow arguments to be passed using names.

They are placed inside curly braces {}.
*/

void createUser({String? name, int? age}) {
  print("Name: $name");
  print("Age: $age");
}

void namedExample() {
  createUser(name: "Ahmed", age: 22);
}

/*
Advantages:
* Improves readability
* Order of arguments does not matter
*/




/*
---------------------------------------------------------------------------
! REQUIRED NAMED PARAMETERS
---------------------------------------------------------------------------
?
Sometimes named parameters must be required.

We use the required keyword.
*/

void registerUser({
  required String email,
  required String password,
}) {
  print("Email: $email");
  print("Password: $password");
}

void requiredExample() {
  registerUser(
    email: "user@gmail.com",
    password: "12345",
  );
}




/*
---------------------------------------------------------------------------
! LAMBDA FUNCTIONS (ANONYMOUS FUNCTIONS)
---------------------------------------------------------------------------
?
A lambda function is a function without a name.

It is often used for short operations
and passed as an argument to other functions.
*/

void lambdaExample() {
  var add = (int a, int b) {
    return a + b;
  };

  print(add(3, 4));
}




/*
---------------------------------------------------------------------------
! ARROW FUNCTION (SHORT LAMBDA)
---------------------------------------------------------------------------
?
If a function has only one expression,
we can use arrow syntax.
*/

int multiply(int a, int b) => a * b;

void arrowExample() {
  print(multiply(3, 5));
}




/*
---------------------------------------------------------------------------
! WHERE LAMBDA FUNCTIONS ARE USED
---------------------------------------------------------------------------
*
Common uses:

- List operations
- Event callbacks
- Short calculations
- Functional programming

Example with list:
*/

void listExample() {
  List<int> numbers = [1, 2, 3, 4];

  numbers.forEach((number) {
    print(number);
  });
}




/*
---------------------------------------------------------------------------
! COMMON MISTAKES
---------------------------------------------------------------------------
WARNING:

❌ Forgetting required keyword
❌ Mixing positional and named parameters incorrectly
❌ Overusing lambda functions for complex logic
*/




/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------
1️⃣ Create a function with optional parameter for age.

2️⃣ Create a function with named parameters
   for student information.

3️⃣ Write a lambda function that multiplies two numbers.

4️⃣ Create a list and print its values using lambda function.

ADVANCED TASK:
Create a function that calculates discount where
price is required but discount percent is optional.
*/




/*
***************************************************************************
! END OF LECTURE
***************************************************************************
*/