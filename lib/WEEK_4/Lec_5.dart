/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 4 — LECTURE 5
? TOPIC: ADVANCED OOP — INHERITANCE, EXTENDS, SUPER, METHOD OVERRIDING
***************************************************************************

? INHERITANCE

* Inheritance is one of the core concepts of Object-Oriented Programming (OOP) that allows a class to reuse the properties and behaviors of another class. It helps in reducing code duplication and promotes a hierarchical relationship between classes. In inheritance, we create a new class called the child class (or subclass) that acquires the fields and methods of an existing class known as the parent class (or superclass). This relationship allows developers to build more organized and scalable applications by reusing existing logic instead of writing everything from scratch.

? PARENT & CHILD CLASS

* A parent class is the base class that contains common properties and methods which can be shared with other classes. A child class is the class that inherits from the parent class and can use all its accessible properties and methods. In addition to inherited features, a child class can also define its own unique properties and behaviors. This structure helps in modeling real-world relationships such as Vehicle → Car or Animal → Dog, where the child class represents a more specific version of the parent.

? EXTENDS KEYWORD

* In Dart, inheritance is implemented using the 'extends' keyword. When a class extends another class, it automatically gains access to all the non-private variables and methods of the parent class. This allows the child class to reuse existing code and also modify or enhance it if needed. The 'extends' keyword establishes a clear relationship between the classes and enables code reusability in a structured way.

? SUPER KEYWORD

* The 'super' keyword is used inside a child class to refer to the parent class. It is commonly used to call the constructor of the parent class or to access its methods and properties. When a parent class has a parameterized constructor, the child class must explicitly call it using 'super'. This ensures that the parent class is properly initialized before the child class adds its own functionality.

? METHOD OVERRIDING

* Method overriding is a feature that allows a child class to provide its own implementation of a method that is already defined in the parent class. This is useful when the child class needs to change or extend the behavior of the inherited method. In Dart, method overriding is done by defining a method in the child class with the same name, return type, and parameters as in the parent class, and using the '@override' annotation to improve code readability and safety.

? COMPLETE EXAMPLE

* Below is a complete example demonstrating inheritance, extends, super, and method overriding in Dart:

*/

class Animal {
  String name;

  Animal(this.name);

  void sound() {
    print("Animal makes a sound");
  }

  void display() {
    print("Animal Name: $name");
  }
}

class Dog extends Animal {
  String breed;

  // Using super to call parent constructor
  Dog(String name, this.breed) : super(name);

  // Method overriding
  @override
  void sound() {
    print("Dog barks");
  }

  void showDetails() {
    super.display(); // calling parent method
    print("Breed: $breed");
  }
}

void main() {
  Dog dog = Dog("Tommy", "German Shepherd");

  dog.sound();        // Overridden method
  dog.showDetails();  // Accessing both parent & child features
}

/*
? EXPLANATION OF EXAMPLE

* In this example, the Animal class acts as the parent class containing common properties like 'name' and methods like 'sound' and 'display'. The Dog class is the child class that extends Animal using the 'extends' keyword. It inherits the properties of Animal and also adds a new property 'breed'. The constructor of Dog uses the 'super' keyword to pass the 'name' value to the parent class constructor. The 'sound' method is overridden in the Dog class to provide a specific implementation for dogs. Additionally, the child class uses 'super.display()' to call a method from the parent class, demonstrating how both parent and child functionalities can work together in a structured and reusable way.

***************************************************************************
*/

/*
***************************************************************************
! HOMEWORK TASKS — WEEK 5 (ADVANCED OOP)
? TOPIC: INHERITANCE, EXTENDS, SUPER, METHOD OVERRIDING
***************************************************************************

? TASK 1 (EASY)

todo: Create a parent class named Vehicle that has properties like 'brand' and 'speed'. Add a method called 'displayInfo()' that prints the vehicle details. Then create a child class Car that extends Vehicle and adds a new property 'model'. In the main function, create an object of Car and display all its details using both parent and child class features. This task will help the student understand basic inheritance and how child classes can access parent class properties.

? TASK 2 (EASY)

todo: Create a parent class named Person with a method called 'role()' that prints "I am a person". Then create a child class Student that extends Person and overrides the 'role()' method to print "I am a student". In the main function, create an object of Student and call the method. This task will help the student understand method overriding and how behavior can be changed in the child class.

? TASK 3 (HARD)

todo: Create a parent class named Employee that contains properties like 'name' and 'salary' and a method called 'calculateBonus()' that prints a basic bonus message. Then create two child classes Manager and Developer that extend Employee. Both classes should override the 'calculateBonus()' method with their own bonus logic. Also use constructors with 'super' to initialize parent class variables. In the main function, create objects of both Manager and Developer and call all methods to demonstrate inheritance, constructor chaining using super, and method overriding. This task will give a deep understanding of real-world implementation of inheritance and polymorphism.

***************************************************************************
*/