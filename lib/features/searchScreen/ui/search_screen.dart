import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/di/dependancy.dart';
import 'package:mealtracker/features/searchScreen/controller/cubit/search_cubit.dart';
import 'package:mealtracker/features/searchScreen/controller/cubit/search_state.dart';
import 'package:mealtracker/features/searchScreen/ui/suggetion_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  final _debounceDuration = const Duration(microseconds: 3500);

  @override
  Widget build(BuildContext context) {
    Timer? _debounceTimer;

    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(getIt()),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              children: [
                BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    final cubit = context.read<SearchCubit>();
                    return SearchAnchor.bar(
                      barHintText: 'Looking For Meal?',
                      onChanged: (value) {
                        if (_debounceTimer?.isActive ?? false) {
                          _debounceTimer?.cancel();
                        }
                        _debounceTimer = Timer(_debounceDuration, () {
                          if (value.isNotEmpty) cubit.searchMeals(value);
                        });
                      },
                      suggestionsBuilder: (context, controller) {
                        return [
                          BlocProvider.value(
                            value: cubit,
                            child: SuggestionsList(controller: controller),
                          ),
                        ];
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
