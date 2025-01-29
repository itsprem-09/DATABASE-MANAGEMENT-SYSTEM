import 'dart:io';

void main() {
  print('Hello');

  stdout.write('Hello'); // other way of printing on screen

  var a = stdin.readLineSync(); // store full line and remove space between them

  print('Welcome $a');

  var h = new Human(); // create instance of class

  var avi = Human(); // other way of creating instance of class

  //Declaration of variable

  int b; // Declaration of non-nullable variable

  int? c; // Declaration of nullable variable

  // Assignment of variable

  b = 5;
  print(b);

  //Inline Declaration

  String name = 'prem';

  BigInt j = BigInt.parse('47979791930139');

  double abc = 92.31;

  num asb = 231.2123; // num is used for storing int or double value

  bool abcdj = false;

  // Non Dynamic Variable using var keyword

  var hdadk = "Hello"; // varibale datatype will be string because the first time string value is stored in variable

  hdadk = 3; // Error because string datatype variable cant store int value;

  hdadk = "Prem"; // No Error it can be use to change value of variable

  // Dynamic Variable using var keyword

  var section;

  // or

  dynamic section3; // is also used to create dynamic variable

  section = 34; //No Error Datatype - Int

  section = 'D'; //No Error Datatype - String

  section = false; //No Error Datatype - Boolean

  var prem = Human();

  prem.printName("Jani");

  int s = prem.sum(10, 4);

  // List

  var list = [1, 2, 4, 3, 4];
  list.add(6);
  print("$list");

//   var list2 = ['hello', 'hi'];
//   list2.add(3); //Error because the type of list will be String because var assign datatype automatically with reference of assignment value (here all values in list are string so it will create error becasuse 3 is int value and cant assign to String type list )

  var list2 = [];
  list2.add('Hello');
  list2.add('hi');
  list2.addAll(list);

  list.insert(2, 100); // insert(index, value)
  list2.insertAll(2, list);
//   list.insertAll(2, list2); //Error - VALUE of type int cant assigned to a variable of type string
  
  list[2] = 8; //update the value
  
  list.replaceRange(0,2,[3,4,5,6]); //replace 0, 1 index with list
  // replaceRange(start,end,ReplacingList)
  
  list.removeLast(); // delete last
  
  list.remove(30); // delete 30 from list
  
  list.removeAt(3); // removeAt(index);
  
  list.removeRange(0,4); // removeRange(start, end);
  // it will remove elements at index 0, 1, 2, 3.
  
  // Properties of list
  
  print(list.length);
  print(list.reversed);
  print(list.first);
  print(list.last);
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.elementAt(2));
  
  
  // Map
  
  var map_name = {
    'key1' : 'Prem',
    'key2' : 3,
    'key3' : 4.5,
    'key4' : true
  }; // keys must be string 
  
  map_name['key1'] = 'Jani'; // value will be changed
  map_name['key5'] = 'Hello'; // value will be added because that key is not present in the map.
  
  
  print(map_name);
  print(map_name['key2']); // 3
  print(map_name['key5']); // null
  
  
  // Method - 2
  
  var mapName = Map();
  mapName['key1'] = 'Hello';
  mapName['key2'] = 2;
  
  print(mapName);
  print(mapName.isEmpty);
  print(mapName.isNotEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('key2'));
  print(mapName.containsValue(3));
  print(mapName.remove('key3'));
  
  
  // Final Keyword
  
//   final varName = 'Prem';
  
//   varName = 'Jani'; // Error
  
  
//   final varName;
  
//   varName = 'Prem'; // Can be used 
  
//   varName = 'jANI'; // Error
  
//   final String varName;
  
//   varName = 4; // Error because it is String type variable
  
//   varName = 'Prem'; // Can be used 
  
//   varName = 'Jani'; // Error
  
//   final var name; // Error final and var cant use togeather
  
  final dynamic name1; // dynamic can used with final
  
  
  // Const keyword - Must be initliazed at the declaration time
  
  const nameP = 'Prem'; // work perfectly
//   nameP = 'Jani'; // Error
  
//   const namePr;
//   namePr = 'JANI'; // Error - must be initialized at declaration time
  
  
  // final in array(list)
  
  final arr = ['Prem', 'JANI', 'Darshan'];
  
  arr.add('Hi'); // No error
  
//   arr = ['Hello', 'Prem', 'Hi']; // Error cant reassign
  
  // const in array
  
  const arr2 = ['Prem', 'JANI', 'Darshan'];
  
  arr2.add('Hi'); // Exception - cant add to the unmodifiable list
  
//   arr2 = ['Hello', 'Prem', 'Hi']; // Error cant reassign 
  
  
}

class Human {
  // Human();  default constructor

  Human() {
    print('Constructor called');
  }

  void printName(String name) {
    print(name);
  }

  int sum(int a, int b) {
    return a + b;
  }
}
