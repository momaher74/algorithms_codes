Map<String , int> checkCountOfCharRepeat(String text) {
  int count = 0;
  Map<String , int> elements = {};
  for (int i = 0; i < text.length; i++) {
    for (int j = 0; j < text.length; j++) {
      if (text[i] == text[j]) {
        count++;
      }
    }
    elements.addAll({
      text[i]: count,
    });
    count = 0;
  }
  return elements;
}
