import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        toolbarHeight: 40,
        title: Text(
          "Tambah Mood",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF111827)
          )
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            padding: const EdgeInsets.only(left:15),
            constraints: const BoxConstraints(),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 16,
              color: Color(0xFF111827)
            ),
            onPressed: () => Navigator.pop(context)
          )
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      ),
    );
  }
}
// centerTitle: true,
//   automaticallyImplyLeading: false,
//   leadingWidth: 48,
//   leading: Align(
//     alignment: Alignment.centerLeft,
//     child: IconButton(
//       padding: const EdgeInsets.only(left: 15),
//       constraints: const BoxConstraints(),
//       icon: const Icon(
//         Icons.arrow_back_ios_new_rounded,
//         size: 16,
//         color: Color(0xFF111827),