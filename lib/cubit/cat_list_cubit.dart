import 'package:bloc/bloc.dart';
import 'package:bloc_problem/data/cat.dart';
import 'package:bloc_problem/data/cat_repository.dart';
import 'package:equatable/equatable.dart';

part 'cat_list_state.dart';

class CatListCubit extends Cubit<CatListState> {
  final CatRepository _repository;

  CatListCubit(this._repository) : super(const CatListState());
  void fetchCats(CatTypeFilter type) async {
    emit(state.copyWith(status: CatOverviewStatus.loading));
    final list = await _repository.fetchCats();
    if (type == CatTypeFilter.main) {
      emit(state.copyWith(
          cats: list
              .where((element) => element.type == CatTypeFilter.main.index)
              .toList(),
          filter: CatTypeFilter.main,
          status: CatOverviewStatus.loaded));
    } else if (type == CatTypeFilter.kitten) {
      emit(state.copyWith(
          cats: list
              .where((element) => element.type == CatTypeFilter.kitten.index)
              .toList(),
          filter: CatTypeFilter.kitten,
          status: CatOverviewStatus.loaded));
    } else {
      emit(state.copyWith(
          cats: list,
          filter: CatTypeFilter.all,
          status: CatOverviewStatus.loaded));
    }
  }
}
