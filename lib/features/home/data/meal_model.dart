import 'package:hive/hive.dart';
part 'meal_model.g.dart';

@HiveType(typeId: 0, adapterName: 'MealModelAdapter')
class MealModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int calories;
  @HiveField(2)
  final String time;
  @HiveField(3)
  final String photoPath;
  @HiveField(4)
  final String id;

  MealModel({
    required this.name,
    required this.calories,
    required this.time,
    required this.photoPath,
    required this.id
  });
}
