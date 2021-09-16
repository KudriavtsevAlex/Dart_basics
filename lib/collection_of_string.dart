class CollectionOfNum {
  String text;


  CollectionOfNum(this.text);

    List<num> findNum() {
    int integer = 0;
    bool mark = false;
    List list = text.split("");
    List<int> intList = [];

    for (var element in list) {
      if (int.tryParse(element) != null) {
        integer = integer * 10 + int.parse(element);
        mark = true;
      } else {
        if (mark) {
          intList.add(integer);
          integer = 0;
          mark = false;
        } else {
          integer = 0;
          mark = false;
        }
      }
    }
    print(intList);
    return intList;
  }
}
