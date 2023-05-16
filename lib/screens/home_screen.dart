import 'package:flutter/material.dart';
import 'package:jolup/screens/calendar_screen.dart';
import 'package:jolup/screens/upload_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const CalendarScreen(),
    const UploadScreen(),
  ];

  final List<String> _titleOptions = <String>[
    '일정',
    '업로드',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: Text(
          _titleOptions.elementAt(_selectedIndex),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        centerTitle: false,
        titleSpacing: 20,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '일정',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload_outlined),
            label: '업로드',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).textTheme.displayLarge!.color,
        onTap: _onItemTapped,
      ),
    );
  }
}
