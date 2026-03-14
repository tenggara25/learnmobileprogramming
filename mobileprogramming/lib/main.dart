import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Root aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

/// Halaman utama dengan Bottom Navigation
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    ProfilePage(),
    VideoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Programming"),
        backgroundColor: Colors.blue,
      ),

      /// Konten halaman
      body: pages[currentIndex],

      /// Menu bawah
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Video",
          ),
        ],
      ),
    );
  }
}

/// ===============================
/// HALAMAN PROFILE
/// ===============================
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [

            /// FOTO PROFILE
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),

            SizedBox(height: 20),

            /// NAMA
            Text(
              "Alamsyah Hutama",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            /// STATUS
            Text(
              "Mahasiswa Informatika",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            /// JUDUL
            Text(
              "Tentang Saya",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            /// DESKRIPSI
            Text(
              "Saya adalah mahasiswa informatika yang tertarik pada "
              "bidang Cyber Security dan pengembangan aplikasi mobile "
              "serta web.",
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            /// HOBI
            Text(
              "Hobi",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text("• Programming"),
            Text("• Cyber Security"),
            Text("• Gaming"),
            Text("• Belajar teknologi baru"),
          ],
        ),
      ),
    );
  }
}

/// ===============================
/// HALAMAN VIDEO
/// ===============================
class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: const [
          /// JUDUL
          Text(
            "Video Perkenalan",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          /// TEMPAT VIDEO
          SizedBox(
            width: 300,
            height: 200,
            child: ColoredBox(
              color: Colors.black12,
              child: Center(
                child: Text("Video disini"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}