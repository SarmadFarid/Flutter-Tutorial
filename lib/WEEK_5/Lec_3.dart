/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 5 — LECTURE 3
? TOPIC: MIXINS & EXTENSION METHODS (BEGINNER FRIENDLY)
***************************************************************************

? MIXIN

A mixin is used to share code between multiple classes without using inheritance. It allows us to reuse methods in different classes. We use the 'with' keyword to apply a mixin to a class.

? WHY MIXINS

Sometimes we cannot use inheritance because Dart does not support multiple inheritance. Mixins solve this problem by allowing us to add common functionality to many classes. This keeps code clean and reusable.

? EXAMPLE

mixin Fly {
  void fly() {
    print("Can fly");
  }
}

class Bird with Fly {}

void main() {
  Bird b = Bird();
  b.fly();
}

? MULTIPLE MIXINS

A class can use more than one mixin at the same time. This helps us combine multiple behaviors into a single class. It is very useful in real-world apps.

? EXAMPLE

mixin Walk {
  void walk() {
    print("Can walk");
  }
}

mixin Swim {
  void swim() {
    print("Can swim");
  }
}

class Duck with Walk, Swim {}

? EXTENSION METHOD

Extension methods allow us to add new functionality to existing classes without modifying them. This is useful when working with built-in classes like String or int.

? WHY EXTENSIONS

Sometimes we want extra features on existing classes but cannot edit their source code. Extension methods solve this by letting us "extend" functionality in a clean way. It improves readability and code organization.

? EXAMPLE

extension StringExtension on String {
  String greet() {
    return "Hello $this";
  }
}

void main() {
  String name = "Ali";
  print(name.greet());
}

? ANOTHER EXTENSION EXAMPLE

extension NumberExtension on int {
  int square() {
    return this * this;
  }
}

void main() {
  int num = 4;
  print(num.square());
}

? COMPLETE EXAMPLE

mixin Jump {
  void jump() {
    print("Can jump");
  }
}

mixin Run {
  void run() {
    print("Can run");
  }
}

class Player with Jump, Run {}

extension StringExt on String {
  String upperText() {
    return this.toUpperCase();
  }
}

void main() {
  Player p = Player();
  p.jump();
  p.run();

  String text = "flutter";
  print(text.upperText());
}

? TASK 1 (EASY)

Create a mixin named Drive with method 'drive()'. Create a class Car and use mixin. Call method in main.

? TASK 2 (MEDIUM)

Create an extension on int with method 'cube()' that returns cube of number. Call it in main function.

***************************************************************************
*/