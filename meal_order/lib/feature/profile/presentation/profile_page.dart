import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProfilePage")),
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "ProfilePage",
            style: TextStyle(color: Colors.black),
          )
        ],
      )),
    );
  }
}
