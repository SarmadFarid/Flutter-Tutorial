/*
***************************************************************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 3 — LECTURE 4
* TOPIC: LIST ITERATION (forEach, map, where, reduce)
***************************************************************************
*/

library;

/*
? WHAT IS LIST ITERATION?

* List iteration means going through every element of a list one by one 
* to perform some operation on it.

For example:
- printing values
- modifying data
- filtering items
- calculating totals

* In Dart, lists can be iterated using loops or built-in methods like
* forEach, map, where, and reduce.

* These methods are very powerful and commonly used when working with
* API data, UI lists, and data processing in Flutter applications.
*/



/*
---------------------------------------------------------------------------
forEach METHOD
---------------------------------------------------------------------------

? WHAT:
* forEach is a method that executes a function for every element
* inside a list.

WHY:
It is used when we want to perform an action on every item
without creating a manual loop.

HOW:
The method takes a function (lambda) as a parameter.
That function runs once for each element.
*/

void forEachExample() {

  List<String> students = ["Ali", "Ahmed", "Sara"];

  students.forEach((student) {      // iterates through each element
    print(student);                 // prints each student name
  });
}



/*
---------------------------------------------------------------------------
map METHOD
---------------------------------------------------------------------------

WHAT:
map transforms each element of a list into a new value.

WHY:
Used when we want to modify or convert list elements
without changing the original list.

HOW:
map applies a function to every element and returns
a new iterable containing the transformed values.
*/

void mapExample() {

  List<int> numbers = [1, 2, 3, 4];

  var doubled = numbers.map((num) {   // convert each number
    return num * 2;                   // multiply by 2
  }).toList();                        // convert iterable back to list

  print(doubled);
}



/*
---------------------------------------------------------------------------
where METHOD
---------------------------------------------------------------------------

WHAT:
where filters elements based on a condition.

WHY:
Used when we want only specific values from a list.

HOW:
It checks each element and keeps only those that
satisfy the condition.
*/

void whereExample() {

  List<int> numbers = [10, 15, 20, 25, 30];

  var evenNumbers = numbers.where((num) {   // filter condition
    return num % 2 == 0;                    // keep even numbers
  }).toList();

  print(evenNumbers);
}



/*
---------------------------------------------------------------------------
reduce METHOD
---------------------------------------------------------------------------

WHAT:
reduce combines all elements of a list into a single value.

WHY:
Used for calculations like:
- sum
- product
- maximum
- minimum

HOW:
reduce repeatedly combines elements until only one value remains.
*/

void reduceExample() {

  List<int> numbers = [2, 4, 6, 8];

  int sum = numbers.reduce((value, element) {
    return value + element;      // adds elements step by step
  });

  print(sum);
}



/*
REDUCE WORKING STEP BY STEP

List: [2,4,6,8]

Step 1 → 2 + 4 = 6
Step 2 → 6 + 6 = 12
Step 3 → 12 + 8 = 20

Final Result = 20
*/



/*
COMPARISON OF METHODS

forEach → performs action on each element
map     → transforms elements into new values
where   → filters elements
reduce  → combines elements into single value
*/



/*
REAL WORLD FLUTTER EXAMPLE

Imagine an e-commerce app product prices.
*/

void ecommerceExample() {

  List<int> prices = [100, 200, 300, 400];

  var discountedPrices = prices.map((price) {
    return price - 20;                 // apply discount
  }).toList();

  var expensiveProducts = prices.where((price) {
    return price > 200;                // filter expensive items
  }).toList();

  int total = prices.reduce((a, b) {
    return a + b;                      // calculate total price
  });

  print(discountedPrices);
  print(expensiveProducts);
  print(total);
}



/*
! TASK
todo: 1 Create a list of numbers and print them using forEach.
todo: 2 Use map to create a new list where each number is multiplied by 5.
todo: 3 Use where to filter numbers greater than 50.
todo: 4 Use reduce to calculate the sum of a list.

? ADVANCED TASK

* Create a program that stores product prices in a list and:
- prints all prices
- creates a discounted list
- filters expensive products
- calculates total cart price
*/