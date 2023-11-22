
import 'package:flutter/material.dart';

class more_screen extends StatefulWidget {
   more_screen({super.key});

  @override
  State<more_screen> createState() => _more_screenState();
  
}

// ignore: camel_case_types
class _more_screenState extends State<more_screen> {
  @override

  Widget build(BuildContext context) {
    List details =['About Us','F.A.Q','Terms and Condition','Rate Us','License','Settings'];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
         backgroundColor: const Color(0xFFFF0000),
         title: const Text('Visit Northern',
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
      body: ListView.separated(itemBuilder: (context, index){
        return Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
          child: TextButton
          (onPressed: (){},
           child: Padding(
             padding: EdgeInsets.fromLTRB(2, 5, 100, 5),
             child: Text(details[index],style: TextStyle
             (color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
           )),
        );
      },
      itemCount: details.length,
      separatorBuilder: (context, index){
        return Divider(height: 40,thickness: 2,);
      },
      ),
    );
  }
}