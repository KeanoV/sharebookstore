import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:sharekiits/UploadData.dart';
import 'package:sharekiits/book.dart';
import 'package:sharekiits/profilepic.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: _pageController,
          onPageChanged: (newindex) {
            setState(() {
              _currentIndex = newindex;
            });
          },
          children: [UploadData(), Book(), ProfilePage()],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          backgroundColor: Colors.purple[300],
          items: <Widget>[
            Icon(Icons.book_online_outlined, size: 30, color: Colors.black),
            Icon(Icons.chat_bubble, size: 30, color: Colors.black),
            Icon(Icons.person, size: 30, color: Colors.black)
          ],
          onTap: (index) {
            setState(() {
              _pageController.animateToPage(index,
                  duration: Duration(milliseconds: 200), curve: Curves.ease);
            });
          }),
    );
  }
}
