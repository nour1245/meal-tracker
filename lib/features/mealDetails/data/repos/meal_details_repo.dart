import 'package:mealtracker/core/network/api_error_handler.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/features/mealDetails/data/models/meal_details_response_model.dart';

class MealDetailsRepo {
  final ApiServices apiServices;

  MealDetailsRepo(this.apiServices);
  Future<ApiResult<MealDetailsResponseModel>> getMealDetails(String id) async {
    try {
      final response = await apiServices.getMealById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
