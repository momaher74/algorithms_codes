int sumElementsInLis(int k) {
  int sum = 0;
  int max = 0;
  List<int> results = [];
  List<int> list = [12, 15, 66, 9, 8, 32, 5, 4];
  for (int i = 0; i < list.length - k + 1; i++) {
    for (int j = i; j < i + k; j++) {
      sum += list[j];
    }
    results.add(sum);
    sum = 0;
  }
  for (var element in results) {
    if (element > max) {
      max = element;
    }
  }
  return max;
}

slidingWindowTech(int k) {
  int sum = 0;
  int max = 0;
  List<int> list = [12, 15, 66, 9, 8, 32, 5, 4];
  for (int i = 0; i < k; i++) {
    sum += list[i];
  }
  max = sum;
  for (int i = k; i < list.length; i++) {
    sum = sum - list[i - k] + list[i];
    if (sum > max) {
      max = sum;
    }
  }

  return max;
}
