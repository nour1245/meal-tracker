import 'package:bloc/bloc.dart';
import 'package:mealtracker/features/mealDetails/controller/cubit/meal_details_state.dart';
import 'package:mealtracker/features/mealDetails/data/repos/meal_details_repo.dart';

class MealDetailsCubit extends Cubit<MealDetailsState> {
  MealDetailsCubit(this.mealDetailsRepo)
    : super(MealDetailsState.mealLoading());
  final MealDetailsRepo mealDetailsRepo;

  void loadMealDetails(String mealId) async {
    emit(MealLoading());
    final response = await mealDetailsRepo.getMealDetails(mealId);
    response.when(
      success: (meal) {
        emit(MealSuccess(meal.mealDetails[0]));
      },
      failure: (apiErrorModel) {
        emit(MealError(apiErrorModel.error!));
      },
    );
  }
}
