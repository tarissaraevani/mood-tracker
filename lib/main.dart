import 'package:flutter/material.dart';

// import 'package:mood_tracker/pages/home.dart';
import 'package:mood_tracker/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const WelcomePage(),
    );
  }
}

// screen dimesions (390x844)

// import 'package:flutter/material.dart';
// import 'package:hive_ce_flutter/hive_flutter.dart';

// import 'package:mood_tracker/pages/home.dart';
// import 'package:mood_tracker/pages/welcome.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   await Hive.openBox('moods');
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'Poppins'),
//       home: const WelcomePage(),
//     );
//   }
// }
