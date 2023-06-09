import 'package:cipher_schools_assignment/view/courses_screen.dart';
import 'package:cipher_schools_assignment/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List _listOfPages;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _listOfPages = [
      HomeScreen(),
      CoursesScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: _listOfPages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        elevation: 10,
        selectedItemColor: Colors.amber[600],
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: Colors.amber[600],
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        currentIndex: _selectedIndex, 
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_down,
            ),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
