import 'package:flutter/material.dart';
import 'package:projecr2/pages/challenges_page.dart';
import 'package:projecr2/pages/favorite.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = const ChallengesPage();
    } else {
      body = const Favorite();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_kabaddi,
            ),
            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
      body: body,
    );
  }
}
