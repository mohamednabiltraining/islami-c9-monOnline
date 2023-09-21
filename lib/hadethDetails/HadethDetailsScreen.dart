import 'package:flutter/material.dart';
import 'package:islami_c9_mon/MyThemeData.dart';
import 'package:islami_c9_mon/home/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.content,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
