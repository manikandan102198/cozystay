import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';
import '../themes/theme_text.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height * 0.37,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, i) {
            return Container(
              width: 350.0,
              margin: const EdgeInsets.all(5.0),
              decoration: WidgetConstant.kRecentlyViewedDecoration,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/auto.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Cozy stay Bangaluru',
                        style: textTheme.subtitle1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '5 hrs ago',
                          style: textTheme.smallBlackText,
                        ),
                        Text(
                          '4 min read',
                          style: textTheme.smallBlackText,
                        ),
                        Text(
                          '125k',
                          style: textTheme.smallBlackText,
                        ),
                        Row(
                          children: [
                            Icon(Icons.turned_in_not),
                            Icon(Icons.favorite_border_outlined),
                            Icon(Icons.share),
                          ],
                        )
                      ],
                    )
                  ]),
            );
          }),
    );
  }
}
