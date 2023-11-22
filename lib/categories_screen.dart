

import 'package:flutter/material.dart';

class categories_screen extends StatefulWidget {
  const categories_screen({super.key});

  @override
  State<categories_screen> createState() => _categories_screenState();
}

class _categories_screenState extends State<categories_screen> {
  @override
  Widget build(BuildContext context) {
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
    body: Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 5),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Stack(
                  children: [
                    Image(image:NetworkImage("https://lh3.googleusercontent.com/p/AF1QipME1S2G48QmOaMeNOnE7pCgTasUD5lY1YF0_Dvq=w624-h720-n-k"),
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    ),
                    Stack(children: [
                      Text('Resturants',style: TextStyle
                      (fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                      
                      ),
                      Positioned(
                        left: 20,
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                        ),
                      )
                    ],)
                  ],
                ),
              ),
            ),
          )
          ),
          //2nd container
          Expanded(
          flex: 4,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 5, 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: const Stack(
                        children: [
                          Image(image:NetworkImage("https://offtheatlas.com/wp-content/uploads/2021/08/Byarsa-Inn-Skardu-1024x682.jpg"),
                          fit: BoxFit.fitHeight,
                          height: double.infinity,
                          ),
                          Stack(
                                children: [
                                  Text('Hotels',style: TextStyle
                                  (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Positioned(
                                    left: 8,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  )
                                ],
                              )
                        ],
                      ),
                    ),
                  ),
                )
                ),
                Expanded(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 2, 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            color: Colors.yellow,
                          child: const Stack(
                            children: [
                              Image(image: NetworkImage("https://media.licdn.com/dms/image/D4D12AQFCtoIb4XVAhQ/article-cover_image-shrink_720_1280/0/1681895708374?e=2147483647&v=beta&t=VBeE9d1eXSYquP1ZjDhpl-F97_KELwuJvUSq7PRuZ1Y"),
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                              ),
                              Stack(
                                children: [
                                  Text('Rent Car',style: TextStyle
                                  (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Positioned(
                                    left: 8,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),            
                          ),
                        ),
                      )
                      ),
                      Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 4, 6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            color: Colors.cyanAccent,
                           child: const Stack(
                            children: [
                              Image(image:NetworkImage("https://stimg.cardekho.com/images/carexteriorimages/930x620/Mercedes-Benz/AMG-G-63/9737/1679289361128/front-left-side-47.jpg"),
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                              ),
                              Stack(
                                children: [
                                  Text('Rent Car',style: TextStyle
                                  (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Positioned(
                                    left: 8,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  )
                                ],
                              )
                            ],
                           ),          
                          ),
                        ),
                      )
                      )
                  ],
                ),
                ),
            ],
          ),
          ),
          Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Stack(
                  children: [
                    Image(image: NetworkImage("https://www.calgary.ca/content/dam/www/corporate-communications/locations/parks-information-locations.jpg"),
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    ),
                    Stack(
                                children: [
                                  Text('Tourist Places',style: TextStyle
                                  (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Positioned(
                                    left: 8,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  )
                                ],
                              )
                  ],
                ),
              ),
            ),
          )
          ),
      ],
    ),
    );
  }
}