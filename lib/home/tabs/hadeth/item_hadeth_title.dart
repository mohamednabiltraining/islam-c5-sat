import 'package:flutter/material.dart';
import 'package:islami_c5_sat/home/tabs/hadeth/hadeth_details.dart';
import 'package:islami_c5_sat/home/tabs/hadeth/hadeth_tab.dart';

class ItemHadeth extends StatelessWidget {
  Hadeth hadeth;

  ItemHadeth(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            '${hadeth.title}',
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
