import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:why/Model/class_pharse.dart';

class ItemPharse extends StatelessWidget {
  const ItemPharse({super.key, required this.pharsee});
  final ClassPharse pharsee;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pharsee.Entext,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  pharsee.Jptext,
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
                player.play(AssetSource(pharsee.sound));
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
