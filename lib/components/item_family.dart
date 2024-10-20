import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:why/Model/Family_page_class.dart';

class item_family extends StatelessWidget {
  const item_family({super.key, required this.family});
  final Family family;
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
                family.image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.EnText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  family.JpText,
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
                player.play(AssetSource(family.Sound));
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
