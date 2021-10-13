import 'package:flutter/material.dart';

class ItemIndicator extends StatelessWidget {
  const ItemIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        height: 7.0,
        width: 10.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );
  }
}
