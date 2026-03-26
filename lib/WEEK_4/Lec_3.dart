/*
*************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 4 — LECTURE 3
? TOPIC: CLASS METHODS, GETTERS, SETTERS, THIS KEYWORD
*************************
*/

library;

/*
---------------------------------------------------------------------------
? WHAT ARE CLASS METHODS?
---------------------------------------------------------------------------

Class methods are functions defined inside a class. They describe the
behavior of an object and allow us to perform operations using the
object's data.

Methods help keep logic and data together, which is the core idea of OOP.
*/

class Student {

  String name = "";
  int marks = 0;

  void display() {                // class method
    print("Name: $name");
    print("Marks: $marks");
  }
}

void methodExample() {

  Student s = Student();

  s.name = "Ali";                 // assigning values
  s.marks = 85;

  s.display();                    // calling method
}




/*
---------------------------------------------------------------------------
! WHAT IS "this" KEYWORD?
---------------------------------------------------------------------------

The "this" keyword refers to the current object of the class.

It is used when:
* We want to access class properties inside methods
* Parameter names are same as class variables

This avoids confusion between local variables and class properties.
*/

class Point {

  int x = 0;
  int y = 0;

  void move(int x, int y) {
    this.x = x;     // refers to class variable
    this.y = y;
  }

  void show() {
    print("x:$x y:$y");
  }
}

void thisExample() {

  Point p = Point();

  p.move(10, 5);    // passing values
  p.show();         // output: x:10 y:5
}




/*
---------------------------------------------------------------------------
? WHAT ARE GETTERS?
---------------------------------------------------------------------------

Getters are used to read or access the value of a property.

They provide controlled access to class data and are often used
when we want to apply logic before returning a value.
*/

class Rectangle {

  double width = 0;
  double height = 0;

  double get area {             // getter
    return width * height;
  }
}

void getterExample() {

  Rectangle r = Rectangle();

  r.width = 5;
  r.height = 10;

  print(r.area);                // accessing getter like property
}




/*
---------------------------------------------------------------------------
! WHAT ARE SETTERS?
---------------------------------------------------------------------------

Setters are used to update or modify the value of a property.

They allow us to validate or control data before assigning it.
*/

class Bank {

  double _balance = 0;          // private variable

  set balance(double amount) {  // setter
    if (amount >= 0) {
      _balance = amount;
    }
  }

  double get balance => _balance; // getter
}

void setterExample() {

  Bank b = Bank();

  b.balance = 500;              // calling setter
  print(b.balance);             // calling getter
}




/*
---------------------------------------------------------------------------
* WHY GETTERS & SETTERS ARE IMPORTANT?
---------------------------------------------------------------------------

* Protect data (encapsulation)
* Add validation logic
* Control how data is accessed or modified
* Improve code security and maintainability
*/




/*
---------------------------------------------------------------------------
! REAL WORLD EXAMPLE
---------------------------------------------------------------------------

Banking system:
* Getter → check balance
* Setter → update balance with validation

This prevents invalid operations like negative balance.
*/

 /*
---------------------------------------------------------------------------
TODO: 🎯 PRACTICE TASKS — CLASS METHODS, GETTERS, SETTERS, THIS
---------------------------------------------------------------------------

? Task 1: Method Practice

* Create a class "Laptop"
* Add properties: brand, price
* Create a method showDetails() that prints both values
* Create 2 objects and call the method


? Task 2: Understanding "this"

* Create a class "Point"
* Add properties: x, y
* Create a method setValues(int x, int y)
* Use "this" keyword to assign values correctly
* Print values using another method


? Task 3: Getter Practice

* Create a class "Circle"
* Add property: radius
* Create a getter "area"
* Formula: 3.14 * radius * radius
* Print area using object


? Task 4: Setter with Validation

* Create a class "Student"
* Add private variable _marks
* Create setter marks:
  - if marks >= 0 and <= 100 → assign
  - otherwise print "Invalid Marks"
* Create getter to read marks


? Task 5: Combined Practice

* Create a class "Employee"
* Properties: name, salary
* Use setter to ensure salary is not negative
* Create method showDetails()
* Print employee data


? Advanced Task:

* Create a class "Wallet"
* Private variable _balance
* Setter:
  - only allow positive values
* Getter:
  - return balance
* Method spend(amount):
  - check if enough balance
  - deduct amount or show error
*/



/*
*************************
! END OF LECTURE
*************************
*/