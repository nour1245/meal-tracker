import 'package:mealtracker/core/network/api_error_handler.dart';
import 'package:mealtracker/core/network/api_error_model.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/features/filteredMealScreen/data/models/filter_categories_response_model.dart';

class FilterCategoryRepo {
  final ApiServices apiServices;

  FilterCategoryRepo(this.apiServices);

  Future<ApiResult<FilterCategoriesRsponseModel>> getMealsByCategory(
    String categoryName,
  ) async {
    try {
      final response = await apiServices.getMealsByCategory(categoryName);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
