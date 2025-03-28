import 'package:bloc/bloc.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_state.dart';
import 'package:mealtracker/features/categoryScreen/data/repos/categories_repo.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.categoriesRepo,)
    : super(CategoriesState.categoriesLoading());
  final CategoriesRepo categoriesRepo;

  void loadCategories() async {
    emit(CategoriesLoading());
    final response = await categoriesRepo.getCategories();
    response.when(
      success: (data) {
        emit(CategoriesSuccess(data.categories));
      },
      failure: (apiErrorModel) {
        emit(CategoriesError(apiErrorModel.error));
      },
    );
  }
}
