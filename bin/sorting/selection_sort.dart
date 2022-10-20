List<int> selectionSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    int min = i;
    for (int j = i + 1; j < list.length; j++) {
      if (list[j] < list[min]) {
        min = j;
      }
    }
    if (i != min) {
      int num = list[i];
      list[i] = list[min];
      list[min] = num;
    }
  }
  return list;
}
