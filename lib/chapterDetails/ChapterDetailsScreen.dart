import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_mon/chapterDetails/VerseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter-details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index); // 5s
    }
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.chapterTitle),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return VerseWidget(verses[index], index + 1);
                      },
                      itemCount: verses.length,
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 48),
                            color: Theme.of(context).primaryColor,
                            width: double.infinity,
                            height: 2,
                          )),
                ),
        ));
  }

  List<String> verses = [];

  void loadFile(int index) async {
    // non-blocking
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split('\n');
    print(fileContent);
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String chapterTitle;
  int index;

  ChapterDetailsArgs(this.chapterTitle, this.index);
}
