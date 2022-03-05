import 'package:flutter/material.dart';
import 'package:islami_c5_sat/suraDetails/sura_details.dart';

class ItemSura extends StatelessWidget {
  String suraName;
  int index;

  ItemSura(this.suraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(suraName: suraName, index: index));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            suraName,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
