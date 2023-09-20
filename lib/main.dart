import 'package:flutter/material.dart';
import 'package:islami_c9_mon/chapterDetails/ChapterDetailsScreen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          cardColor: Colors.white,
          cardTheme: CardTheme(
              surfaceTintColor: Colors.white,
              color: Colors.white,
              elevation: 18,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              selectedIconTheme: IconThemeData(size: 32),
              unselectedItemColor: Colors.white),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.transparent,
              elevation: 0,
              titleTextStyle: TextStyle(fontSize: 28, color: Colors.black)),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            onPrimary: Colors.white,
            secondary: Color(0xFFB7935F),
            onSecondary: Colors.black,
          ),
          useMaterial3: true),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
      },
    );
  }
}
