

import 'package:exsam2/cards.dart';
import 'package:exsam2/explore.dart';
import 'package:exsam2/favourite.dart';
import 'package:exsam2/homescreen.dart';
import 'package:flutter/material.dart';




class Bottomnavig extends StatefulWidget {
  Bottomnavig({super.key});

  @override
  State<Bottomnavig> createState() => _BottomnavigState();
}

class _BottomnavigState extends State<Bottomnavig> {
  List<Color> sveti = [
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.teal,
    Colors.red,
  ];
  List<String> postho = [
    'posti 1',
    'posti 2',
    'posti 3',
    'posti 4',
    'posti 5',
  ];
  List<String> istoriyaho = [
    'istoriya 4',
    'istoriya 5',
    'istoriya 6',
    'istoriya 1',
    'istoriya 2',
    'istoriya 3',
  ];

  List<Widget> sahifaho = [
  Homescreen(),
  Explore(),
  Cards(),
  Favourite(),
  ];

  int _selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      
     Scaffold(
       
        body: sahifaho[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: changeIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.manage_search_outlined), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Account"),
          ],
        ),
      );
    
  }
}
