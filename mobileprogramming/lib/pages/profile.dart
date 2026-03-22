import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column( 
          children: [
            const SizedBox(height: 20),

            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/LOGO-UAI-Unggul-2024-01.png'),
            ),

            const SizedBox(height: 15),

            // Nama Pengguna
            const Text(
              'Alamsyah Hutama',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),

              const SizedBox(height: 5),

              // Email Pengguna
              const Text(
                "Alamsyahhutama@testing.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const SizedBox(height: 20),


              // Biodata Pengguna
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Nama Lengkap'),
                      subtitle: Text('Alamsyah Hutama'),
                    ),

                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.badge),
                      title: Text('Nomor Induk Mahasiswa'),
                      subtitle: Text('123456789'),
                    ),

                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Program Studi'),
                      subtitle: Text('Teknik Informatika'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Alamat'),
                      subtitle: Text('Jl. Raya No. 123'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.work),
                      title: Text('Pekerjaan'),
                      subtitle: Text('Mahasiswa'),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}