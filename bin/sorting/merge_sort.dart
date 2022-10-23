mergeSortAlgo(List list) {
  int mid = (list.length / 2).floor();
  if (list.length <= 1) {
    return list;
  }
  List leftSideList = mergeSortAlgo(list.sublist(0, mid));
  List rightSideList = mergeSortAlgo(list.sublist(mid));
  return merge(leftSideList, rightSideList);
}

List merge(List a, List b) {
  List result = [];
  int i = 0;
  int j = 0;
  while (i < a.length && j < b.length) {
    if (a[i] < b[j]) {
      result.add(a[i]);
      i++;
    } else {
      result.add(b[j]);
      j++;
    }
  }
  while (i < a.length) {
    result.add(a[i]);
    i++;
  }
  while (j < b.length) {
    result.add(b[j]);
    j++;
  }
  return result;
}
