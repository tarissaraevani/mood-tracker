import 'package:flutter/material.dart';

import 'package:mood_tracker/pages/home.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF6B7280),
                    ),
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage())
                        );
                    },
                    child: const Text('Lewati'),
                  )
                ]
                ),
              Container(width: 500, height: 300, color: Colors.blue),
              Text(
                'Catat Mood dalam Hitungan Detik',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Pilih mood, tambahkan catatan singkat, dan selesai. Secepat itu untuk mengenal dirimu lebih baik.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6B7280),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
              width: 342,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => const TrackPage())
                  // );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF5038BC),
                  foregroundColor: Color(0xFFFFFFFF)
                ),
                child: Text('Lanjut'),
              ),
            )
            ]
          )
        )
      )
    );
  }
}
