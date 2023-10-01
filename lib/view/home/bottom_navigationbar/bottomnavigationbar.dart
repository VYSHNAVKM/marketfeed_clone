import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

class MyBottom extends StatelessWidget {
  MyBottom({super.key, required this.onTap, required this.selectedIndex});

  final void Function(int) onTap;

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Strategies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: 'Read',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: 'Signal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books_outlined),
          label: 'Markets',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue.shade900,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
    );
  }
}
