import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/core/network/dio_factory.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_cubit.dart';
import 'package:mealtracker/features/categoryScreen/data/repos/categories_repo.dart';
import 'package:mealtracker/features/filteredMealScreen/controller/cubit/filterd_meals_cubit.dart';
import 'package:mealtracker/features/filteredMealScreen/data/repos/filter_category_repo.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  // gitit for categories
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(getIt()));
  // categories cubit
  getIt.registerFactory<CategoriesCubit>(() => CategoriesCubit(getIt()));
  //FilterCategoryRepo
  getIt.registerLazySingleton<FilterCategoryRepo>(
    () => FilterCategoryRepo(getIt()),
  );

  getIt.registerFactory<FilterdMealsCubit>(() => FilterdMealsCubit(getIt()));
}
