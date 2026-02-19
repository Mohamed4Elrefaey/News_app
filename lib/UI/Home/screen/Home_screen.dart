import 'package:flutter/material.dart';
import 'package:news_app/UI/Home/screen/category_screen.dart';
import 'package:news_app/UI/Home/widgets/home_drawer.dart';
import 'package:news_app/UI/articels/articels_screen.dart';
import 'package:news_app/core/provider/category_provider.dart';
import 'package:news_app/core/resources/StringsManager.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    CategoryProvider provider = context.watch<CategoryProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          provider.selectedCategory != null
              ? provider.selectedCategory!.title
              : StringsManager.home,
        ),
      ),
      drawer: HomeDrawer(),
      body: provider.selectedCategory != null
          ? ArticlesScreen(category: provider.selectedCategory!)
          : CategoryScreen(),
    );
  }
}
