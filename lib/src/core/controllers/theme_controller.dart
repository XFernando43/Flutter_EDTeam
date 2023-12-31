import 'package:flutter/material.dart';
import 'package:proyecto_edteam/src/core/services/preference_service.dart';
import 'package:proyecto_edteam/src/ui/configure.dart';

class ThemeController{
  ThemeController._();

  static final instance = ThemeController._();

  ValueNotifier<bool> brightness = ValueNotifier<bool>(true);
  bool get brightnessValue => brightness.value;

  Color primary ()=> brightnessValue
        ?Configure.PRIMARY
        :Configure.PRIMARY_DARK;
  
  Color secondary ()=> Configure.SECONDARY;
  Color tercery ()=> Configure.TERCERY;
  Color auxiliar ()=> Configure.AUXILIAR;
  Color accent ()=> Configure.ACCENT;

  Color primaryButton ()=> brightnessValue
        ?Configure.PRIMARY
        :Configure.ACCENT;
  Color secondaryButton ()=> Configure.SECONDARY;

  Color background ()=> 
  brightnessValue?Configure.AUXILIAR:Configure.TERCERY_DARK;

  void ChangeTheme() async{
    brightness.value = !brightness.value;
    await PreferenceService.instace.setBool("tema", brightness.value);
  }


  Future<void> initTheme() async{
    brightness.value = await PreferenceService.instace.getBool("tema");
  }
}