import 'package:flutter/material.dart';

// ignore: camel_case_types
class Detail_screen extends StatefulWidget {
  const Detail_screen({Key? key});

  @override
  State<Detail_screen> createState() => _Detail_screenState();
}

// ignore: camel_case_types
class _Detail_screenState extends State<Detail_screen> {

  void _navigateBottomBar(int index) {
    setState(() {
    });
  }

 List homelist=[
    {
      "image":"https://www.worldatlas.com/r/w1200-q80/upload/bd/e1/41/shutterstock-6524578571.jpg",
      
    },
     {
      "image":"asset/katpana.png",
      
    },
       {
      "image":"asset/shangrila2.jpg",
      
    },
       {
      "image":"asset/khaplu fort.jpg",
      
    },
       {
      "image":"asset/hunza.jpg",
      
    },
    {
      "image":"asset/sarfaranga.jpg",
      
    },
    {
      "image":"asset/manthoka.jpg",
      
    },
    {
      "image":"asset/hunza2.jpg",
      
    },
    {
      "image":"asset/hunza2.jpg",
      
    },
    {
      "image":"asset/hunza2.jpg",
      
    },
   ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF0000),
        title: const Text('DetailScreen'),
      ),
      //this is the body of the code
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                     child: Image(image: AssetImage('asset/deosai.webp'),
                     fit: BoxFit.fitWidth,
                     width: double.infinity,
                     ),
                    ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                           
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 80),
                child: Text(
                  'Deosai National Park is called buy the roof of the world located in he northern areas of Pakistan.Enjoy your vacation by visiting this awesome place ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            

            ],
          ),
        ),
      ),
    );
  }
}
