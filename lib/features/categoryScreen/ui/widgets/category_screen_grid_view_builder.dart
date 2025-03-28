import 'package:flutter/widgets.dart';
import 'package:mealtracker/core/widgets/grid_view.dart';
import 'package:mealtracker/features/categoryScreen/data/models/categories_respone_model.dart';
import 'package:mealtracker/features/categoryScreen/ui/widgets/category_screen_grid_view_item.dart';

class CategoryScreenGridViewBuilder extends StatelessWidget {
  const CategoryScreenGridViewBuilder({
    super.key,
    required this.listOfCategory,
  });
  final List<Category> listOfCategory;
  @override
  Widget build(BuildContext context) {
    return GenericGridView(
      itemCount: listOfCategory.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder:
          (context, index) => CategoryScreenGridViewItem(
            index: index,
            categoryName: listOfCategory[index].categoryName,
            imageLink: listOfCategory[index].categoryPhoto,
            categoryId: listOfCategory[index].categoryId,
          ),
    );
  }
}
