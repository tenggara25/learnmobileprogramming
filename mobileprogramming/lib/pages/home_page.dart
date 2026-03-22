import 'package:flutter/material.dart';
import 'profile.dart';
import 'video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //List halaman yang akan ditampilkan berdasarkan index
  final List<Widget> _pages = [
    const Center(child: Text('Home Page')),
    const VideoPage(),
    const ProfilePage(),
  ];

  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Bergerak IF22H'),
      ),

      // Body sesuai dengan Tab
      body: _pages[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapped,

      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.video_library),
        label: 'Video',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  ),
    );
  }
}
