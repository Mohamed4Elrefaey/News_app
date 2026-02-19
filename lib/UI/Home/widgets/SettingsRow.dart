import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/ColorsManager.dart';

class SettingsRow extends StatelessWidget {
  String icon;
  String title;

  SettingsRow({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(ColorsManager.white, BlendMode.srcIn),
        ),
        SizedBox(width: 8.w),
        Text(title, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
