import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:why/Model/Colors_class.dart';

class Colors_Page extends StatelessWidget {
  const Colors_Page({super.key, required this.colorss});
  final ItemColorr colorss;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color.fromARGB(255, 6, 34, 20),
      child: Row(
        children: [
          Container(
              color: Color(0xfffff6dc),
              child: Image.asset(
                colorss.Image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  colorss.Entext,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  colorss.JpText,
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
                player.play(AssetSource(colorss.Sound));
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
