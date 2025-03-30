import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/helpers/extensions.dart';
import 'package:mealtracker/core/routing/routes.dart';
import 'package:mealtracker/features/searchScreen/controller/cubit/search_cubit.dart';
import 'package:mealtracker/features/searchScreen/controller/cubit/search_state.dart';

class SuggestionsList extends StatelessWidget {
  final SearchController controller;
  const SuggestionsList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.when(
          searchLoading:
              () => const ListTile(
                title: Center(),
              ),
          searchSuccess: (searchResults) {
            if (searchResults.isEmpty) {
              return const ListTile(title: Text('No meals found'));
            }
            return Column(
              children:
                  searchResults
                      .map(
                        (meal) => InkWell(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 70.w,
                                height: 70.h,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) => LinearProgressIndicator(),
                                  imageUrl: meal['strMealThumb'] ?? '',
                                
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Flexible(child: Text(meal['strMeal'] ?? 'Unknown meal')),
                            ],
                          ),
                          onTap: () {
                            controller.closeView(meal['strMeal']);
                            context.pushNamed(
                              Routes.mealDetailsScreen,
                              arguments: meal['idMeal'],
                            );
                          },
                        ),
                      )
                      .toList(),
            );
          },
          searchError: (error) => ListTile(title: Text('Error: $error')),
        );
      },
    );
  }
}
