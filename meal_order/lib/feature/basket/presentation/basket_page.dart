import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BasketPage")),
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "BasketPage",
            style: TextStyle(color: Colors.black),
          )
        ],
      )),
    );
  }
}
