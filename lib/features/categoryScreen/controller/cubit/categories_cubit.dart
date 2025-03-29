import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_state.dart';
import 'package:mealtracker/features/categoryScreen/data/models/categories_respone_model.dart';
import 'package:mealtracker/features/categoryScreen/data/repos/categories_repo.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.categoriesRepo)
    : super(CategoriesState.categoriesLoading());
  final CategoriesRepo categoriesRepo;

  void loadCategories() async {
    emit(CategoriesLoading());
    final response = await compute(_fetchCategoriesInIsolate, categoriesRepo);
    response.when(
      success: (data) {
        emit(CategoriesSuccess(data.categories));
      },
      failure: (apiErrorModel) {
        emit(CategoriesError(apiErrorModel.error));
      },
    );
  }
  static Future<ApiResult<CategoriesResponeModel>> _fetchCategoriesInIsolate(
    CategoriesRepo repo,
  ) async {
    return await repo.getCategories();
  }
}
