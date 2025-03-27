import 'package:bloc/bloc.dart';
import 'package:mealtracker/core/network/api_error_model.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/features/mealsScreen/controller/cubit/meals_state.dart';
import 'package:mealtracker/features/mealsScreen/data/categories_respone_model.dart';
import 'package:mealtracker/features/mealsScreen/data/repos/categories_repo.dart';

class MealsCubit extends Cubit<MealsState> {
  MealsCubit(this.categoriesRepo) : super(MealsState.categoriesLoading());
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
