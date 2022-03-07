import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c5_sat/home/providers/app_provider.dart';
import 'package:provider/provider.dart';

import 'item_verse.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var provider = Provider.of<AppProvider>(context);
    if (verses.length == 0) loadFile('${args.index + 1}');
    return Stack(
      children: [
        Image.asset(
          provider.getMainBackGround(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                args.suraName,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: verses.length == 0
                ? CircularProgressIndicator()
                : ListView.separated(
                    itemBuilder: (_, index) {
                      return ItemVerse(verses[index], index + 1);
                    },
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        width: double.infinity,
                        color: Theme.of(buildContext).primaryColor,
                      );
                    },
                    itemCount: verses.length,
                  )),
      ],
    );
  }

  void loadFile(String fileName) async {
    String fileContent =
        await rootBundle.loadString("assets/files/$fileName.txt");
    List<String> verses = fileContent.split('\n');
    this.verses = verses;
    setState(() {});
    print(verses);
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs({required this.suraName, required this.index});
}
