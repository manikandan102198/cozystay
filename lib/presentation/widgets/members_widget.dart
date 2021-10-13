import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';
import '../themes/theme_text.dart';

class MembersWidget extends StatelessWidget {
  const MembersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.all(5.0),
              width: 150.0,
              decoration: WidgetConstant.kPatnersDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Image.asset('assets/images/user.png')),
                  Text('1 Sharing',
                      style: Theme.of(context).textTheme.mediumBlackText1)
                ],
              ),
            );
          }),
    );
  }
}
