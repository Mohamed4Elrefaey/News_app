import 'package:news_app/core/resources/AssetsManager.dart';
import 'package:news_app/models/category.dart';

class AppConstance {

  static const baseUrl = "https://newsapi.org";
  static const apiKey = "b5d8541b08e142da8441afb7930308c8";

  static List<CategoryModel> categories = [
    CategoryModel(
      title: "General",
      id: "general",
      image: AssetsManager.general,
    ),
    CategoryModel(
      title: "Business",
      id: "business",
      image: AssetsManager.business,
    ),
    CategoryModel(title: "Sport", id: "sport", image: AssetsManager.sport),
    CategoryModel(
      title: "Science",
      id: "science",
      image: AssetsManager.science,
    ),
    CategoryModel(title: "Health", id: "health", image: AssetsManager.health),
    CategoryModel(
      title: "Technology",
      id: "technology",
      image: AssetsManager.technology,
    ),
  ];

  static List<String> domySources = [
    "BBC",
    "CNN",
    "Al Jazeera",
    "ABC News",
    "TechCrunch",
    "Wired",
    "CNBC",
    "ESPN",
    "ABC News",
    "Variety"
  ];
}
