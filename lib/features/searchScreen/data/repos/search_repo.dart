import 'package:mealtracker/core/network/api_error_handler.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/features/searchScreen/data/models/search_response_model.dart';

class SearchRepo {
  final ApiServices apiServices;

  SearchRepo(this.apiServices);
  Future<ApiResult<SearchMealsResponseModel>> searchMeals(
    String mealName,
  ) async {
    try {
      final response = await apiServices.searchMeals(mealName);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
