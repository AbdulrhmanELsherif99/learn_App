import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Model/Number_Page_class.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(
              color: Color(0xfffff6dc),
              child: Image.asset(
                number.image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.EnText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  number.JpText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.Sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
