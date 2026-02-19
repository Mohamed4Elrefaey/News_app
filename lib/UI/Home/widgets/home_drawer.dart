import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/UI/Home/widgets/SettingsRow.dart';
import 'package:news_app/UI/Home/widgets/lang_drop_down_menu.dart';
import 'package:news_app/UI/Home/widgets/theme_drop_down_menu.dart';
import 'package:news_app/core/provider/category_provider.dart';
import 'package:news_app/core/resources/AssetsManager.dart';
import 'package:news_app/core/resources/StringsManager.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryProvider provider = Provider.of<CategoryProvider>(context);
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onTertiary,
      child: Column(
        children: [
          Container(
            height: 166.h,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            child: Text(
              StringsManager.appTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    provider.clear();
                    Navigator.pop(context);
                  },
                  child: SettingsRow(
                    icon: AssetsManager.homeIcon,
                    title: StringsManager.goToHome.tr(),
                  ),
                ),
                SizedBox(height: 24.h),
                Divider(),
                SizedBox(height: 24.h),
                SettingsRow(
                  icon: AssetsManager.themeIcon,
                  title: StringsManager.theme,
                ),
                SizedBox(height: 8.h),
                ThemeDropDownMenu(),
                SizedBox(height: 24.h),
                Divider(),
                SizedBox(height: 24.h),
                SettingsRow(
                  icon: AssetsManager.langIcon,
                  title: StringsManager.language,
                ),
                SizedBox(height: 8.h),
                LangDropDownMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
