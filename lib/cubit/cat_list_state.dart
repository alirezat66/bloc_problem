part of 'cat_list_cubit.dart';

enum CatTypeFilter { main, kitten, all }
enum CatOverviewStatus { init, loading, loaded, error }

class CatListState extends Equatable {
  final List<Cat> cats;
  final CatTypeFilter filter;
  final CatOverviewStatus status;
  const CatListState({
    this.status = CatOverviewStatus.init,
    this.cats = const [],
    this.filter = CatTypeFilter.main,
  });

  @override
  List<Object?> get props => [status, cats, filter];

  CatListState copyWith({
    List<Cat>? cats,
    CatTypeFilter? filter,
    CatOverviewStatus? status,
  }) {
    return CatListState(
      cats: cats ?? this.cats,
      filter: filter ?? this.filter,
      status: status ?? this.status,
    );
  }
}
