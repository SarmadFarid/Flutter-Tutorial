/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 5 — LECTURE 5
? TOPIC: ENUMS & ADVANCED TYPES, GENERICS INTRO (BEGINNER FRIENDLY)
***************************************************************************

? ENUMS

An enum is a special type that is used to define a fixed set of constant values. It helps us manage a group of related values in a clean and readable way. Instead of using random strings or numbers, we use enums to avoid mistakes and improve code clarity.

? EXAMPLE

enum Status { loading, success, error }

void main() {
  Status s = Status.loading;

  if (s == Status.loading) {
    print("Data is loading");
  }
}

? WHY ENUMS

Enums make code safer because we can only use predefined values. They also make code easy to read and understand. This is very useful in real apps like API states, user roles, or app themes.

? ADVANCED TYPES

Advanced types in Dart include types like List, Map, and Set. These are used to store multiple values in different ways. They help us organize and manage data efficiently in applications.

? LIST

A List is used to store multiple values in order. It allows duplicate values and we can access items using index.

? EXAMPLE

void main() {
  List<String> names = ["Ali", "Ahmed", "Sara"];
  print(names[0]);
}

? MAP

A Map stores data in key-value pairs. Each key is unique and used to access its value.

? EXAMPLE

void main() {
  Map<String, int> marks = {
    "Ali": 90,
    "Sara": 85
  };

  print(marks["Ali"]);
}

? SET

A Set is a collection of unique values. It does not allow duplicates and does not maintain order.

? EXAMPLE

void main() {
  Set<int> numbers = {1, 2, 2, 3};
  print(numbers); // duplicate removed
}

? GENERICS

Generics allow us to write flexible and reusable code by using type parameters. Instead of fixing a data type, we can make a class or method work with different types. This makes code more powerful and reusable.

? GENERIC CLASS

A generic class uses a type parameter like <T>. This means the class can work with any data type.

? EXAMPLE

class Box<T> {
  T value;

  Box(this.value);

  void show() {
    print(value);
  }
}

void main() {
  Box<int> intBox = Box(10);
  intBox.show();

  Box<String> strBox = Box("Hello");
  strBox.show();
}

? WHY GENERICS

Generics reduce code duplication and make code type-safe. We don’t need to create separate classes for int, string, etc. One generic class can handle all types.

? COMPLETE EXAMPLE

enum Role { admin, user }

class Data<T> {
  T info;

  Data(this.info);

  void display() {
    print(info);
  }
}

void main() {
  Role r = Role.admin;

  if (r == Role.admin) {
    print("Admin Access");
  }

  List<int> nums = [1, 2, 3];
  print(nums);

  Map<String, String> user = {
    "name": "Ali"
  };
  print(user);

  Data<String> d = Data("Flutter");
  d.display();
}

? TASK 1 (EASY)

Create an enum named Days with values Monday, Tuesday, Wednesday. Print one value in main.

? TASK 2 (MEDIUM)

Create a generic class Storage<T> with a variable and method to print value. Create objects with int and String.

***************************************************************************
*/