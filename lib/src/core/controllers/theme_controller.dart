import 'package:flutter/material.dart';
import 'package:proyecto_edteam/src/ui/configure.dart';

class ThemeController{
  ThemeController._();

  static final instance = ThemeController._();

  ValueNotifier<bool> _brightness = ValueNotifier<bool>(true);
  bool get brightness => _brightness.value;

  Color primary ()=> brightness
        ?Configure.PRIMARY
        :Configure.PRIMARY_DARK;
  
  Color secondary ()=> Configure.SECONDARY;
  Color tercery ()=> Configure.TERCERY;
  Color auxiliar ()=> Configure.AUXILIAR;
  Color accent ()=> Configure.ACCENT;

  Color primaryButton ()=> brightness
        ?Configure.PRIMARY
        :Configure.ACCENT;
  Color secondaryButton ()=> Configure.SECONDARY;

  Color background ()=> 
  brightness?Configure.AUXILIAR:Configure.TERCERY_DARK;
}