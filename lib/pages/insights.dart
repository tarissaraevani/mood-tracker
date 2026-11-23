import 'package:flutter/material.dart';

import 'package:mood_tracker/pages/home.dart';

class InsightsPage extends StatelessWidget {
  const InsightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            children: [
              SizedBox(width: 500, height: 320),
              SizedBox(width: 342, height: 60,
              child: Text(
                'Temukan Pola & Pemicunya',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
                textAlign: TextAlign.center,
              )
              ),
              SizedBox(width: 342, height: 8),
              SizedBox(width: 342, height: 60,
              child: Text(
                'Lihat tren emosimu dari waktu ke waktu dan pahami apa yang memengaruhi harimu.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6B7280),
                ),
                textAlign: TextAlign.center,
              )
              ),
              Expanded(child: PageView(scrollDirection: Axis.horizontal, allowImplicitScrolling: true,
              children: [
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFF5038BC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      )
                    ],
                  )
                )
              ]
              )
              ),
              SizedBox(
              width: 342,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage())
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF5038BC),
                  foregroundColor: Color(0xFFFFFFFF)
                ),
                child: Text('Mulai Sekarang'),
              ),
            )
            ]
          )
        )
      )
    );
  }
}
