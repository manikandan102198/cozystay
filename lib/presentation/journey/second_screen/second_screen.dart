import '../../widgets/blog_widgets.dart';
import '../../widgets/explore_widget.dart';
import '../../widgets/highlights_widget.dart';
import '../../widgets/invite_banner_widget.dart';
import '../../widgets/members_widget.dart';
import '../../widgets/offer_widget.dart';
import '../../widgets/partners_widget.dart';
import '../../widgets/recently_viewed_widget.dart';
import '../../widgets/story_widget.dart';
import '../../widgets/sub_titlewidget.dart';
import 'package:flutter/material.dart';

import '../../themes/theme_text.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SubTitleWidget(
            title: 'Recently Viewed',
          ),
          RecentlyViewedWidget(),
          SizedBox(
            height: 20,
          ),
          InviteBannerWidget(
            height: height,
          ),
          SubTitleWidget(
            title: 'Our Highlights',
          ),
          HighlightsWidget(height: height),
          SubTitleWidget(
            title: 'Our Exclusive Partners',
          ),
          PartnersWidget(
            height: height,
            width: width,
          ),
          SubTitleWidget(
            title: 'Offers',
          ),
          OffersWidget(
            height: height,
          ),
          MembersWidget(),
          SubTitleWidget(
            title: 'The Cozy Blog',
          ),
          BlogWidget(height: height),
          SubTitleWidget(
            title: 'Cozyens Story',
          ),
          StoryWidget(height: height),
          SubTitleWidget(
            title: 'Explore',
          ),
          ExploreWidget(height: height),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomImageWidget(
                  title: 'No Lock-in ',
                  image: 'open-padlock',
                ),
                BottomImageWidget(
                  title: 'Zero Brokerage Fee',
                  image: 'cleaning-service',
                ),
                BottomImageWidget(
                  title: 'Hassle-free Move-in',
                  image: 'open-padlock',
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class BottomImageWidget extends StatelessWidget {
  const BottomImageWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset('assets/images/$image.png'),
        Text(
          '$title',
          style: textTheme.smallBlackSubtitle1,
        )
      ],
    );
  }
}
