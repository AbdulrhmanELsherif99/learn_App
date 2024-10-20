import 'package:flutter/material.dart';
import 'package:why/Model/Family_page_class.dart';
import 'package:why/components/item_family.dart';
import 'package:audioplayers/audioplayers.dart';

class FAmily extends StatelessWidget {
  const FAmily({super.key});
  final List<Family> family = const [
    Family(
        Sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_father.png',
        JpText: 'Chichioya',
        EnText: 'Father'),
    Family(
        Sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        JpText: 'Musume',
        EnText: 'daughter'),
    Family(
        Sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        JpText: 'Ojisan',
        EnText: 'Grand Father'),
    Family(
        Sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        JpText: 'Hahaoya',
        EnText: 'Mother'),
    Family(
        Sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        JpText: 'Sobo',
        EnText: 'Grand Mother'),
    Family(
        Sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        JpText: 'Nisan',
        EnText: 'Older Brother '),
    Family(
        Sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        JpText: 'Ane',
        EnText: 'Older Sister'),
    Family(
        Sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        JpText: 'Musko',
        EnText: 'Son'),
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
              item_family(family: family[0]),
              item_family(family: family[1]),
              item_family(family: family[2]),
              item_family(family: family[3]),
              item_family(family: family[4]),
              item_family(family: family[5]),
              item_family(family: family[6]),
              item_family(family: family[7]),
            ],
          )),
    );
  }
}
