/*
*************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 4 — LECTURE 1
? TOPIC: SETS & COLLECTION TYPES COMPARISON
*************************
*/

library;

/*
---------------------------------------------------------------------------
? WHAT IS A SET?
---------------------------------------------------------------------------

A Set in Dart is an unordered collection of unique values.
It does not allow duplicate elements, which makes it useful
when you want to store only distinct data.

Unlike Lists, Sets do not maintain index-based access,
so elements cannot be accessed using positions.
*/

void setBasics() {

  Set<int> numbers = {1, 2, 3, 3, 4}; // duplicates automatically removed

  print(numbers); // output: {1, 2, 3, 4}
}



/*
---------------------------------------------------------------------------
! WHY USE SET?
---------------------------------------------------------------------------

Sets are useful when:
* You want unique values only
* You want to remove duplicates
* You don’t care about order

Common use cases:
* Unique user IDs
* Tags / categories
* Filtering duplicate data
*/




/*
---------------------------------------------------------------------------
* HOW SET WORKS?
---------------------------------------------------------------------------

Each value in a Set must be unique.
If duplicate value is added, it will be ignored automatically.

Set uses hashing internally to ensure uniqueness.
*/




/*
---------------------------------------------------------------------------
? CREATING SETS
---------------------------------------------------------------------------

Sets can be created using {} but must define type clearly,
otherwise Dart may treat it as a Map.
*/

void createSets() {

  Set<String> names = {"Ali", "Ahmed", "Sara"}; // set with values

  Set<int> numbers = {}; // empty set

  Set<int> numbers2 = <int>{}; // correct empty set

  print(names);
  print(numbers2);
}



/*
---------------------------------------------------------------------------
! ADDING VALUES
---------------------------------------------------------------------------

Values are always added at logical position (no index).
Order is not guaranteed.
*/

void addValues() {

  Set<String> cities = {"Lahore", "Karachi"};

  cities.add("Multan");         // add single value

  cities.addAll({"Islamabad"}); // add multiple values

  print(cities);
}



/*
---------------------------------------------------------------------------
! REMOVING VALUES
---------------------------------------------------------------------------

Values are removed using value, not index.
*/

void removeValues() {

  Set<String> colors = {"Red", "Green", "Blue"};

  colors.remove("Green"); // remove value

  print(colors);
}



/*
---------------------------------------------------------------------------
* COMMON SET METHODS
---------------------------------------------------------------------------

These methods help in checking and modifying data.
*/

void setMethods() {

  Set<int> numbers = {1, 2, 3, 4};

  print(numbers.length);        // total elements

  print(numbers.contains(3));   // check value exists

  numbers.clear();              // remove all values

  print(numbers);
}



/*
---------------------------------------------------------------------------
? SET OPERATIONS (ADVANCED)
---------------------------------------------------------------------------

Sets support mathematical operations like union,
intersection, and difference.
*/

void setOperations() {

  Set<int> a = {1, 2, 3};
  Set<int> b = {3, 4, 5};

  print(a.union(b));        // combine both sets

  print(a.intersection(b)); // common values

  print(a.difference(b));   // values in a not in b
}



/*
---------------------------------------------------------------------------
! COLLECTION TYPES COMPARISON
---------------------------------------------------------------------------

Dart has three main collection types:
List, Set, and Map.

Each is used for different purposes depending on data structure.
*/

void comparisonExample() {

  List<int> list = [1, 2, 2, 3];        // allows duplicates

  Set<int> set = {1, 2, 2, 3};          // removes duplicates

  Map<String, int> map = {              // key-value structure
    "one": 1,
    "two": 2
  };

  print(list);
  print(set);
  print(map);
}



/*
---------------------------------------------------------------------------
? LIST vs SET vs MAP (CORE DIFFERENCE)
---------------------------------------------------------------------------

List:
* Ordered collection
* Allows duplicates
* Access by index

Set:
* Unordered collection
* No duplicates allowed
* No index access

Map:
* Key-value pairs
* Unique keys
* Access by key
*/




/*
---------------------------------------------------------------------------
! REAL WORLD EXAMPLE
---------------------------------------------------------------------------

Imagine a system:

List  → store all users (duplicates possible)
Set   → store unique user IDs
Map   → store user details (id → name)
*/

void realWorldExample() {

  List<String> users = ["Ali", "Ali", "Ahmed"];

  Set<String> uniqueUsers = users.toSet(); // remove duplicates

  Map<int, String> userMap = {
    1: "Ali",
    2: "Ahmed"
  };

  print(users);
  print(uniqueUsers);
  print(userMap);
}



/*
---------------------------------------------------------------------------
TODO: TASK
---------------------------------------------------------------------------

1 Create a Set of numbers and try adding duplicate values.

2 Add and remove values from the Set.

3 Perform union and intersection on two Sets.

4 Convert a List with duplicates into a Set.

ADVANCED TASK:

Create a program that:
* takes a list of names
* removes duplicates using Set
* stores unique names in a Map with index as key
*/