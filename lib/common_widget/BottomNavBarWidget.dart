import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  final void Function(int index)? currentIndex;

  const BottomNavBarWidget({
    Key? key,
    this.currentIndex,
  }) : super(key: key);
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print("Selected index $_selectedIndex");
      });
      if (widget.currentIndex != null) {
        widget.currentIndex!(_selectedIndex);
      }
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.heart),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.shoppingBag),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.dashcube),
          label: 'Dashboard',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFAA292E),
      onTap: _onItemTapped,
    );
  }
}
