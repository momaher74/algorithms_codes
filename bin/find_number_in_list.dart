int findNumInList(int number) {
  List list = [12, 15, 66, 9, 8, 32, 5, 4];
  for (int i = 0; i < list.length; i++) {
    if (list[i] == number) {
      return i;
    }
  }
  return -1;
}


