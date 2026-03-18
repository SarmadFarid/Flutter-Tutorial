/*
*************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 4 — LECTURE 2
? TOPIC: OOP INTRODUCTION — CLASSES & OBJECTS
*************************
*/

library;

/*
---------------------------------------------------------------------------
? WHAT IS OOP (OBJECT-ORIENTED PROGRAMMING)?
---------------------------------------------------------------------------

Object-Oriented Programming (OOP) is a programming paradigm where
everything is organized around objects instead of functions and logic only.

Instead of writing loose code, we group related data and behavior
inside objects.

This makes code:
* More structured
* Reusable
* Easier to maintain
* Scalable for large applications (like Flutter apps)
*/

/*
---------------------------------------------------------------------------
! WHY OOP IS IMPORTANT IN FLUTTER?
---------------------------------------------------------------------------

In Flutter, "Everything is a Widget," and every Widget is an Object.

Example:
* Every UI element is a class (Widget)
* Buttons, Text, Screens → all are objects

? Scalability:     
* Instead of a 2,000-line file, OOP lets you break the UI into small, independent classes (like CustomButton or UserCard).
? State Management:
* OOP allows widgets to hold their own data (State) and react to user input without affecting the entire app.
? Consistency:
* By using Inheritance, a StyledButton can inherit all the logic of a basic ElevatedButton while only changing the color

Without OOP:
Managing large apps becomes difficult.

With OOP:
We organize code into reusable components.
*/

/*
---------------------------------------------------------------------------
? WHAT IS A CLASS?
---------------------------------------------------------------------------

* A Class is a "plan" or a "set of instructions" that describes how to build something. It doesn't exist in the real world yet; it just defines what data and actions the thing should have .
 
! In Flutter: 
* A Widget class is the code that says, "A button should have a label and a color."
*/

class Student {
  String name = ""; // property
  int age = 0; // property

  void displayInfo() {
    // method
    print("Name: $name");
    print("Age: $age");
  }
}

/*
---------------------------------------------------------------------------
! WHAT IS AN OBJECT?
---------------------------------------------------------------------------

* An onject is an instance of the class that represents real world entity. It is a block of memory that stores the data defined by the class's properties and can perform actions thorugh its methods. 

! In Flutter:
* When the user sees a Blue "Submit" Button on their screen, that is an Object made from the button class.
*/

void objectExample() {
  Student s1 = Student(); // object creation

  s1.name = "Ali"; // assigning values
  s1.age = 20;

  s1.displayInfo(); // calling method
}

/*
---------------------------------------------------------------------------
* HOW OBJECT CREATION WORKS (MEMORY CONCEPT)
---------------------------------------------------------------------------

When you create an object:

Student s1 = Student();

Step 1 → Memory is allocated in Heap
Step 2 → Object is created
Step 3 → Reference stored in variable (s1)

! IMPORTANT:
Objects are always stored in Heap memory.
*/

/*
---------------------------------------------------------------------------
? MULTIPLE OBJECTS
---------------------------------------------------------------------------

You can create multiple objects from one class.
Each object has its own data.
*/

void multipleObjects() {
  Student s1 = Student();
  s1.name = "Ali";
  s1.age = 20;

  Student s2 = Student();
  s2.name = "Ahmed";
  s2.age = 22;

  s1.displayInfo();
  s2.displayInfo();
}

/*  
 
 
---------------------------------------------------------------------------
* REAL WORLD FLUTTER CONNECTION
---------------------------------------------------------------------------

In Flutter:

Text("Hello") → Object
Text → Class

Container(...) → Object
Container → Class

Everything you use in UI is actually
object creation from classes.
*/




/*
---------------------------------------------------------------------------
TODO: 🎯 OOP Coding Challenge: Classes & Objects
---------------------------------------------------------------------------

? Level 1: The Blueprint (Car Class)
  
* Define the Class: Create a class named Car.
* Add Properties: Give it three variables: name, model, and price. 
* The Action: Create a method inside the class called displayDetails() that prints all the car's info in a nice format.
* The Execution: In your main() function:
* Create two different Car objects (e.g., a Tesla and a Toyota).
* Call displayDetails() for both.


? Level 2: The Logic (BankAccount Class)

* Goal: Simulate real-world behavior using "State" (variables) and "Logic" (functions).
* Define the Class: Create a class named BankAccount.
* Add Properties:
 accountHolder (String)
 balance (double) — Initialize this at 0.0 or through the constructor.
* The Behavior (Methods):
 deposit(double amount): Should add money to the balance and print the new total.
 withdraw(double amount):
! Challenge: Check if the user has enough money before withdrawing!
* If they have enough, subtract it. If not, print "Insufficient Funds."

todo The Test:
Create an account for "John Doe".
Deposit $500.
Try to withdraw $200 (Should work).
Try to withdraw $400 (Should show an error)
 
*************************
! END OF LECTURE
*************************
*/