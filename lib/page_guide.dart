
import 'package:flutter/material.dart';
import 'package:meatMart/home_page.dart';
import 'package:meatMart/order_page.dart';
import 'package:meatMart/profile_page.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PageGuide extends StatefulWidget {
  @override
  _PageGuideState createState() => _PageGuideState();
}

class _PageGuideState extends State<PageGuide> {
  int _currentIndex=0;

  final tabs=[
    HomePage(),
    OrdersPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedItemColor: kBlue4,
        selectedIconTheme: IconThemeData(size: 22),
        selectedFontSize: 14,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title:Text('Home',style:GoogleFonts.poppins(fontSize: 13),),
            backgroundColor: kBlue4,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title:Text('Orders',style:GoogleFonts.poppins(fontSize: 13),),
            backgroundColor: kBlue4,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title:Text('My Account',style:GoogleFonts.poppins(fontSize: 13),),
            backgroundColor: kBlue4,
          )
        ],
        onTap: (index){
setState(() {
  _currentIndex=index;
});
        },
      ),
    );
  }
}
