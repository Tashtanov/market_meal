import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SearchPage")),
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "SearchPage",
            style: TextStyle(color: Colors.black),
          )
        ],
      )),
    );
  }
}
