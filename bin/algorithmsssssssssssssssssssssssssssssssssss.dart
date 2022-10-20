import 'sorting/bubble_sort.dart';

void main() {
  List<int> list = [1, 2, 5, 9, 8, 7, 22, 55, 54, 65, 66, -3];
  List<MyClass> prods = [
    MyClass(price: 10, name: 'mm'),
    MyClass(price: 20, name: 'mm2'),
    MyClass(price: 33.6, name: 'mm3'),
    MyClass(price: 3, name: 'm'),
  ];
  List<MyClass> orderedProds = prods
    ..sort((a, b) {
      return a.price.compareTo(b.price);
    });

  print(bubbleSortAlgorithm(list));
}

class MyClass {
  String name;

  double price;

  MyClass({
    required this.price,
    required this.name,
  });
}
