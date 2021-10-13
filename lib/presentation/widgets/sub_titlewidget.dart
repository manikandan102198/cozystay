import 'package:flutter/material.dart';

import '../themes/theme_text.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$title',
          style: textTheme.mediumBlackText,
        ),
      ),
    );
  }
}
