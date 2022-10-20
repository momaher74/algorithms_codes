void countDownToZero({required int number}) {
  if (number >= 1) {
    number--;
    print(number);
    countDownToZero(number: number);
  } else {
    print("Gg");
  }
}

factorial(int x) {
  if (x > 1) {
    return x * factorial(x - 1);
  } else {
    return 1;
  }
}
