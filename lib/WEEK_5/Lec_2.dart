/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 5 — LECTURE 2
? TOPIC: POLYMORPHISM & ENCAPSULATION
***************************************************************************

? POLYMORPHISM

* Polymorphism means "many forms". It allows the same method name to behave differently depending on the object that is calling it. This helps us write flexible and reusable code. Instead of creating different method names, we use one method name and change its behavior in different classes.

? METHOD OVERRIDING (RUNTIME POLYMORPHISM)

* Method overriding is when a child class provides its own version of a method that is already defined in the parent class. The method name, return type, and parameters remain the same, but the behavior changes. This is called runtime polymorphism because the method call is decided at runtime.

? EXAMPLE

class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

? USING POLYMORPHISM

* We can use a parent class reference to call different child class methods. The same method behaves differently based on the object type. This makes code more dynamic and easier to manage.

? EXAMPLE

void main() {
  Animal a1 = Dog();
  Animal a2 = Cat();

  a1.sound(); // Dog version
  a2.sound(); // Cat version
}

? ENCAPSULATION

* Encapsulation means hiding data and controlling access to it. We keep variables private and provide public methods (getters/setters) to access or update them. This protects data from direct misuse and keeps the code secure.

? PRIVATE VARIABLES

* In Dart, private variables are created using underscore (_) before the variable name. These variables cannot be accessed directly from outside the class. This ensures that data is controlled only through defined methods.

? EXAMPLE

class Person {
  String _name = "";

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }
}

? USING ENCAPSULATION

* We access private data using getter and setter methods. This allows us to add validation or control logic before changing the value. It improves security and code maintainability.

? EXAMPLE

void main() {
  Person p = Person();

  p.setName("Ali");
  print(p.getName());
}

? COMPLETE EXAMPLE

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Person {
  String _name = "";

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }
}

void main() {
  // Polymorphism
  Animal a = Dog();
  a.sound();

  // Encapsulation
  Person p = Person();
  p.setName("Ahmed");
  print(p.getName());
}

? TASK 1 (EASY)

todo: Create a parent class Shape with method 'draw()'. Then create two child classes Circle and Square and override draw() method with different messages. Call both using parent class reference.

? TASK 2 (MEDIUM)

todo: Create a class Student with a private variable '_marks'. Create setter and getter methods. Set marks and print them using methods.

***************************************************************************
*/