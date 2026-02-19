import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 322.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: BoxBorder.all(color: Theme.of(context).colorScheme.onPrimary),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: REdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                "https://shop.ssbcrack.com/cdn/shop/articles/things-banned-in-ima.jpg?v=1754192638&width=1100",
                height: 220.h,
                fit: BoxFit.fitHeight,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Nobel Prize in physics awarded to two \nscientists for machine learning discoveries",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "By : Jon Haworth",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Text(
                  "18 minutes",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
