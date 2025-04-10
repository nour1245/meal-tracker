import 'package:dio/dio.dart';
import 'package:mealtracker/core/network/api_constants.dart';
import 'package:mealtracker/features/categoryScreen/data/models/categories_respone_model.dart';
import 'package:mealtracker/features/filteredMealScreen/data/models/filter_categories_response_model.dart';
import 'package:mealtracker/features/mealDetails/data/models/meal_details_response_model.dart';
import 'package:mealtracker/features/searchScreen/data/models/search_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(EndPoints.getCatigories)
  Future<CategoriesResponeModel> getCategories();

  @GET(EndPoints.getMealsByCategory)
  Future<FilterCategoriesRsponseModel> getMealsByCategory(
    @Query('c') String categoryName,
  );

  @GET(EndPoints.getMealById)
  Future<MealDetailsResponseModel> getMealById(
    @Query('i') String mealId
    );

    @GET(EndPoints.searchMeals)
    Future<SearchMealsResponseModel> searchMeals(
      @Query('s') String mealName,
    );
}
