
import 'package:dio/dio.dart';
import 'package:mealtracker/core/network/api_constants.dart';
import 'package:mealtracker/features/mealsScreen/data/categories_respone_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(EndPoints.getCatigories)
  Future<CategoriesResponeModel> getCategories();

}
