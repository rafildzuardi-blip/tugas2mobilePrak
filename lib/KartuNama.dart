import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 148, 242),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // FOTO
              CircleAvatar(
              radius: 70,
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz136MlVHowBMQyfCrWKuojF84mTbxPAwNB4sCwGYSbA&s',
              ),
            ),

              const SizedBox(height: 10),

              // NAMA
              Text(
                'PRIA-SOLO',
                style: GoogleFonts.abhayaLibre(
                  fontSize: 35,
                  color: const Color.fromARGB(255, 9, 0, 0),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),

              const SizedBox(height: 10),

              // GARIS
              const SizedBox(
                height: 10,
                width: 300,
                child: Divider(
                  color: Color.fromARGB(255, 8, 0, 3),
                ),
              ),

              const SizedBox(height: 10),

              // CARD 1
              _buildCard(
                icon: Icons.call,
                text: '083812345678',
              ),

              // CARD 2
              _buildCard(
                icon: Icons.email,
                text: 'RAFILADZUARDII@GMAIL.COM',
              ),

              // CARD 3
              _buildCard(
                icon: Icons.location_on,
                text: 'Jl. Contoh No. 123',
              ),

              // CARD 4
              _buildCard(
                icon: Icons.camera_alt,
                text: 'CENON',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // FUNGSI UNTUK MEMBUAT CARD
  Widget _buildCard({
    required IconData icon,
    required String text,
  }) {
    return Container(
      width: 400,
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
            color: Colors.cyan,
            width: 2,
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          leading: Icon(
            icon,
            size: 28,
            color: Colors.black54,
          ),
          title: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}