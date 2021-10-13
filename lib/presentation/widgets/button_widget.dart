import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 35,
      padding: const EdgeInsets.all(3.0),
      alignment: Alignment.center,
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {},
        child: Text(
          '$title',
          style: textTheme.button,
        ),
      ),
    );
  }
}
