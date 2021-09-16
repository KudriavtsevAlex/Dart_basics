class CollectionOfDigit {
  String string;

  CollectionOfDigit(this.string);

  Set<dynamic> setOfDigit() {
    Set tempSet = string.split(", ").toSet();
    print(tempSet);
    Set set = {};
    tempSet.forEach((element) {

      if (element == 'one') set.add(1);
      if (element == 'two') set.add(2);
      if (element == 'three') set.add(3);
      if (element == 'four') set.add(4);
      if (element == 'five') set.add(5);
      if (element == 'six') set.add(6);
      if (element == 'seven') set.add(7);
      if (element == 'eighth') set.add(8);
      if (element == 'nine') set.add(9);
      if (element == 'zero') set.add(0);

    });
    print(set);

    return set;
  }
}
