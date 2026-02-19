
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static late SharedPreferences preferences ;

  static Future<void> init() async{
    preferences = await SharedPreferences.getInstance();
  }

  static void saveThemeMode(ThemeMode newTheme){
    if(newTheme == ThemeMode.dark){
      preferences.setString("Theme", "dark");
    }else{
      preferences.setString("Theme", "light");
    }
  }

  static ThemeMode getThemeMode(){
    if(preferences.getString("Theme") == "dark"){
      return ThemeMode.dark;
    }else if(preferences.getString("Theme") == "light"){
      return ThemeMode.light;
    }
      return ThemeMode.light;
  }

}