import 'package:flutter/material.dart';
import 'package:why/Model/Colors_class.dart';
import 'package:why/components/item_Color.dart';
import 'package:audioplayers/audioplayers.dart';

class oooo extends StatelessWidget {
  oooo({super.key});
  final List<ItemColorr> colors = const [
    ItemColorr(
        Sound: 'sounds/colors/red.wav',
        Image: 'assets/images/colors/color_red.png',
        JpText: '赤',
        Entext: 'Red'),
    ItemColorr(
        Sound: 'sounds/colors/black.wav',
        Image: 'assets/images/colors/color_black.png',
        JpText: '黒 ',
        Entext: 'black'),
    ItemColorr(
        Sound: 'sounds/colors/brown.wav',
        Image: 'assets/images/colors/color_brown.png',
        JpText: '茶色 ',
        Entext: 'browm'),
    ItemColorr(
        Sound: 'sounds/colors/dusty yellow.wav',
        Image: 'assets/images/colors/color_dusty_yellow.png',
        JpText: 'くすんだ黄色',
        Entext: 'dusty yellow'),
    ItemColorr(
        Sound: 'sounds/colors/gray.wav',
        Image: 'assets/images/colors/color_gray.png',
        JpText: '灰色 ',
        Entext: 'gray'),
    ItemColorr(
        Sound: 'sounds/colors/green.wav',
        Image: 'assets/images/colors/color_green.png',
        JpText: '緑 ',
        Entext: 'green'),
    ItemColorr(
        Sound: 'sounds/colors/white.wav',
        Image: 'assets/images/colors/color_white.png',
        JpText: '白 ',
        Entext: 'White'),
    ItemColorr(
        Sound: 'sounds/colors/yellow.wav',
        Image: 'assets/images/colors/yellow.png',
        JpText: '黄色 ',
        Entext: 'yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff46322B),
            title: Text('Family Member'),
          ),
          body: ListView(
            children: [
              Colors_Page(colorss: colors[0]),
              Colors_Page(colorss: colors[1]),
              Colors_Page(colorss: colors[2]),
              Colors_Page(colorss: colors[3]),
              Colors_Page(colorss: colors[4]),
              Colors_Page(colorss: colors[5]),
              Colors_Page(colorss: colors[6]),
              Colors_Page(colorss: colors[7]),
            ],
          )),
    );
  }
}
