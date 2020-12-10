class Car {
  String name;
  int year;

  Car({this.name, this.year});

  String toString() {
    return '${this.name} - ${this.year}';
  }

  void doSomeThing() {
    print("123");
    this.handleEvent();
  }

  Function handleEvent;
}
