// dbhelper.dart
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'dbhelper.dart';

enum FoodCategory {
  mainDish,
  dessert,
  appetizer,
}

// food_db.dart
class FoodDB {
  static Future<List<Map<String, dynamic>>> getAllFoods() async {
    final database = await FoodDBHelper.getDatabase();

    return database.rawQuery('''SELECT 
            foods.id,
            foods.name,
            foods.type
          FROM foods
          ''');
  }

  static Future insertFood(Map<String, dynamic> data) async {
    final database = await FoodDBHelper.getDatabase();
    final id = await database.insert("foods", data,
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  static Future deleteFood(int id) async {
    final database = await FoodDBHelper.getDatabase();
    database.rawQuery("""DELETE FROM foods WHERE id=?""", [id]);
  }

  static Future updateFoodType(int id, FoodCategory newCategory) async {
    final database = await FoodDBHelper.getDatabase();
    await database.rawUpdate(
      '''UPDATE foods 
         SET type = ? 
         WHERE id = ?''',
      [_getCategoryString(newCategory), id],
    );
  }

  static String _getCategoryString(FoodCategory category) {
    switch (category) {
      case FoodCategory.mainDish:
        return 'mainDish';
      case FoodCategory.dessert:
        return 'dessert';
      case FoodCategory.appetizer:
        return 'appetizer';
      default:
        throw Exception('Invalid category: $category');
    }
  }
}
