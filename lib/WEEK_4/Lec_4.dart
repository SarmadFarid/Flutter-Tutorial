/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 4 — LECTURE 4
? TOPIC: CONSTRUCTORS & TYPES (DEFAULT, PARAMETERIZED, NAMED, CONST, FACTORY)
***************************************************************************

? CONSTRUCTOR

A constructor is a special method in a class that runs automatically
when an object is created. It is mainly used to initialize the object’s
variables with starting values.

* Constructor name must be same as class name
* It has no return type
* It is called automatically when object is created


! BASIC EXAMPLE
*/

class Car {
  String? name;
  double? price;

  Car(this.name, this.price); // parameterized constructor

  void display() {
    print("Name: $name  Price: $price");
  }
}

void basicExample() {
  Car car = Car("Civic", 100); // constructor called
  car.display();
}


/*
---------------------------------------------------------------------------
? DEFAULT CONSTRUCTOR
---------------------------------------------------------------------------

Default constructor is a constructor with no parameters.
If we do not create any constructor, Dart automatically provides one.

* Used when no initial data is required
*/

class Bike {
  void display() {
    print("This is a bike");
  }
}

void defaultExample() {
  Bike b = Bike(); // default constructor
  b.display();
}


/*
---------------------------------------------------------------------------
? PARAMETERIZED CONSTRUCTOR
---------------------------------------------------------------------------

A constructor that takes parameters to initialize object properties.

* Used when values are required at object creation
*/

class Product {
  String? name;
  double? price;

  Product(this.name, this.price); // parameterized

  void show() {
    print("$name : $price");
  }
}


/*
---------------------------------------------------------------------------
? NAMED CONSTRUCTOR
---------------------------------------------------------------------------

Named constructor is a constructor with a custom name.
It allows multiple constructors in a single class.

* Improves readability
* Useful for different initialization logic
*/

class Student {
  String? name;
  int? age;

  Student(this.name, this.age); // default

  Student.fromJson(Map<String, dynamic> data) {
    name = data['name'];
    age = data['age'];
  }

  void show() {
    print("$name - $age");
  }
}

void namedExample() {
  Student s1 = Student("Usman", 23);

  Student s2 = Student.fromJson({
    "name": "Sarmad",
    "age": 18
  });

  s1.show();
  s2.show();
}


/*
---------------------------------------------------------------------------
? CONST CONSTRUCTOR
---------------------------------------------------------------------------

Const constructor is used to create immutable (unchangeable) objects.

* All variables must be final
* Object becomes constant
* Helps in memory optimization
*/

class ConstCar {
  final String name;
  final String color;

  const ConstCar(this.name, this.color);
}

void constExample() {
  const car1 = ConstCar("Bugatti", "Pink");
  const car2 = ConstCar("Bugatti", "Pink");

  print(identical(car1, car2)); // true (same memory)
}


/*
! IMPORTANT NOTE

* Const objects share memory only if values are same
* If values differ → new memory is created

? identical()

identical() checks whether two objects refer to the same memory location
*/


/*
---------------------------------------------------------------------------
? FACTORY CONSTRUCTOR
---------------------------------------------------------------------------

Factory constructor does NOT always create a new object.
It can return:
* existing object
* cached object
* or new object

* Useful for:
  - caching
  - controlling object creation
*/

class Logger {
  static final Map<String, Logger> _cache = {};

  final String name;

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!; // return existing object
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);
}

void factoryExample() {
  var a = Logger("App");
  var b = Logger("App");

  print(identical(a, b)); // true (same object reused)
}


/*
---------------------------------------------------------------------------
? CONSTRUCTOR CHAINING
---------------------------------------------------------------------------

Constructor chaining means calling one constructor from another.

* this() → same class constructor
* super() → parent class constructor
*/

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.named(String name) : this(name, 30); // chaining

  void show() {
    print("Name: $name Age: $age");
  }
}

void chainingExample() {
  Person p = Person.named("Sarmad");
  p.show();
}


/*
---------------------------------------------------------------------------
! SUMMARY
---------------------------------------------------------------------------

* Default → no parameters
* Parameterized → takes values
* Named → multiple constructors
* Const → immutable + memory efficient
* Factory → control object creation
* Chaining → call another constructor


---------------------------------------------------------------------------
TODO: PRACTICE TASKS
---------------------------------------------------------------------------

1 Create a class "Book"
  * properties: title, price
  * use parameterized constructor
  * print details

2 Create a class "User"
  * create named constructor fromMap
  * pass map data and assign values

3 Create a const class "Color"
  * test identical() with same and different values

4 Create a class "Logger"
  * use factory constructor to reuse objects

5 Create a class "Person"
  * use constructor chaining to set default age
*/