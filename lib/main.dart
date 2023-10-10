
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_edteam/src/core/constants/data.dart';
import 'package:proyecto_edteam/src/ui/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        HomePage.HOME_PAGE_ROUTE: (context)=>HomePage(),

      },
      debugShowCheckedModeBanner: false,
      title: Constants.MAIN_TITLE,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      initialRoute: HomePage.HOME_PAGE_ROUTE,
    );
  }
}
