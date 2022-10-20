int binarySearch(List list, int value) {
  int start = 0;
  int end = list.length - 1;
  int mid = (start + end) ~/ 2;

  while (list[mid] != value && start <= end) {
    if (value < list[mid]) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
    mid = ((start + end) / 2).floor();
  }
  if (list[mid] == value) {
    return mid;
  } else {
    return -1 ;
  }
}
