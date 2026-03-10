/*
***************************************************************************
COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
WEEK 3 — LECTURE 3
TOPIC: LISTS (CREATION, MANIPULATION, METHODS)
***************************************************************************
*/

library;

/*
WHAT IS A LIST?

A List in Dart is an ordered collection of multiple values stored in a
single variable. Lists allow us to group related data together such as
names, numbers, or objects.

Each element in a list has an index, and indexing always starts from 0.
Lists are one of the most commonly used data structures in Flutter
because they are used to store collections like products, users,
messages, or API data.
*/

void listBasics() {
  List<String> fruits = ["Apple", "Banana", "Mango"]; // creating a list

  print(fruits);      // prints entire list
  print(fruits[0]);   // access first item
  print(fruits[2]);   // access third item
}



/*
LIST CREATION

Lists can be created in different ways depending on the requirement.
We can create a list with initial values or create an empty list and
add elements later.
*/

void listCreation() {

  List<int> numbers = [10, 20, 30];     // list with values

  List<String> names = [];              // empty list

  List<double> prices = List.empty(growable: true); // growable empty list

  print(numbers);
  print(names);
  print(prices);
}



/*
LIST MANIPULATION (ADDING ITEMS)

Manipulation means modifying the list by adding, updating, or removing
elements. Dart provides several built-in methods to make this easy.
*/

void addItems() {

  List<String> students = ["Ali", "Ahmed"]; // initial list

  students.add("Sara");                     // add single element

  students.addAll(["Zara", "Ayan"]);        // add multiple elements

  print(students);
}



/*
REMOVING ITEMS FROM LIST

Items can be removed either by their value or by their index position.
*/

void removeItems() {

  List<String> colors = ["Red", "Green", "Blue", "Black"];

  colors.remove("Green");     // remove by value

  colors.removeAt(1);         // remove by index

  print(colors);
}



/*
UPDATING LIST ELEMENTS

List items can be modified using their index position.
*/

void updateItems() {

  List<String> cities = ["Lahore", "Karachi", "Islamabad"];

  cities[1] = "Multan";       // updating element

  print(cities);
}



/*
COMMON LIST METHODS

Dart provides useful methods to perform common operations on lists such
as checking size, searching values, or sorting elements.
*/

void listMethods() {

  List<int> numbers = [5, 2, 9, 1, 7];

  print(numbers.length);      // total number of elements

  print(numbers.first);       // first element

  print(numbers.last);        // last element

  print(numbers.contains(9)); // check if value exists

  numbers.sort();             // sort list

  numbers.shuffle();          // random order

  print(numbers);
}



/*
TASK

1 Create a list of five numbers.
2 Add two more numbers to the list.
3 Remove one number from the list.
4 Print the first and last elements.
5 Sort the list and print the result.
*/