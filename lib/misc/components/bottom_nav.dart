
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/home/home_page.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('profile'),
    HomeWidget(),
    Text('Favourite'),
  ];
  void _onItemTapp(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 74, 85, 162)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 74, 85, 162)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              backgroundColor: Color.fromARGB(255, 74, 85, 162)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 231, 255),
        backgroundColor: const Color.fromARGB(255, 74, 85, 162),
        onTap: _onItemTapp,
      ),
    );
  }
}
