import 'package:bloc/bloc.dart';
import 'package:mealtracker/features/filteredMealScreen/data/repos/filter_category_repo.dart';
import 'package:mealtracker/features/filteredMealScreen/controller/cubit/filterd_meals_state.dart';

class FilterdMealsCubit extends Cubit<FilterdMealsState> {
  FilterdMealsCubit(this.filterCategoryRepo) : super(FilterdMealsState.filterMealsLoading());

  final FilterCategoryRepo filterCategoryRepo;

  void getMealsByCategory(String categoryName) async {
    emit(FilterMealsLoading());
    final response = await filterCategoryRepo.getMealsByCategory(categoryName);
    response.when(
      success: (data) {
        emit(FilterMealsSuccess(data.meals));
      },
      failure: (apiErrorModel) {
        emit(FilterMealsError(apiErrorModel.error));
      },
    );
  }
}
