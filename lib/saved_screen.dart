import 'package:flutter/material.dart';

class saved_screen extends StatefulWidget {
  const saved_screen({super.key});

  @override
  State<saved_screen> createState() => _saved_screenState();
}

class _saved_screenState extends State<saved_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
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
        body: const Column(
          children: [
            TabBar(
              
            indicatorColor: Colors.red,
            
              splashBorderRadius: BorderRadius.all(Radius.circular(10)),
              tabs: [
              Tab(child: Text('LISTS',style: TextStyle
              (color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
              ),
              ),
              Tab(child: Text('interaries',style: TextStyle
              (color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),
              ),
              ),
              ],
             ),
            Column(
              children: [
               
              ],
            )
          ],
        ),
      ),
      
    );
  }
}