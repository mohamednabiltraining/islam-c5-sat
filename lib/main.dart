import 'package:flutter/material.dart';
import 'package:islami_c5_sat/home/home_screen.dart';
import 'package:islami_c5_sat/home/tabs/hadeth/hadeth_details.dart';
import 'package:islami_c5_sat/my_theme.dart';
import 'package:islami_c5_sat/suraDetails/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Islami",
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
