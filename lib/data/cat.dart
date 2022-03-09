class Cat {
  int id;
  String name;
  int type; // 0 for main 1 for kittens
  Cat({
    required this.id,
    required this.name,
    required this.type,
  });
  static List<Cat> createFakeCats() {
    return [
      Cat(id: 1, name: 'name', type: 0),
      Cat(id: 2, name: 'name1', type: 0),
      Cat(id: 3, name: 'name2', type: 0),
      Cat(id: 4, name: 'name3', type: 1),
      Cat(id: 5, name: 'name4', type: 1),
      Cat(id: 6, name: 'name5', type: 0),
    ];
  }
}
