
import 'package:flutter/material.dart';
import 'package:proyecto_edteam/src/core/controllers/theme_controller.dart';
import 'package:proyecto_edteam/src/ui/configure.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget{
  const HomePage({Key?key}): super(key: key);
  static const HOME_PAGE_ROUTE = "home_page";

  @override
  Widget build(BuildContext context){
    return ValueListenableBuilder(valueListenable: ThemeController.instance.brightness, builder:(BuildContext context,value,Widget?child){
      final theme = ThemeController.instance;
      return Scaffold(
      backgroundColor: ThemeController.instance.background(),
      key: homePageKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          child: Center(child: Text("Primer Text",style: TextStyle(fontSize: 30,color: theme.primary()),)),
        ),
        ElevatedButton(onPressed: (){
          theme.ChangeTheme();
        }, child: Text("ACCION"))
      ],)
    );
    });
  }
}
