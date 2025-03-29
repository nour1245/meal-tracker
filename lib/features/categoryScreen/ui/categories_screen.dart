import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/di/dependancy.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_cubit.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_state.dart';
import 'package:mealtracker/features/categoryScreen/ui/widgets/categories_shimmer.dart';
import 'package:mealtracker/features/categoryScreen/ui/widgets/category_screen_grid_view_builder.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RPadding(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          child: BlocProvider(
            create: (context) => getIt<CategoriesCubit>()..loadCategories(),
            child: BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state) {
                return state.when(
                  categoriesLoading:
                      () => CategoriesShimmer(),
                  categoriesSuccess:
                      (categories) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ctegories',style: AppTextStyle.headText(context),),
                          SizedBox(height: 10.h,),
                          Expanded(
                            child: CategoryScreenGridViewBuilder(
                              listOfCategory: categories,
                            ),
                          ),
                        ],
                      ),
                  categoriesError: (error) => Text(error!),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
