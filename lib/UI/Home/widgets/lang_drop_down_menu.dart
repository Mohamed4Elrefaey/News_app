
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/resources/ColorsManager.dart';
import '../../../core/resources/StringsManager.dart';

class LangDropDownMenu extends StatelessWidget {
  const LangDropDownMenu({super.key});

  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      initialValue: "en",
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: ColorsManager.white,
      ),
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
          value: "en",
          child: Text(
            StringsManager.english,
            style: Theme.of(
              context,
            ).textTheme.labelMedium,
          ),
        ),
        DropdownMenuItem(
          value: "ar",
          child: Text(
            StringsManager.arabic,
            style: Theme.of(
              context,
            ).textTheme.labelMedium,
          ),
        ),
      ],
      onChanged: (value) {
        // handle Lang
        Navigator.pop(context);
      },
    );
  }
}
