import 'package:mealtracker/core/network/api_error_model.dart';
import 'package:mealtracker/core/network/api_result.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/features/categoryScreen/data/models/categories_respone_model.dart';

class CategoriesRepo {
  final ApiServices apiServices;

  CategoriesRepo( this.apiServices);

  Future<ApiResult<CategoriesResponeModel>> getCategories() async {
    try {
      final response = await apiServices.getCategories();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorModel(error: e.toString()));
    }
  }
}
