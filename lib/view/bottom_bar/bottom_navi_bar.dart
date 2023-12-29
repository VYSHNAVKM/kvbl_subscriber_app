import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/home_screen/home_screen.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/profile_screen/profile_screen.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/support_screen/support_screen.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
    ),
    SupportScreen(),
    ProfileScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: primarycolorlight,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'KERALAVISION ',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900),
            children: const <TextSpan>[
              TextSpan(
                  text: 'BROADBAND',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red)),
            ],
          ),
        ),
      ),

      //Drawer
      drawer: Drawer(),

      body: _widgetOptions.elementAt(_selectedIndex),

      //NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_sharp),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primarycolordark,
        selectedIconTheme: IconThemeData(size: 30),
        selectedLabelStyle:
            GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(size: 30),
        unselectedLabelStyle:
            GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),
        onTap: onItemTapped,
      ),
    );
  }
}
