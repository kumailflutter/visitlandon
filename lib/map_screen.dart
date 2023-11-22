import 'package:flutter/material.dart';

class map_screen extends StatefulWidget {
  const map_screen({super.key});

  @override
  State<map_screen> createState() => _map_screenState();
}

class _map_screenState extends State<map_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
         backgroundColor: const Color(0xFFFF0000),
         title: Text('Visit Northern',
         style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
         ),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}