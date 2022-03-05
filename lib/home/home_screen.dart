import 'package:flutter/material.dart';
import 'package:islami_c5_sat/home/tabs/hadeth_tab.dart';
import 'package:islami_c5_sat/home/tabs/quran_tab.dart';
import 'package:islami_c5_sat/home/tabs/radio_tab.dart';
import 'package:islami_c5_sat/home/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_mushaf.png')),
                  label: 'Quran',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: 'Radio'),
            ],
          ),
          body:
              Container(padding: EdgeInsets.all(8), child: tabs[currentIndex]),
        ),
      ],
    );
  }

  var tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}
