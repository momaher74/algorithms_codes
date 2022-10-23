// List quickSortAlgo(List list, [int left = 0, int right = -10]) {
//   if (right == -10) {
//     right = list.length - 1;
//   }
//   if (left < right) {
//     int pivotIdx = pivot(list, left, right);
//     quickSortAlgo(list, left, pivotIdx - 1);
//     quickSortAlgo(list, pivotIdx + 1, right);
//   }
//
//   return list;
// }
//
// int pivot(List list, [int start = 0, int end = -1]) {
//   if (end == -1) {
//     end = list.length - 1;
//   }
//   int pivot = list[start];
//   int swapIdx = start;
//   for (int i = 1; i < list.length; i++) {
//     if (pivot > list[i]) {
//       swapIdx++;
//       swap(list, i, swapIdx);
//     }
//   }
//   swap(list, start, swapIdx);
//   print(list);
//
//   return swapIdx;
// }
//
// void swap(List list, int i, int j) {
//   int temp = list[i];
//   list[i] = list[j];
//   list[j] = temp;
// }
List quicksort(listToBeSort, int leftElement, int rightelement) {
  int i = leftElement;
  int j = rightelement;
  int pivotElement = listToBeSort[(leftElement + rightelement) ~/ 2];

  while (i <= j) {
    while (listToBeSort[i] < pivotElement) {
      i++;
    }

    while (listToBeSort[j] > pivotElement) {
      j--;
    }

    if (i <= j) {
      int objtemp = listToBeSort[i];
      listToBeSort[i] = listToBeSort[j];
      listToBeSort[j] = objtemp;
      i++;
      j--;
    }
  }

  if (leftElement < j) {
    quicksort(listToBeSort, leftElement, j);
  }
  if (i < rightelement) {
    quicksort(listToBeSort, i, rightelement);
  }
  return listToBeSort ;
}
