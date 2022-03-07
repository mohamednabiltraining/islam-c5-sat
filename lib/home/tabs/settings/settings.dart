import 'package:flutter/material.dart';
import 'package:islami_c5_sat/home/providers/app_provider.dart';
import 'package:islami_c5_sat/home/tabs/settings/language_bottom_sheet.dart';
import 'package:islami_c5_sat/home/tabs/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Language'),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: Text(
              provider.appLanguage == "en" ? "English" : "العربيه",
              style:
                  Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18),
            ),
          ),
        ),
        Text('Theme'),
        InkWell(
          onTap: () {
            showThemeBottomSheet();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: Text(
              provider.themeMode == ThemeMode.light ? "Light" : "Dark",
              style:
                  Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18),
            ),
          ),
        )
      ],
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
