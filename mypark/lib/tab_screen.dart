import 'package:flutter/material.dart';
import 'package:mypark/drawer/drawer_header.dart';
import 'package:mypark/home_screen.dart';
import 'package:mypark/main.dart';
import 'package:mypark/profile_screen.dart';
import 'package:mypark/settings.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [ProfilePage(), HomePage(), Settings()];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my-Park',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Color.fromARGB(255, 238, 234, 234))),
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.red,
        bottomOpacity: 10,
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          selectedFontSize: 11,
          // showSelectedLabels: false,
          // selectedItemColor:Colors.white ,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                backgroundColor: Colors.green,
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.green,
                label: "HomePage"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                backgroundColor: Colors.green,
                label: "Settings")
          ]),
      //  bottomSheet: TabScreen(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [CDrawerHeader(), CDrawerHeaderList()],
            ),
          ),
        ),
      ),
    );
  }
}

Widget CDrawerHeaderList() {
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [menuItem()],
    ),
  );
}

Widget menuItem() {
  return Material(
      child: InkWell(
    child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(children: [
        Expanded(
            child: Icon(
          Icons.dashboard,
          size: 20,
        )),
        Expanded(flex:3,child: Text("Dashboard")),
      ]),
    ),
  ));
}
