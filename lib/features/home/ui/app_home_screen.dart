import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/categoryScreen/ui/categories_screen.dart';
import 'package:mealtracker/features/home/ui/home_screen.dart';
import 'package:mealtracker/features/searchScreen/ui/search_screen.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: ColorsManger.secondary,
        onTap: (value) {
          switch (value) {
            case 0:
              setState(() {
                page = 0;
              });
            case 1:
              setState(() {
                page = 1;
              });
            case 2:
              setState(() {
                page = 2;
              });
              break;
            default:
          }
        },
        items: [
          Icon(Icons.home, semanticLabel: "home"),
          Icon(Icons.fastfood_sharp, semanticLabel: "Food Categories"),
          Icon(Icons.search, semanticLabel: "Seaech"),
        ],
      ),
      body:
          page == 0
              ? HomeScreen()
              : page == 1
              ? CategoriesScreen()
              : SearchScreen(),
    );
  }
}
