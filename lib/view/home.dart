import 'package:defi/menu-screens/account-settings.dart';
import 'package:defi/menu-screens/home-menu.dart';
import 'package:defi/menu-screens/notification-settings.dart';
import 'package:defi/menu-screens/portfolio-menu.dart';
import 'package:defi/menu-screens/specify-notification-settings.dart';
import 'package:defi/menu-screens/price-menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 4;

  static List<Widget Function(BuildContext)> _widgetOptions = <Widget Function(BuildContext)>[
    (BuildContext context) => HomeMenu(),
    (BuildContext context) => PortfolioMenu(),
    (BuildContext context) => Center(
      child: Text(
        'Switch',
        style: TextStyle(fontSize: 30),
      ),
    ),
    // (BuildContext context) => Center(
    //   child: Text(
    //     'Price Page',
    //     style: TextStyle(fontSize: 30),
    //   ),
    // ),
    (BuildContext context) => PricesMenu(),
    (BuildContext context) => AccountSettings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex](context),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10, 
        unselectedFontSize: 10, 
        selectedIconTheme: IconThemeData(size: 22),
        unselectedIconTheme: IconThemeData(size: 22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, // Warna latar belakang biru
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white, // Warna ikon putih
                    size: 20,
                  ),
                ],
              )
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll_rounded),
            label: 'Price',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        // unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
        onTap: _onItemTapped,
      ),
    );
  }
}
