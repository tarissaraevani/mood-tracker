import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mood_tracker/pages/editmood.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 44,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  'Halo, Tarissa 👋',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'Bagaimana perasaanmu hari ini?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ]),
              Spacer(),
              const CircleAvatar(
                radius: 24,
                child: Text(
                  "T",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5038BC)
                  )
                )
              )
            ]
          ),
          Container(
            height: 96,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFE4DEF7),
                borderRadius:  BorderRadius.circular(999)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "🔥 5 hari berturut-turut mencatat mood",
                  style: TextStyle(
                  color: Color(0xFF5038BC)
                  )
                )
              )
            )
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              backgroundColor: Color(0xFF5038BC),
              shape: const CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditPage()),
                );
              },
              child: SvgPicture.asset('assets/Icon/Plus.svg'),
            ),
          ),
          ],
        ),
      ),
    ),
  );
  }
}