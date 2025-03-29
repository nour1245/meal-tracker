import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/network/api_services.dart';
import 'package:mealtracker/features/searchScreen/controller/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.apiServices) : super(SearchState.searchLoading());
  final ApiServices apiServices;
  
  void searchMeals(String mealName) async {
    emit(SearchLoading());
    try {
      final response = await apiServices.searchMeals(mealName);
      emit(SearchSuccess(response.meals??[]));
    } catch (e) {
      emit(SearchError(e.toString()));
    }
  }
}
