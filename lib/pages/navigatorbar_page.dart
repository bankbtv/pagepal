import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'home_page.dart';
import 'book_store_page.dart';
import 'my_book_page.dart';
import 'profile_page.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        child: SalomonBottomBar(
          currentIndex: currentPageIndex,
          backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
          onTap: (i) => setState(() => currentPageIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              activeIcon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              icon: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              selectedColor: Colors.yellow,
            ),

            /// book store
            SalomonBottomBarItem(
              activeIcon: const Icon(
                Icons.menu_book,
                color: Colors.black,
              ),
              icon: const Icon(Icons.menu_book_outlined),
              title: const Text("Store"),
              selectedColor: Colors.yellow,
            ),

            /// my book
            SalomonBottomBarItem(
              activeIcon: const Icon(
                Icons.library_books,
                color: Colors.black,
              ),
              icon: const Icon(Icons.library_books_outlined),
              title: const Text("My book"),
              selectedColor: Colors.yellow,
            ),

            /// Profile
            SalomonBottomBarItem(
              activeIcon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              icon: const Icon(Icons.person_outline),
              title: const Text("Profile"),
              selectedColor: Colors.yellow,
            ),
          ],
        ),
      ),
      body: <Widget>[
        /// Home page
        const HomePage(),

        /// Contents page
        const BookStorePage(),

        /// Profile page
        const MyBookPage(),

        /// Setting page
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
