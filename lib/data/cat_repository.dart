import 'package:bloc_problem/data/cat.dart';

class CatRepository {
  Future<List<Cat>> fetchCats() async {
    await Future.delayed(const Duration(seconds: 1));
    return Cat.createFakeCats();
  }
}
