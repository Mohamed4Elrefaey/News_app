import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/UI/Home/widgets/Category_item.dart';
import 'package:news_app/core/provider/category_provider.dart';
import 'package:news_app/core/resources/AppConstance.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: REdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning\nHere is Some News For You",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => CategoryItem(
                category: AppConstance.categories[index],
                index: index,
              ),
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemCount: AppConstance.categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
