
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category.dart';

class CategoryProvider extends ChangeNotifier {
  CategoryModel? selectedCategory ;

  void selected(CategoryModel newCategory){
    selectedCategory = newCategory ;
    notifyListeners();
  }

  void clear() {
    selectedCategory = null;
    notifyListeners();
  }

}