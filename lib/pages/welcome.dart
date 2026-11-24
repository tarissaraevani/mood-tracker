import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mood_tracker/pages/home.dart';
import 'package:mood_tracker/pages/track.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(width: 390, height: 44),
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
              Container(
                width: 500, height: 300,
                child: SvgPicture.asset('assets/moods/mood-happy.svg')
              ),
              SizedBox(
                width: 342, height: 60,
                child: Text(
                'Kenali Setiap\nPerasaanmu',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
                textAlign: TextAlign.center,
              )
              ),
              SizedBox(height: 8),
              SizedBox(width: 342, height: 60,
                child: Text(
                  'Setiap mood yang kamu rasakan itu berharga. Catat, pahami, dan rayakan perjalanan emosimu.',
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
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFF5038BC),
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
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  )
                )
              ]
              )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: SizedBox(width: 342, height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TrackPage())
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF5038BC),
                      foregroundColor: Color(0xFFFFFFFF)
                    ),
                    child: Text('Lanjut'),
                  ),
                )
                )
            ]
          )
      )
    );
  }
}
