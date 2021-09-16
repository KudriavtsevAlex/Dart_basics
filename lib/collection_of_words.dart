

class CollectionOfWords {
  List<String> collection;

  CollectionOfWords(this.collection);

  Map<String, int> MapOfWords() {
    int countIndex = collection.length;
    Map<String, int> map = {};
    collection.forEach((element) {
      if (!map.containsKey(element)) {
        map.addAll({element: 1});
      } else {
        (map.update(element, (value) => value += 1));
      }
    });
    print(map);

    return map;
  }
}
