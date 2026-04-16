/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 5 — LECTURE 1
? TOPIC: ABSTRACT CLASSES & INTERFACES
***************************************************************************

? ABSTRACT CLASS

* An abstract class is a class that cannot create objects. It is used as a base or blueprint for other classes. We use it when we want multiple classes to follow the same structure.

? EXAMPLE

abstract class Animal {
  void sound();
}

? ABSTRACT METHOD

* An abstract method is a method without a body. It is only declared, not defined. Every child class must implement this method.

? EXAMPLE

abstract class Animal {
  void sound(); // no body
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

? CONCRETE METHOD

* hod is a normal method with a body. Abstract classes can also have these methods, and child classes can use them directly.

? EXAMPLE

abstract class Animal {
  void sound();

  void eat() {
    print("Animal is eating");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

? INTERFACE IN DART

* In Dart, every class can be used as an interface. We use 'implements' when we only want the structure and not the code.

? EXAMPLE

class Animal {
  void sound() {}
}

class Cow implements Animal {
  @override
  void sound() {
    print("Cow moos");
  }
}

? EXTENDS VS IMPLEMENTS

* 'extends' is used to reuse code from parent class. 'implements' is used to force structure and write your own code.

? EXAMPLE

!  extends example
class A {
  void show() {
    print("Hello");
  }
}

class B extends A {}

!  implements example
class C implements A {
  @override
  void show() {
    print("Hi");
  }
}

? COMPLETE EXAMPLE

abstract class Shape {
  double area();

  void display() {
    print("This is shape");
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print("Rectangle shape");
  }
}

void main() {
  Circle c = Circle(5);
  print(c.area());
  c.display();

  Rectangle r = Rectangle(4, 6);
  print(r.area());
  r.display();
}

? TASK 1 (EASY)

todo:  Create an abstract class named Vehicle with a method 'start()'. Then create a class Bike that extends Vehicle and prints "Bike starts". Create object and call method.

? TASK 2 (MEDIUM)

todo: Create a class Person with method 'role()'. Then create class Teacher using 'implements' and override method to print "I am a teacher". Create object and call method.

***************************************************************************
*/