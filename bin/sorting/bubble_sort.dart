List<int> bubbleSortAlgorithm(List<int> list) {
  int count = 0;
  bool edit = false;
  int len = list.length - 1;
  for (int i = 0; i < list.length; i++) {
    count++;
    for (int j = 0; j < len; j++) {
      count++;
      if (list[j] > list[j + 1]) {
        edit = true;
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
    if (edit == false) {
      print('break') ;
      break;
    }
  }
  print('count = $count');
  return list;
}

swap(int a, int b) {
  int z = a;
  a = b;
  b = z;
}
