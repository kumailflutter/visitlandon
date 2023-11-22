import 'package:flutter/material.dart';
import 'package:visitlandon/Detail_screen.dart';
import 'package:visitlandon/categories_screen.dart';
import 'package:visitlandon/explore_screen.dart';
import 'package:visitlandon/map_screen.dart';
import 'package:visitlandon/more_screen.dart';
import 'package:visitlandon/saved_screen.dart';

// ignore: camel_case_types
class welcomescreen extends StatefulWidget {
  const welcomescreen({super.key});

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

// ignore: camel_case_types
class _welcomescreenState extends State<welcomescreen> {
  int _selectedIndex = 0;

  void _navigateBotttomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle navigation based on the selected index
    switch (index) {
      case 0:
        // Navigate to Explore page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const explore_screen(),
          ),
        );
        break;
      case 1:
        // Navigate to Categories page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => const categories_screen())
        );
        break;
      case 2:
        // Navigate to Saved page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => const saved_screen())
        );
        break;
      case 3:
        // Navigate to Map page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => const map_screen())
        );
        break;
      case 4:
        // Navigate to More page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => more_screen())
        );
        break;
    }
  }

  List homelist = [
    {
      "image": "asset/deosai.webp",
      "name": "Deosai National Park",
    },
    {
      "image": "asset/katpana.png",
      "name": "Katpana Lake",
    },
    {
      "image": "asset/shangrila2.jpg",
      "name": "Shangrila Lake",
    },
    {
      "image": "asset/khaplu fort.jpg",
      "name": "Khaplu Fort",
    },
    {
      "image": "asset/hunza.jpg",
      "name": "Hunza Valley",
    },
    {
      "image": "asset/sarfaranga.jpg",
      "name": "Sarfaranga Cold Desert"
    },
    {
      "image": "asset/manthoka.jpg",
      "name": "Manthoka Waterfall"
    },
    {
      "image": "asset/hunza2.jpg",
      "name": "Hunza Valley"
    },
    {
      "image": "asset/blindlake.jpg",
      "name": "Blindlake Shigar"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF0000),
        title: const Text(
          'Visit Northern',
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
        children: [
          Expanded(
            child: SizedBox(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2,
                ),
                itemCount: homelist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Detail_screen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: 201,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 45.0),
                                child: Image.network(
                                  homelist[index]["image"],
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        homelist[index]['name'].toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBotttomBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.saved_search), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
        ],
      ),
    );
  }
}
