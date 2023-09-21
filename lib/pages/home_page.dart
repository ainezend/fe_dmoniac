import 'package:flutter/material.dart';
import 'package:fe_dmoniac/pages/ginjalpedia_page.dart';
import 'package:fe_dmoniac/pages/detect_page.dart';
import 'package:fe_dmoniac/pages/procedure_page.dart';
import 'package:fe_dmoniac/pages/profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DetectPage(),
    ProcedurePage(),
    GinjalpediaPage(),
    ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            gap: 8,
            selectedIndex: _selectedIndex,
            onTabChange: _onTabTapped,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.air_rounded,
                text: 'Deteksi',
              ),
              GButton(
                icon: Icons.search_rounded,
                text: 'Prosedur',
              ),
              GButton(
                icon: Icons.book_rounded,
                text: 'Ginjalpedia',
              ),
              GButton(
                icon: Icons.people_rounded,
                text: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}