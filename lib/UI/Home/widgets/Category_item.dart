import 'package:easy_localization/easy_localization.dart' as myDirc;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/core/provider/category_provider.dart';
import 'package:news_app/core/resources/ColorsManager.dart';
import 'package:news_app/core/resources/StringsManager.dart';
import 'package:provider/provider.dart';

import '../../../core/resources/AssetsManager.dart';
import '../../../models/category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  int index;

  CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryProvider>(context, listen: false);
    return InkWell(
      onTap: () {
        provider.selected(category);
      },
      child: Directionality(
        textDirection: index.isOdd ? TextDirection.rtl : TextDirection.ltr,
        child: Container(
          clipBehavior: Clip.antiAlias,
          height: 198.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Row(
            children: [
              Image.asset(
                category.image,
                width: 160.w,
                height: 198.h,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(width: 20.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    category.title,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 28,
                    ),
                  ),
                  Container(
                    width: 169.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(84.r),
                      color: ColorsManager.gray,
                    ),
                    child: Padding(
                      padding: REdgeInsetsDirectional.only(start: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.viewAll,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Container(
                            width: 54.w,
                            height: 54.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10000.r),
                            ),
                            child: IconButton(
                              onPressed: () {
                                provider.selected(category);
                              },
                              icon: SvgPicture.asset(
                                width: 24.w,
                                height: 24.h,
                                AssetsManager.arrowRight,
                                matchTextDirection: true,
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.onPrimary,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
