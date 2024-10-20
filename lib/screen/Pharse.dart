import 'package:flutter/material.dart';
import 'package:why/Model/class_pharse.dart';
import 'package:why/components/item_pharse.dart';
import 'package:audioplayers/audioplayers.dart';

class Pharse extends StatelessWidget {
  Pharse({super.key});

  final List<ClassPharse> pharse = const [
    ClassPharse(
        Entext: 'Are You Coming',
        Jptext: 'こんにちは',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ClassPharse(
        Entext: 'Don,t Forget To Subscribe',
        Jptext: 'さようなら',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ClassPharse(
        Entext: 'How Are You Feeling',
        Jptext: 'さようなら',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ClassPharse(
        Entext: 'I Love Anime',
        Jptext: 'こんにちは',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ClassPharse(
        Entext: 'I Love Programin',
        Jptext: 'こんにちは',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ClassPharse(
        Entext: 'Programming Is Easy',
        Jptext: 'ありがとう',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ClassPharse(
        Entext: 'What Is Your Name',
        Jptext: 'はい',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ClassPharse(
        Entext: 'Where Are You Going',
        Jptext: 'いいえ',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ClassPharse(
        Entext: 'Yes Im Coming',
        Jptext: 'お願いします',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  // يمكنك إضافة المزيد من العبارات هنا

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text('Phrases'),
        ),
        body: ListView.builder(
          itemCount: pharse.length,
          itemBuilder: (context, index) {
            return ItemPharse(pharsee: pharse[index]);
          },
        ),
      ),
    );
  }
}
