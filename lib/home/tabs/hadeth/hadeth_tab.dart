import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c5_sat/home/tabs/hadeth/item_hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/hadeth_header_image.png'),
        Expanded(
            child: hadethList.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        width: double.infinity,
                        color: Theme.of(buildContext).primaryColor,
                      );
                    },
                    itemBuilder: (_, index) {
                      return ItemHadeth(hadethList[index]);
                    },
                    itemCount: hadethList.length,
                  )),
      ],
    );
  }

  void loadHadethFile() async {
    List<Hadeth> allHadeth = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> singleHadeth = content.trim().split('#');
    for (int i = 0; i < singleHadeth.length; i++) {
      List<String> lines = singleHadeth[i].trim().split('\n');
      String title = lines[0];
      if (title.trim().isEmpty) continue;
      lines.removeAt(0);
      String content = lines.join(' ');
      allHadeth.add(Hadeth(title, content));
    }
    hadethList = allHadeth;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
