import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/UI/Home/screen/Home_screen.dart';
import 'package:news_app/core/provider/Theme_provider.dart';
import 'package:news_app/core/provider/category_provider.dart';
import 'package:news_app/core/remote/network/api/ApiManager.dart';
import 'package:news_app/core/resources/AppTheme.dart';
import 'package:news_app/core/resources/RoutesManager.dart';
import 'package:provider/provider.dart';

import 'core/remote/local/prefs_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsManager.init();
  await EasyLocalization.ensureInitialized();
  ApiManager.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..initTheme(),
        ),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
      ],
      child: EasyLocalization(
        startLocale: Locale('en'),
        supportedLocales: [Locale("ar"), Locale("en")],
        path: 'assets/translation',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    return ScreenUtilInit(
      minTextAdapt: true,
      // for handle size of text to be suitable to screen size
      splitScreenMode: true,
      // handle size of screen according to split mode
      designSize: Size(393, 852),
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: provider.theme,
          debugShowCheckedModeBanner: false,
          title: 'News_App',
          routes: {RoutesManager.home: (_) => HomeScreen()},
          initialRoute: RoutesManager.home,
        );
      },
    );
  }
}
