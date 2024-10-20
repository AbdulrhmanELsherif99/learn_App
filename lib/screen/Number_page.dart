import 'package:flutter/material.dart';
import 'package:why/components/item.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Model/Number_Page_class.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Number> numbers = const [
    Number(
        Sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        JpText: 'ichi',
        EnText: 'One'),
    Number(
        Sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        JpText: 'Ni',
        EnText: 'Two'),
    Number(
        Sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        JpText: 'San',
        EnText: 'Three'),
    Number(
        Sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        JpText: 'Yon',
        EnText: 'Four'),
    Number(
        Sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        JpText: 'Go',
        EnText: 'Five'),
    Number(
        Sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        JpText: 'Roku',
        EnText: 'Six'),
    Number(
        Sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        JpText: 'Nana',
        EnText: 'Seven'),
    Number(
        Sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        JpText: 'Hachi',
        EnText: 'Eight'),
    Number(
        Sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        JpText: 'Ku',
        EnText: 'Nine'),
    Number(
        Sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        JpText: 'Juu',
        EnText: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff46322B),
            title: Text('Numbers'),
          ),
          body: ListView(
            children: [
              Item(number: numbers[0]),
              Item(number: numbers[1]),
              Item(number: numbers[2]),
              Item(number: numbers[3]),
              Item(number: numbers[4]),
              Item(number: numbers[5]),
              Item(number: numbers[6]),
              Item(number: numbers[7]),
              Item(number: numbers[8]),
              Item(number: numbers[9]),
            ],
          )),
    );
  }
}
