searchInTextNaive({
  required String text,
  required String pattern,
}) {
  //"we have dummy text here"
  // dummy
  for (int i = 0; i < text.length ; i++) {
    int j = 0;
    for (j; j < pattern.length; j++) {
      if (text[i + j] != pattern[j]) {
        break;
      }
    }
    if (j == pattern.length) {
      return i;
    }
  }
  return -1;
}
