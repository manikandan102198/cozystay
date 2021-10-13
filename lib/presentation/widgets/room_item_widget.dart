import 'package:flutter/material.dart';

import '/presentation/widgets/items_indicator.dart';
import '/data/model/rooms_model.dart';

class RoomItemWidget extends StatelessWidget {
  const RoomItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<RoomsModel> _roomModel = [
      RoomsModel(image: 'hostel-room'),
      RoomsModel(image: 'close-up-key'),
    ];
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height * 0.25,
          child: PageView.builder(
              itemCount: _roomModel.length,
              itemBuilder: (context, i) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${_roomModel[i].image}.png'))),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _roomModel.length; i++) ItemIndicator()
          ],
        ),
      ],
    );
  }
}
