import 'package:flutter/material.dart';
import 'package:why/Model/Home_page_class.dart';
import 'package:why/screen/Colors_page.dart';
import 'package:why/screen/Family_Page.dart';
import 'package:why/screen/Number_page.dart';
import 'package:why/screen/Pharse.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 147, 247),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          page(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return NumberPage();
              }));
              print('You in Number Page');
            },
            text: 'Numbers',
            color: Colors.blue,
          ),
          SizedBox(
            height: 16,
          ),
          page(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return FAmily();
              }));
              print('You in Number Page');
            },
            text: 'Family Members',
            color: Colors.blue,
          ),
          SizedBox(
            height: 16,
          ),
          page(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return oooo();
              }));
              print('You in Pharse Page');
            },
            text: 'Colors',
            color: Colors.blue,
          ),
          SizedBox(
            height: 16,
          ),
          page(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return Pharse();
              }));
              print('You in Pharse Page');
            },
            text: 'Pharse',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
