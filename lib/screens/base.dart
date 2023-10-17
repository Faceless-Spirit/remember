import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:remember/data/data.dart';
import 'package:remember/screens/home.dart';
import 'package:remember/screens/library.dart';
import 'package:remember/screens/search.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 0;
  List<Widget> mainBodies = [const Library(), const Search(), const Home()];

  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  bool fullPlayer = false;
  bool offStage = false;

  void nowPlayingMethod() {
    setState(() {
      fullPlayer = !fullPlayer;
      offStage = !offStage;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          mainBodies[currentIndex],
          Offstage(
            offstage: offStage,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 400),
                height: screenHeight * 0.11,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.99),
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.3, 0.7],
                  ),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: BottomNavigationBar(
                    currentIndex: currentIndex,
                    elevation: 0,
                    enableFeedback: true,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.transparent,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white70,
                    onTap: (index) {
                      changeTab(index);
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(FluentIcons.home_12_filled),
                          activeIcon: Icon(FluentIcons.home_16_filled),
                          label: 'Tất cả'),
                      BottomNavigationBarItem(
                          icon: Icon(FluentIcons.search_20_filled),
                          activeIcon: Icon(FluentIcons.search_12_regular),
                          label: 'Menu'),
                      BottomNavigationBarItem(
                          icon: Icon(FluentIcons.drink_wine_16_filled),
                          activeIcon: Icon(FluentIcons.drink_wine_24_regular),
                          label: 'Đang nhậu'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
