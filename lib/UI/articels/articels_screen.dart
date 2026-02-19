import 'package:flutter/material.dart';
import 'package:news_app/UI/articels/widgets/articles_list.dart';
import 'package:news_app/core/remote/network/api/ApiManager.dart';
import 'package:news_app/core/resources/AppConstance.dart';
import 'package:news_app/models/category.dart';

class ArticlesScreen extends StatefulWidget {
  CategoryModel category ;
  ArticlesScreen({required this.category});
  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}


class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiManager.getSources(widget.category.id);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: AppConstance.domySources
                .map((source) => Tab(text: source))
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              children: AppConstance.domySources
                  .map((source) => ArticlesList())
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
