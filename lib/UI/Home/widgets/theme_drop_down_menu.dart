import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/provider/Theme_provider.dart';
import 'package:news_app/core/resources/ColorsManager.dart';
import 'package:news_app/core/resources/StringsManager.dart';
import 'package:provider/provider.dart';

class ThemeDropDownMenu extends StatelessWidget {
  const ThemeDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    return DropdownButtonFormField<String>(
      isExpanded: true,
      initialValue: provider.theme == ThemeMode.light ? "light" : "dark",
      icon: Icon(Icons.keyboard_arrow_down_rounded, color: ColorsManager.white),
      dropdownColor: ColorsManager.black,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      items: [
        DropdownMenuItem(
          value: "light",
          child: Text(
            StringsManager.light,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        DropdownMenuItem(
          value: "dark",
          child: Text(
            StringsManager.dark,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
      onChanged: (value) {
        ThemeMode newTheme = value == "dark" ? ThemeMode.dark : ThemeMode.light;
        provider.changeTheme(newTheme);
        Navigator.pop(context);
      },
    );
  }
}
