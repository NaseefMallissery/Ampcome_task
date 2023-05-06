import 'package:appcom_task/screens/demo_pages/demo_pages.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var tabIndex = 0;
  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: tabIndex, children: const [
        HomeScreen(),
        DemoPage1(),
        DemoPage2(),
        DemoPage3(),
        DemoPage4(),
      ]),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: BottomNavigationBar(
            // backgroundColor: AppColors.transparentColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: tabIndex,
            onTap: changeTabIndex,
            selectedItemColor: Colors.black,
            // unselectedItemColor: AppColors.greyColor,
            items: const [
              // itemBar(Icons.home, "Home"),
              // itemBar(Icons.g_translate_outlined, "Translate"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    // color: AppColors.transparentColor,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.support_agent_rounded,
                    // color: AppColors.transparentColor,
                  ),
                  label: "Support"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    // color: AppColors.transparentColor,
                  ),
                  label: "Tools"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.medical_information_outlined,
                    // color: AppColors.transparentColor,
                  ),
                  label: "My Policies"),
              // itemBar(Icons.book, "Donation"),
              // itemBar(Icons.settings, "Setting")
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(
          255,
          255,
          174,
          0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DemoPage3()),
          );
        },
        child: const Icon(Icons.favorite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
