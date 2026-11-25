import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:math' as math;

import 'package:mood_tracker/pages/home.dart';
import 'package:mood_tracker/pages/insights.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF6B7280),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage())
                      );
                    },
                    child: const Text('Lewati')
                  )
                )
              ),
              SizedBox(
                height: 388,
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 30,
                      left: 250,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFC247),
                          shape: BoxShape.circle
                        ),
                      )
                    ),

                    Positioned(
                      top: 240,
                      right: 280,
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFF5B9BF0),
                          shape: BoxShape.circle
                        ),
                      )
                    ),

                    Positioned(
                      top: 70.8,
                      left: 210,
                      child: Transform.rotate(
                        angle: -6 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-happy.svg',
                        width: 88, height: 88
                        ),
                      )
                    ),

                    Positioned(
                      top: 100,
                      left: 67.75,
                      child: Transform.rotate(
                        angle: 8 * math.pi / 180,
                        child: SvgPicture.asset(
                          'assets/moods/mood-calm.svg',
                          width: 88, height: 88
                        )
                      )
                    ),

                    Positioned(
                      top: 212.33,
                      left: 80,
                      child: Transform.rotate(
                        angle: -5 * math.pi / 180,
                        child: SvgPicture.asset(
                          'assets/moods/mood-sad.svg',
                          width: 88, height: 88
                        )
                      )
                    ),

                    Positioned(
                      top: 240,
                      left: 200.8,
                      child: Transform.rotate(
                        angle: 6 * math.pi / 180,
                        child: SvgPicture.asset(
                          'assets/moods/mood-excited.svg',
                          width: 88, height: 88
                        )
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(width: 342, height: 60,
              child: Text(
                'Catat Mood dalam\nHitungan Detik',
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
                'Pilih mood, tambahkan catatan singkat, dan selesai. Secepat itu untuk mengenal dirimu lebih baik.',
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
                    ],
                  )
                )
              ]
              )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: SizedBox(
                  width: 342,
                  height: 48,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InsightsPage())
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
