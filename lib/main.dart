import 'package:flutter/material.dart';
import 'package:islami_c9_mon/MyThemeData.dart';
import 'package:islami_c9_mon/chapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_c9_mon/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami_c9_mon/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
    );
  }
}
