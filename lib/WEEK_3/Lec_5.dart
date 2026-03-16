/*
*************************
! COURSE: FLUTTER PROFESSIONAL DEVELOPMENT
? WEEK 3 — LECTURE 5
* TOPIC: MAPS (KEY-VALUE PAIRS, OPERATIONS)
*************************
*/

library;

/*
? WHAT IS A MAP?

* A Map in Dart is a collection of data stored in key-value pairs.
* Each value is associated with a unique key. Instead of accessing
* data using index numbers like Lists, Maps use keys to retrieve values.

* Maps are widely used in Flutter because most API responses and JSON
* data are structured in key-value format.
*/

void mapBasics() {

  Map<String, String> student = {
    "name": "Ali",
    "city": "Lahore",
    "course": "Flutter"
  }; // creating a map

  print(student);            // print full map
  print(student["name"]);    // access value using key
}



/*
? WHY WE USE MAPS?

* Maps are useful when data has a clear relationship between
* a key and its value.

Example:
"name" → Ali
"age"  → 22
"city" → Lahore

 This structure makes it easier to organize and access data
compared to using separate variables.
*/




/*
? HOW MAP WORKS?

* Each item inside a Map has two parts:

* key   → unique identifier
* value → actual data

Example structure:

{
  "key1": value1,
  "key2": value2
}
*/




/*
? CREATING MAPS

* Maps can be created with initial values or as empty maps
* that can be filled later.
*/

void createMaps() {

  Map<String, int> marks = {        // map with initial values
    "math": 85,
    "english": 78
  };

  Map<String, String> user = {};    // empty map

  Map<String, dynamic> product = {  // map with different data types
    "name": "Laptop",
    "price": 80000,
    "inStock": true
  };

  print(marks);
  print(user);
  print(product);
}




/*
? ADDING VALUES TO MAP
* New key-value pairs can be added by assigning a value to a new key.
*/

void addValues() {

  Map<String, String> user = {};

  user["name"] = "Ahmed";      // add new key-value pair
  user["city"] = "Karachi";    // add another value

  print(user);
}




/*
? UPDATING VALUES
* If the key already exists, assigning a new value will update it.
*/

void updateValues() {

  Map<String, int> scores = {
    "Ali": 80,
    "Sara": 90
  };

  scores["Ali"] = 95;      // updating existing value

  print(scores);
}




/*
? REMOVING VALUES
* Values can be removed using the remove() method with the key.
*/

void removeValues() {

  Map<String, String> data = {
    "name": "Ali",
    "city": "Lahore",
    "course": "Flutter"
  };

  data.remove("city");     // remove key-value pair

  print(data);
}




/*
? COMMON MAP METHODS
* Dart provides built-in methods to work with map data.
*/

void mapMethods() {

  Map<String, int> marks = {
    "math": 80,
    "english": 70,
    "science": 90
  };

  print(marks.length);      // number of key-value pairs

  print(marks.keys);        // get all keys

  print(marks.values);      // get all values

  print(marks.containsKey("math"));   // check key exists

  print(marks.containsValue(70));     // check value exists
}




/*
? ITERATING THROUGH MAP
* Maps can be iterated to access keys and values.
*/

void mapIteration() {

  Map<String, int> scores = {
    "Ali": 85,
    "Ahmed": 90,
    "Sara": 88
  };

  scores.forEach((key, value) {   // iterate through map
    print("$key scored $value");
  });
}




/*
? REAL WORLD EXAMPLE
* API responses often return data in Map format.
*/

void apiExample() {

  Map<String, dynamic> user = {
    "id": 101,
    "name": "Ali",
    "email": "ali@email.com",
    "isVerified": true
  };

  print(user["name"]);      // access user name
  print(user["email"]);     // access email
}




/*
! TASK
todo: 1 Create a map that stores your name, age, and city.
todo: 2 Add a new key "course" with value "Flutter".
todo: 3 Update the city value.
todo: 4 Print all keys and values.
todo: 5 Remove one key from the map.
*/