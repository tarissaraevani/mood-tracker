import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:math' as math;

import 'package:mood_tracker/pages/home.dart';

class InsightsPage extends StatelessWidget {
  const InsightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Padding(padding: const EdgeInsets.all(24),
              child: SizedBox(
                height: 48
              )),
              SizedBox(
                height: 388,
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 60,
                      right: 260,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB49AF2),
                          shape: BoxShape.circle
                        ),
                      )
                    ),

                    Positioned(
                      top: 250.5,
                      left: 279.09,
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF6B5B),
                          shape: BoxShape.circle
                        ),
                      )
                    ),

                    Positioned(
                      top: 55.54,
                      left: 160,
                      child: Transform.rotate(
                        angle: -4 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-sad.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),

                    Positioned(
                      top: 80,
                      left: 63.31,
                      child: Transform.rotate(
                        angle: 6 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-happy.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),

                    Positioned(
                      top: 174.42,
                      left: 70,
                      child: Transform.rotate(
                        angle: -15 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-calm.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),

                    Positioned(
                      top: 205,
                      left: 154.42,
                      child: Transform.rotate(
                        angle: 5 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-anxious.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),

                    Positioned(
                      top: 173.31,
                      left: 250,
                      child: Transform.rotate(
                        angle: -6 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-excited.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),

                    Positioned(
                      top: 85,
                      right: 76.16,
                      child: Transform.rotate(
                        angle: 4 * math.pi / 180,
                        child: SvgPicture.asset(
                        'assets/moods/mood-angry.svg',
                        width: 64, height: 64
                        ),
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(width: 342, height: 60,
              child: Text(
                'Temukan Pola\n& Pemicunya',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: SizedBox(
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
              )
            ]
          )
        )
    );
  }
}
