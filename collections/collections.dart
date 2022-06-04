void main(List<String> args) {
  //------------ Lists---------------------
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);

  List<String> snacks = []; //var snacks = <String>[];

  //Access list element
  final secondElement = desserts[1];
  print(secondElement);

  //Get index
  final index = desserts.indexOf("donuts");
  final value = desserts[index];

  // Mutate list
  desserts[1] = "cake";
  print(desserts);

  //Add item
  desserts.add("icecream");
  print(desserts);

  //remove item
  desserts.remove("cake");
  print(desserts);

  /*
  final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = []; // not allowed
  desserts = ['cake', 'ice cream']; // not allowed
   desserts = someOtherList; // not allowed
  */

  final desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts2.remove('cookies'); // OK
  desserts2.remove('cupcakes'); // OK
  desserts2.add('ice cream'); // OK
  print(desserts2);

  //a final list. Even though the memory address is
  //constant, the values at that address are mutable.

  //immutable list
  const desserts3 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  //desserts3.add('brownie'); // not allowed
  ///desserts3.remove('pie'); // not allowed
  //desserts3[0] = 'fudge'; // not allowed

  // List properties
  const drinks = ['water', 'milk', 'juice', 'soda'];

  //First last element
  print(drinks.first);
  print(drinks.last);

  print(drinks.isEmpty);

  //loop list
  for (var dessert in desserts) {
    print(dessert);
  }

  // Anonymous function
  desserts.forEach((element) => print(element));

  //desserts.forEach(print); //shortcut for above

  //Spread operator
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

  const mixed = ['donuts', ...pastries, ...candy];
  print(mixed);

  //null spread operator (...?)
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);

  //collection if
  const peanutAllergy = true;
  const candy2 = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy2);

  //Collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);

  //------------Sets---------------------

  final Set<int> someSet = {};
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);

  print(anotherSet.contains(1));

  // Add items
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);

  //Remove
  someSet.remove(2112);

  //intersections
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  print(intersection);

  //Union
  final union = setA.union(setB);
  print(union);
  //------------Maps---------------------
  //Maps in Dart are the data structure used to hold key-value pairs.
  final Map<String, int> emptyMap = {};

  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  print(inventory);
  //The keys of a map should be unique

  //Accessing element
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes?.isEven);

  //add new element
  inventory['brownies'] = 3;
  print(inventory);

  //update
  inventory['cakes'] = 1;
  inventory.remove('cookies');

  //check key exists
  print(inventory.containsKey('pies'));
  // check value
  print(inventory.containsValue(42));

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key ->$value'));

  // Higher order methods
  // map,filter,reduce

  //map
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);

  //Filter
  final evens = squares.where((square) => square.isEven);
  print(evens);

  //Reduce
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);

  //If you try to call reduce on an empty list, you’ll get an error.
  const amounts2 = [199, 299, 299, 199, 499];
  final total2 = amounts2.fold(
    0,
    (int sum, element) => sum + element,
  );
  final desserts10 = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts10.sort();
  var dessertsReversed = desserts10.reversed;
  print(dessertsReversed);
}
