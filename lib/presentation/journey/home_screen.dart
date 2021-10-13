import 'package:flutter/material.dart';

import '/presentation/widgets/room_item_widget.dart';
import '/presentation/widgets/safety_item_widget.dart';
import '/presentation/widgets/cozy_stay_app_widget.dart';
import '/presentation/widgets/near_by_title_widget.dart';
import '/presentation/widgets/properties_items_widget.dart';
import '/presentation/journey/second_screen/second_screen.dart';
import '/presentation/journey/bottom_navigation/bottom_navigation_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          CozyStayAppWidget(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hi Aswin,',
                style: textTheme.bodyText2,
              ),
            ),
          ),
          RoomItemWidget(),
          SafetyItemWidget(),
          NearByTitleWidget(),
          PropertiesItemsWidget(),
        ],
      )),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: kBottomNavigationBarHeight + 10,
            child: BottomNavigationBarWidget(),
          ),
          Positioned(
              bottom: 16,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: colorTheme.primaryColor,
                child: Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      print('object');
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/add.png',
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
