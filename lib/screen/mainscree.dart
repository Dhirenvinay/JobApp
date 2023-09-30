import 'package:flutter/material.dart';
import 'package:jobassignment/screen/appliedscreen.dart';
import 'package:jobassignment/screen/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> listScreen = [
    HomeScreen(),
    AppliedScreen(),
    SizedBox(),
    SizedBox()
  ];
  int currentScreen = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: listScreen[currentScreen],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Jobs"),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_copy_sharp), label: "My Applied"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: "Profile"),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black,
          currentIndex: currentScreen,
          onTap: (index) {
            setState(() {
              currentScreen = index;
              // print(_selectedindex);
            });
          },
        ));
  }
}
