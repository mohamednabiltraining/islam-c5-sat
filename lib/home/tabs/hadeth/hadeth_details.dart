import 'package:flutter/material.dart';
import 'package:islami_c5_sat/home/providers/app_provider.dart';
import 'package:islami_c5_sat/home/tabs/hadeth/hadeth_tab.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppProvider>(context);
    return Stack(children: [
      Image.asset(
        provider.getMainBackGround(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Text(
              args.content,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 24),
            ),
          ),
        ),
      )
    ]);
  }
}
