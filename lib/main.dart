import 'package:flutter/material.dart';
import 'package:hello/car.dart';

List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

List<String> numberString = numbers.map((e) {
  return e.toString() + "1";
}).toList();

main() {
  var myCar = new Car(name: "dee", year: 123);

  myCar.handleEvent = () {
    print('Handle in main');
  };

  myCar.doSomeThing();

  runApp(Center(
    child: Text(
      '${myCar.toString()}',
      style: TextStyle(fontSize: 30),
      textDirection: TextDirection.ltr,
    ),
  ));
}
