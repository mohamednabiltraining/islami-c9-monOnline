import 'package:flutter/material.dart';
import 'package:islami_c9_mon/home/settings/LanguageBottomSheet.dart';
import 'package:islami_c9_mon/home/settings/ThemeBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme'),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 2,
                        color: Theme.of(context).colorScheme.secondary)),
                child: Text('Light',
                    style: Theme.of(context).textTheme.bodyMedium)),
          ),
          SizedBox(
            height: 18,
          ),
          Text('Language'),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 2,
                        color: Theme.of(context).colorScheme.secondary)),
                child: Text('English',
                    style: Theme.of(context).textTheme.bodyMedium)),
          ),
        ],
      ),
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
        builder: (_) {
          return ThemeBottomSheet();
        });
  }
}
