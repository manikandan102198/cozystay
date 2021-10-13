import '../../common/message_constant.dart';
import 'package:flutter/material.dart';

import '../themes/theme_text.dart';
import 'items_indicator.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          height: height * 0.30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    Container(
                      height: 170.0,
                      width: 170.0,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Aswin Vinod',
                              textAlign: TextAlign.center,
                              style: textTheme.headline2,
                            ),
                          ),
                          Text(
                            'Cozy Stay New York City',
                            style: textTheme.smallBlackSubtitle1,
                          ),
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              '${MessageConstant.msg}',
                              style: textTheme.smallBlackSubtitle1,
                              maxLines: 3,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      right: 50.0,
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 90.0,
                      ),
                    ),
                  ],
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [for (int i = 0; i < 3; i++) ItemIndicator()],
        ),
      ],
    );
  }
}
