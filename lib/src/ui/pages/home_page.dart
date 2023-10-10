
import 'package:flutter/material.dart';
import 'package:proyecto_edteam/src/ui/configure.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget{
  const HomePage({Key?key}): super(key: key);
  static const HOME_PAGE_ROUTE = "home_page";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: homePageKey,
      body: Container(
        child: Center(
          child: Text(  
            "Primer Texto",
            style: TextStyle(fontSize: 20,color: Configure.ACCENT),
            )),
      ),
    );
  }
}
