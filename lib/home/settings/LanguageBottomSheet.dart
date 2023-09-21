import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getUnSelectedWidget('English'),
          getSelectedWidget('العربيه')
        ],
      ),
    );
  }

  Widget getSelectedWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.secondary),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
